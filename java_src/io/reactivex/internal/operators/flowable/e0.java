package io.reactivex.internal.operators.flowable;
/* compiled from: FlowableFlatMapPublisher.java */
/* loaded from: classes5.dex */
public final class e0<T, U> extends io.reactivex.j<U> {

    /* renamed from: b  reason: collision with root package name */
    final l3.b<T> f67349b;

    /* renamed from: c  reason: collision with root package name */
    final w2.o<? super T, ? extends l3.b<? extends U>> f67350c;

    /* renamed from: d  reason: collision with root package name */
    final boolean f67351d;

    /* renamed from: e  reason: collision with root package name */
    final int f67352e;

    /* renamed from: f  reason: collision with root package name */
    final int f67353f;

    public e0(l3.b<T> bVar, w2.o<? super T, ? extends l3.b<? extends U>> oVar, boolean z3, int i2, int i4) {
        this.f67349b = bVar;
        this.f67350c = oVar;
        this.f67351d = z3;
        this.f67352e = i2;
        this.f67353f = i4;
    }

    @Override // io.reactivex.j
    protected void h6(l3.c<? super U> cVar) {
        if (w0.b(this.f67349b, cVar, this.f67350c)) {
            return;
        }
        this.f67349b.c(FlowableFlatMap.J8(cVar, this.f67350c, this.f67351d, this.f67352e, this.f67353f));
    }
}
