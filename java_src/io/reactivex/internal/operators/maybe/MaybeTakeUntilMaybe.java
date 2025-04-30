package io.reactivex.internal.operators.maybe;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class MaybeTakeUntilMaybe<T, U> extends a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.w<U> f67759b;

    /* loaded from: classes5.dex */
    static final class TakeUntilMainMaybeObserver<T, U> extends AtomicReference<io.reactivex.disposables.b> implements io.reactivex.t<T>, io.reactivex.disposables.b {
        private static final long serialVersionUID = -2187421758664251153L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.t<? super T> f67760a;

        /* renamed from: b  reason: collision with root package name */
        final TakeUntilOtherMaybeObserver<U> f67761b = new TakeUntilOtherMaybeObserver<>(this);

        /* loaded from: classes5.dex */
        static final class TakeUntilOtherMaybeObserver<U> extends AtomicReference<io.reactivex.disposables.b> implements io.reactivex.t<U> {
            private static final long serialVersionUID = -1266041316834525931L;

            /* renamed from: a  reason: collision with root package name */
            final TakeUntilMainMaybeObserver<?, U> f67762a;

            TakeUntilOtherMaybeObserver(TakeUntilMainMaybeObserver<?, U> takeUntilMainMaybeObserver) {
                this.f67762a = takeUntilMainMaybeObserver;
            }

            @Override // io.reactivex.t
            public void onComplete() {
                this.f67762a.a();
            }

            @Override // io.reactivex.t
            public void onError(Throwable th) {
                this.f67762a.b(th);
            }

            @Override // io.reactivex.t
            public void onSubscribe(io.reactivex.disposables.b bVar) {
                DisposableHelper.setOnce(this, bVar);
            }

            @Override // io.reactivex.t
            public void onSuccess(Object obj) {
                this.f67762a.a();
            }
        }

        TakeUntilMainMaybeObserver(io.reactivex.t<? super T> tVar) {
            this.f67760a = tVar;
        }

        void a() {
            if (DisposableHelper.dispose(this)) {
                this.f67760a.onComplete();
            }
        }

        void b(Throwable th) {
            if (DisposableHelper.dispose(this)) {
                this.f67760a.onError(th);
            } else {
                io.reactivex.plugins.a.Y(th);
            }
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            DisposableHelper.dispose(this);
            DisposableHelper.dispose(this.f67761b);
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.t
        public void onComplete() {
            DisposableHelper.dispose(this.f67761b);
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (getAndSet(disposableHelper) != disposableHelper) {
                this.f67760a.onComplete();
            }
        }

        @Override // io.reactivex.t
        public void onError(Throwable th) {
            DisposableHelper.dispose(this.f67761b);
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (getAndSet(disposableHelper) != disposableHelper) {
                this.f67760a.onError(th);
            } else {
                io.reactivex.plugins.a.Y(th);
            }
        }

        @Override // io.reactivex.t
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            DisposableHelper.setOnce(this, bVar);
        }

        @Override // io.reactivex.t
        public void onSuccess(T t3) {
            DisposableHelper.dispose(this.f67761b);
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (getAndSet(disposableHelper) != disposableHelper) {
                this.f67760a.onSuccess(t3);
            }
        }
    }

    public MaybeTakeUntilMaybe(io.reactivex.w<T> wVar, io.reactivex.w<U> wVar2) {
        super(wVar);
        this.f67759b = wVar2;
    }

    @Override // io.reactivex.q
    protected void o1(io.reactivex.t<? super T> tVar) {
        TakeUntilMainMaybeObserver takeUntilMainMaybeObserver = new TakeUntilMainMaybeObserver(tVar);
        tVar.onSubscribe(takeUntilMainMaybeObserver);
        this.f67759b.a(takeUntilMainMaybeObserver.f67761b);
        this.f67812a.a(takeUntilMainMaybeObserver);
    }
}
