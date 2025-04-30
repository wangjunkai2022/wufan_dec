package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
/* compiled from: ObservableTakeLastOne.java */
/* loaded from: classes5.dex */
public final class q1<T> extends io.reactivex.internal.operators.observable.a<T, T> {

    /* compiled from: ObservableTakeLastOne.java */
    /* loaded from: classes5.dex */
    static final class a<T> implements io.reactivex.g0<T>, io.reactivex.disposables.b {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super T> f69242a;

        /* renamed from: b  reason: collision with root package name */
        io.reactivex.disposables.b f69243b;

        /* renamed from: c  reason: collision with root package name */
        T f69244c;

        a(io.reactivex.g0<? super T> g0Var) {
            this.f69242a = g0Var;
        }

        void a() {
            T t3 = this.f69244c;
            if (t3 != null) {
                this.f69244c = null;
                this.f69242a.onNext(t3);
            }
            this.f69242a.onComplete();
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.f69244c = null;
            this.f69243b.dispose();
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f69243b.isDisposed();
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            a();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            this.f69244c = null;
            this.f69242a.onError(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t3) {
            this.f69244c = t3;
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.validate(this.f69243b, bVar)) {
                this.f69243b = bVar;
                this.f69242a.onSubscribe(this);
            }
        }
    }

    public q1(io.reactivex.e0<T> e0Var) {
        super(e0Var);
    }

    @Override // io.reactivex.z
    public void F5(io.reactivex.g0<? super T> g0Var) {
        this.f68961a.a(new a(g0Var));
    }
}
