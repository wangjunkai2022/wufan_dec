package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.EmptySubscription;
/* compiled from: FlowableNever.java */
/* loaded from: classes5.dex */
public final class s0 extends io.reactivex.j<Object> {

    /* renamed from: b  reason: collision with root package name */
    public static final io.reactivex.j<Object> f67514b = new s0();

    private s0() {
    }

    @Override // io.reactivex.j
    public void h6(l3.c<? super Object> cVar) {
        cVar.onSubscribe(EmptySubscription.INSTANCE);
    }
}
