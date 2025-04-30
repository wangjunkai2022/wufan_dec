package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.SubscriptionArbiter;
/* compiled from: FlowableSwitchIfEmpty.java */
/* loaded from: classes5.dex */
public final class d1<T> extends io.reactivex.internal.operators.flowable.a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final l3.b<? extends T> f67338c;

    /* compiled from: FlowableSwitchIfEmpty.java */
    /* loaded from: classes5.dex */
    static final class a<T> implements io.reactivex.o<T> {

        /* renamed from: a  reason: collision with root package name */
        final l3.c<? super T> f67339a;

        /* renamed from: b  reason: collision with root package name */
        final l3.b<? extends T> f67340b;

        /* renamed from: d  reason: collision with root package name */
        boolean f67342d = true;

        /* renamed from: c  reason: collision with root package name */
        final SubscriptionArbiter f67341c = new SubscriptionArbiter();

        a(l3.c<? super T> cVar, l3.b<? extends T> bVar) {
            this.f67339a = cVar;
            this.f67340b = bVar;
        }

        @Override // l3.c
        public void onComplete() {
            if (this.f67342d) {
                this.f67342d = false;
                this.f67340b.c(this);
                return;
            }
            this.f67339a.onComplete();
        }

        @Override // l3.c
        public void onError(Throwable th) {
            this.f67339a.onError(th);
        }

        @Override // l3.c
        public void onNext(T t3) {
            if (this.f67342d) {
                this.f67342d = false;
            }
            this.f67339a.onNext(t3);
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            this.f67341c.h(dVar);
        }
    }

    public d1(io.reactivex.j<T> jVar, l3.b<? extends T> bVar) {
        super(jVar);
        this.f67338c = bVar;
    }

    @Override // io.reactivex.j
    protected void h6(l3.c<? super T> cVar) {
        a aVar = new a(cVar, this.f67338c);
        cVar.onSubscribe(aVar.f67341c);
        this.f67288b.g6(aVar);
    }
}
