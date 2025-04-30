package io.reactivex.internal.operators.flowable;

import io.reactivex.BackpressureOverflowStrategy;
import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
/* loaded from: classes5.dex */
public final class FlowableOnBackpressureBufferStrategy<T> extends io.reactivex.internal.operators.flowable.a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final long f66717c;

    /* renamed from: d  reason: collision with root package name */
    final w2.a f66718d;

    /* renamed from: e  reason: collision with root package name */
    final BackpressureOverflowStrategy f66719e;

    /* loaded from: classes5.dex */
    static final class OnBackpressureBufferStrategySubscriber<T> extends AtomicInteger implements io.reactivex.o<T>, l3.d {
        private static final long serialVersionUID = 3240706908776709697L;

        /* renamed from: a  reason: collision with root package name */
        final l3.c<? super T> f66720a;

        /* renamed from: b  reason: collision with root package name */
        final w2.a f66721b;

        /* renamed from: c  reason: collision with root package name */
        final BackpressureOverflowStrategy f66722c;

        /* renamed from: d  reason: collision with root package name */
        final long f66723d;

        /* renamed from: e  reason: collision with root package name */
        final AtomicLong f66724e = new AtomicLong();

        /* renamed from: f  reason: collision with root package name */
        final Deque<T> f66725f = new ArrayDeque();

        /* renamed from: g  reason: collision with root package name */
        l3.d f66726g;

        /* renamed from: h  reason: collision with root package name */
        volatile boolean f66727h;

        /* renamed from: i  reason: collision with root package name */
        volatile boolean f66728i;

        /* renamed from: j  reason: collision with root package name */
        Throwable f66729j;

        OnBackpressureBufferStrategySubscriber(l3.c<? super T> cVar, w2.a aVar, BackpressureOverflowStrategy backpressureOverflowStrategy, long j4) {
            this.f66720a = cVar;
            this.f66721b = aVar;
            this.f66722c = backpressureOverflowStrategy;
            this.f66723d = j4;
        }

        void a(Deque<T> deque) {
            synchronized (deque) {
                deque.clear();
            }
        }

        void b() {
            boolean isEmpty;
            T poll;
            if (getAndIncrement() != 0) {
                return;
            }
            Deque<T> deque = this.f66725f;
            l3.c<? super T> cVar = this.f66720a;
            int i2 = 1;
            do {
                long j4 = this.f66724e.get();
                long j5 = 0;
                while (j5 != j4) {
                    if (this.f66727h) {
                        a(deque);
                        return;
                    }
                    boolean z3 = this.f66728i;
                    synchronized (deque) {
                        poll = deque.poll();
                    }
                    boolean z4 = poll == null;
                    if (z3) {
                        Throwable th = this.f66729j;
                        if (th != null) {
                            a(deque);
                            cVar.onError(th);
                            return;
                        } else if (z4) {
                            cVar.onComplete();
                            return;
                        }
                    }
                    if (z4) {
                        break;
                    }
                    cVar.onNext(poll);
                    j5++;
                }
                if (j5 == j4) {
                    if (this.f66727h) {
                        a(deque);
                        return;
                    }
                    boolean z5 = this.f66728i;
                    synchronized (deque) {
                        isEmpty = deque.isEmpty();
                    }
                    if (z5) {
                        Throwable th2 = this.f66729j;
                        if (th2 != null) {
                            a(deque);
                            cVar.onError(th2);
                            return;
                        } else if (isEmpty) {
                            cVar.onComplete();
                            return;
                        }
                    }
                }
                if (j5 != 0) {
                    io.reactivex.internal.util.b.e(this.f66724e, j5);
                }
                i2 = addAndGet(-i2);
            } while (i2 != 0);
        }

        @Override // l3.d
        public void cancel() {
            this.f66727h = true;
            this.f66726g.cancel();
            if (getAndIncrement() == 0) {
                a(this.f66725f);
            }
        }

        @Override // l3.c
        public void onComplete() {
            this.f66728i = true;
            b();
        }

        @Override // l3.c
        public void onError(Throwable th) {
            if (this.f66728i) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f66729j = th;
            this.f66728i = true;
            b();
        }

        @Override // l3.c
        public void onNext(T t3) {
            boolean z3;
            boolean z4;
            if (this.f66728i) {
                return;
            }
            Deque<T> deque = this.f66725f;
            synchronized (deque) {
                z3 = false;
                z4 = true;
                if (deque.size() == this.f66723d) {
                    int i2 = a.f66730a[this.f66722c.ordinal()];
                    if (i2 == 1) {
                        deque.pollLast();
                        deque.offer(t3);
                    } else if (i2 == 2) {
                        deque.poll();
                        deque.offer(t3);
                    }
                    z3 = true;
                } else {
                    deque.offer(t3);
                }
                z4 = false;
            }
            if (!z3) {
                if (z4) {
                    this.f66726g.cancel();
                    onError(new MissingBackpressureException());
                    return;
                }
                b();
                return;
            }
            w2.a aVar = this.f66721b;
            if (aVar != null) {
                try {
                    aVar.run();
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    this.f66726g.cancel();
                    onError(th);
                }
            }
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            if (SubscriptionHelper.validate(this.f66726g, dVar)) {
                this.f66726g = dVar;
                this.f66720a.onSubscribe(this);
                dVar.request(Long.MAX_VALUE);
            }
        }

        @Override // l3.d
        public void request(long j4) {
            if (SubscriptionHelper.validate(j4)) {
                io.reactivex.internal.util.b.a(this.f66724e, j4);
                b();
            }
        }
    }

    /* loaded from: classes5.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f66730a;

        static {
            int[] iArr = new int[BackpressureOverflowStrategy.values().length];
            f66730a = iArr;
            try {
                iArr[BackpressureOverflowStrategy.DROP_LATEST.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f66730a[BackpressureOverflowStrategy.DROP_OLDEST.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public FlowableOnBackpressureBufferStrategy(io.reactivex.j<T> jVar, long j4, w2.a aVar, BackpressureOverflowStrategy backpressureOverflowStrategy) {
        super(jVar);
        this.f66717c = j4;
        this.f66718d = aVar;
        this.f66719e = backpressureOverflowStrategy;
    }

    @Override // io.reactivex.j
    protected void h6(l3.c<? super T> cVar) {
        this.f67288b.g6(new OnBackpressureBufferStrategySubscriber(cVar, this.f66718d, this.f66719e, this.f66717c));
    }
}
