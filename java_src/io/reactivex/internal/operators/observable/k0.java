package io.reactivex.internal.operators.observable;

import io.reactivex.internal.observers.DeferredScalarDisposable;
import java.util.concurrent.Callable;
/* compiled from: ObservableFromCallable.java */
/* loaded from: classes5.dex */
public final class k0<T> extends io.reactivex.z<T> implements Callable<T> {

    /* renamed from: a  reason: collision with root package name */
    final Callable<? extends T> f69116a;

    public k0(Callable<? extends T> callable) {
        this.f69116a = callable;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // io.reactivex.z
    public void F5(io.reactivex.g0<? super T> g0Var) {
        DeferredScalarDisposable deferredScalarDisposable = new DeferredScalarDisposable(g0Var);
        g0Var.onSubscribe(deferredScalarDisposable);
        if (deferredScalarDisposable.isDisposed()) {
            return;
        }
        try {
            deferredScalarDisposable.b(io.reactivex.internal.functions.a.g(this.f69116a.call(), "Callable returned null"));
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            if (!deferredScalarDisposable.isDisposed()) {
                g0Var.onError(th);
            } else {
                io.reactivex.plugins.a.Y(th);
            }
        }
    }

    @Override // java.util.concurrent.Callable
    public T call() throws Exception {
        return (T) io.reactivex.internal.functions.a.g(this.f69116a.call(), "The callable returned a null value");
    }
}
