package io.reactivex.internal.operators.observable;

import io.reactivex.internal.observers.DeferredScalarDisposable;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
/* compiled from: ObservableFromFuture.java */
/* loaded from: classes5.dex */
public final class l0<T> extends io.reactivex.z<T> {

    /* renamed from: a  reason: collision with root package name */
    final Future<? extends T> f69131a;

    /* renamed from: b  reason: collision with root package name */
    final long f69132b;

    /* renamed from: c  reason: collision with root package name */
    final TimeUnit f69133c;

    public l0(Future<? extends T> future, long j4, TimeUnit timeUnit) {
        this.f69131a = future;
        this.f69132b = j4;
        this.f69133c = timeUnit;
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
            TimeUnit timeUnit = this.f69133c;
            deferredScalarDisposable.b(io.reactivex.internal.functions.a.g(timeUnit != null ? this.f69131a.get(this.f69132b, timeUnit) : this.f69131a.get(), "Future returned null"));
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            if (deferredScalarDisposable.isDisposed()) {
                return;
            }
            g0Var.onError(th);
        }
    }
}
