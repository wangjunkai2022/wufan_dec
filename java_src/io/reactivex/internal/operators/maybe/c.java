package io.reactivex.internal.operators.maybe;

import io.reactivex.i0;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.l0;
/* compiled from: MaybeCount.java */
/* loaded from: classes5.dex */
public final class c<T> extends i0<Long> implements x2.f<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.w<T> f67823a;

    /* compiled from: MaybeCount.java */
    /* loaded from: classes5.dex */
    static final class a implements io.reactivex.t<Object>, io.reactivex.disposables.b {

        /* renamed from: a  reason: collision with root package name */
        final l0<? super Long> f67824a;

        /* renamed from: b  reason: collision with root package name */
        io.reactivex.disposables.b f67825b;

        a(l0<? super Long> l0Var) {
            this.f67824a = l0Var;
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.f67825b.dispose();
            this.f67825b = DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f67825b.isDisposed();
        }

        @Override // io.reactivex.t
        public void onComplete() {
            this.f67825b = DisposableHelper.DISPOSED;
            this.f67824a.onSuccess(0L);
        }

        @Override // io.reactivex.t
        public void onError(Throwable th) {
            this.f67825b = DisposableHelper.DISPOSED;
            this.f67824a.onError(th);
        }

        @Override // io.reactivex.t
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.validate(this.f67825b, bVar)) {
                this.f67825b = bVar;
                this.f67824a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.t
        public void onSuccess(Object obj) {
            this.f67825b = DisposableHelper.DISPOSED;
            this.f67824a.onSuccess(1L);
        }
    }

    public c(io.reactivex.w<T> wVar) {
        this.f67823a = wVar;
    }

    @Override // io.reactivex.i0
    protected void Y0(l0<? super Long> l0Var) {
        this.f67823a.a(new a(l0Var));
    }

    @Override // x2.f
    public io.reactivex.w<T> source() {
        return this.f67823a;
    }
}
