package io.reactivex.internal.operators.completable;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
/* compiled from: CompletableFromPublisher.java */
/* loaded from: classes5.dex */
public final class l<T> extends io.reactivex.a {

    /* renamed from: a  reason: collision with root package name */
    final l3.b<T> f66071a;

    /* compiled from: CompletableFromPublisher.java */
    /* loaded from: classes5.dex */
    static final class a<T> implements io.reactivex.o<T>, io.reactivex.disposables.b {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.d f66072a;

        /* renamed from: b  reason: collision with root package name */
        l3.d f66073b;

        a(io.reactivex.d dVar) {
            this.f66072a = dVar;
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.f66073b.cancel();
            this.f66073b = SubscriptionHelper.CANCELLED;
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f66073b == SubscriptionHelper.CANCELLED;
        }

        @Override // l3.c
        public void onComplete() {
            this.f66072a.onComplete();
        }

        @Override // l3.c
        public void onError(Throwable th) {
            this.f66072a.onError(th);
        }

        @Override // l3.c
        public void onNext(T t3) {
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            if (SubscriptionHelper.validate(this.f66073b, dVar)) {
                this.f66073b = dVar;
                this.f66072a.onSubscribe(this);
                dVar.request(Long.MAX_VALUE);
            }
        }
    }

    public l(l3.b<T> bVar) {
        this.f66071a = bVar;
    }

    @Override // io.reactivex.a
    protected void F0(io.reactivex.d dVar) {
        this.f66071a.c(new a(dVar));
    }
}
