package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.DeferredScalarSubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.NoSuchElementException;
/* loaded from: classes5.dex */
public final class FlowableElementAt<T> extends a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final long f66369c;

    /* renamed from: d  reason: collision with root package name */
    final T f66370d;

    /* renamed from: e  reason: collision with root package name */
    final boolean f66371e;

    /* loaded from: classes5.dex */
    static final class ElementAtSubscriber<T> extends DeferredScalarSubscription<T> implements io.reactivex.o<T> {
        private static final long serialVersionUID = 4066607327284737757L;

        /* renamed from: k  reason: collision with root package name */
        final long f66372k;

        /* renamed from: l  reason: collision with root package name */
        final T f66373l;

        /* renamed from: m  reason: collision with root package name */
        final boolean f66374m;

        /* renamed from: n  reason: collision with root package name */
        l3.d f66375n;

        /* renamed from: o  reason: collision with root package name */
        long f66376o;

        /* renamed from: p  reason: collision with root package name */
        boolean f66377p;

        ElementAtSubscriber(l3.c<? super T> cVar, long j4, T t3, boolean z3) {
            super(cVar);
            this.f66372k = j4;
            this.f66373l = t3;
            this.f66374m = z3;
        }

        @Override // io.reactivex.internal.subscriptions.DeferredScalarSubscription, l3.d
        public void cancel() {
            super.cancel();
            this.f66375n.cancel();
        }

        @Override // l3.c
        public void onComplete() {
            if (this.f66377p) {
                return;
            }
            this.f66377p = true;
            T t3 = this.f66373l;
            if (t3 == null) {
                if (this.f66374m) {
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
            if (this.f66377p) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f66377p = true;
            this.f70070a.onError(th);
        }

        @Override // l3.c
        public void onNext(T t3) {
            if (this.f66377p) {
                return;
            }
            long j4 = this.f66376o;
            if (j4 == this.f66372k) {
                this.f66377p = true;
                this.f66375n.cancel();
                d(t3);
                return;
            }
            this.f66376o = j4 + 1;
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            if (SubscriptionHelper.validate(this.f66375n, dVar)) {
                this.f66375n = dVar;
                this.f70070a.onSubscribe(this);
                dVar.request(Long.MAX_VALUE);
            }
        }
    }

    public FlowableElementAt(io.reactivex.j<T> jVar, long j4, T t3, boolean z3) {
        super(jVar);
        this.f66369c = j4;
        this.f66370d = t3;
        this.f66371e = z3;
    }

    @Override // io.reactivex.j
    protected void h6(l3.c<? super T> cVar) {
        this.f67288b.g6(new ElementAtSubscriber(cVar, this.f66369c, this.f66370d, this.f66371e));
    }
}
