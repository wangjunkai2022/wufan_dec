package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.DeferredScalarSubscription;
import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.Callable;
/* loaded from: classes5.dex */
public final class FlowableCollect<T, U> extends a<T, U> {

    /* renamed from: c  reason: collision with root package name */
    final Callable<? extends U> f66220c;

    /* renamed from: d  reason: collision with root package name */
    final w2.b<? super U, ? super T> f66221d;

    /* loaded from: classes5.dex */
    static final class CollectSubscriber<T, U> extends DeferredScalarSubscription<U> implements io.reactivex.o<T> {
        private static final long serialVersionUID = -3589550218733891694L;

        /* renamed from: k  reason: collision with root package name */
        final w2.b<? super U, ? super T> f66222k;

        /* renamed from: l  reason: collision with root package name */
        final U f66223l;

        /* renamed from: m  reason: collision with root package name */
        l3.d f66224m;

        /* renamed from: n  reason: collision with root package name */
        boolean f66225n;

        CollectSubscriber(l3.c<? super U> cVar, U u3, w2.b<? super U, ? super T> bVar) {
            super(cVar);
            this.f66222k = bVar;
            this.f66223l = u3;
        }

        @Override // io.reactivex.internal.subscriptions.DeferredScalarSubscription, l3.d
        public void cancel() {
            super.cancel();
            this.f66224m.cancel();
        }

        @Override // l3.c
        public void onComplete() {
            if (this.f66225n) {
                return;
            }
            this.f66225n = true;
            d(this.f66223l);
        }

        @Override // l3.c
        public void onError(Throwable th) {
            if (this.f66225n) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f66225n = true;
            this.f70070a.onError(th);
        }

        @Override // l3.c
        public void onNext(T t3) {
            if (this.f66225n) {
                return;
            }
            try {
                this.f66222k.a((U) this.f66223l, t3);
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f66224m.cancel();
                onError(th);
            }
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            if (SubscriptionHelper.validate(this.f66224m, dVar)) {
                this.f66224m = dVar;
                this.f70070a.onSubscribe(this);
                dVar.request(Long.MAX_VALUE);
            }
        }
    }

    public FlowableCollect(io.reactivex.j<T> jVar, Callable<? extends U> callable, w2.b<? super U, ? super T> bVar) {
        super(jVar);
        this.f66220c = callable;
        this.f66221d = bVar;
    }

    @Override // io.reactivex.j
    protected void h6(l3.c<? super U> cVar) {
        try {
            this.f67288b.g6(new CollectSubscriber(cVar, io.reactivex.internal.functions.a.g(this.f66220c.call(), "The initial value supplied is null"), this.f66221d));
        } catch (Throwable th) {
            EmptySubscription.error(th, cVar);
        }
    }
}
