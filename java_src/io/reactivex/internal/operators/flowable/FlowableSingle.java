package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.DeferredScalarSubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.NoSuchElementException;
/* loaded from: classes5.dex */
public final class FlowableSingle<T> extends a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final T f66977c;

    /* renamed from: d  reason: collision with root package name */
    final boolean f66978d;

    /* loaded from: classes5.dex */
    static final class SingleElementSubscriber<T> extends DeferredScalarSubscription<T> implements io.reactivex.o<T> {
        private static final long serialVersionUID = -5526049321428043809L;

        /* renamed from: k  reason: collision with root package name */
        final T f66979k;

        /* renamed from: l  reason: collision with root package name */
        final boolean f66980l;

        /* renamed from: m  reason: collision with root package name */
        l3.d f66981m;

        /* renamed from: n  reason: collision with root package name */
        boolean f66982n;

        SingleElementSubscriber(l3.c<? super T> cVar, T t3, boolean z3) {
            super(cVar);
            this.f66979k = t3;
            this.f66980l = z3;
        }

        @Override // io.reactivex.internal.subscriptions.DeferredScalarSubscription, l3.d
        public void cancel() {
            super.cancel();
            this.f66981m.cancel();
        }

        @Override // l3.c
        public void onComplete() {
            if (this.f66982n) {
                return;
            }
            this.f66982n = true;
            T t3 = this.f70071b;
            this.f70071b = null;
            if (t3 == null) {
                t3 = this.f66979k;
            }
            if (t3 == null) {
                if (this.f66980l) {
                    this.f70070a.onError(new NoSuchElementException());
                    return;
                } else {
                    this.f70070a.onComplete();
                    return;
                }
            }
            d(t3);
        }

        @Override // l3.c
        public void onError(Throwable th) {
            if (this.f66982n) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f66982n = true;
            this.f70070a.onError(th);
        }

        @Override // l3.c
        public void onNext(T t3) {
            if (this.f66982n) {
                return;
            }
            if (this.f70071b != null) {
                this.f66982n = true;
                this.f66981m.cancel();
                this.f70070a.onError(new IllegalArgumentException("Sequence contains more than one element!"));
                return;
            }
            this.f70071b = t3;
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            if (SubscriptionHelper.validate(this.f66981m, dVar)) {
                this.f66981m = dVar;
                this.f70070a.onSubscribe(this);
                dVar.request(Long.MAX_VALUE);
            }
        }
    }

    public FlowableSingle(io.reactivex.j<T> jVar, T t3, boolean z3) {
        super(jVar);
        this.f66977c = t3;
        this.f66978d = z3;
    }

    @Override // io.reactivex.j
    protected void h6(l3.c<? super T> cVar) {
        this.f67288b.g6(new SingleElementSubscriber(cVar, this.f66977c, this.f66978d));
    }
}
