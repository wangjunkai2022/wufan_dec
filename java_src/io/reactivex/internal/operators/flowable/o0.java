package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.NoSuchElementException;
/* compiled from: FlowableLastSingle.java */
/* loaded from: classes5.dex */
public final class o0<T> extends io.reactivex.i0<T> {

    /* renamed from: a  reason: collision with root package name */
    final l3.b<T> f67474a;

    /* renamed from: b  reason: collision with root package name */
    final T f67475b;

    /* compiled from: FlowableLastSingle.java */
    /* loaded from: classes5.dex */
    static final class a<T> implements io.reactivex.o<T>, io.reactivex.disposables.b {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.l0<? super T> f67476a;

        /* renamed from: b  reason: collision with root package name */
        final T f67477b;

        /* renamed from: c  reason: collision with root package name */
        l3.d f67478c;

        /* renamed from: d  reason: collision with root package name */
        T f67479d;

        a(io.reactivex.l0<? super T> l0Var, T t3) {
            this.f67476a = l0Var;
            this.f67477b = t3;
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.f67478c.cancel();
            this.f67478c = SubscriptionHelper.CANCELLED;
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f67478c == SubscriptionHelper.CANCELLED;
        }

        @Override // l3.c
        public void onComplete() {
            this.f67478c = SubscriptionHelper.CANCELLED;
            T t3 = this.f67479d;
            if (t3 != null) {
                this.f67479d = null;
                this.f67476a.onSuccess(t3);
                return;
            }
            T t4 = this.f67477b;
            if (t4 != null) {
                this.f67476a.onSuccess(t4);
            } else {
                this.f67476a.onError(new NoSuchElementException());
            }
        }

        @Override // l3.c
        public void onError(Throwable th) {
            this.f67478c = SubscriptionHelper.CANCELLED;
            this.f67479d = null;
            this.f67476a.onError(th);
        }

        @Override // l3.c
        public void onNext(T t3) {
            this.f67479d = t3;
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            if (SubscriptionHelper.validate(this.f67478c, dVar)) {
                this.f67478c = dVar;
                this.f67476a.onSubscribe(this);
                dVar.request(Long.MAX_VALUE);
            }
        }
    }

    public o0(l3.b<T> bVar, T t3) {
        this.f67474a = bVar;
        this.f67475b = t3;
    }

    @Override // io.reactivex.i0
    protected void Y0(io.reactivex.l0<? super T> l0Var) {
        this.f67474a.c(new a(l0Var, this.f67475b));
    }
}
