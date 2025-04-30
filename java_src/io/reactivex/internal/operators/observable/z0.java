package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
/* compiled from: ObservableMaterialize.java */
/* loaded from: classes5.dex */
public final class z0<T> extends io.reactivex.internal.operators.observable.a<T, io.reactivex.y<T>> {

    /* compiled from: ObservableMaterialize.java */
    /* loaded from: classes5.dex */
    static final class a<T> implements io.reactivex.g0<T>, io.reactivex.disposables.b {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super io.reactivex.y<T>> f69414a;

        /* renamed from: b  reason: collision with root package name */
        io.reactivex.disposables.b f69415b;

        a(io.reactivex.g0<? super io.reactivex.y<T>> g0Var) {
            this.f69414a = g0Var;
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.f69415b.dispose();
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f69415b.isDisposed();
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            this.f69414a.onNext(io.reactivex.y.a());
            this.f69414a.onComplete();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            this.f69414a.onNext(io.reactivex.y.b(th));
            this.f69414a.onComplete();
        }

        @Override // io.reactivex.g0
        public void onNext(T t3) {
            this.f69414a.onNext(io.reactivex.y.c(t3));
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.validate(this.f69415b, bVar)) {
                this.f69415b = bVar;
                this.f69414a.onSubscribe(this);
            }
        }
    }

    public z0(io.reactivex.e0<T> e0Var) {
        super(e0Var);
    }

    @Override // io.reactivex.z
    public void F5(io.reactivex.g0<? super io.reactivex.y<T>> g0Var) {
        this.f68961a.a(new a(g0Var));
    }
}
