package io.reactivex.internal.subscribers;

import io.reactivex.internal.subscriptions.DeferredScalarSubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.o;
/* loaded from: classes5.dex */
public abstract class DeferredScalarSubscriber<T, R> extends DeferredScalarSubscription<R> implements o<T> {
    private static final long serialVersionUID = 2984505488220891551L;

    /* renamed from: k  reason: collision with root package name */
    protected l3.d f69973k;

    /* renamed from: l  reason: collision with root package name */
    protected boolean f69974l;

    public DeferredScalarSubscriber(l3.c<? super R> cVar) {
        super(cVar);
    }

    @Override // io.reactivex.internal.subscriptions.DeferredScalarSubscription, l3.d
    public void cancel() {
        super.cancel();
        this.f69973k.cancel();
    }

    public void onComplete() {
        if (this.f69974l) {
            d(this.f70071b);
        } else {
            this.f70070a.onComplete();
        }
    }

    public void onError(Throwable th) {
        this.f70071b = null;
        this.f70070a.onError(th);
    }

    public void onSubscribe(l3.d dVar) {
        if (SubscriptionHelper.validate(this.f69973k, dVar)) {
            this.f69973k = dVar;
            this.f70070a.onSubscribe(this);
            dVar.request(Long.MAX_VALUE);
        }
    }
}
