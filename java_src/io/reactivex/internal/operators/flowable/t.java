package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.EmptyComponent;
/* compiled from: FlowableDetach.java */
/* loaded from: classes5.dex */
public final class t<T> extends io.reactivex.internal.operators.flowable.a<T, T> {

    /* compiled from: FlowableDetach.java */
    /* loaded from: classes5.dex */
    static final class a<T> implements io.reactivex.o<T>, l3.d {

        /* renamed from: a  reason: collision with root package name */
        l3.c<? super T> f67515a;

        /* renamed from: b  reason: collision with root package name */
        l3.d f67516b;

        a(l3.c<? super T> cVar) {
            this.f67515a = cVar;
        }

        @Override // l3.d
        public void cancel() {
            l3.d dVar = this.f67516b;
            this.f67516b = EmptyComponent.INSTANCE;
            this.f67515a = EmptyComponent.asSubscriber();
            dVar.cancel();
        }

        @Override // l3.c
        public void onComplete() {
            l3.c<? super T> cVar = this.f67515a;
            this.f67516b = EmptyComponent.INSTANCE;
            this.f67515a = EmptyComponent.asSubscriber();
            cVar.onComplete();
        }

        @Override // l3.c
        public void onError(Throwable th) {
            l3.c<? super T> cVar = this.f67515a;
            this.f67516b = EmptyComponent.INSTANCE;
            this.f67515a = EmptyComponent.asSubscriber();
            cVar.onError(th);
        }

        @Override // l3.c
        public void onNext(T t3) {
            this.f67515a.onNext(t3);
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            if (SubscriptionHelper.validate(this.f67516b, dVar)) {
                this.f67516b = dVar;
                this.f67515a.onSubscribe(this);
            }
        }

        @Override // l3.d
        public void request(long j4) {
            this.f67516b.request(j4);
        }
    }

    public t(io.reactivex.j<T> jVar) {
        super(jVar);
    }

    @Override // io.reactivex.j
    protected void h6(l3.c<? super T> cVar) {
        this.f67288b.g6(new a(cVar));
    }
}
