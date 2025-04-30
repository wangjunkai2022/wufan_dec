package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.DeferredScalarSubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
/* loaded from: classes5.dex */
public final class FlowableReduce<T> extends a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final w2.c<T, T, T> f66812c;

    /* loaded from: classes5.dex */
    static final class ReduceSubscriber<T> extends DeferredScalarSubscription<T> implements io.reactivex.o<T> {
        private static final long serialVersionUID = -4663883003264602070L;

        /* renamed from: k  reason: collision with root package name */
        final w2.c<T, T, T> f66813k;

        /* renamed from: l  reason: collision with root package name */
        l3.d f66814l;

        ReduceSubscriber(l3.c<? super T> cVar, w2.c<T, T, T> cVar2) {
            super(cVar);
            this.f66813k = cVar2;
        }

        @Override // io.reactivex.internal.subscriptions.DeferredScalarSubscription, l3.d
        public void cancel() {
            super.cancel();
            this.f66814l.cancel();
            this.f66814l = SubscriptionHelper.CANCELLED;
        }

        @Override // l3.c
        public void onComplete() {
            l3.d dVar = this.f66814l;
            SubscriptionHelper subscriptionHelper = SubscriptionHelper.CANCELLED;
            if (dVar == subscriptionHelper) {
                return;
            }
            this.f66814l = subscriptionHelper;
            T t3 = this.f70071b;
            if (t3 != null) {
                d(t3);
            } else {
                this.f70070a.onComplete();
            }
        }

        @Override // l3.c
        public void onError(Throwable th) {
            l3.d dVar = this.f66814l;
            SubscriptionHelper subscriptionHelper = SubscriptionHelper.CANCELLED;
            if (dVar == subscriptionHelper) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f66814l = subscriptionHelper;
            this.f70070a.onError(th);
        }

        @Override // l3.c
        public void onNext(T t3) {
            if (this.f66814l == SubscriptionHelper.CANCELLED) {
                return;
            }
            T t4 = this.f70071b;
            if (t4 == null) {
                this.f70071b = t3;
                return;
            }
            try {
                this.f70071b = (T) io.reactivex.internal.functions.a.g(this.f66813k.apply(t4, t3), "The reducer returned a null value");
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f66814l.cancel();
                onError(th);
            }
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            if (SubscriptionHelper.validate(this.f66814l, dVar)) {
                this.f66814l = dVar;
                this.f70070a.onSubscribe(this);
                dVar.request(Long.MAX_VALUE);
            }
        }
    }

    public FlowableReduce(io.reactivex.j<T> jVar, w2.c<T, T, T> cVar) {
        super(jVar);
        this.f66812c = cVar;
    }

    @Override // io.reactivex.j
    protected void h6(l3.c<? super T> cVar) {
        this.f67288b.g6(new ReduceSubscriber(cVar, this.f66812c));
    }
}
