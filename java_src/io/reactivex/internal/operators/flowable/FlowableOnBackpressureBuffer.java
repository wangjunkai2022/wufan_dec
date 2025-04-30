package io.reactivex.internal.operators.flowable;

import io.reactivex.annotations.Nullable;
import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.queue.SpscArrayQueue;
import io.reactivex.internal.subscriptions.BasicIntQueueSubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicLong;
/* loaded from: classes5.dex */
public final class FlowableOnBackpressureBuffer<T> extends a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final int f66703c;

    /* renamed from: d  reason: collision with root package name */
    final boolean f66704d;

    /* renamed from: e  reason: collision with root package name */
    final boolean f66705e;

    /* renamed from: f  reason: collision with root package name */
    final w2.a f66706f;

    /* loaded from: classes5.dex */
    static final class BackpressureBufferSubscriber<T> extends BasicIntQueueSubscription<T> implements io.reactivex.o<T> {
        private static final long serialVersionUID = -2514538129242366402L;

        /* renamed from: a  reason: collision with root package name */
        final l3.c<? super T> f66707a;

        /* renamed from: b  reason: collision with root package name */
        final x2.n<T> f66708b;

        /* renamed from: c  reason: collision with root package name */
        final boolean f66709c;

        /* renamed from: d  reason: collision with root package name */
        final w2.a f66710d;

        /* renamed from: e  reason: collision with root package name */
        l3.d f66711e;

        /* renamed from: f  reason: collision with root package name */
        volatile boolean f66712f;

        /* renamed from: g  reason: collision with root package name */
        volatile boolean f66713g;

        /* renamed from: h  reason: collision with root package name */
        Throwable f66714h;

        /* renamed from: i  reason: collision with root package name */
        final AtomicLong f66715i = new AtomicLong();

        /* renamed from: j  reason: collision with root package name */
        boolean f66716j;

        BackpressureBufferSubscriber(l3.c<? super T> cVar, int i2, boolean z3, boolean z4, w2.a aVar) {
            x2.n<T> spscArrayQueue;
            this.f66707a = cVar;
            this.f66710d = aVar;
            this.f66709c = z4;
            if (z3) {
                spscArrayQueue = new io.reactivex.internal.queue.a<>(i2);
            } else {
                spscArrayQueue = new SpscArrayQueue<>(i2);
            }
            this.f66708b = spscArrayQueue;
        }

        void b() {
            if (getAndIncrement() == 0) {
                x2.n<T> nVar = this.f66708b;
                l3.c<? super T> cVar = this.f66707a;
                int i2 = 1;
                while (!d(this.f66713g, nVar.isEmpty(), cVar)) {
                    long j4 = this.f66715i.get();
                    long j5 = 0;
                    while (j5 != j4) {
                        boolean z3 = this.f66713g;
                        Object obj = (T) nVar.poll();
                        boolean z4 = obj == null;
                        if (d(z3, z4, cVar)) {
                            return;
                        }
                        if (z4) {
                            break;
                        }
                        cVar.onNext(obj);
                        j5++;
                    }
                    if (j5 == j4 && d(this.f66713g, nVar.isEmpty(), cVar)) {
                        return;
                    }
                    if (j5 != 0 && j4 != Long.MAX_VALUE) {
                        this.f66715i.addAndGet(-j5);
                    }
                    i2 = addAndGet(-i2);
                    if (i2 == 0) {
                        return;
                    }
                }
            }
        }

        @Override // l3.d
        public void cancel() {
            if (this.f66712f) {
                return;
            }
            this.f66712f = true;
            this.f66711e.cancel();
            if (getAndIncrement() == 0) {
                this.f66708b.clear();
            }
        }

        @Override // x2.o
        public void clear() {
            this.f66708b.clear();
        }

        boolean d(boolean z3, boolean z4, l3.c<? super T> cVar) {
            if (this.f66712f) {
                this.f66708b.clear();
                return true;
            } else if (z3) {
                if (this.f66709c) {
                    if (z4) {
                        Throwable th = this.f66714h;
                        if (th != null) {
                            cVar.onError(th);
                        } else {
                            cVar.onComplete();
                        }
                        return true;
                    }
                    return false;
                }
                Throwable th2 = this.f66714h;
                if (th2 != null) {
                    this.f66708b.clear();
                    cVar.onError(th2);
                    return true;
                } else if (z4) {
                    cVar.onComplete();
                    return true;
                } else {
                    return false;
                }
            } else {
                return false;
            }
        }

        @Override // x2.o
        public boolean isEmpty() {
            return this.f66708b.isEmpty();
        }

        @Override // l3.c
        public void onComplete() {
            this.f66713g = true;
            if (this.f66716j) {
                this.f66707a.onComplete();
            } else {
                b();
            }
        }

        @Override // l3.c
        public void onError(Throwable th) {
            this.f66714h = th;
            this.f66713g = true;
            if (this.f66716j) {
                this.f66707a.onError(th);
            } else {
                b();
            }
        }

        @Override // l3.c
        public void onNext(T t3) {
            if (!this.f66708b.offer(t3)) {
                this.f66711e.cancel();
                MissingBackpressureException missingBackpressureException = new MissingBackpressureException("Buffer is full");
                try {
                    this.f66710d.run();
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    missingBackpressureException.initCause(th);
                }
                onError(missingBackpressureException);
            } else if (this.f66716j) {
                this.f66707a.onNext(null);
            } else {
                b();
            }
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            if (SubscriptionHelper.validate(this.f66711e, dVar)) {
                this.f66711e = dVar;
                this.f66707a.onSubscribe(this);
                dVar.request(Long.MAX_VALUE);
            }
        }

        @Override // x2.o
        @Nullable
        public T poll() throws Exception {
            return this.f66708b.poll();
        }

        @Override // l3.d
        public void request(long j4) {
            if (this.f66716j || !SubscriptionHelper.validate(j4)) {
                return;
            }
            io.reactivex.internal.util.b.a(this.f66715i, j4);
            b();
        }

        @Override // x2.k
        public int requestFusion(int i2) {
            if ((i2 & 2) != 0) {
                this.f66716j = true;
                return 2;
            }
            return 0;
        }
    }

    public FlowableOnBackpressureBuffer(io.reactivex.j<T> jVar, int i2, boolean z3, boolean z4, w2.a aVar) {
        super(jVar);
        this.f66703c = i2;
        this.f66704d = z3;
        this.f66705e = z4;
        this.f66706f = aVar;
    }

    @Override // io.reactivex.j
    protected void h6(l3.c<? super T> cVar) {
        this.f67288b.g6(new BackpressureBufferSubscriber(cVar, this.f66703c, this.f66704d, this.f66705e, this.f66706f));
    }
}
