package io.reactivex.internal.operators.maybe;

import io.reactivex.i0;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.l0;
/* compiled from: MaybeContains.java */
/* loaded from: classes5.dex */
public final class b<T> extends i0<Boolean> implements x2.f<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.w<T> f67817a;

    /* renamed from: b  reason: collision with root package name */
    final Object f67818b;

    /* compiled from: MaybeContains.java */
    /* loaded from: classes5.dex */
    static final class a implements io.reactivex.t<Object>, io.reactivex.disposables.b {

        /* renamed from: a  reason: collision with root package name */
        final l0<? super Boolean> f67819a;

        /* renamed from: b  reason: collision with root package name */
        final Object f67820b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.disposables.b f67821c;

        a(l0<? super Boolean> l0Var, Object obj) {
            this.f67819a = l0Var;
            this.f67820b = obj;
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.f67821c.dispose();
            this.f67821c = DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f67821c.isDisposed();
        }

        @Override // io.reactivex.t
        public void onComplete() {
            this.f67821c = DisposableHelper.DISPOSED;
            this.f67819a.onSuccess(Boolean.FALSE);
        }

        @Override // io.reactivex.t
        public void onError(Throwable th) {
            this.f67821c = DisposableHelper.DISPOSED;
            this.f67819a.onError(th);
        }

        @Override // io.reactivex.t
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.validate(this.f67821c, bVar)) {
                this.f67821c = bVar;
                this.f67819a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.t
        public void onSuccess(Object obj) {
            this.f67821c = DisposableHelper.DISPOSED;
            this.f67819a.onSuccess(Boolean.valueOf(io.reactivex.internal.functions.a.c(obj, this.f67820b)));
        }
    }

    public b(io.reactivex.w<T> wVar, Object obj) {
        this.f67817a = wVar;
        this.f67818b = obj;
    }

    @Override // io.reactivex.i0
    protected void Y0(l0<? super Boolean> l0Var) {
        this.f67817a.a(new a(l0Var, this.f67818b));
    }

    @Override // x2.f
    public io.reactivex.w<T> source() {
        return this.f67817a;
    }
}
