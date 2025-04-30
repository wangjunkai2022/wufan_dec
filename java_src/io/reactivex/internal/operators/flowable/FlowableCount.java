package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.DeferredScalarSubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
/* loaded from: classes5.dex */
public final class FlowableCount<T> extends a<T, Long> {

    /* loaded from: classes5.dex */
    static final class CountSubscriber extends DeferredScalarSubscription<Long> implements io.reactivex.o<Object> {
        private static final long serialVersionUID = 4973004223787171406L;

        /* renamed from: k  reason: collision with root package name */
        l3.d f66312k;

        /* renamed from: l  reason: collision with root package name */
        long f66313l;

        CountSubscriber(l3.c<? super Long> cVar) {
            super(cVar);
        }

        @Override // io.reactivex.internal.subscriptions.DeferredScalarSubscription, l3.d
        public void cancel() {
            super.cancel();
            this.f66312k.cancel();
        }

        @Override // l3.c
        public void onComplete() {
            d(Long.valueOf(this.f66313l));
        }

        @Override // l3.c
        public void onError(Throwable th) {
            this.f70070a.onError(th);
        }

        @Override // l3.c
        public void onNext(Object obj) {
            this.f66313l++;
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            if (SubscriptionHelper.validate(this.f66312k, dVar)) {
                this.f66312k = dVar;
                this.f70070a.onSubscribe(this);
                dVar.request(Long.MAX_VALUE);
            }
        }
    }

    public FlowableCount(io.reactivex.j<T> jVar) {
        super(jVar);
    }

    @Override // io.reactivex.j
    protected void h6(l3.c<? super Long> cVar) {
        this.f67288b.g6(new CountSubscriber(cVar));
    }
}
