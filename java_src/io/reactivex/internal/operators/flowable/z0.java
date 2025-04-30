package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
/* compiled from: FlowableSingleMaybe.java */
/* loaded from: classes5.dex */
public final class z0<T> extends io.reactivex.q<T> implements x2.b<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.j<T> f67586a;

    /* compiled from: FlowableSingleMaybe.java */
    /* loaded from: classes5.dex */
    static final class a<T> implements io.reactivex.o<T>, io.reactivex.disposables.b {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.t<? super T> f67587a;

        /* renamed from: b  reason: collision with root package name */
        l3.d f67588b;

        /* renamed from: c  reason: collision with root package name */
        boolean f67589c;

        /* renamed from: d  reason: collision with root package name */
        T f67590d;

        a(io.reactivex.t<? super T> tVar) {
            this.f67587a = tVar;
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.f67588b.cancel();
            this.f67588b = SubscriptionHelper.CANCELLED;
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f67588b == SubscriptionHelper.CANCELLED;
        }

        @Override // l3.c
        public void onComplete() {
            if (this.f67589c) {
                return;
            }
            this.f67589c = true;
            this.f67588b = SubscriptionHelper.CANCELLED;
            T t3 = this.f67590d;
            this.f67590d = null;
            if (t3 == null) {
                this.f67587a.onComplete();
            } else {
                this.f67587a.onSuccess(t3);
            }
        }

        @Override // l3.c
        public void onError(Throwable th) {
            if (this.f67589c) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f67589c = true;
            this.f67588b = SubscriptionHelper.CANCELLED;
            this.f67587a.onError(th);
        }

        @Override // l3.c
        public void onNext(T t3) {
            if (this.f67589c) {
                return;
            }
            if (this.f67590d != null) {
                this.f67589c = true;
                this.f67588b.cancel();
                this.f67588b = SubscriptionHelper.CANCELLED;
                this.f67587a.onError(new IllegalArgumentException("Sequence contains more than one element!"));
                return;
            }
            this.f67590d = t3;
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            if (SubscriptionHelper.validate(this.f67588b, dVar)) {
                this.f67588b = dVar;
                this.f67587a.onSubscribe(this);
                dVar.request(Long.MAX_VALUE);
            }
        }
    }

    public z0(io.reactivex.j<T> jVar) {
        this.f67586a = jVar;
    }

    @Override // x2.b
    public io.reactivex.j<T> d() {
        return io.reactivex.plugins.a.P(new FlowableSingle(this.f67586a, null, false));
    }

    @Override // io.reactivex.q
    protected void o1(io.reactivex.t<? super T> tVar) {
        this.f67586a.g6(new a(tVar));
    }
}
