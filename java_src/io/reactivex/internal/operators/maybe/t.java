package io.reactivex.internal.operators.maybe;

import io.reactivex.internal.disposables.DisposableHelper;
/* compiled from: MaybeHide.java */
/* loaded from: classes5.dex */
public final class t<T> extends io.reactivex.internal.operators.maybe.a<T, T> {

    /* compiled from: MaybeHide.java */
    /* loaded from: classes5.dex */
    static final class a<T> implements io.reactivex.t<T>, io.reactivex.disposables.b {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.t<? super T> f67894a;

        /* renamed from: b  reason: collision with root package name */
        io.reactivex.disposables.b f67895b;

        a(io.reactivex.t<? super T> tVar) {
            this.f67894a = tVar;
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.f67895b.dispose();
            this.f67895b = DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f67895b.isDisposed();
        }

        @Override // io.reactivex.t
        public void onComplete() {
            this.f67894a.onComplete();
        }

        @Override // io.reactivex.t
        public void onError(Throwable th) {
            this.f67894a.onError(th);
        }

        @Override // io.reactivex.t
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.validate(this.f67895b, bVar)) {
                this.f67895b = bVar;
                this.f67894a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.t
        public void onSuccess(T t3) {
            this.f67894a.onSuccess(t3);
        }
    }

    public t(io.reactivex.w<T> wVar) {
        super(wVar);
    }

    @Override // io.reactivex.q
    protected void o1(io.reactivex.t<? super T> tVar) {
        this.f67812a.a(new a(tVar));
    }
}
