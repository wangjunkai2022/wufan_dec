package io.reactivex.internal.operators.single;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.i0;
import io.reactivex.l0;
import io.reactivex.o0;
/* compiled from: SingleDoOnEvent.java */
/* loaded from: classes5.dex */
public final class h<T> extends i0<T> {

    /* renamed from: a  reason: collision with root package name */
    final o0<T> f69764a;

    /* renamed from: b  reason: collision with root package name */
    final w2.b<? super T, ? super Throwable> f69765b;

    /* compiled from: SingleDoOnEvent.java */
    /* loaded from: classes5.dex */
    final class a implements l0<T> {

        /* renamed from: a  reason: collision with root package name */
        private final l0<? super T> f69766a;

        a(l0<? super T> l0Var) {
            this.f69766a = l0Var;
        }

        @Override // io.reactivex.l0
        public void onError(Throwable th) {
            try {
                h.this.f69765b.a(null, th);
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                th = new CompositeException(th, th2);
            }
            this.f69766a.onError(th);
        }

        @Override // io.reactivex.l0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            this.f69766a.onSubscribe(bVar);
        }

        @Override // io.reactivex.l0
        public void onSuccess(T t3) {
            try {
                h.this.f69765b.a(t3, null);
                this.f69766a.onSuccess(t3);
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f69766a.onError(th);
            }
        }
    }

    public h(o0<T> o0Var, w2.b<? super T, ? super Throwable> bVar) {
        this.f69764a = o0Var;
        this.f69765b = bVar;
    }

    @Override // io.reactivex.i0
    protected void Y0(l0<? super T> l0Var) {
        this.f69764a.a(new a(l0Var));
    }
}
