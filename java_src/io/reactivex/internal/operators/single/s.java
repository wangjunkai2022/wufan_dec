package io.reactivex.internal.operators.single;

import io.reactivex.i0;
import io.reactivex.l0;
import io.reactivex.o0;
/* compiled from: SingleMap.java */
/* loaded from: classes5.dex */
public final class s<T, R> extends i0<R> {

    /* renamed from: a  reason: collision with root package name */
    final o0<? extends T> f69799a;

    /* renamed from: b  reason: collision with root package name */
    final w2.o<? super T, ? extends R> f69800b;

    /* compiled from: SingleMap.java */
    /* loaded from: classes5.dex */
    static final class a<T, R> implements l0<T> {

        /* renamed from: a  reason: collision with root package name */
        final l0<? super R> f69801a;

        /* renamed from: b  reason: collision with root package name */
        final w2.o<? super T, ? extends R> f69802b;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(l0<? super R> l0Var, w2.o<? super T, ? extends R> oVar) {
            this.f69801a = l0Var;
            this.f69802b = oVar;
        }

        @Override // io.reactivex.l0
        public void onError(Throwable th) {
            this.f69801a.onError(th);
        }

        @Override // io.reactivex.l0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            this.f69801a.onSubscribe(bVar);
        }

        @Override // io.reactivex.l0
        public void onSuccess(T t3) {
            try {
                this.f69801a.onSuccess(io.reactivex.internal.functions.a.g(this.f69802b.apply(t3), "The mapper function returned a null value."));
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                onError(th);
            }
        }
    }

    public s(o0<? extends T> o0Var, w2.o<? super T, ? extends R> oVar) {
        this.f69799a = o0Var;
        this.f69800b = oVar;
    }

    @Override // io.reactivex.i0
    protected void Y0(l0<? super R> l0Var) {
        this.f69799a.a(new a(l0Var, this.f69800b));
    }
}
