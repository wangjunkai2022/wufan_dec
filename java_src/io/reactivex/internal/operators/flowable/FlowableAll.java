package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.DeferredScalarSubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
/* loaded from: classes5.dex */
public final class FlowableAll<T> extends a<T, Boolean> {

    /* renamed from: c  reason: collision with root package name */
    final w2.r<? super T> f66136c;

    /* loaded from: classes5.dex */
    static final class AllSubscriber<T> extends DeferredScalarSubscription<Boolean> implements io.reactivex.o<T> {
        private static final long serialVersionUID = -3521127104134758517L;

        /* renamed from: k  reason: collision with root package name */
        final w2.r<? super T> f66137k;

        /* renamed from: l  reason: collision with root package name */
        l3.d f66138l;

        /* renamed from: m  reason: collision with root package name */
        boolean f66139m;

        AllSubscriber(l3.c<? super Boolean> cVar, w2.r<? super T> rVar) {
            super(cVar);
            this.f66137k = rVar;
        }

        @Override // io.reactivex.internal.subscriptions.DeferredScalarSubscription, l3.d
        public void cancel() {
            super.cancel();
            this.f66138l.cancel();
        }

        @Override // l3.c
        public void onComplete() {
            if (this.f66139m) {
                return;
            }
            this.f66139m = true;
            d(Boolean.TRUE);
        }

        @Override // l3.c
        public void onError(Throwable th) {
            if (this.f66139m) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f66139m = true;
            this.f70070a.onError(th);
        }

        @Override // l3.c
        public void onNext(T t3) {
            if (this.f66139m) {
                return;
            }
            try {
                if (this.f66137k.test(t3)) {
                    return;
                }
                this.f66139m = true;
                this.f66138l.cancel();
                d(Boolean.FALSE);
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f66138l.cancel();
                onError(th);
            }
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            if (SubscriptionHelper.validate(this.f66138l, dVar)) {
                this.f66138l = dVar;
                this.f70070a.onSubscribe(this);
                dVar.request(Long.MAX_VALUE);
            }
        }
    }

    public FlowableAll(io.reactivex.j<T> jVar, w2.r<? super T> rVar) {
        super(jVar);
        this.f66136c = rVar;
    }

    @Override // io.reactivex.j
    protected void h6(l3.c<? super Boolean> cVar) {
        this.f67288b.g6(new AllSubscriber(cVar, this.f66136c));
    }
}
