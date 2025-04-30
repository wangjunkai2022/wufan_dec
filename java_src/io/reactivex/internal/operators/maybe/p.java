package io.reactivex.internal.operators.maybe;

import io.reactivex.internal.disposables.DisposableHelper;
/* compiled from: MaybeFromCompletable.java */
/* loaded from: classes5.dex */
public final class p<T> extends io.reactivex.q<T> implements x2.e {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.g f67884a;

    /* compiled from: MaybeFromCompletable.java */
    /* loaded from: classes5.dex */
    static final class a<T> implements io.reactivex.d, io.reactivex.disposables.b {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.t<? super T> f67885a;

        /* renamed from: b  reason: collision with root package name */
        io.reactivex.disposables.b f67886b;

        a(io.reactivex.t<? super T> tVar) {
            this.f67885a = tVar;
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.f67886b.dispose();
            this.f67886b = DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f67886b.isDisposed();
        }

        @Override // io.reactivex.d
        public void onComplete() {
            this.f67886b = DisposableHelper.DISPOSED;
            this.f67885a.onComplete();
        }

        @Override // io.reactivex.d
        public void onError(Throwable th) {
            this.f67886b = DisposableHelper.DISPOSED;
            this.f67885a.onError(th);
        }

        @Override // io.reactivex.d
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.validate(this.f67886b, bVar)) {
                this.f67886b = bVar;
                this.f67885a.onSubscribe(this);
            }
        }
    }

    public p(io.reactivex.g gVar) {
        this.f67884a = gVar;
    }

    @Override // io.reactivex.q
    protected void o1(io.reactivex.t<? super T> tVar) {
        this.f67884a.a(new a(tVar));
    }

    @Override // x2.e
    public io.reactivex.g source() {
        return this.f67884a;
    }
}
