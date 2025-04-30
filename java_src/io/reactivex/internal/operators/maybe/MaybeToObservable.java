package io.reactivex.internal.operators.maybe;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.observers.DeferredScalarDisposable;
/* loaded from: classes5.dex */
public final class MaybeToObservable<T> extends io.reactivex.z<T> implements x2.f<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.w<T> f67789a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class MaybeToObservableObserver<T> extends DeferredScalarDisposable<T> implements io.reactivex.t<T> {
        private static final long serialVersionUID = 7603343402964826922L;

        /* renamed from: h  reason: collision with root package name */
        io.reactivex.disposables.b f67790h;

        MaybeToObservableObserver(io.reactivex.g0<? super T> g0Var) {
            super(g0Var);
        }

        @Override // io.reactivex.internal.observers.DeferredScalarDisposable, io.reactivex.disposables.b
        public void dispose() {
            super.dispose();
            this.f67790h.dispose();
        }

        @Override // io.reactivex.t
        public void onComplete() {
            a();
        }

        @Override // io.reactivex.t
        public void onError(Throwable th) {
            c(th);
        }

        @Override // io.reactivex.t
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.validate(this.f67790h, bVar)) {
                this.f67790h = bVar;
                this.f65876a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.t
        public void onSuccess(T t3) {
            b(t3);
        }
    }

    public MaybeToObservable(io.reactivex.w<T> wVar) {
        this.f67789a = wVar;
    }

    public static <T> io.reactivex.t<T> f8(io.reactivex.g0<? super T> g0Var) {
        return new MaybeToObservableObserver(g0Var);
    }

    @Override // io.reactivex.z
    protected void F5(io.reactivex.g0<? super T> g0Var) {
        this.f67789a.a(f8(g0Var));
    }

    @Override // x2.f
    public io.reactivex.w<T> source() {
        return this.f67789a;
    }
}
