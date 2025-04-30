package io.reactivex.internal.operators.maybe;

import io.reactivex.internal.disposables.DisposableHelper;
/* compiled from: MaybeIgnoreElement.java */
/* loaded from: classes5.dex */
public final class u<T> extends io.reactivex.internal.operators.maybe.a<T, T> {

    /* compiled from: MaybeIgnoreElement.java */
    /* loaded from: classes5.dex */
    static final class a<T> implements io.reactivex.t<T>, io.reactivex.disposables.b {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.t<? super T> f67896a;

        /* renamed from: b  reason: collision with root package name */
        io.reactivex.disposables.b f67897b;

        a(io.reactivex.t<? super T> tVar) {
            this.f67896a = tVar;
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.f67897b.dispose();
            this.f67897b = DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f67897b.isDisposed();
        }

        @Override // io.reactivex.t
        public void onComplete() {
            this.f67897b = DisposableHelper.DISPOSED;
            this.f67896a.onComplete();
        }

        @Override // io.reactivex.t
        public void onError(Throwable th) {
            this.f67897b = DisposableHelper.DISPOSED;
            this.f67896a.onError(th);
        }

        @Override // io.reactivex.t
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.validate(this.f67897b, bVar)) {
                this.f67897b = bVar;
                this.f67896a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.t
        public void onSuccess(T t3) {
            this.f67897b = DisposableHelper.DISPOSED;
            this.f67896a.onComplete();
        }
    }

    public u(io.reactivex.w<T> wVar) {
        super(wVar);
    }

    @Override // io.reactivex.q
    protected void o1(io.reactivex.t<? super T> tVar) {
        this.f67812a.a(new a(tVar));
    }
}
