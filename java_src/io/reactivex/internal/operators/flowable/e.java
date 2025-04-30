package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
/* compiled from: FlowableAllSingle.java */
/* loaded from: classes5.dex */
public final class e<T> extends io.reactivex.i0<Boolean> implements x2.b<Boolean> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.j<T> f67343a;

    /* renamed from: b  reason: collision with root package name */
    final w2.r<? super T> f67344b;

    /* compiled from: FlowableAllSingle.java */
    /* loaded from: classes5.dex */
    static final class a<T> implements io.reactivex.o<T>, io.reactivex.disposables.b {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.l0<? super Boolean> f67345a;

        /* renamed from: b  reason: collision with root package name */
        final w2.r<? super T> f67346b;

        /* renamed from: c  reason: collision with root package name */
        l3.d f67347c;

        /* renamed from: d  reason: collision with root package name */
        boolean f67348d;

        a(io.reactivex.l0<? super Boolean> l0Var, w2.r<? super T> rVar) {
            this.f67345a = l0Var;
            this.f67346b = rVar;
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.f67347c.cancel();
            this.f67347c = SubscriptionHelper.CANCELLED;
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f67347c == SubscriptionHelper.CANCELLED;
        }

        @Override // l3.c
        public void onComplete() {
            if (this.f67348d) {
                return;
            }
            this.f67348d = true;
            this.f67347c = SubscriptionHelper.CANCELLED;
            this.f67345a.onSuccess(Boolean.TRUE);
        }

        @Override // l3.c
        public void onError(Throwable th) {
            if (this.f67348d) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f67348d = true;
            this.f67347c = SubscriptionHelper.CANCELLED;
            this.f67345a.onError(th);
        }

        @Override // l3.c
        public void onNext(T t3) {
            if (this.f67348d) {
                return;
            }
            try {
                if (this.f67346b.test(t3)) {
                    return;
                }
                this.f67348d = true;
                this.f67347c.cancel();
                this.f67347c = SubscriptionHelper.CANCELLED;
                this.f67345a.onSuccess(Boolean.FALSE);
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f67347c.cancel();
                this.f67347c = SubscriptionHelper.CANCELLED;
                onError(th);
            }
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            if (SubscriptionHelper.validate(this.f67347c, dVar)) {
                this.f67347c = dVar;
                this.f67345a.onSubscribe(this);
                dVar.request(Long.MAX_VALUE);
            }
        }
    }

    public e(io.reactivex.j<T> jVar, w2.r<? super T> rVar) {
        this.f67343a = jVar;
        this.f67344b = rVar;
    }

    @Override // io.reactivex.i0
    protected void Y0(io.reactivex.l0<? super Boolean> l0Var) {
        this.f67343a.g6(new a(l0Var, this.f67344b));
    }

    @Override // x2.b
    public io.reactivex.j<Boolean> d() {
        return io.reactivex.plugins.a.P(new FlowableAll(this.f67343a, this.f67344b));
    }
}
