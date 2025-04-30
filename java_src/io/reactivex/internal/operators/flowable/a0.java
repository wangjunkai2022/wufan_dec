package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.NoSuchElementException;
/* compiled from: FlowableElementAtSingle.java */
/* loaded from: classes5.dex */
public final class a0<T> extends io.reactivex.i0<T> implements x2.b<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.j<T> f67289a;

    /* renamed from: b  reason: collision with root package name */
    final long f67290b;

    /* renamed from: c  reason: collision with root package name */
    final T f67291c;

    /* compiled from: FlowableElementAtSingle.java */
    /* loaded from: classes5.dex */
    static final class a<T> implements io.reactivex.o<T>, io.reactivex.disposables.b {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.l0<? super T> f67292a;

        /* renamed from: b  reason: collision with root package name */
        final long f67293b;

        /* renamed from: c  reason: collision with root package name */
        final T f67294c;

        /* renamed from: d  reason: collision with root package name */
        l3.d f67295d;

        /* renamed from: e  reason: collision with root package name */
        long f67296e;

        /* renamed from: f  reason: collision with root package name */
        boolean f67297f;

        a(io.reactivex.l0<? super T> l0Var, long j4, T t3) {
            this.f67292a = l0Var;
            this.f67293b = j4;
            this.f67294c = t3;
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.f67295d.cancel();
            this.f67295d = SubscriptionHelper.CANCELLED;
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f67295d == SubscriptionHelper.CANCELLED;
        }

        @Override // l3.c
        public void onComplete() {
            this.f67295d = SubscriptionHelper.CANCELLED;
            if (this.f67297f) {
                return;
            }
            this.f67297f = true;
            T t3 = this.f67294c;
            if (t3 != null) {
                this.f67292a.onSuccess(t3);
            } else {
                this.f67292a.onError(new NoSuchElementException());
            }
        }

        @Override // l3.c
        public void onError(Throwable th) {
            if (this.f67297f) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f67297f = true;
            this.f67295d = SubscriptionHelper.CANCELLED;
            this.f67292a.onError(th);
        }

        @Override // l3.c
        public void onNext(T t3) {
            if (this.f67297f) {
                return;
            }
            long j4 = this.f67296e;
            if (j4 == this.f67293b) {
                this.f67297f = true;
                this.f67295d.cancel();
                this.f67295d = SubscriptionHelper.CANCELLED;
                this.f67292a.onSuccess(t3);
                return;
            }
            this.f67296e = j4 + 1;
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            if (SubscriptionHelper.validate(this.f67295d, dVar)) {
                this.f67295d = dVar;
                this.f67292a.onSubscribe(this);
                dVar.request(Long.MAX_VALUE);
            }
        }
    }

    public a0(io.reactivex.j<T> jVar, long j4, T t3) {
        this.f67289a = jVar;
        this.f67290b = j4;
        this.f67291c = t3;
    }

    @Override // io.reactivex.i0
    protected void Y0(io.reactivex.l0<? super T> l0Var) {
        this.f67289a.g6(new a(l0Var, this.f67290b, this.f67291c));
    }

    @Override // x2.b
    public io.reactivex.j<T> d() {
        return io.reactivex.plugins.a.P(new FlowableElementAt(this.f67289a, this.f67290b, this.f67291c, true));
    }
}
