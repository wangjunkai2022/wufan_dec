package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.EmptyDisposable;
/* compiled from: ObservableEmpty.java */
/* loaded from: classes5.dex */
public final class f0 extends io.reactivex.z<Object> implements x2.m<Object> {

    /* renamed from: a  reason: collision with root package name */
    public static final io.reactivex.z<Object> f69058a = new f0();

    private f0() {
    }

    @Override // io.reactivex.z
    protected void F5(io.reactivex.g0<? super Object> g0Var) {
        EmptyDisposable.complete(g0Var);
    }

    @Override // x2.m, java.util.concurrent.Callable
    public Object call() {
        return null;
    }
}
