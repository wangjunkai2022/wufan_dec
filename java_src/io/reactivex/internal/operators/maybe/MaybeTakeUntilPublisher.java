package io.reactivex.internal.operators.maybe;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class MaybeTakeUntilPublisher<T, U> extends a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final l3.b<U> f67763b;

    /* loaded from: classes5.dex */
    static final class TakeUntilMainMaybeObserver<T, U> extends AtomicReference<io.reactivex.disposables.b> implements io.reactivex.t<T>, io.reactivex.disposables.b {
        private static final long serialVersionUID = -2187421758664251153L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.t<? super T> f67764a;

        /* renamed from: b  reason: collision with root package name */
        final TakeUntilOtherMaybeObserver<U> f67765b = new TakeUntilOtherMaybeObserver<>(this);

        /* loaded from: classes5.dex */
        static final class TakeUntilOtherMaybeObserver<U> extends AtomicReference<l3.d> implements io.reactivex.o<U> {
            private static final long serialVersionUID = -1266041316834525931L;

            /* renamed from: a  reason: collision with root package name */
            final TakeUntilMainMaybeObserver<?, U> f67766a;

            TakeUntilOtherMaybeObserver(TakeUntilMainMaybeObserver<?, U> takeUntilMainMaybeObserver) {
                this.f67766a = takeUntilMainMaybeObserver;
            }

            @Override // l3.c
            public void onComplete() {
                this.f67766a.a();
            }

            @Override // l3.c
            public void onError(Throwable th) {
                this.f67766a.b(th);
            }

            @Override // l3.c
            public void onNext(Object obj) {
                SubscriptionHelper.cancel(this);
                this.f67766a.a();
            }

            @Override // io.reactivex.o, l3.c
            public void onSubscribe(l3.d dVar) {
                SubscriptionHelper.setOnce(this, dVar, Long.MAX_VALUE);
            }
        }

        TakeUntilMainMaybeObserver(io.reactivex.t<? super T> tVar) {
            this.f67764a = tVar;
        }

        void a() {
            if (DisposableHelper.dispose(this)) {
                this.f67764a.onComplete();
            }
        }

        void b(Throwable th) {
            if (DisposableHelper.dispose(this)) {
                this.f67764a.onError(th);
            } else {
                io.reactivex.plugins.a.Y(th);
            }
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            DisposableHelper.dispose(this);
            SubscriptionHelper.cancel(this.f67765b);
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.t
        public void onComplete() {
            SubscriptionHelper.cancel(this.f67765b);
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (getAndSet(disposableHelper) != disposableHelper) {
                this.f67764a.onComplete();
            }
        }

        @Override // io.reactivex.t
        public void onError(Throwable th) {
            SubscriptionHelper.cancel(this.f67765b);
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (getAndSet(disposableHelper) != disposableHelper) {
                this.f67764a.onError(th);
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
            SubscriptionHelper.cancel(this.f67765b);
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (getAndSet(disposableHelper) != disposableHelper) {
                this.f67764a.onSuccess(t3);
            }
        }
    }

    public MaybeTakeUntilPublisher(io.reactivex.w<T> wVar, l3.b<U> bVar) {
        super(wVar);
        this.f67763b = bVar;
    }

    @Override // io.reactivex.q
    protected void o1(io.reactivex.t<? super T> tVar) {
        TakeUntilMainMaybeObserver takeUntilMainMaybeObserver = new TakeUntilMainMaybeObserver(tVar);
        tVar.onSubscribe(takeUntilMainMaybeObserver);
        this.f67763b.c(takeUntilMainMaybeObserver.f67765b);
        this.f67812a.a(takeUntilMainMaybeObserver);
    }
}
