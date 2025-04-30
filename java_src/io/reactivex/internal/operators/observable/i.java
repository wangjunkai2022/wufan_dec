package io.reactivex.internal.operators.observable;

import java.util.concurrent.atomic.AtomicInteger;
/* compiled from: ObservableAutoConnect.java */
/* loaded from: classes5.dex */
public final class i<T> extends io.reactivex.z<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.observables.a<? extends T> f69089a;

    /* renamed from: b  reason: collision with root package name */
    final int f69090b;

    /* renamed from: c  reason: collision with root package name */
    final w2.g<? super io.reactivex.disposables.b> f69091c;

    /* renamed from: d  reason: collision with root package name */
    final AtomicInteger f69092d = new AtomicInteger();

    public i(io.reactivex.observables.a<? extends T> aVar, int i2, w2.g<? super io.reactivex.disposables.b> gVar) {
        this.f69089a = aVar;
        this.f69090b = i2;
        this.f69091c = gVar;
    }

    @Override // io.reactivex.z
    public void F5(io.reactivex.g0<? super T> g0Var) {
        this.f69089a.a(g0Var);
        if (this.f69092d.incrementAndGet() == this.f69090b) {
            this.f69089a.j8(this.f69091c);
        }
    }
}
