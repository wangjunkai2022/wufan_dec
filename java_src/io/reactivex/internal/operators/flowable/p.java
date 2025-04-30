package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.EmptySubscription;
import java.util.concurrent.Callable;
/* compiled from: FlowableDefer.java */
/* loaded from: classes5.dex */
public final class p<T> extends io.reactivex.j<T> {

    /* renamed from: b  reason: collision with root package name */
    final Callable<? extends l3.b<? extends T>> f67480b;

    public p(Callable<? extends l3.b<? extends T>> callable) {
        this.f67480b = callable;
    }

    @Override // io.reactivex.j
    public void h6(l3.c<? super T> cVar) {
        try {
            ((l3.b) io.reactivex.internal.functions.a.g(this.f67480b.call(), "The publisher supplied is null")).c(cVar);
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            EmptySubscription.error(th, cVar);
        }
    }
}
