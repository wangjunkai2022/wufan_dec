package io.reactivex.internal.operators.maybe;

import io.reactivex.internal.disposables.DisposableHelper;
/* compiled from: MaybeIsEmpty.java */
/* loaded from: classes5.dex */
public final class w<T> extends io.reactivex.internal.operators.maybe.a<T, Boolean> {

    /* compiled from: MaybeIsEmpty.java */
    /* loaded from: classes5.dex */
    static final class a<T> implements io.reactivex.t<T>, io.reactivex.disposables.b {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.t<? super Boolean> f67901a;

        /* renamed from: b  reason: collision with root package name */
        io.reactivex.disposables.b f67902b;

        a(io.reactivex.t<? super Boolean> tVar) {
            this.f67901a = tVar;
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.f67902b.dispose();
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f67902b.isDisposed();
        }

        @Override // io.reactivex.t
        public void onComplete() {
            this.f67901a.onSuccess(Boolean.TRUE);
        }

        @Override // io.reactivex.t
        public void onError(Throwable th) {
            this.f67901a.onError(th);
        }

        @Override // io.reactivex.t
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.validate(this.f67902b, bVar)) {
                this.f67902b = bVar;
                this.f67901a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.t
        public void onSuccess(T t3) {
            this.f67901a.onSuccess(Boolean.FALSE);
        }
    }

    public w(io.reactivex.w<T> wVar) {
        super(wVar);
    }

    @Override // io.reactivex.q
    protected void o1(io.reactivex.t<? super Boolean> tVar) {
        this.f67812a.a(new a(tVar));
    }
}
