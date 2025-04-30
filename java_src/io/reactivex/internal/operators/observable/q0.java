package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
/* compiled from: ObservableHide.java */
/* loaded from: classes5.dex */
public final class q0<T> extends io.reactivex.internal.operators.observable.a<T, T> {

    /* compiled from: ObservableHide.java */
    /* loaded from: classes5.dex */
    static final class a<T> implements io.reactivex.g0<T>, io.reactivex.disposables.b {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super T> f69240a;

        /* renamed from: b  reason: collision with root package name */
        io.reactivex.disposables.b f69241b;

        a(io.reactivex.g0<? super T> g0Var) {
            this.f69240a = g0Var;
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.f69241b.dispose();
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f69241b.isDisposed();
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            this.f69240a.onComplete();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            this.f69240a.onError(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t3) {
            this.f69240a.onNext(t3);
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.validate(this.f69241b, bVar)) {
                this.f69241b = bVar;
                this.f69240a.onSubscribe(this);
            }
        }
    }

    public q0(io.reactivex.e0<T> e0Var) {
        super(e0Var);
    }

    @Override // io.reactivex.z
    protected void F5(io.reactivex.g0<? super T> g0Var) {
        this.f68961a.a(new a(g0Var));
    }
}
