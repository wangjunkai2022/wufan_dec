package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.operators.flowable.FlowableTake;
/* compiled from: FlowableTakePublisher.java */
/* loaded from: classes5.dex */
public final class e1<T> extends io.reactivex.j<T> {

    /* renamed from: b  reason: collision with root package name */
    final l3.b<T> f67354b;

    /* renamed from: c  reason: collision with root package name */
    final long f67355c;

    public e1(l3.b<T> bVar, long j4) {
        this.f67354b = bVar;
        this.f67355c = j4;
    }

    @Override // io.reactivex.j
    protected void h6(l3.c<? super T> cVar) {
        this.f67354b.c(new FlowableTake.TakeSubscriber(cVar, this.f67355c));
    }
}
