package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.operators.flowable.FlowableConcatMapEager;
import io.reactivex.internal.util.ErrorMode;
/* compiled from: FlowableConcatMapEagerPublisher.java */
/* loaded from: classes5.dex */
public final class m<T, R> extends io.reactivex.j<R> {

    /* renamed from: b  reason: collision with root package name */
    final l3.b<T> f67456b;

    /* renamed from: c  reason: collision with root package name */
    final w2.o<? super T, ? extends l3.b<? extends R>> f67457c;

    /* renamed from: d  reason: collision with root package name */
    final int f67458d;

    /* renamed from: e  reason: collision with root package name */
    final int f67459e;

    /* renamed from: f  reason: collision with root package name */
    final ErrorMode f67460f;

    public m(l3.b<T> bVar, w2.o<? super T, ? extends l3.b<? extends R>> oVar, int i2, int i4, ErrorMode errorMode) {
        this.f67456b = bVar;
        this.f67457c = oVar;
        this.f67458d = i2;
        this.f67459e = i4;
        this.f67460f = errorMode;
    }

    @Override // io.reactivex.j
    protected void h6(l3.c<? super R> cVar) {
        this.f67456b.c(new FlowableConcatMapEager.ConcatMapEagerDelayErrorSubscriber(cVar, this.f67457c, this.f67458d, this.f67459e, this.f67460f));
    }
}
