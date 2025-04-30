package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
/* compiled from: FlowableCountSingle.java */
/* loaded from: classes5.dex */
public final class o<T> extends io.reactivex.i0<Long> implements x2.b<Long> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.j<T> f67470a;

    /* compiled from: FlowableCountSingle.java */
    /* loaded from: classes5.dex */
    static final class a implements io.reactivex.o<Object>, io.reactivex.disposables.b {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.l0<? super Long> f67471a;

        /* renamed from: b  reason: collision with root package name */
        l3.d f67472b;

        /* renamed from: c  reason: collision with root package name */
        long f67473c;

        a(io.reactivex.l0<? super Long> l0Var) {
            this.f67471a = l0Var;
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.f67472b.cancel();
            this.f67472b = SubscriptionHelper.CANCELLED;
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f67472b == SubscriptionHelper.CANCELLED;
        }

        @Override // l3.c
        public void onComplete() {
            this.f67472b = SubscriptionHelper.CANCELLED;
            this.f67471a.onSuccess(Long.valueOf(this.f67473c));
        }

        @Override // l3.c
        public void onError(Throwable th) {
            this.f67472b = SubscriptionHelper.CANCELLED;
            this.f67471a.onError(th);
        }

        @Override // l3.c
        public void onNext(Object obj) {
            this.f67473c++;
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            if (SubscriptionHelper.validate(this.f67472b, dVar)) {
                this.f67472b = dVar;
                this.f67471a.onSubscribe(this);
                dVar.request(Long.MAX_VALUE);
            }
        }
    }

    public o(io.reactivex.j<T> jVar) {
        this.f67470a = jVar;
    }

    @Override // io.reactivex.i0
    protected void Y0(io.reactivex.l0<? super Long> l0Var) {
        this.f67470a.g6(new a(l0Var));
    }

    @Override // x2.b
    public io.reactivex.j<Long> d() {
        return io.reactivex.plugins.a.P(new FlowableCount(this.f67470a));
    }
}
