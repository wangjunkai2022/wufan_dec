package io.reactivex.internal.operators.parallel;

import io.reactivex.internal.operators.flowable.FlowableConcatMap;
import io.reactivex.internal.util.ErrorMode;
import org.reactivestreams.Subscriber;
import w2.o;
/* compiled from: ParallelConcatMap.java */
/* loaded from: classes5.dex */
public final class a<T, R> extends io.reactivex.parallel.a<R> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.parallel.a<T> f69507a;

    /* renamed from: b  reason: collision with root package name */
    final o<? super T, ? extends l3.b<? extends R>> f69508b;

    /* renamed from: c  reason: collision with root package name */
    final int f69509c;

    /* renamed from: d  reason: collision with root package name */
    final ErrorMode f69510d;

    public a(io.reactivex.parallel.a<T> aVar, o<? super T, ? extends l3.b<? extends R>> oVar, int i2, ErrorMode errorMode) {
        this.f69507a = aVar;
        this.f69508b = (o) io.reactivex.internal.functions.a.g(oVar, "mapper");
        this.f69509c = i2;
        this.f69510d = (ErrorMode) io.reactivex.internal.functions.a.g(errorMode, "errorMode");
    }

    @Override // io.reactivex.parallel.a
    public int F() {
        return this.f69507a.F();
    }

    @Override // io.reactivex.parallel.a
    public void Q(Subscriber<? super R>[] subscriberArr) {
        if (U(subscriberArr)) {
            int length = subscriberArr.length;
            Subscriber<? super T>[] subscriberArr2 = new l3.c[length];
            for (int i2 = 0; i2 < length; i2++) {
                subscriberArr2[i2] = FlowableConcatMap.J8(subscriberArr[i2], this.f69508b, this.f69509c, this.f69510d);
            }
            this.f69507a.Q(subscriberArr2);
        }
    }
}
