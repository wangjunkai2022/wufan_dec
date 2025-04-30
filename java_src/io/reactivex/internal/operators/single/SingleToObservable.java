package io.reactivex.internal.operators.single;

import io.reactivex.g0;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.observers.DeferredScalarDisposable;
import io.reactivex.l0;
import io.reactivex.o0;
import io.reactivex.z;
/* loaded from: classes5.dex */
public final class SingleToObservable<T> extends z<T> {

    /* renamed from: a  reason: collision with root package name */
    final o0<? extends T> f69705a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class SingleToObservableObserver<T> extends DeferredScalarDisposable<T> implements l0<T> {
        private static final long serialVersionUID = 3786543492451018833L;

        /* renamed from: h  reason: collision with root package name */
        io.reactivex.disposables.b f69706h;

        SingleToObservableObserver(g0<? super T> g0Var) {
            super(g0Var);
        }

        @Override // io.reactivex.internal.observers.DeferredScalarDisposable, io.reactivex.disposables.b
        public void dispose() {
            super.dispose();
            this.f69706h.dispose();
        }

        @Override // io.reactivex.l0
        public void onError(Throwable th) {
            c(th);
        }

        @Override // io.reactivex.l0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.validate(this.f69706h, bVar)) {
                this.f69706h = bVar;
                this.f65876a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.l0
        public void onSuccess(T t3) {
            b(t3);
        }
    }

    public SingleToObservable(o0<? extends T> o0Var) {
        this.f69705a = o0Var;
    }

    public static <T> l0<T> f8(g0<? super T> g0Var) {
        return new SingleToObservableObserver(g0Var);
    }

    @Override // io.reactivex.z
    public void F5(g0<? super T> g0Var) {
        this.f69705a.a(f8(g0Var));
    }
}
