package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.DeferredScalarSubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
/* loaded from: classes5.dex */
public final class FlowableTakeLastOne<T> extends a<T, T> {

    /* loaded from: classes5.dex */
    static final class TakeLastOneSubscriber<T> extends DeferredScalarSubscription<T> implements io.reactivex.o<T> {
        private static final long serialVersionUID = -5467847744262967226L;

        /* renamed from: k  reason: collision with root package name */
        l3.d f67056k;

        TakeLastOneSubscriber(l3.c<? super T> cVar) {
            super(cVar);
        }

        @Override // io.reactivex.internal.subscriptions.DeferredScalarSubscription, l3.d
        public void cancel() {
            super.cancel();
            this.f67056k.cancel();
        }

        @Override // l3.c
        public void onComplete() {
            T t3 = this.f70071b;
            if (t3 != null) {
                d(t3);
            } else {
                this.f70070a.onComplete();
            }
        }

        @Override // l3.c
        public void onError(Throwable th) {
            this.f70071b = null;
            this.f70070a.onError(th);
        }

        @Override // l3.c
        public void onNext(T t3) {
            this.f70071b = t3;
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            if (SubscriptionHelper.validate(this.f67056k, dVar)) {
                this.f67056k = dVar;
                this.f70070a.onSubscribe(this);
                dVar.request(Long.MAX_VALUE);
            }
        }
    }

    public FlowableTakeLastOne(io.reactivex.j<T> jVar) {
        super(jVar);
    }

    @Override // io.reactivex.j
    protected void h6(l3.c<? super T> cVar) {
        this.f67288b.g6(new TakeLastOneSubscriber(cVar));
    }
}
