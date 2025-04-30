package io.reactivex.internal.operators.observable;

import io.reactivex.h0;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class ObservableThrottleLatest<T> extends a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final long f68798b;

    /* renamed from: c  reason: collision with root package name */
    final TimeUnit f68799c;

    /* renamed from: d  reason: collision with root package name */
    final io.reactivex.h0 f68800d;

    /* renamed from: e  reason: collision with root package name */
    final boolean f68801e;

    /* loaded from: classes5.dex */
    static final class ThrottleLatestObserver<T> extends AtomicInteger implements io.reactivex.g0<T>, io.reactivex.disposables.b, Runnable {
        private static final long serialVersionUID = -8296689127439125014L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super T> f68802a;

        /* renamed from: b  reason: collision with root package name */
        final long f68803b;

        /* renamed from: c  reason: collision with root package name */
        final TimeUnit f68804c;

        /* renamed from: d  reason: collision with root package name */
        final h0.c f68805d;

        /* renamed from: e  reason: collision with root package name */
        final boolean f68806e;

        /* renamed from: f  reason: collision with root package name */
        final AtomicReference<T> f68807f = new AtomicReference<>();

        /* renamed from: g  reason: collision with root package name */
        io.reactivex.disposables.b f68808g;

        /* renamed from: h  reason: collision with root package name */
        volatile boolean f68809h;

        /* renamed from: i  reason: collision with root package name */
        Throwable f68810i;

        /* renamed from: j  reason: collision with root package name */
        volatile boolean f68811j;

        /* renamed from: k  reason: collision with root package name */
        volatile boolean f68812k;

        /* renamed from: l  reason: collision with root package name */
        boolean f68813l;

        ThrottleLatestObserver(io.reactivex.g0<? super T> g0Var, long j4, TimeUnit timeUnit, h0.c cVar, boolean z3) {
            this.f68802a = g0Var;
            this.f68803b = j4;
            this.f68804c = timeUnit;
            this.f68805d = cVar;
            this.f68806e = z3;
        }

        void a() {
            if (getAndIncrement() != 0) {
                return;
            }
            AtomicReference<T> atomicReference = this.f68807f;
            io.reactivex.g0<? super T> g0Var = this.f68802a;
            int i2 = 1;
            while (!this.f68811j) {
                boolean z3 = this.f68809h;
                if (z3 && this.f68810i != null) {
                    atomicReference.lazySet(null);
                    g0Var.onError(this.f68810i);
                    this.f68805d.dispose();
                    return;
                }
                boolean z4 = atomicReference.get() == null;
                if (z3) {
                    T andSet = atomicReference.getAndSet(null);
                    if (!z4 && this.f68806e) {
                        g0Var.onNext(andSet);
                    }
                    g0Var.onComplete();
                    this.f68805d.dispose();
                    return;
                }
                if (z4) {
                    if (this.f68812k) {
                        this.f68813l = false;
                        this.f68812k = false;
                    }
                } else if (!this.f68813l || this.f68812k) {
                    g0Var.onNext(atomicReference.getAndSet(null));
                    this.f68812k = false;
                    this.f68813l = true;
                    this.f68805d.c(this, this.f68803b, this.f68804c);
                }
                i2 = addAndGet(-i2);
                if (i2 == 0) {
                    return;
                }
            }
            atomicReference.lazySet(null);
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.f68811j = true;
            this.f68808g.dispose();
            this.f68805d.dispose();
            if (getAndIncrement() == 0) {
                this.f68807f.lazySet(null);
            }
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f68811j;
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            this.f68809h = true;
            a();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            this.f68810i = th;
            this.f68809h = true;
            a();
        }

        @Override // io.reactivex.g0
        public void onNext(T t3) {
            this.f68807f.set(t3);
            a();
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.validate(this.f68808g, bVar)) {
                this.f68808g = bVar;
                this.f68802a.onSubscribe(this);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f68812k = true;
            a();
        }
    }

    public ObservableThrottleLatest(io.reactivex.z<T> zVar, long j4, TimeUnit timeUnit, io.reactivex.h0 h0Var, boolean z3) {
        super(zVar);
        this.f68798b = j4;
        this.f68799c = timeUnit;
        this.f68800d = h0Var;
        this.f68801e = z3;
    }

    @Override // io.reactivex.z
    protected void F5(io.reactivex.g0<? super T> g0Var) {
        this.f68961a.a(new ThrottleLatestObserver(g0Var, this.f68798b, this.f68799c, this.f68800d.c(), this.f68801e));
    }
}
