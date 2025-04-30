package io.reactivex.internal.operators.flowable;

import java.util.concurrent.atomic.AtomicInteger;
/* compiled from: FlowableAutoConnect.java */
/* loaded from: classes5.dex */
public final class g<T> extends io.reactivex.j<T> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.flowables.a<? extends T> f67368b;

    /* renamed from: c  reason: collision with root package name */
    final int f67369c;

    /* renamed from: d  reason: collision with root package name */
    final w2.g<? super io.reactivex.disposables.b> f67370d;

    /* renamed from: e  reason: collision with root package name */
    final AtomicInteger f67371e = new AtomicInteger();

    public g(io.reactivex.flowables.a<? extends T> aVar, int i2, w2.g<? super io.reactivex.disposables.b> gVar) {
        this.f67368b = aVar;
        this.f67369c = i2;
        this.f67370d = gVar;
    }

    @Override // io.reactivex.j
    public void h6(l3.c<? super T> cVar) {
        this.f67368b.c(cVar);
        if (this.f67371e.incrementAndGet() == this.f67369c) {
            this.f67368b.N8(this.f67370d);
        }
    }
}
