package io.reactivex.internal.operators.observable;

import io.reactivex.internal.operators.observable.ObservableScalarXMap;
/* compiled from: ObservableJust.java */
/* loaded from: classes5.dex */
public final class t0<T> extends io.reactivex.z<T> implements x2.m<T> {

    /* renamed from: a  reason: collision with root package name */
    private final T f69288a;

    public t0(T t3) {
        this.f69288a = t3;
    }

    @Override // io.reactivex.z
    protected void F5(io.reactivex.g0<? super T> g0Var) {
        ObservableScalarXMap.ScalarDisposable scalarDisposable = new ObservableScalarXMap.ScalarDisposable(g0Var, this.f69288a);
        g0Var.onSubscribe(scalarDisposable);
        scalarDisposable.run();
    }

    @Override // x2.m, java.util.concurrent.Callable
    public T call() {
        return this.f69288a;
    }
}
