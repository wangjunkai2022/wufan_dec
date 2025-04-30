package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.EmptySubscription;
/* compiled from: FlowableEmpty.java */
/* loaded from: classes5.dex */
public final class b0 extends io.reactivex.j<Object> implements x2.m<Object> {

    /* renamed from: b  reason: collision with root package name */
    public static final io.reactivex.j<Object> f67309b = new b0();

    private b0() {
    }

    @Override // x2.m, java.util.concurrent.Callable
    public Object call() {
        return null;
    }

    @Override // io.reactivex.j
    public void h6(l3.c<? super Object> cVar) {
        EmptySubscription.complete(cVar);
    }
}
