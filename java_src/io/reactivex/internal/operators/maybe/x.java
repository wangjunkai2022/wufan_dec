package io.reactivex.internal.operators.maybe;

import io.reactivex.i0;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.l0;
/* compiled from: MaybeIsEmptySingle.java */
/* loaded from: classes5.dex */
public final class x<T> extends i0<Boolean> implements x2.f<T>, x2.c<Boolean> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.w<T> f67903a;

    /* compiled from: MaybeIsEmptySingle.java */
    /* loaded from: classes5.dex */
    static final class a<T> implements io.reactivex.t<T>, io.reactivex.disposables.b {

        /* renamed from: a  reason: collision with root package name */
        final l0<? super Boolean> f67904a;

        /* renamed from: b  reason: collision with root package name */
        io.reactivex.disposables.b f67905b;

        a(l0<? super Boolean> l0Var) {
            this.f67904a = l0Var;
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.f67905b.dispose();
            this.f67905b = DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f67905b.isDisposed();
        }

        @Override // io.reactivex.t
        public void onComplete() {
            this.f67905b = DisposableHelper.DISPOSED;
            this.f67904a.onSuccess(Boolean.TRUE);
        }

        @Override // io.reactivex.t
        public void onError(Throwable th) {
            this.f67905b = DisposableHelper.DISPOSED;
            this.f67904a.onError(th);
        }

        @Override // io.reactivex.t
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.validate(this.f67905b, bVar)) {
                this.f67905b = bVar;
                this.f67904a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.t
        public void onSuccess(T t3) {
            this.f67905b = DisposableHelper.DISPOSED;
            this.f67904a.onSuccess(Boolean.FALSE);
        }
    }

    public x(io.reactivex.w<T> wVar) {
        this.f67903a = wVar;
    }

    @Override // io.reactivex.i0
    protected void Y0(l0<? super Boolean> l0Var) {
        this.f67903a.a(new a(l0Var));
    }

    @Override // x2.c
    public io.reactivex.q<Boolean> c() {
        return io.reactivex.plugins.a.Q(new w(this.f67903a));
    }

    @Override // x2.f
    public io.reactivex.w<T> source() {
        return this.f67903a;
    }
}
