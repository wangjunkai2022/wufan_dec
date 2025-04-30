package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
/* compiled from: FlowableLastMaybe.java */
/* loaded from: classes5.dex */
public final class n0<T> extends io.reactivex.q<T> {

    /* renamed from: a  reason: collision with root package name */
    final l3.b<T> f67466a;

    /* compiled from: FlowableLastMaybe.java */
    /* loaded from: classes5.dex */
    static final class a<T> implements io.reactivex.o<T>, io.reactivex.disposables.b {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.t<? super T> f67467a;

        /* renamed from: b  reason: collision with root package name */
        l3.d f67468b;

        /* renamed from: c  reason: collision with root package name */
        T f67469c;

        a(io.reactivex.t<? super T> tVar) {
            this.f67467a = tVar;
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.f67468b.cancel();
            this.f67468b = SubscriptionHelper.CANCELLED;
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f67468b == SubscriptionHelper.CANCELLED;
        }

        @Override // l3.c
        public void onComplete() {
            this.f67468b = SubscriptionHelper.CANCELLED;
            T t3 = this.f67469c;
            if (t3 != null) {
                this.f67469c = null;
                this.f67467a.onSuccess(t3);
                return;
            }
            this.f67467a.onComplete();
        }

        @Override // l3.c
        public void onError(Throwable th) {
            this.f67468b = SubscriptionHelper.CANCELLED;
            this.f67469c = null;
            this.f67467a.onError(th);
        }

        @Override // l3.c
        public void onNext(T t3) {
            this.f67469c = t3;
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            if (SubscriptionHelper.validate(this.f67468b, dVar)) {
                this.f67468b = dVar;
                this.f67467a.onSubscribe(this);
                dVar.request(Long.MAX_VALUE);
            }
        }
    }

    public n0(l3.b<T> bVar) {
        this.f67466a = bVar;
    }

    @Override // io.reactivex.q
    protected void o1(io.reactivex.t<? super T> tVar) {
        this.f67466a.c(new a(tVar));
    }
}
