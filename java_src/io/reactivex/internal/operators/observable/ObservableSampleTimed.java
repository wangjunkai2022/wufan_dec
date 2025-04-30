package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class ObservableSampleTimed<T> extends a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final long f68654b;

    /* renamed from: c  reason: collision with root package name */
    final TimeUnit f68655c;

    /* renamed from: d  reason: collision with root package name */
    final io.reactivex.h0 f68656d;

    /* renamed from: e  reason: collision with root package name */
    final boolean f68657e;

    /* loaded from: classes5.dex */
    static final class SampleTimedEmitLast<T> extends SampleTimedObserver<T> {
        private static final long serialVersionUID = -7139995637533111443L;

        /* renamed from: g  reason: collision with root package name */
        final AtomicInteger f68658g;

        SampleTimedEmitLast(io.reactivex.g0<? super T> g0Var, long j4, TimeUnit timeUnit, io.reactivex.h0 h0Var) {
            super(g0Var, j4, timeUnit, h0Var);
            this.f68658g = new AtomicInteger(1);
        }

        @Override // io.reactivex.internal.operators.observable.ObservableSampleTimed.SampleTimedObserver
        void b() {
            c();
            if (this.f68658g.decrementAndGet() == 0) {
                this.f68659a.onComplete();
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f68658g.incrementAndGet() == 2) {
                c();
                if (this.f68658g.decrementAndGet() == 0) {
                    this.f68659a.onComplete();
                }
            }
        }
    }

    /* loaded from: classes5.dex */
    static final class SampleTimedNoLast<T> extends SampleTimedObserver<T> {
        private static final long serialVersionUID = -7139995637533111443L;

        SampleTimedNoLast(io.reactivex.g0<? super T> g0Var, long j4, TimeUnit timeUnit, io.reactivex.h0 h0Var) {
            super(g0Var, j4, timeUnit, h0Var);
        }

        @Override // io.reactivex.internal.operators.observable.ObservableSampleTimed.SampleTimedObserver
        void b() {
            this.f68659a.onComplete();
        }

        @Override // java.lang.Runnable
        public void run() {
            c();
        }
    }

    /* loaded from: classes5.dex */
    static abstract class SampleTimedObserver<T> extends AtomicReference<T> implements io.reactivex.g0<T>, io.reactivex.disposables.b, Runnable {
        private static final long serialVersionUID = -3517602651313910099L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super T> f68659a;

        /* renamed from: b  reason: collision with root package name */
        final long f68660b;

        /* renamed from: c  reason: collision with root package name */
        final TimeUnit f68661c;

        /* renamed from: d  reason: collision with root package name */
        final io.reactivex.h0 f68662d;

        /* renamed from: e  reason: collision with root package name */
        final AtomicReference<io.reactivex.disposables.b> f68663e = new AtomicReference<>();

        /* renamed from: f  reason: collision with root package name */
        io.reactivex.disposables.b f68664f;

        SampleTimedObserver(io.reactivex.g0<? super T> g0Var, long j4, TimeUnit timeUnit, io.reactivex.h0 h0Var) {
            this.f68659a = g0Var;
            this.f68660b = j4;
            this.f68661c = timeUnit;
            this.f68662d = h0Var;
        }

        void a() {
            DisposableHelper.dispose(this.f68663e);
        }

        abstract void b();

        void c() {
            T andSet = getAndSet(null);
            if (andSet != null) {
                this.f68659a.onNext(andSet);
            }
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            a();
            this.f68664f.dispose();
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f68664f.isDisposed();
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            a();
            b();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            a();
            this.f68659a.onError(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t3) {
            lazySet(t3);
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.validate(this.f68664f, bVar)) {
                this.f68664f = bVar;
                this.f68659a.onSubscribe(this);
                io.reactivex.h0 h0Var = this.f68662d;
                long j4 = this.f68660b;
                DisposableHelper.replace(this.f68663e, h0Var.g(this, j4, j4, this.f68661c));
            }
        }
    }

    public ObservableSampleTimed(io.reactivex.e0<T> e0Var, long j4, TimeUnit timeUnit, io.reactivex.h0 h0Var, boolean z3) {
        super(e0Var);
        this.f68654b = j4;
        this.f68655c = timeUnit;
        this.f68656d = h0Var;
        this.f68657e = z3;
    }

    @Override // io.reactivex.z
    public void F5(io.reactivex.g0<? super T> g0Var) {
        io.reactivex.observers.l lVar = new io.reactivex.observers.l(g0Var);
        if (this.f68657e) {
            this.f68961a.a(new SampleTimedEmitLast(lVar, this.f68654b, this.f68655c, this.f68656d));
        } else {
            this.f68961a.a(new SampleTimedNoLast(lVar, this.f68654b, this.f68655c, this.f68656d));
        }
    }
}
