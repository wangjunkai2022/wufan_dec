package io.reactivex.internal.operators.maybe;

import io.reactivex.internal.disposables.DisposableHelper;
/* compiled from: MaybeDetach.java */
/* loaded from: classes5.dex */
public final class e<T> extends io.reactivex.internal.operators.maybe.a<T, T> {

    /* compiled from: MaybeDetach.java */
    /* loaded from: classes5.dex */
    static final class a<T> implements io.reactivex.t<T>, io.reactivex.disposables.b {

        /* renamed from: a  reason: collision with root package name */
        io.reactivex.t<? super T> f67835a;

        /* renamed from: b  reason: collision with root package name */
        io.reactivex.disposables.b f67836b;

        a(io.reactivex.t<? super T> tVar) {
            this.f67835a = tVar;
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.f67835a = null;
            this.f67836b.dispose();
            this.f67836b = DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f67836b.isDisposed();
        }

        @Override // io.reactivex.t
        public void onComplete() {
            this.f67836b = DisposableHelper.DISPOSED;
            io.reactivex.t<? super T> tVar = this.f67835a;
            if (tVar != null) {
                this.f67835a = null;
                tVar.onComplete();
            }
        }

        @Override // io.reactivex.t
        public void onError(Throwable th) {
            this.f67836b = DisposableHelper.DISPOSED;
            io.reactivex.t<? super T> tVar = this.f67835a;
            if (tVar != null) {
                this.f67835a = null;
                tVar.onError(th);
            }
        }

        @Override // io.reactivex.t
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.validate(this.f67836b, bVar)) {
                this.f67836b = bVar;
                this.f67835a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.t
        public void onSuccess(T t3) {
            this.f67836b = DisposableHelper.DISPOSED;
            io.reactivex.t<? super T> tVar = this.f67835a;
            if (tVar != null) {
                this.f67835a = null;
                tVar.onSuccess(t3);
            }
        }
    }

    public e(io.reactivex.w<T> wVar) {
        super(wVar);
    }

    @Override // io.reactivex.q
    protected void o1(io.reactivex.t<? super T> tVar) {
        this.f67812a.a(new a(tVar));
    }
}
