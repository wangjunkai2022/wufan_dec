package io.reactivex.internal.operators.single;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.i0;
import io.reactivex.l0;
import io.reactivex.o0;
/* compiled from: SingleDoOnError.java */
/* loaded from: classes5.dex */
public final class g<T> extends i0<T> {

    /* renamed from: a  reason: collision with root package name */
    final o0<T> f69760a;

    /* renamed from: b  reason: collision with root package name */
    final w2.g<? super Throwable> f69761b;

    /* compiled from: SingleDoOnError.java */
    /* loaded from: classes5.dex */
    final class a implements l0<T> {

        /* renamed from: a  reason: collision with root package name */
        private final l0<? super T> f69762a;

        a(l0<? super T> l0Var) {
            this.f69762a = l0Var;
        }

        @Override // io.reactivex.l0
        public void onError(Throwable th) {
            try {
                g.this.f69761b.accept(th);
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                th = new CompositeException(th, th2);
            }
            this.f69762a.onError(th);
        }

        @Override // io.reactivex.l0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            this.f69762a.onSubscribe(bVar);
        }

        @Override // io.reactivex.l0
        public void onSuccess(T t3) {
            this.f69762a.onSuccess(t3);
        }
    }

    public g(o0<T> o0Var, w2.g<? super Throwable> gVar) {
        this.f69760a = o0Var;
        this.f69761b = gVar;
    }

    @Override // io.reactivex.i0
    protected void Y0(l0<? super T> l0Var) {
        this.f69760a.a(new a(l0Var));
    }
}
