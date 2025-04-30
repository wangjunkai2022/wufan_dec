package io.reactivex.internal.operators.single;

import io.reactivex.i0;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.l0;
import io.reactivex.o0;
/* compiled from: SingleDetach.java */
/* loaded from: classes5.dex */
public final class d<T> extends i0<T> {

    /* renamed from: a  reason: collision with root package name */
    final o0<T> f69747a;

    /* compiled from: SingleDetach.java */
    /* loaded from: classes5.dex */
    static final class a<T> implements l0<T>, io.reactivex.disposables.b {

        /* renamed from: a  reason: collision with root package name */
        l0<? super T> f69748a;

        /* renamed from: b  reason: collision with root package name */
        io.reactivex.disposables.b f69749b;

        a(l0<? super T> l0Var) {
            this.f69748a = l0Var;
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.f69748a = null;
            this.f69749b.dispose();
            this.f69749b = DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f69749b.isDisposed();
        }

        @Override // io.reactivex.l0
        public void onError(Throwable th) {
            this.f69749b = DisposableHelper.DISPOSED;
            l0<? super T> l0Var = this.f69748a;
            if (l0Var != null) {
                this.f69748a = null;
                l0Var.onError(th);
            }
        }

        @Override // io.reactivex.l0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.validate(this.f69749b, bVar)) {
                this.f69749b = bVar;
                this.f69748a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.l0
        public void onSuccess(T t3) {
            this.f69749b = DisposableHelper.DISPOSED;
            l0<? super T> l0Var = this.f69748a;
            if (l0Var != null) {
                this.f69748a = null;
                l0Var.onSuccess(t3);
            }
        }
    }

    public d(o0<T> o0Var) {
        this.f69747a = o0Var;
    }

    @Override // io.reactivex.i0
    protected void Y0(l0<? super T> l0Var) {
        this.f69747a.a(new a(l0Var));
    }
}
