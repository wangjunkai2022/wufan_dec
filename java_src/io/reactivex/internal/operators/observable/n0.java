package io.reactivex.internal.operators.observable;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
/* compiled from: ObservableFromPublisher.java */
/* loaded from: classes5.dex */
public final class n0<T> extends io.reactivex.z<T> {

    /* renamed from: a  reason: collision with root package name */
    final l3.b<? extends T> f69196a;

    /* compiled from: ObservableFromPublisher.java */
    /* loaded from: classes5.dex */
    static final class a<T> implements io.reactivex.o<T>, io.reactivex.disposables.b {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super T> f69197a;

        /* renamed from: b  reason: collision with root package name */
        l3.d f69198b;

        a(io.reactivex.g0<? super T> g0Var) {
            this.f69197a = g0Var;
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.f69198b.cancel();
            this.f69198b = SubscriptionHelper.CANCELLED;
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f69198b == SubscriptionHelper.CANCELLED;
        }

        @Override // l3.c
        public void onComplete() {
            this.f69197a.onComplete();
        }

        @Override // l3.c
        public void onError(Throwable th) {
            this.f69197a.onError(th);
        }

        @Override // l3.c
        public void onNext(T t3) {
            this.f69197a.onNext(t3);
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            if (SubscriptionHelper.validate(this.f69198b, dVar)) {
                this.f69198b = dVar;
                this.f69197a.onSubscribe(this);
                dVar.request(Long.MAX_VALUE);
            }
        }
    }

    public n0(l3.b<? extends T> bVar) {
        this.f69196a = bVar;
    }

    @Override // io.reactivex.z
    protected void F5(io.reactivex.g0<? super T> g0Var) {
        this.f69196a.c(new a(g0Var));
    }
}
