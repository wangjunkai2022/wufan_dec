package io.reactivex.internal.operators.observable;
/* compiled from: ObservableIgnoreElements.java */
/* loaded from: classes5.dex */
public final class r0<T> extends io.reactivex.internal.operators.observable.a<T, T> {

    /* compiled from: ObservableIgnoreElements.java */
    /* loaded from: classes5.dex */
    static final class a<T> implements io.reactivex.g0<T>, io.reactivex.disposables.b {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super T> f69257a;

        /* renamed from: b  reason: collision with root package name */
        io.reactivex.disposables.b f69258b;

        a(io.reactivex.g0<? super T> g0Var) {
            this.f69257a = g0Var;
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.f69258b.dispose();
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f69258b.isDisposed();
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            this.f69257a.onComplete();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            this.f69257a.onError(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t3) {
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            this.f69258b = bVar;
            this.f69257a.onSubscribe(this);
        }
    }

    public r0(io.reactivex.e0<T> e0Var) {
        super(e0Var);
    }

    @Override // io.reactivex.z
    public void F5(io.reactivex.g0<? super T> g0Var) {
        this.f68961a.a(new a(g0Var));
    }
}
