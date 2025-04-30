package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
/* compiled from: FlowableIgnoreElementsCompletable.java */
/* loaded from: classes5.dex */
public final class l0<T> extends io.reactivex.a implements x2.b<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.j<T> f67446a;

    /* compiled from: FlowableIgnoreElementsCompletable.java */
    /* loaded from: classes5.dex */
    static final class a<T> implements io.reactivex.o<T>, io.reactivex.disposables.b {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.d f67447a;

        /* renamed from: b  reason: collision with root package name */
        l3.d f67448b;

        a(io.reactivex.d dVar) {
            this.f67447a = dVar;
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.f67448b.cancel();
            this.f67448b = SubscriptionHelper.CANCELLED;
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f67448b == SubscriptionHelper.CANCELLED;
        }

        @Override // l3.c
        public void onComplete() {
            this.f67448b = SubscriptionHelper.CANCELLED;
            this.f67447a.onComplete();
        }

        @Override // l3.c
        public void onError(Throwable th) {
            this.f67448b = SubscriptionHelper.CANCELLED;
            this.f67447a.onError(th);
        }

        @Override // l3.c
        public void onNext(T t3) {
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            if (SubscriptionHelper.validate(this.f67448b, dVar)) {
                this.f67448b = dVar;
                this.f67447a.onSubscribe(this);
                dVar.request(Long.MAX_VALUE);
            }
        }
    }

    public l0(io.reactivex.j<T> jVar) {
        this.f67446a = jVar;
    }

    @Override // io.reactivex.a
    protected void F0(io.reactivex.d dVar) {
        this.f67446a.g6(new a(dVar));
    }

    @Override // x2.b
    public io.reactivex.j<T> d() {
        return io.reactivex.plugins.a.P(new k0(this.f67446a));
    }
}
