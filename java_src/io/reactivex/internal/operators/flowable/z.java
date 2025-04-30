package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
/* compiled from: FlowableElementAtMaybe.java */
/* loaded from: classes5.dex */
public final class z<T> extends io.reactivex.q<T> implements x2.b<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.j<T> f67579a;

    /* renamed from: b  reason: collision with root package name */
    final long f67580b;

    /* compiled from: FlowableElementAtMaybe.java */
    /* loaded from: classes5.dex */
    static final class a<T> implements io.reactivex.o<T>, io.reactivex.disposables.b {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.t<? super T> f67581a;

        /* renamed from: b  reason: collision with root package name */
        final long f67582b;

        /* renamed from: c  reason: collision with root package name */
        l3.d f67583c;

        /* renamed from: d  reason: collision with root package name */
        long f67584d;

        /* renamed from: e  reason: collision with root package name */
        boolean f67585e;

        a(io.reactivex.t<? super T> tVar, long j4) {
            this.f67581a = tVar;
            this.f67582b = j4;
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.f67583c.cancel();
            this.f67583c = SubscriptionHelper.CANCELLED;
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f67583c == SubscriptionHelper.CANCELLED;
        }

        @Override // l3.c
        public void onComplete() {
            this.f67583c = SubscriptionHelper.CANCELLED;
            if (this.f67585e) {
                return;
            }
            this.f67585e = true;
            this.f67581a.onComplete();
        }

        @Override // l3.c
        public void onError(Throwable th) {
            if (this.f67585e) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f67585e = true;
            this.f67583c = SubscriptionHelper.CANCELLED;
            this.f67581a.onError(th);
        }

        @Override // l3.c
        public void onNext(T t3) {
            if (this.f67585e) {
                return;
            }
            long j4 = this.f67584d;
            if (j4 == this.f67582b) {
                this.f67585e = true;
                this.f67583c.cancel();
                this.f67583c = SubscriptionHelper.CANCELLED;
                this.f67581a.onSuccess(t3);
                return;
            }
            this.f67584d = j4 + 1;
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            if (SubscriptionHelper.validate(this.f67583c, dVar)) {
                this.f67583c = dVar;
                this.f67581a.onSubscribe(this);
                dVar.request(Long.MAX_VALUE);
            }
        }
    }

    public z(io.reactivex.j<T> jVar, long j4) {
        this.f67579a = jVar;
        this.f67580b = j4;
    }

    @Override // x2.b
    public io.reactivex.j<T> d() {
        return io.reactivex.plugins.a.P(new FlowableElementAt(this.f67579a, this.f67580b, null, false));
    }

    @Override // io.reactivex.q
    protected void o1(io.reactivex.t<? super T> tVar) {
        this.f67579a.g6(new a(tVar, this.f67580b));
    }
}
