package io.reactivex.internal.operators.single;

import io.reactivex.i0;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.l0;
/* compiled from: SingleNever.java */
/* loaded from: classes5.dex */
public final class t extends i0<Object> {

    /* renamed from: a  reason: collision with root package name */
    public static final i0<Object> f69803a = new t();

    private t() {
    }

    @Override // io.reactivex.i0
    protected void Y0(l0<? super Object> l0Var) {
        l0Var.onSubscribe(EmptyDisposable.NEVER);
    }
}
