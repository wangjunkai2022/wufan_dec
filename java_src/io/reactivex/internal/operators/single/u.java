package io.reactivex.internal.operators.single;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.i0;
import io.reactivex.l0;
import io.reactivex.o0;
/* compiled from: SingleOnErrorReturn.java */
/* loaded from: classes5.dex */
public final class u<T> extends i0<T> {

    /* renamed from: a  reason: collision with root package name */
    final o0<? extends T> f69804a;

    /* renamed from: b  reason: collision with root package name */
    final w2.o<? super Throwable, ? extends T> f69805b;

    /* renamed from: c  reason: collision with root package name */
    final T f69806c;

    /* compiled from: SingleOnErrorReturn.java */
    /* loaded from: classes5.dex */
    final class a implements l0<T> {

        /* renamed from: a  reason: collision with root package name */
        private final l0<? super T> f69807a;

        a(l0<? super T> l0Var) {
            this.f69807a = l0Var;
        }

        @Override // io.reactivex.l0
        public void onError(Throwable th) {
            T apply;
            u uVar = u.this;
            w2.o<? super Throwable, ? extends T> oVar = uVar.f69805b;
            if (oVar != null) {
                try {
                    apply = oVar.apply(th);
                } catch (Throwable th2) {
                    io.reactivex.exceptions.a.b(th2);
                    this.f69807a.onError(new CompositeException(th, th2));
                    return;
                }
            } else {
                apply = uVar.f69806c;
            }
            if (apply == null) {
                NullPointerException nullPointerException = new NullPointerException("Value supplied was null");
                nullPointerException.initCause(th);
                this.f69807a.onError(nullPointerException);
                return;
            }
            this.f69807a.onSuccess(apply);
        }

        @Override // io.reactivex.l0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            this.f69807a.onSubscribe(bVar);
        }

        @Override // io.reactivex.l0
        public void onSuccess(T t3) {
            this.f69807a.onSuccess(t3);
        }
    }

    public u(o0<? extends T> o0Var, w2.o<? super Throwable, ? extends T> oVar, T t3) {
        this.f69804a = o0Var;
        this.f69805b = oVar;
        this.f69806c = t3;
    }

    @Override // io.reactivex.i0
    protected void Y0(l0<? super T> l0Var) {
        this.f69804a.a(new a(l0Var));
    }
}
