package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.SubscriptionArbiter;
/* compiled from: FlowableDelaySubscriptionOther.java */
/* loaded from: classes5.dex */
public final class r<T, U> extends io.reactivex.j<T> {

    /* renamed from: b  reason: collision with root package name */
    final l3.b<? extends T> f67500b;

    /* renamed from: c  reason: collision with root package name */
    final l3.b<U> f67501c;

    /* compiled from: FlowableDelaySubscriptionOther.java */
    /* loaded from: classes5.dex */
    final class a implements io.reactivex.o<U> {

        /* renamed from: a  reason: collision with root package name */
        final SubscriptionArbiter f67502a;

        /* renamed from: b  reason: collision with root package name */
        final l3.c<? super T> f67503b;

        /* renamed from: c  reason: collision with root package name */
        boolean f67504c;

        /* compiled from: FlowableDelaySubscriptionOther.java */
        /* renamed from: io.reactivex.internal.operators.flowable.r$a$a  reason: collision with other inner class name */
        /* loaded from: classes5.dex */
        final class C0456a implements l3.d {

            /* renamed from: a  reason: collision with root package name */
            final l3.d f67506a;

            C0456a(l3.d dVar) {
                this.f67506a = dVar;
            }

            @Override // l3.d
            public void cancel() {
                this.f67506a.cancel();
            }

            @Override // l3.d
            public void request(long j4) {
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: FlowableDelaySubscriptionOther.java */
        /* loaded from: classes5.dex */
        public final class b implements io.reactivex.o<T> {
            b() {
            }

            @Override // l3.c
            public void onComplete() {
                a.this.f67503b.onComplete();
            }

            @Override // l3.c
            public void onError(Throwable th) {
                a.this.f67503b.onError(th);
            }

            @Override // l3.c
            public void onNext(T t3) {
                a.this.f67503b.onNext(t3);
            }

            @Override // io.reactivex.o, l3.c
            public void onSubscribe(l3.d dVar) {
                a.this.f67502a.h(dVar);
            }
        }

        a(SubscriptionArbiter subscriptionArbiter, l3.c<? super T> cVar) {
            this.f67502a = subscriptionArbiter;
            this.f67503b = cVar;
        }

        @Override // l3.c
        public void onComplete() {
            if (this.f67504c) {
                return;
            }
            this.f67504c = true;
            r.this.f67500b.c(new b());
        }

        @Override // l3.c
        public void onError(Throwable th) {
            if (this.f67504c) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f67504c = true;
            this.f67503b.onError(th);
        }

        @Override // l3.c
        public void onNext(U u3) {
            onComplete();
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            this.f67502a.h(new C0456a(dVar));
            dVar.request(Long.MAX_VALUE);
        }
    }

    public r(l3.b<? extends T> bVar, l3.b<U> bVar2) {
        this.f67500b = bVar;
        this.f67501c = bVar2;
    }

    @Override // io.reactivex.j
    public void h6(l3.c<? super T> cVar) {
        SubscriptionArbiter subscriptionArbiter = new SubscriptionArbiter();
        cVar.onSubscribe(subscriptionArbiter);
        this.f67501c.c(new a(subscriptionArbiter, cVar));
    }
}
