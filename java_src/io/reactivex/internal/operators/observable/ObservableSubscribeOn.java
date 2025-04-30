package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class ObservableSubscribeOn<T> extends io.reactivex.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.h0 f68737b;

    /* loaded from: classes5.dex */
    static final class SubscribeOnObserver<T> extends AtomicReference<io.reactivex.disposables.b> implements io.reactivex.g0<T>, io.reactivex.disposables.b {
        private static final long serialVersionUID = 8094547886072529208L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super T> f68738a;

        /* renamed from: b  reason: collision with root package name */
        final AtomicReference<io.reactivex.disposables.b> f68739b = new AtomicReference<>();

        SubscribeOnObserver(io.reactivex.g0<? super T> g0Var) {
            this.f68738a = g0Var;
        }

        void a(io.reactivex.disposables.b bVar) {
            DisposableHelper.setOnce(this, bVar);
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            DisposableHelper.dispose(this.f68739b);
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            this.f68738a.onComplete();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            this.f68738a.onError(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t3) {
            this.f68738a.onNext(t3);
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            DisposableHelper.setOnce(this.f68739b, bVar);
        }
    }

    /* loaded from: classes5.dex */
    final class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private final SubscribeOnObserver<T> f68740a;

        a(SubscribeOnObserver<T> subscribeOnObserver) {
            this.f68740a = subscribeOnObserver;
        }

        @Override // java.lang.Runnable
        public void run() {
            ObservableSubscribeOn.this.f68961a.a(this.f68740a);
        }
    }

    public ObservableSubscribeOn(io.reactivex.e0<T> e0Var, io.reactivex.h0 h0Var) {
        super(e0Var);
        this.f68737b = h0Var;
    }

    @Override // io.reactivex.z
    public void F5(io.reactivex.g0<? super T> g0Var) {
        SubscribeOnObserver subscribeOnObserver = new SubscribeOnObserver(g0Var);
        g0Var.onSubscribe(subscribeOnObserver);
        subscribeOnObserver.a(this.f68737b.e(new a(subscribeOnObserver)));
    }
}
