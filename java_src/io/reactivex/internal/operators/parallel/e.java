package io.reactivex.internal.operators.parallel;

import io.reactivex.internal.operators.flowable.FlowableFlatMap;
import org.reactivestreams.Subscriber;
import w2.o;
/* compiled from: ParallelFlatMap.java */
/* loaded from: classes5.dex */
public final class e<T, R> extends io.reactivex.parallel.a<R> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.parallel.a<T> f69542a;

    /* renamed from: b  reason: collision with root package name */
    final o<? super T, ? extends l3.b<? extends R>> f69543b;

    /* renamed from: c  reason: collision with root package name */
    final boolean f69544c;

    /* renamed from: d  reason: collision with root package name */
    final int f69545d;

    /* renamed from: e  reason: collision with root package name */
    final int f69546e;

    public e(io.reactivex.parallel.a<T> aVar, o<? super T, ? extends l3.b<? extends R>> oVar, boolean z3, int i2, int i4) {
        this.f69542a = aVar;
        this.f69543b = oVar;
        this.f69544c = z3;
        this.f69545d = i2;
        this.f69546e = i4;
    }

    @Override // io.reactivex.parallel.a
    public int F() {
        return this.f69542a.F();
    }

    @Override // io.reactivex.parallel.a
    public void Q(Subscriber<? super R>[] subscriberArr) {
        if (U(subscriberArr)) {
            int length = subscriberArr.length;
            Subscriber<? super T>[] subscriberArr2 = new l3.c[length];
            for (int i2 = 0; i2 < length; i2++) {
                subscriberArr2[i2] = FlowableFlatMap.J8(subscriberArr[i2], this.f69543b, this.f69544c, this.f69545d, this.f69546e);
            }
            this.f69542a.Q(subscriberArr2);
        }
    }
}
