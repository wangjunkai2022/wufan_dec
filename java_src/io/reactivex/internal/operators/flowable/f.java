package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
/* compiled from: FlowableAnySingle.java */
/* loaded from: classes5.dex */
public final class f<T> extends io.reactivex.i0<Boolean> implements x2.b<Boolean> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.j<T> f67356a;

    /* renamed from: b  reason: collision with root package name */
    final w2.r<? super T> f67357b;

    /* compiled from: FlowableAnySingle.java */
    /* loaded from: classes5.dex */
    static final class a<T> implements io.reactivex.o<T>, io.reactivex.disposables.b {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.l0<? super Boolean> f67358a;

        /* renamed from: b  reason: collision with root package name */
        final w2.r<? super T> f67359b;

        /* renamed from: c  reason: collision with root package name */
        l3.d f67360c;

        /* renamed from: d  reason: collision with root package name */
        boolean f67361d;

        a(io.reactivex.l0<? super Boolean> l0Var, w2.r<? super T> rVar) {
            this.f67358a = l0Var;
            this.f67359b = rVar;
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.f67360c.cancel();
            this.f67360c = SubscriptionHelper.CANCELLED;
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f67360c == SubscriptionHelper.CANCELLED;
        }

        @Override // l3.c
        public void onComplete() {
            if (this.f67361d) {
                return;
            }
            this.f67361d = true;
            this.f67360c = SubscriptionHelper.CANCELLED;
            this.f67358a.onSuccess(Boolean.FALSE);
        }

        @Override // l3.c
        public void onError(Throwable th) {
            if (this.f67361d) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f67361d = true;
            this.f67360c = SubscriptionHelper.CANCELLED;
            this.f67358a.onError(th);
        }

        @Override // l3.c
        public void onNext(T t3) {
            if (this.f67361d) {
                return;
            }
            try {
                if (this.f67359b.test(t3)) {
                    this.f67361d = true;
                    this.f67360c.cancel();
                    this.f67360c = SubscriptionHelper.CANCELLED;
                    this.f67358a.onSuccess(Boolean.TRUE);
                }
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f67360c.cancel();
                this.f67360c = SubscriptionHelper.CANCELLED;
                onError(th);
            }
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            if (SubscriptionHelper.validate(this.f67360c, dVar)) {
                this.f67360c = dVar;
                this.f67358a.onSubscribe(this);
                dVar.request(Long.MAX_VALUE);
            }
        }
    }

    public f(io.reactivex.j<T> jVar, w2.r<? super T> rVar) {
        this.f67356a = jVar;
        this.f67357b = rVar;
    }

    @Override // io.reactivex.i0
    protected void Y0(io.reactivex.l0<? super Boolean> l0Var) {
        this.f67356a.g6(new a(l0Var, this.f67357b));
    }

    @Override // x2.b
    public io.reactivex.j<Boolean> d() {
        return io.reactivex.plugins.a.P(new FlowableAny(this.f67356a, this.f67357b));
    }
}
