package io.reactivex.internal.operators.single;

import io.reactivex.i0;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.l0;
import io.reactivex.o0;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class SingleTakeUntil<T, U> extends i0<T> {

    /* renamed from: a  reason: collision with root package name */
    final o0<T> f69684a;

    /* renamed from: b  reason: collision with root package name */
    final l3.b<U> f69685b;

    /* loaded from: classes5.dex */
    static final class TakeUntilMainObserver<T> extends AtomicReference<io.reactivex.disposables.b> implements l0<T>, io.reactivex.disposables.b {
        private static final long serialVersionUID = -622603812305745221L;

        /* renamed from: a  reason: collision with root package name */
        final l0<? super T> f69686a;

        /* renamed from: b  reason: collision with root package name */
        final TakeUntilOtherSubscriber f69687b = new TakeUntilOtherSubscriber(this);

        TakeUntilMainObserver(l0<? super T> l0Var) {
            this.f69686a = l0Var;
        }

        void a(Throwable th) {
            io.reactivex.disposables.b andSet;
            io.reactivex.disposables.b bVar = get();
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (bVar != disposableHelper && (andSet = getAndSet(disposableHelper)) != disposableHelper) {
                if (andSet != null) {
                    andSet.dispose();
                }
                this.f69686a.onError(th);
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            DisposableHelper.dispose(this);
            this.f69687b.a();
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.l0
        public void onError(Throwable th) {
            this.f69687b.a();
            io.reactivex.disposables.b bVar = get();
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (bVar != disposableHelper && getAndSet(disposableHelper) != disposableHelper) {
                this.f69686a.onError(th);
            } else {
                io.reactivex.plugins.a.Y(th);
            }
        }

        @Override // io.reactivex.l0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            DisposableHelper.setOnce(this, bVar);
        }

        @Override // io.reactivex.l0
        public void onSuccess(T t3) {
            this.f69687b.a();
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (getAndSet(disposableHelper) != disposableHelper) {
                this.f69686a.onSuccess(t3);
            }
        }
    }

    /* loaded from: classes5.dex */
    static final class TakeUntilOtherSubscriber extends AtomicReference<l3.d> implements io.reactivex.o<Object> {
        private static final long serialVersionUID = 5170026210238877381L;

        /* renamed from: a  reason: collision with root package name */
        final TakeUntilMainObserver<?> f69688a;

        TakeUntilOtherSubscriber(TakeUntilMainObserver<?> takeUntilMainObserver) {
            this.f69688a = takeUntilMainObserver;
        }

        public void a() {
            SubscriptionHelper.cancel(this);
        }

        @Override // l3.c
        public void onComplete() {
            l3.d dVar = get();
            SubscriptionHelper subscriptionHelper = SubscriptionHelper.CANCELLED;
            if (dVar != subscriptionHelper) {
                lazySet(subscriptionHelper);
                this.f69688a.a(new CancellationException());
            }
        }

        @Override // l3.c
        public void onError(Throwable th) {
            this.f69688a.a(th);
        }

        @Override // l3.c
        public void onNext(Object obj) {
            if (SubscriptionHelper.cancel(this)) {
                this.f69688a.a(new CancellationException());
            }
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            SubscriptionHelper.setOnce(this, dVar, Long.MAX_VALUE);
        }
    }

    public SingleTakeUntil(o0<T> o0Var, l3.b<U> bVar) {
        this.f69684a = o0Var;
        this.f69685b = bVar;
    }

    @Override // io.reactivex.i0
    protected void Y0(l0<? super T> l0Var) {
        TakeUntilMainObserver takeUntilMainObserver = new TakeUntilMainObserver(l0Var);
        l0Var.onSubscribe(takeUntilMainObserver);
        this.f69685b.c(takeUntilMainObserver.f69687b);
        this.f69684a.a(takeUntilMainObserver);
    }
}
