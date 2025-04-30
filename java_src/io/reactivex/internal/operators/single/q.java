package io.reactivex.internal.operators.single;

import io.reactivex.i0;
import io.reactivex.l0;
/* compiled from: SingleJust.java */
/* loaded from: classes5.dex */
public final class q<T> extends i0<T> {

    /* renamed from: a  reason: collision with root package name */
    final T f69796a;

    public q(T t3) {
        this.f69796a = t3;
    }

    @Override // io.reactivex.i0
    protected void Y0(l0<? super T> l0Var) {
        l0Var.onSubscribe(io.reactivex.disposables.c.a());
        l0Var.onSuccess((T) this.f69796a);
    }
}
