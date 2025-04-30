package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
/* loaded from: classes5.dex */
public final class FlowableTakeLastTimed<T> extends a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final long f67057c;

    /* renamed from: d  reason: collision with root package name */
    final long f67058d;

    /* renamed from: e  reason: collision with root package name */
    final TimeUnit f67059e;

    /* renamed from: f  reason: collision with root package name */
    final io.reactivex.h0 f67060f;

    /* renamed from: g  reason: collision with root package name */
    final int f67061g;

    /* renamed from: h  reason: collision with root package name */
    final boolean f67062h;

    /* loaded from: classes5.dex */
    static final class TakeLastTimedSubscriber<T> extends AtomicInteger implements io.reactivex.o<T>, l3.d {
        private static final long serialVersionUID = -5677354903406201275L;

        /* renamed from: a  reason: collision with root package name */
        final l3.c<? super T> f67063a;

        /* renamed from: b  reason: collision with root package name */
        final long f67064b;

        /* renamed from: c  reason: collision with root package name */
        final long f67065c;

        /* renamed from: d  reason: collision with root package name */
        final TimeUnit f67066d;

        /* renamed from: e  reason: collision with root package name */
        final io.reactivex.h0 f67067e;

        /* renamed from: f  reason: collision with root package name */
        final io.reactivex.internal.queue.a<Object> f67068f;

        /* renamed from: g  reason: collision with root package name */
        final boolean f67069g;

        /* renamed from: h  reason: collision with root package name */
        l3.d f67070h;

        /* renamed from: i  reason: collision with root package name */
        final AtomicLong f67071i = new AtomicLong();

        /* renamed from: j  reason: collision with root package name */
        volatile boolean f67072j;

        /* renamed from: k  reason: collision with root package name */
        volatile boolean f67073k;

        /* renamed from: l  reason: collision with root package name */
        Throwable f67074l;

        TakeLastTimedSubscriber(l3.c<? super T> cVar, long j4, long j5, TimeUnit timeUnit, io.reactivex.h0 h0Var, int i2, boolean z3) {
            this.f67063a = cVar;
            this.f67064b = j4;
            this.f67065c = j5;
            this.f67066d = timeUnit;
            this.f67067e = h0Var;
            this.f67068f = new io.reactivex.internal.queue.a<>(i2);
            this.f67069g = z3;
        }

        boolean a(boolean z3, l3.c<? super T> cVar, boolean z4) {
            if (this.f67072j) {
                this.f67068f.clear();
                return true;
            } else if (z4) {
                if (z3) {
                    Throwable th = this.f67074l;
                    if (th != null) {
                        cVar.onError(th);
                    } else {
                        cVar.onComplete();
                    }
                    return true;
                }
                return false;
            } else {
                Throwable th2 = this.f67074l;
                if (th2 != null) {
                    this.f67068f.clear();
                    cVar.onError(th2);
                    return true;
                } else if (z3) {
                    cVar.onComplete();
                    return true;
                } else {
                    return false;
                }
            }
        }

        void b() {
            if (getAndIncrement() != 0) {
                return;
            }
            l3.c<? super T> cVar = this.f67063a;
            io.reactivex.internal.queue.a<Object> aVar = this.f67068f;
            boolean z3 = this.f67069g;
            int i2 = 1;
            do {
                if (this.f67073k) {
                    if (a(aVar.isEmpty(), cVar, z3)) {
                        return;
                    }
                    long j4 = this.f67071i.get();
                    long j5 = 0;
                    while (true) {
                        if (a(aVar.peek() == null, cVar, z3)) {
                            return;
                        }
                        if (j4 != j5) {
                            aVar.poll();
                            cVar.onNext(aVar.poll());
                            j5++;
                        } else if (j5 != 0) {
                            io.reactivex.internal.util.b.e(this.f67071i, j5);
                        }
                    }
                }
                i2 = addAndGet(-i2);
            } while (i2 != 0);
        }

        void c(long j4, io.reactivex.internal.queue.a<Object> aVar) {
            long j5 = this.f67065c;
            long j6 = this.f67064b;
            boolean z3 = j6 == Long.MAX_VALUE;
            while (!aVar.isEmpty()) {
                if (((Long) aVar.peek()).longValue() >= j4 - j5 && (z3 || (aVar.m() >> 1) <= j6)) {
                    return;
                }
                aVar.poll();
                aVar.poll();
            }
        }

        @Override // l3.d
        public void cancel() {
            if (this.f67072j) {
                return;
            }
            this.f67072j = true;
            this.f67070h.cancel();
            if (getAndIncrement() == 0) {
                this.f67068f.clear();
            }
        }

        @Override // l3.c
        public void onComplete() {
            c(this.f67067e.d(this.f67066d), this.f67068f);
            this.f67073k = true;
            b();
        }

        @Override // l3.c
        public void onError(Throwable th) {
            if (this.f67069g) {
                c(this.f67067e.d(this.f67066d), this.f67068f);
            }
            this.f67074l = th;
            this.f67073k = true;
            b();
        }

        @Override // l3.c
        public void onNext(T t3) {
            io.reactivex.internal.queue.a<Object> aVar = this.f67068f;
            long d4 = this.f67067e.d(this.f67066d);
            aVar.offer(Long.valueOf(d4), t3);
            c(d4, aVar);
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            if (SubscriptionHelper.validate(this.f67070h, dVar)) {
                this.f67070h = dVar;
                this.f67063a.onSubscribe(this);
                dVar.request(Long.MAX_VALUE);
            }
        }

        @Override // l3.d
        public void request(long j4) {
            if (SubscriptionHelper.validate(j4)) {
                io.reactivex.internal.util.b.a(this.f67071i, j4);
                b();
            }
        }
    }

    public FlowableTakeLastTimed(io.reactivex.j<T> jVar, long j4, long j5, TimeUnit timeUnit, io.reactivex.h0 h0Var, int i2, boolean z3) {
        super(jVar);
        this.f67057c = j4;
        this.f67058d = j5;
        this.f67059e = timeUnit;
        this.f67060f = h0Var;
        this.f67061g = i2;
        this.f67062h = z3;
    }

    @Override // io.reactivex.j
    protected void h6(l3.c<? super T> cVar) {
        this.f67288b.g6(new TakeLastTimedSubscriber(cVar, this.f67057c, this.f67058d, this.f67059e, this.f67060f, this.f67061g, this.f67062h));
    }
}
