package io.reactivex.internal.operators.single;

import io.reactivex.i0;
import io.reactivex.l0;
import io.reactivex.o0;
/* compiled from: SingleDoOnSuccess.java */
/* loaded from: classes5.dex */
public final class j<T> extends i0<T> {

    /* renamed from: a  reason: collision with root package name */
    final o0<T> f69773a;

    /* renamed from: b  reason: collision with root package name */
    final w2.g<? super T> f69774b;

    /* compiled from: SingleDoOnSuccess.java */
    /* loaded from: classes5.dex */
    final class a implements l0<T> {

        /* renamed from: a  reason: collision with root package name */
        final l0<? super T> f69775a;

        a(l0<? super T> l0Var) {
            this.f69775a = l0Var;
        }

        @Override // io.reactivex.l0
        public void onError(Throwable th) {
            this.f69775a.onError(th);
        }

        @Override // io.reactivex.l0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            this.f69775a.onSubscribe(bVar);
        }

        @Override // io.reactivex.l0
        public void onSuccess(T t3) {
            try {
                j.this.f69774b.accept(t3);
                this.f69775a.onSuccess(t3);
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f69775a.onError(th);
            }
        }
    }

    public j(o0<T> o0Var, w2.g<? super T> gVar) {
        this.f69773a = o0Var;
        this.f69774b = gVar;
    }

    @Override // io.reactivex.i0
    protected void Y0(l0<? super T> l0Var) {
        this.f69773a.a(new a(l0Var));
    }
}
