package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.Callable;
/* compiled from: FlowableCollectSingle.java */
/* loaded from: classes5.dex */
public final class l<T, U> extends io.reactivex.i0<U> implements x2.b<U> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.j<T> f67438a;

    /* renamed from: b  reason: collision with root package name */
    final Callable<? extends U> f67439b;

    /* renamed from: c  reason: collision with root package name */
    final w2.b<? super U, ? super T> f67440c;

    /* compiled from: FlowableCollectSingle.java */
    /* loaded from: classes5.dex */
    static final class a<T, U> implements io.reactivex.o<T>, io.reactivex.disposables.b {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.l0<? super U> f67441a;

        /* renamed from: b  reason: collision with root package name */
        final w2.b<? super U, ? super T> f67442b;

        /* renamed from: c  reason: collision with root package name */
        final U f67443c;

        /* renamed from: d  reason: collision with root package name */
        l3.d f67444d;

        /* renamed from: e  reason: collision with root package name */
        boolean f67445e;

        a(io.reactivex.l0<? super U> l0Var, U u3, w2.b<? super U, ? super T> bVar) {
            this.f67441a = l0Var;
            this.f67442b = bVar;
            this.f67443c = u3;
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.f67444d.cancel();
            this.f67444d = SubscriptionHelper.CANCELLED;
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f67444d == SubscriptionHelper.CANCELLED;
        }

        @Override // l3.c
        public void onComplete() {
            if (this.f67445e) {
                return;
            }
            this.f67445e = true;
            this.f67444d = SubscriptionHelper.CANCELLED;
            this.f67441a.onSuccess((U) this.f67443c);
        }

        @Override // l3.c
        public void onError(Throwable th) {
            if (this.f67445e) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f67445e = true;
            this.f67444d = SubscriptionHelper.CANCELLED;
            this.f67441a.onError(th);
        }

        @Override // l3.c
        public void onNext(T t3) {
            if (this.f67445e) {
                return;
            }
            try {
                this.f67442b.a((U) this.f67443c, t3);
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f67444d.cancel();
                onError(th);
            }
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            if (SubscriptionHelper.validate(this.f67444d, dVar)) {
                this.f67444d = dVar;
                this.f67441a.onSubscribe(this);
                dVar.request(Long.MAX_VALUE);
            }
        }
    }

    public l(io.reactivex.j<T> jVar, Callable<? extends U> callable, w2.b<? super U, ? super T> bVar) {
        this.f67438a = jVar;
        this.f67439b = callable;
        this.f67440c = bVar;
    }

    @Override // io.reactivex.i0
    protected void Y0(io.reactivex.l0<? super U> l0Var) {
        try {
            this.f67438a.g6(new a(l0Var, io.reactivex.internal.functions.a.g(this.f67439b.call(), "The initialSupplier returned a null value"), this.f67440c));
        } catch (Throwable th) {
            EmptyDisposable.error(th, l0Var);
        }
    }

    @Override // x2.b
    public io.reactivex.j<U> d() {
        return io.reactivex.plugins.a.P(new FlowableCollect(this.f67438a, this.f67439b, this.f67440c));
    }
}
