package io.reactivex.internal.operators.single;

import io.reactivex.i0;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.l0;
import io.reactivex.o0;
/* compiled from: SingleHide.java */
/* loaded from: classes5.dex */
public final class p<T> extends i0<T> {

    /* renamed from: a  reason: collision with root package name */
    final o0<? extends T> f69793a;

    /* compiled from: SingleHide.java */
    /* loaded from: classes5.dex */
    static final class a<T> implements l0<T>, io.reactivex.disposables.b {

        /* renamed from: a  reason: collision with root package name */
        final l0<? super T> f69794a;

        /* renamed from: b  reason: collision with root package name */
        io.reactivex.disposables.b f69795b;

        a(l0<? super T> l0Var) {
            this.f69794a = l0Var;
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.f69795b.dispose();
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f69795b.isDisposed();
        }

        @Override // io.reactivex.l0
        public void onError(Throwable th) {
            this.f69794a.onError(th);
        }

        @Override // io.reactivex.l0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.validate(this.f69795b, bVar)) {
                this.f69795b = bVar;
                this.f69794a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.l0
        public void onSuccess(T t3) {
            this.f69794a.onSuccess(t3);
        }
    }

    public p(o0<? extends T> o0Var) {
        this.f69793a = o0Var;
    }

    @Override // io.reactivex.i0
    protected void Y0(l0<? super T> l0Var) {
        this.f69793a.a(new a(l0Var));
    }
}
