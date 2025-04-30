package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.util.ErrorMode;
/* compiled from: FlowableConcatMapPublisher.java */
/* loaded from: classes5.dex */
public final class n<T, R> extends io.reactivex.j<R> {

    /* renamed from: b  reason: collision with root package name */
    final l3.b<T> f67462b;

    /* renamed from: c  reason: collision with root package name */
    final w2.o<? super T, ? extends l3.b<? extends R>> f67463c;

    /* renamed from: d  reason: collision with root package name */
    final int f67464d;

    /* renamed from: e  reason: collision with root package name */
    final ErrorMode f67465e;

    public n(l3.b<T> bVar, w2.o<? super T, ? extends l3.b<? extends R>> oVar, int i2, ErrorMode errorMode) {
        this.f67462b = bVar;
        this.f67463c = oVar;
        this.f67464d = i2;
        this.f67465e = errorMode;
    }

    @Override // io.reactivex.j
    protected void h6(l3.c<? super R> cVar) {
        if (w0.b(this.f67462b, cVar, this.f67463c)) {
            return;
        }
        this.f67462b.c(FlowableConcatMap.J8(cVar, this.f67463c, this.f67464d, this.f67465e));
    }
}
