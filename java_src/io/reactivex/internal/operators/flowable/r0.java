package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.operators.flowable.q0;
/* compiled from: FlowableMapPublisher.java */
/* loaded from: classes5.dex */
public final class r0<T, U> extends io.reactivex.j<U> {

    /* renamed from: b  reason: collision with root package name */
    final l3.b<T> f67509b;

    /* renamed from: c  reason: collision with root package name */
    final w2.o<? super T, ? extends U> f67510c;

    public r0(l3.b<T> bVar, w2.o<? super T, ? extends U> oVar) {
        this.f67509b = bVar;
        this.f67510c = oVar;
    }

    @Override // io.reactivex.j
    protected void h6(l3.c<? super U> cVar) {
        this.f67509b.c(new q0.b(cVar, this.f67510c));
    }
}
