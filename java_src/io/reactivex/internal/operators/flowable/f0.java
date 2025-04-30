package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.DeferredScalarSubscription;
import java.util.concurrent.Callable;
/* compiled from: FlowableFromCallable.java */
/* loaded from: classes5.dex */
public final class f0<T> extends io.reactivex.j<T> implements Callable<T> {

    /* renamed from: b  reason: collision with root package name */
    final Callable<? extends T> f67362b;

    public f0(Callable<? extends T> callable) {
        this.f67362b = callable;
    }

    @Override // java.util.concurrent.Callable
    public T call() throws Exception {
        return (T) io.reactivex.internal.functions.a.g(this.f67362b.call(), "The callable returned a null value");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // io.reactivex.j
    public void h6(l3.c<? super T> cVar) {
        DeferredScalarSubscription deferredScalarSubscription = new DeferredScalarSubscription(cVar);
        cVar.onSubscribe(deferredScalarSubscription);
        try {
            deferredScalarSubscription.d(io.reactivex.internal.functions.a.g(this.f67362b.call(), "The callable returned a null value"));
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            if (deferredScalarSubscription.e()) {
                io.reactivex.plugins.a.Y(th);
            } else {
                cVar.onError(th);
            }
        }
    }
}
