package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.util.AtomicThrowable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class ObservableTakeUntil<T, U> extends a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.e0<? extends U> f68782b;

    /* loaded from: classes5.dex */
    static final class TakeUntilMainObserver<T, U> extends AtomicInteger implements io.reactivex.g0<T>, io.reactivex.disposables.b {
        private static final long serialVersionUID = 1418547743690811973L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super T> f68783a;

        /* renamed from: b  reason: collision with root package name */
        final AtomicReference<io.reactivex.disposables.b> f68784b = new AtomicReference<>();

        /* renamed from: c  reason: collision with root package name */
        final TakeUntilMainObserver<T, U>.OtherObserver f68785c = new OtherObserver();

        /* renamed from: d  reason: collision with root package name */
        final AtomicThrowable f68786d = new AtomicThrowable();

        /* loaded from: classes5.dex */
        final class OtherObserver extends AtomicReference<io.reactivex.disposables.b> implements io.reactivex.g0<U> {
            private static final long serialVersionUID = -8693423678067375039L;

            OtherObserver() {
            }

            @Override // io.reactivex.g0
            public void onComplete() {
                TakeUntilMainObserver.this.a();
            }

            @Override // io.reactivex.g0
            public void onError(Throwable th) {
                TakeUntilMainObserver.this.b(th);
            }

            @Override // io.reactivex.g0
            public void onNext(U u3) {
                DisposableHelper.dispose(this);
                TakeUntilMainObserver.this.a();
            }

            @Override // io.reactivex.g0
            public void onSubscribe(io.reactivex.disposables.b bVar) {
                DisposableHelper.setOnce(this, bVar);
            }
        }

        TakeUntilMainObserver(io.reactivex.g0<? super T> g0Var) {
            this.f68783a = g0Var;
        }

        void a() {
            DisposableHelper.dispose(this.f68784b);
            io.reactivex.internal.util.g.a(this.f68783a, this, this.f68786d);
        }

        void b(Throwable th) {
            DisposableHelper.dispose(this.f68784b);
            io.reactivex.internal.util.g.c(this.f68783a, th, this, this.f68786d);
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            DisposableHelper.dispose(this.f68784b);
            DisposableHelper.dispose(this.f68785c);
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(this.f68784b.get());
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            DisposableHelper.dispose(this.f68785c);
            io.reactivex.internal.util.g.a(this.f68783a, this, this.f68786d);
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            DisposableHelper.dispose(this.f68785c);
            io.reactivex.internal.util.g.c(this.f68783a, th, this, this.f68786d);
        }

        @Override // io.reactivex.g0
        public void onNext(T t3) {
            io.reactivex.internal.util.g.e(this.f68783a, t3, this, this.f68786d);
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            DisposableHelper.setOnce(this.f68784b, bVar);
        }
    }

    public ObservableTakeUntil(io.reactivex.e0<T> e0Var, io.reactivex.e0<? extends U> e0Var2) {
        super(e0Var);
        this.f68782b = e0Var2;
    }

    @Override // io.reactivex.z
    public void F5(io.reactivex.g0<? super T> g0Var) {
        TakeUntilMainObserver takeUntilMainObserver = new TakeUntilMainObserver(g0Var);
        g0Var.onSubscribe(takeUntilMainObserver);
        this.f68782b.a(takeUntilMainObserver.f68785c);
        this.f68961a.a(takeUntilMainObserver);
    }
}
