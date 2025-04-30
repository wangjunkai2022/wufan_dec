package io.reactivex.internal.operators.flowable;

import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.h0;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class FlowableThrottleLatest<T> extends a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final long f67093c;

    /* renamed from: d  reason: collision with root package name */
    final TimeUnit f67094d;

    /* renamed from: e  reason: collision with root package name */
    final io.reactivex.h0 f67095e;

    /* renamed from: f  reason: collision with root package name */
    final boolean f67096f;

    /* loaded from: classes5.dex */
    static final class ThrottleLatestSubscriber<T> extends AtomicInteger implements io.reactivex.o<T>, l3.d, Runnable {
        private static final long serialVersionUID = -8296689127439125014L;

        /* renamed from: a  reason: collision with root package name */
        final l3.c<? super T> f67097a;

        /* renamed from: b  reason: collision with root package name */
        final long f67098b;

        /* renamed from: c  reason: collision with root package name */
        final TimeUnit f67099c;

        /* renamed from: d  reason: collision with root package name */
        final h0.c f67100d;

        /* renamed from: e  reason: collision with root package name */
        final boolean f67101e;

        /* renamed from: f  reason: collision with root package name */
        final AtomicReference<T> f67102f = new AtomicReference<>();

        /* renamed from: g  reason: collision with root package name */
        final AtomicLong f67103g = new AtomicLong();

        /* renamed from: h  reason: collision with root package name */
        l3.d f67104h;

        /* renamed from: i  reason: collision with root package name */
        volatile boolean f67105i;

        /* renamed from: j  reason: collision with root package name */
        Throwable f67106j;

        /* renamed from: k  reason: collision with root package name */
        volatile boolean f67107k;

        /* renamed from: l  reason: collision with root package name */
        volatile boolean f67108l;

        /* renamed from: m  reason: collision with root package name */
        long f67109m;

        /* renamed from: n  reason: collision with root package name */
        boolean f67110n;

        ThrottleLatestSubscriber(l3.c<? super T> cVar, long j4, TimeUnit timeUnit, h0.c cVar2, boolean z3) {
            this.f67097a = cVar;
            this.f67098b = j4;
            this.f67099c = timeUnit;
            this.f67100d = cVar2;
            this.f67101e = z3;
        }

        void a() {
            if (getAndIncrement() != 0) {
                return;
            }
            AtomicReference<T> atomicReference = this.f67102f;
            AtomicLong atomicLong = this.f67103g;
            l3.c<? super T> cVar = this.f67097a;
            int i2 = 1;
            while (!this.f67107k) {
                boolean z3 = this.f67105i;
                if (z3 && this.f67106j != null) {
                    atomicReference.lazySet(null);
                    cVar.onError(this.f67106j);
                    this.f67100d.dispose();
                    return;
                }
                boolean z4 = atomicReference.get() == null;
                if (z3) {
                    if (!z4 && this.f67101e) {
                        T andSet = atomicReference.getAndSet(null);
                        long j4 = this.f67109m;
                        if (j4 != atomicLong.get()) {
                            this.f67109m = j4 + 1;
                            cVar.onNext(andSet);
                            cVar.onComplete();
                        } else {
                            cVar.onError(new MissingBackpressureException("Could not emit final value due to lack of requests"));
                        }
                    } else {
                        atomicReference.lazySet(null);
                        cVar.onComplete();
                    }
                    this.f67100d.dispose();
                    return;
                }
                if (z4) {
                    if (this.f67108l) {
                        this.f67110n = false;
                        this.f67108l = false;
                    }
                } else if (!this.f67110n || this.f67108l) {
                    T andSet2 = atomicReference.getAndSet(null);
                    long j5 = this.f67109m;
                    if (j5 != atomicLong.get()) {
                        cVar.onNext(andSet2);
                        this.f67109m = j5 + 1;
                        this.f67108l = false;
                        this.f67110n = true;
                        this.f67100d.c(this, this.f67098b, this.f67099c);
                    } else {
                        this.f67104h.cancel();
                        cVar.onError(new MissingBackpressureException("Could not emit value due to lack of requests"));
                        this.f67100d.dispose();
                        return;
                    }
                }
                i2 = addAndGet(-i2);
                if (i2 == 0) {
                    return;
                }
            }
            atomicReference.lazySet(null);
        }

        @Override // l3.d
        public void cancel() {
            this.f67107k = true;
            this.f67104h.cancel();
            this.f67100d.dispose();
            if (getAndIncrement() == 0) {
                this.f67102f.lazySet(null);
            }
        }

        @Override // l3.c
        public void onComplete() {
            this.f67105i = true;
            a();
        }

        @Override // l3.c
        public void onError(Throwable th) {
            this.f67106j = th;
            this.f67105i = true;
            a();
        }

        @Override // l3.c
        public void onNext(T t3) {
            this.f67102f.set(t3);
            a();
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            if (SubscriptionHelper.validate(this.f67104h, dVar)) {
                this.f67104h = dVar;
                this.f67097a.onSubscribe(this);
                dVar.request(Long.MAX_VALUE);
            }
        }

        @Override // l3.d
        public void request(long j4) {
            if (SubscriptionHelper.validate(j4)) {
                io.reactivex.internal.util.b.a(this.f67103g, j4);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f67108l = true;
            a();
        }
    }

    public FlowableThrottleLatest(io.reactivex.j<T> jVar, long j4, TimeUnit timeUnit, io.reactivex.h0 h0Var, boolean z3) {
        super(jVar);
        this.f67093c = j4;
        this.f67094d = timeUnit;
        this.f67095e = h0Var;
        this.f67096f = z3;
    }

    @Override // io.reactivex.j
    protected void h6(l3.c<? super T> cVar) {
        this.f67288b.g6(new ThrottleLatestSubscriber(cVar, this.f67093c, this.f67094d, this.f67095e.c(), this.f67096f));
    }
}
