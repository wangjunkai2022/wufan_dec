package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.EmptySubscription;
import java.util.concurrent.Callable;
/* compiled from: FlowableError.java */
/* loaded from: classes5.dex */
public final class c0<T> extends io.reactivex.j<T> {

    /* renamed from: b  reason: collision with root package name */
    final Callable<? extends Throwable> f67319b;

    public c0(Callable<? extends Throwable> callable) {
        this.f67319b = callable;
    }

    @Override // io.reactivex.j
    public void h6(l3.c<? super T> cVar) {
        try {
            th = (Throwable) io.reactivex.internal.functions.a.g(this.f67319b.call(), "Callable returned null throwable. Null values are generally not allowed in 2.x operators and sources.");
        } catch (Throwable th) {
            th = th;
            io.reactivex.exceptions.a.b(th);
        }
        EmptySubscription.error(th, cVar);
    }
}
