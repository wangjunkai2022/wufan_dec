package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.EmptyDisposable;
import java.util.concurrent.Callable;
/* compiled from: ObservableDefer.java */
/* loaded from: classes5.dex */
public final class s<T> extends io.reactivex.z<T> {

    /* renamed from: a  reason: collision with root package name */
    final Callable<? extends io.reactivex.e0<? extends T>> f69264a;

    public s(Callable<? extends io.reactivex.e0<? extends T>> callable) {
        this.f69264a = callable;
    }

    @Override // io.reactivex.z
    public void F5(io.reactivex.g0<? super T> g0Var) {
        try {
            ((io.reactivex.e0) io.reactivex.internal.functions.a.g(this.f69264a.call(), "null ObservableSource supplied")).a(g0Var);
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            EmptyDisposable.error(th, g0Var);
        }
    }
}
