package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.util.AtomicThrowable;
import io.reactivex.subjects.PublishSubject;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class ObservableRetryWhen<T> extends a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final w2.o<? super io.reactivex.z<Throwable>, ? extends io.reactivex.e0<?>> f68644b;

    /* loaded from: classes5.dex */
    static final class RepeatWhenObserver<T> extends AtomicInteger implements io.reactivex.g0<T>, io.reactivex.disposables.b {
        private static final long serialVersionUID = 802743776666017014L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super T> f68645a;

        /* renamed from: d  reason: collision with root package name */
        final io.reactivex.subjects.c<Throwable> f68648d;

        /* renamed from: g  reason: collision with root package name */
        final io.reactivex.e0<T> f68651g;

        /* renamed from: h  reason: collision with root package name */
        volatile boolean f68652h;

        /* renamed from: b  reason: collision with root package name */
        final AtomicInteger f68646b = new AtomicInteger();

        /* renamed from: c  reason: collision with root package name */
        final AtomicThrowable f68647c = new AtomicThrowable();

        /* renamed from: e  reason: collision with root package name */
        final RepeatWhenObserver<T>.InnerRepeatObserver f68649e = new InnerRepeatObserver();

        /* renamed from: f  reason: collision with root package name */
        final AtomicReference<io.reactivex.disposables.b> f68650f = new AtomicReference<>();

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

        RepeatWhenObserver(io.reactivex.g0<? super T> g0Var, io.reactivex.subjects.c<Throwable> cVar, io.reactivex.e0<T> e0Var) {
            this.f68645a = g0Var;
            this.f68648d = cVar;
            this.f68651g = e0Var;
        }

        void a() {
            DisposableHelper.dispose(this.f68650f);
            io.reactivex.internal.util.g.a(this.f68645a, this, this.f68647c);
        }

        void b(Throwable th) {
            DisposableHelper.dispose(this.f68650f);
            io.reactivex.internal.util.g.c(this.f68645a, th, this, this.f68647c);
        }

        void c() {
            d();
        }

        void d() {
            if (this.f68646b.getAndIncrement() == 0) {
                while (!isDisposed()) {
                    if (!this.f68652h) {
                        this.f68652h = true;
                        this.f68651g.a(this);
                    }
                    if (this.f68646b.decrementAndGet() == 0) {
                        return;
                    }
                }
            }
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            DisposableHelper.dispose(this.f68650f);
            DisposableHelper.dispose(this.f68649e);
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(this.f68650f.get());
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            DisposableHelper.dispose(this.f68649e);
            io.reactivex.internal.util.g.a(this.f68645a, this, this.f68647c);
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            this.f68652h = false;
            this.f68648d.onNext(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t3) {
            io.reactivex.internal.util.g.e(this.f68645a, t3, this, this.f68647c);
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            DisposableHelper.replace(this.f68650f, bVar);
        }
    }

    public ObservableRetryWhen(io.reactivex.e0<T> e0Var, w2.o<? super io.reactivex.z<Throwable>, ? extends io.reactivex.e0<?>> oVar) {
        super(e0Var);
        this.f68644b = oVar;
    }

    @Override // io.reactivex.z
    protected void F5(io.reactivex.g0<? super T> g0Var) {
        io.reactivex.subjects.c<T> j8 = PublishSubject.l8().j8();
        try {
            io.reactivex.e0 e0Var = (io.reactivex.e0) io.reactivex.internal.functions.a.g(this.f68644b.apply(j8), "The handler returned a null ObservableSource");
            RepeatWhenObserver repeatWhenObserver = new RepeatWhenObserver(g0Var, j8, this.f68961a);
            g0Var.onSubscribe(repeatWhenObserver);
            e0Var.a(repeatWhenObserver.f68649e);
            repeatWhenObserver.d();
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            EmptyDisposable.error(th, g0Var);
        }
    }
}
