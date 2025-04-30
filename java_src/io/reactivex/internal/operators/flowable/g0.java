package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.DeferredScalarSubscription;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
/* compiled from: FlowableFromFuture.java */
/* loaded from: classes5.dex */
public final class g0<T> extends io.reactivex.j<T> {

    /* renamed from: b  reason: collision with root package name */
    final Future<? extends T> f67372b;

    /* renamed from: c  reason: collision with root package name */
    final long f67373c;

    /* renamed from: d  reason: collision with root package name */
    final TimeUnit f67374d;

    public g0(Future<? extends T> future, long j4, TimeUnit timeUnit) {
        this.f67372b = future;
        this.f67373c = j4;
        this.f67374d = timeUnit;
    }

    @Override // io.reactivex.j
    public void h6(l3.c<? super T> cVar) {
        DeferredScalarSubscription deferredScalarSubscription = new DeferredScalarSubscription(cVar);
        cVar.onSubscribe(deferredScalarSubscription);
        try {
            TimeUnit timeUnit = this.f67374d;
            T t3 = timeUnit != null ? this.f67372b.get(this.f67373c, timeUnit) : this.f67372b.get();
            if (t3 == null) {
                cVar.onError(new NullPointerException("The future returned null"));
            } else {
                deferredScalarSubscription.d(t3);
            }
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            if (deferredScalarSubscription.e()) {
                return;
            }
            cVar.onError(th);
        }
    }
}
