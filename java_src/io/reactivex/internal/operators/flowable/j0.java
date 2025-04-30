package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
/* compiled from: FlowableHide.java */
/* loaded from: classes5.dex */
public final class j0<T> extends io.reactivex.internal.operators.flowable.a<T, T> {

    /* compiled from: FlowableHide.java */
    /* loaded from: classes5.dex */
    static final class a<T> implements io.reactivex.o<T>, l3.d {

        /* renamed from: a  reason: collision with root package name */
        final l3.c<? super T> f67403a;

        /* renamed from: b  reason: collision with root package name */
        l3.d f67404b;

        a(l3.c<? super T> cVar) {
            this.f67403a = cVar;
        }

        @Override // l3.d
        public void cancel() {
            this.f67404b.cancel();
        }

        @Override // l3.c
        public void onComplete() {
            this.f67403a.onComplete();
        }

        @Override // l3.c
        public void onError(Throwable th) {
            this.f67403a.onError(th);
        }

        @Override // l3.c
        public void onNext(T t3) {
            this.f67403a.onNext(t3);
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            if (SubscriptionHelper.validate(this.f67404b, dVar)) {
                this.f67404b = dVar;
                this.f67403a.onSubscribe(this);
            }
        }

        @Override // l3.d
        public void request(long j4) {
            this.f67404b.request(j4);
        }
    }

    public j0(io.reactivex.j<T> jVar) {
        super(jVar);
    }

    @Override // io.reactivex.j
    protected void h6(l3.c<? super T> cVar) {
        this.f67288b.g6(new a(cVar));
    }
}
