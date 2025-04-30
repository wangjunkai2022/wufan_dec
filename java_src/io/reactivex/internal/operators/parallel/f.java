package io.reactivex.internal.operators.parallel;

import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;
/* compiled from: ParallelFromArray.java */
/* loaded from: classes5.dex */
public final class f<T> extends io.reactivex.parallel.a<T> {

    /* renamed from: a  reason: collision with root package name */
    final Publisher<T>[] f69547a;

    public f(Publisher<T>[] publisherArr) {
        this.f69547a = publisherArr;
    }

    @Override // io.reactivex.parallel.a
    public int F() {
        return this.f69547a.length;
    }

    @Override // io.reactivex.parallel.a
    public void Q(Subscriber<? super T>[] subscriberArr) {
        if (U(subscriberArr)) {
            int length = subscriberArr.length;
            for (int i2 = 0; i2 < length; i2++) {
                this.f69547a[i2].c(subscriberArr[i2]);
            }
        }
    }
}
