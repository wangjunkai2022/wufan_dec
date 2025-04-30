package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.NoSuchElementException;
/* compiled from: FlowableSingleSingle.java */
/* loaded from: classes5.dex */
public final class a1<T> extends io.reactivex.i0<T> implements x2.b<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.j<T> f67298a;

    /* renamed from: b  reason: collision with root package name */
    final T f67299b;

    /* compiled from: FlowableSingleSingle.java */
    /* loaded from: classes5.dex */
    static final class a<T> implements io.reactivex.o<T>, io.reactivex.disposables.b {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.l0<? super T> f67300a;

        /* renamed from: b  reason: collision with root package name */
        final T f67301b;

        /* renamed from: c  reason: collision with root package name */
        l3.d f67302c;

        /* renamed from: d  reason: collision with root package name */
        boolean f67303d;

        /* renamed from: e  reason: collision with root package name */
        T f67304e;

        a(io.reactivex.l0<? super T> l0Var, T t3) {
            this.f67300a = l0Var;
            this.f67301b = t3;
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.f67302c.cancel();
            this.f67302c = SubscriptionHelper.CANCELLED;
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f67302c == SubscriptionHelper.CANCELLED;
        }

        @Override // l3.c
        public void onComplete() {
            if (this.f67303d) {
                return;
            }
            this.f67303d = true;
            this.f67302c = SubscriptionHelper.CANCELLED;
            T t3 = this.f67304e;
            this.f67304e = null;
            if (t3 == null) {
                t3 = this.f67301b;
            }
            if (t3 != null) {
                this.f67300a.onSuccess(t3);
            } else {
                this.f67300a.onError(new NoSuchElementException());
            }
        }

        @Override // l3.c
        public void onError(Throwable th) {
            if (this.f67303d) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f67303d = true;
            this.f67302c = SubscriptionHelper.CANCELLED;
            this.f67300a.onError(th);
        }

        @Override // l3.c
        public void onNext(T t3) {
            if (this.f67303d) {
                return;
            }
            if (this.f67304e != null) {
                this.f67303d = true;
                this.f67302c.cancel();
                this.f67302c = SubscriptionHelper.CANCELLED;
                this.f67300a.onError(new IllegalArgumentException("Sequence contains more than one element!"));
                return;
            }
            this.f67304e = t3;
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            if (SubscriptionHelper.validate(this.f67302c, dVar)) {
                this.f67302c = dVar;
                this.f67300a.onSubscribe(this);
                dVar.request(Long.MAX_VALUE);
            }
        }
    }

    public a1(io.reactivex.j<T> jVar, T t3) {
        this.f67298a = jVar;
        this.f67299b = t3;
    }

    @Override // io.reactivex.i0
    protected void Y0(io.reactivex.l0<? super T> l0Var) {
        this.f67298a.g6(new a(l0Var, this.f67299b));
    }

    @Override // x2.b
    public io.reactivex.j<T> d() {
        return io.reactivex.plugins.a.P(new FlowableSingle(this.f67298a, this.f67299b, true));
    }
}
