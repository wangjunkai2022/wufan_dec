package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
/* compiled from: FlowableReduceSeedSingle.java */
/* loaded from: classes5.dex */
public final class u0<T, R> extends io.reactivex.i0<R> {

    /* renamed from: a  reason: collision with root package name */
    final l3.b<T> f67528a;

    /* renamed from: b  reason: collision with root package name */
    final R f67529b;

    /* renamed from: c  reason: collision with root package name */
    final w2.c<R, ? super T, R> f67530c;

    /* compiled from: FlowableReduceSeedSingle.java */
    /* loaded from: classes5.dex */
    static final class a<T, R> implements io.reactivex.o<T>, io.reactivex.disposables.b {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.l0<? super R> f67531a;

        /* renamed from: b  reason: collision with root package name */
        final w2.c<R, ? super T, R> f67532b;

        /* renamed from: c  reason: collision with root package name */
        R f67533c;

        /* renamed from: d  reason: collision with root package name */
        l3.d f67534d;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(io.reactivex.l0<? super R> l0Var, w2.c<R, ? super T, R> cVar, R r3) {
            this.f67531a = l0Var;
            this.f67533c = r3;
            this.f67532b = cVar;
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.f67534d.cancel();
            this.f67534d = SubscriptionHelper.CANCELLED;
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f67534d == SubscriptionHelper.CANCELLED;
        }

        @Override // l3.c
        public void onComplete() {
            R r3 = this.f67533c;
            if (r3 != null) {
                this.f67533c = null;
                this.f67534d = SubscriptionHelper.CANCELLED;
                this.f67531a.onSuccess(r3);
            }
        }

        @Override // l3.c
        public void onError(Throwable th) {
            if (this.f67533c != null) {
                this.f67533c = null;
                this.f67534d = SubscriptionHelper.CANCELLED;
                this.f67531a.onError(th);
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // l3.c
        public void onNext(T t3) {
            R r3 = this.f67533c;
            if (r3 != null) {
                try {
                    this.f67533c = (R) io.reactivex.internal.functions.a.g(this.f67532b.apply(r3, t3), "The reducer returned a null value");
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    this.f67534d.cancel();
                    onError(th);
                }
            }
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            if (SubscriptionHelper.validate(this.f67534d, dVar)) {
                this.f67534d = dVar;
                this.f67531a.onSubscribe(this);
                dVar.request(Long.MAX_VALUE);
            }
        }
    }

    public u0(l3.b<T> bVar, R r3, w2.c<R, ? super T, R> cVar) {
        this.f67528a = bVar;
        this.f67529b = r3;
        this.f67530c = cVar;
    }

    @Override // io.reactivex.i0
    protected void Y0(io.reactivex.l0<? super R> l0Var) {
        this.f67528a.c(new a(l0Var, this.f67530c, this.f67529b));
    }
}
