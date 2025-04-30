package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.util.AtomicThrowable;
import io.reactivex.subjects.PublishSubject;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class ObservableRepeatWhen<T> extends a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final w2.o<? super io.reactivex.z<Object>, ? extends io.reactivex.e0<?>> f68585b;

    /* loaded from: classes5.dex */
    static final class RepeatWhenObserver<T> extends AtomicInteger implements io.reactivex.g0<T>, io.reactivex.disposables.b {
        private static final long serialVersionUID = 802743776666017014L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super T> f68586a;

        /* renamed from: d  reason: collision with root package name */
        final io.reactivex.subjects.c<Object> f68589d;

        /* renamed from: g  reason: collision with root package name */
        final io.reactivex.e0<T> f68592g;

        /* renamed from: h  reason: collision with root package name */
        volatile boolean f68593h;

        /* renamed from: b  reason: collision with root package name */
        final AtomicInteger f68587b = new AtomicInteger();

        /* renamed from: c  reason: collision with root package name */
        final AtomicThrowable f68588c = new AtomicThrowable();

        /* renamed from: e  reason: collision with root package name */
        final RepeatWhenObserver<T>.InnerRepeatObserver f68590e = new InnerRepeatObserver();

        /* renamed from: f  reason: collision with root package name */
        final AtomicReference<io.reactivex.disposables.b> f68591f = new AtomicReference<>();

        /* loaded from: classes5.dex */
        final class InnerRepeatObserver extends AtomicReference<io.reactivex.disposables.b> implements io.reactivex.g0<Object> {
            private static final long serialVersionUID = 3254781284376480842L;

            InnerRepeatObserver() {
            }

            @Override // io.reactivex.g0
            public void onComplete() {
                RepeatWhenObserver.this.a();
            }

            @Override // io.reactivex.g0
            public void onError(Throwable th) {
                RepeatWhenObserver.this.b(th);
            }

            @Override // io.reactivex.g0
            public void onNext(Object obj) {
                RepeatWhenObserver.this.c();
            }

            @Override // io.reactivex.g0
            public void onSubscribe(io.reactivex.disposables.b bVar) {
                DisposableHelper.setOnce(this, bVar);
            }
        }

        RepeatWhenObserver(io.reactivex.g0<? super T> g0Var, io.reactivex.subjects.c<Object> cVar, io.reactivex.e0<T> e0Var) {
            this.f68586a = g0Var;
            this.f68589d = cVar;
            this.f68592g = e0Var;
        }

        void a() {
            DisposableHelper.dispose(this.f68591f);
            io.reactivex.internal.util.g.a(this.f68586a, this, this.f68588c);
        }

        void b(Throwable th) {
            DisposableHelper.dispose(this.f68591f);
            io.reactivex.internal.util.g.c(this.f68586a, th, this, this.f68588c);
        }

        void c() {
            d();
        }

        void d() {
            if (this.f68587b.getAndIncrement() == 0) {
                while (!isDisposed()) {
                    if (!this.f68593h) {
                        this.f68593h = true;
                        this.f68592g.a(this);
                    }
                    if (this.f68587b.decrementAndGet() == 0) {
                        return;
                    }
                }
            }
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            DisposableHelper.dispose(this.f68591f);
            DisposableHelper.dispose(this.f68590e);
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(this.f68591f.get());
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            this.f68593h = false;
            this.f68589d.onNext(0);
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            DisposableHelper.dispose(this.f68590e);
            io.reactivex.internal.util.g.c(this.f68586a, th, this, this.f68588c);
        }

        @Override // io.reactivex.g0
        public void onNext(T t3) {
            io.reactivex.internal.util.g.e(this.f68586a, t3, this, this.f68588c);
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            DisposableHelper.replace(this.f68591f, bVar);
        }
    }

    public ObservableRepeatWhen(io.reactivex.e0<T> e0Var, w2.o<? super io.reactivex.z<Object>, ? extends io.reactivex.e0<?>> oVar) {
        super(e0Var);
        this.f68585b = oVar;
    }

    @Override // io.reactivex.z
    protected void F5(io.reactivex.g0<? super T> g0Var) {
        io.reactivex.subjects.c<T> j8 = PublishSubject.l8().j8();
        try {
            io.reactivex.e0 e0Var = (io.reactivex.e0) io.reactivex.internal.functions.a.g(this.f68585b.apply(j8), "The handler returned a null ObservableSource");
            RepeatWhenObserver repeatWhenObserver = new RepeatWhenObserver(g0Var, j8, this.f68961a);
            g0Var.onSubscribe(repeatWhenObserver);
            e0Var.a(repeatWhenObserver.f68590e);
            repeatWhenObserver.d();
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            EmptyDisposable.error(th, g0Var);
        }
    }
}
