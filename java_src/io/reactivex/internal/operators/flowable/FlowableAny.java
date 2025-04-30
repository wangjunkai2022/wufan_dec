package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.DeferredScalarSubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
/* loaded from: classes5.dex */
public final class FlowableAny<T> extends a<T, Boolean> {

    /* renamed from: c  reason: collision with root package name */
    final w2.r<? super T> f66150c;

    /* loaded from: classes5.dex */
    static final class AnySubscriber<T> extends DeferredScalarSubscription<Boolean> implements io.reactivex.o<T> {
        private static final long serialVersionUID = -2311252482644620661L;

        /* renamed from: k  reason: collision with root package name */
        final w2.r<? super T> f66151k;

        /* renamed from: l  reason: collision with root package name */
        l3.d f66152l;

        /* renamed from: m  reason: collision with root package name */
        boolean f66153m;

        AnySubscriber(l3.c<? super Boolean> cVar, w2.r<? super T> rVar) {
            super(cVar);
            this.f66151k = rVar;
        }

        @Override // io.reactivex.internal.subscriptions.DeferredScalarSubscription, l3.d
        public void cancel() {
            super.cancel();
            this.f66152l.cancel();
        }

        @Override // l3.c
        public void onComplete() {
            if (this.f66153m) {
                return;
            }
            this.f66153m = true;
            d(Boolean.FALSE);
        }

        @Override // l3.c
        public void onError(Throwable th) {
            if (this.f66153m) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f66153m = true;
            this.f70070a.onError(th);
        }

        @Override // l3.c
        public void onNext(T t3) {
            if (this.f66153m) {
                return;
            }
            try {
                if (this.f66151k.test(t3)) {
                    this.f66153m = true;
                    this.f66152l.cancel();
                    d(Boolean.TRUE);
                }
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f66152l.cancel();
                onError(th);
            }
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            if (SubscriptionHelper.validate(this.f66152l, dVar)) {
                this.f66152l = dVar;
                this.f70070a.onSubscribe(this);
                dVar.request(Long.MAX_VALUE);
            }
        }
    }

    public FlowableAny(io.reactivex.j<T> jVar, w2.r<? super T> rVar) {
        super(jVar);
        this.f66150c = rVar;
    }

    @Override // io.reactivex.j
    protected void h6(l3.c<? super Boolean> cVar) {
        this.f67288b.g6(new AnySubscriber(cVar, this.f66150c));
    }
}
