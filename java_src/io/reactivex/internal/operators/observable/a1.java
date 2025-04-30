package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.EmptyDisposable;
/* compiled from: ObservableNever.java */
/* loaded from: classes5.dex */
public final class a1 extends io.reactivex.z<Object> {

    /* renamed from: a  reason: collision with root package name */
    public static final io.reactivex.z<Object> f68973a = new a1();

    private a1() {
    }

    @Override // io.reactivex.z
    protected void F5(io.reactivex.g0<? super Object> g0Var) {
        g0Var.onSubscribe(EmptyDisposable.NEVER);
    }
}
