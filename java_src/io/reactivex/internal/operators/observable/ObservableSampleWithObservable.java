package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class ObservableSampleWithObservable<T> extends io.reactivex.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.e0<?> f68665b;

    /* renamed from: c  reason: collision with root package name */
    final boolean f68666c;

    /* loaded from: classes5.dex */
    static final class SampleMainEmitLast<T> extends SampleMainObserver<T> {
        private static final long serialVersionUID = -3029755663834015785L;

        /* renamed from: e  reason: collision with root package name */
        final AtomicInteger f68667e;

        /* renamed from: f  reason: collision with root package name */
        volatile boolean f68668f;

        SampleMainEmitLast(io.reactivex.g0<? super T> g0Var, io.reactivex.e0<?> e0Var) {
            super(g0Var, e0Var);
            this.f68667e = new AtomicInteger();
        }

        @Override // io.reactivex.internal.operators.observable.ObservableSampleWithObservable.SampleMainObserver
        void b() {
            this.f68668f = true;
            if (this.f68667e.getAndIncrement() == 0) {
                d();
                this.f68669a.onComplete();
            }
        }

        @Override // io.reactivex.internal.operators.observable.ObservableSampleWithObservable.SampleMainObserver
        void c() {
            this.f68668f = true;
            if (this.f68667e.getAndIncrement() == 0) {
                d();
                this.f68669a.onComplete();
            }
        }

        @Override // io.reactivex.internal.operators.observable.ObservableSampleWithObservable.SampleMainObserver
        void f() {
            if (this.f68667e.getAndIncrement() == 0) {
                do {
                    boolean z3 = this.f68668f;
                    d();
                    if (z3) {
                        this.f68669a.onComplete();
                        return;
                    }
                } while (this.f68667e.decrementAndGet() != 0);
            }
        }
    }

    /* loaded from: classes5.dex */
    static final class SampleMainNoLast<T> extends SampleMainObserver<T> {
        private static final long serialVersionUID = -3029755663834015785L;

        SampleMainNoLast(io.reactivex.g0<? super T> g0Var, io.reactivex.e0<?> e0Var) {
            super(g0Var, e0Var);
        }

        @Override // io.reactivex.internal.operators.observable.ObservableSampleWithObservable.SampleMainObserver
        void b() {
            this.f68669a.onComplete();
        }

        @Override // io.reactivex.internal.operators.observable.ObservableSampleWithObservable.SampleMainObserver
        void c() {
            this.f68669a.onComplete();
        }

        @Override // io.reactivex.internal.operators.observable.ObservableSampleWithObservable.SampleMainObserver
        void f() {
            d();
        }
    }

    /* loaded from: classes5.dex */
    static abstract class SampleMainObserver<T> extends AtomicReference<T> implements io.reactivex.g0<T>, io.reactivex.disposables.b {
        private static final long serialVersionUID = -3517602651313910099L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super T> f68669a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.e0<?> f68670b;

        /* renamed from: c  reason: collision with root package name */
        final AtomicReference<io.reactivex.disposables.b> f68671c = new AtomicReference<>();

        /* renamed from: d  reason: collision with root package name */
        io.reactivex.disposables.b f68672d;

        SampleMainObserver(io.reactivex.g0<? super T> g0Var, io.reactivex.e0<?> e0Var) {
            this.f68669a = g0Var;
            this.f68670b = e0Var;
        }

        public void a() {
            this.f68672d.dispose();
            c();
        }

        abstract void b();

        abstract void c();

        void d() {
            T andSet = getAndSet(null);
            if (andSet != null) {
                this.f68669a.onNext(andSet);
            }
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            DisposableHelper.dispose(this.f68671c);
            this.f68672d.dispose();
        }

        public void e(Throwable th) {
            this.f68672d.dispose();
            this.f68669a.onError(th);
        }

        abstract void f();

        boolean g(io.reactivex.disposables.b bVar) {
            return DisposableHelper.setOnce(this.f68671c, bVar);
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f68671c.get() == DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            DisposableHelper.dispose(this.f68671c);
            b();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            DisposableHelper.dispose(this.f68671c);
            this.f68669a.onError(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t3) {
            lazySet(t3);
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.validate(this.f68672d, bVar)) {
                this.f68672d = bVar;
                this.f68669a.onSubscribe(this);
                if (this.f68671c.get() == null) {
                    this.f68670b.a(new a(this));
                }
            }
        }
    }

    /* loaded from: classes5.dex */
    static final class a<T> implements io.reactivex.g0<Object> {

        /* renamed from: a  reason: collision with root package name */
        final SampleMainObserver<T> f68673a;

        a(SampleMainObserver<T> sampleMainObserver) {
            this.f68673a = sampleMainObserver;
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            this.f68673a.a();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            this.f68673a.e(th);
        }

        @Override // io.reactivex.g0
        public void onNext(Object obj) {
            this.f68673a.f();
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            this.f68673a.g(bVar);
        }
    }

    public ObservableSampleWithObservable(io.reactivex.e0<T> e0Var, io.reactivex.e0<?> e0Var2, boolean z3) {
        super(e0Var);
        this.f68665b = e0Var2;
        this.f68666c = z3;
    }

    @Override // io.reactivex.z
    public void F5(io.reactivex.g0<? super T> g0Var) {
        io.reactivex.observers.l lVar = new io.reactivex.observers.l(g0Var);
        if (this.f68666c) {
            this.f68961a.a(new SampleMainEmitLast(lVar, this.f68665b));
        } else {
            this.f68961a.a(new SampleMainNoLast(lVar, this.f68665b));
        }
    }
}
