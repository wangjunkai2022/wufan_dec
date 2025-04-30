package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.ScalarSubscription;
/* compiled from: FlowableJust.java */
/* loaded from: classes5.dex */
public final class m0<T> extends io.reactivex.j<T> implements x2.m<T> {

    /* renamed from: b  reason: collision with root package name */
    private final T f67461b;

    public m0(T t3) {
        this.f67461b = t3;
    }

    @Override // x2.m, java.util.concurrent.Callable
    public T call() {
        return this.f67461b;
    }

    @Override // io.reactivex.j
    protected void h6(l3.c<? super T> cVar) {
        cVar.onSubscribe(new ScalarSubscription(cVar, this.f67461b));
    }
}
