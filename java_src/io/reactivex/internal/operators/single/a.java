package io.reactivex.internal.operators.single;

import io.reactivex.i0;
import io.reactivex.l0;
import io.reactivex.o0;
/* compiled from: SingleContains.java */
/* loaded from: classes5.dex */
public final class a<T> extends i0<Boolean> {

    /* renamed from: a  reason: collision with root package name */
    final o0<T> f69729a;

    /* renamed from: b  reason: collision with root package name */
    final Object f69730b;

    /* renamed from: c  reason: collision with root package name */
    final w2.d<Object, Object> f69731c;

    /* compiled from: SingleContains.java */
    /* renamed from: io.reactivex.internal.operators.single.a$a  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    final class C0465a implements l0<T> {

        /* renamed from: a  reason: collision with root package name */
        private final l0<? super Boolean> f69732a;

        C0465a(l0<? super Boolean> l0Var) {
            this.f69732a = l0Var;
        }

        @Override // io.reactivex.l0
        public void onError(Throwable th) {
            this.f69732a.onError(th);
        }

        @Override // io.reactivex.l0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            this.f69732a.onSubscribe(bVar);
        }

        @Override // io.reactivex.l0
        public void onSuccess(T t3) {
            try {
                a aVar = a.this;
                this.f69732a.onSuccess(Boolean.valueOf(aVar.f69731c.a(t3, aVar.f69730b)));
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f69732a.onError(th);
            }
        }
    }

    public a(o0<T> o0Var, Object obj, w2.d<Object, Object> dVar) {
        this.f69729a = o0Var;
        this.f69730b = obj;
        this.f69731c = dVar;
    }

    @Override // io.reactivex.i0
    protected void Y0(l0<? super Boolean> l0Var) {
        this.f69729a.a(new C0465a(l0Var));
    }
}
