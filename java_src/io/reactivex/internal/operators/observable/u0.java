package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
/* compiled from: ObservableLastMaybe.java */
/* loaded from: classes5.dex */
public final class u0<T> extends io.reactivex.q<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.e0<T> f69303a;

    /* compiled from: ObservableLastMaybe.java */
    /* loaded from: classes5.dex */
    static final class a<T> implements io.reactivex.g0<T>, io.reactivex.disposables.b {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.t<? super T> f69304a;

        /* renamed from: b  reason: collision with root package name */
        io.reactivex.disposables.b f69305b;

        /* renamed from: c  reason: collision with root package name */
        T f69306c;

        a(io.reactivex.t<? super T> tVar) {
            this.f69304a = tVar;
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.f69305b.dispose();
            this.f69305b = DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f69305b == DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            this.f69305b = DisposableHelper.DISPOSED;
            T t3 = this.f69306c;
            if (t3 != null) {
                this.f69306c = null;
                this.f69304a.onSuccess(t3);
                return;
            }
            this.f69304a.onComplete();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            this.f69305b = DisposableHelper.DISPOSED;
            this.f69306c = null;
            this.f69304a.onError(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t3) {
            this.f69306c = t3;
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.validate(this.f69305b, bVar)) {
                this.f69305b = bVar;
                this.f69304a.onSubscribe(this);
            }
        }
    }

    public u0(io.reactivex.e0<T> e0Var) {
        this.f69303a = e0Var;
    }

    @Override // io.reactivex.q
    protected void o1(io.reactivex.t<? super T> tVar) {
        this.f69303a.a(new a(tVar));
    }
}
