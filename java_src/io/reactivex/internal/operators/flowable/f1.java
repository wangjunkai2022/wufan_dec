package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
/* compiled from: FlowableTakeUntilPredicate.java */
/* loaded from: classes5.dex */
public final class f1<T> extends io.reactivex.internal.operators.flowable.a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final w2.r<? super T> f67363c;

    /* compiled from: FlowableTakeUntilPredicate.java */
    /* loaded from: classes5.dex */
    static final class a<T> implements io.reactivex.o<T>, l3.d {

        /* renamed from: a  reason: collision with root package name */
        final l3.c<? super T> f67364a;

        /* renamed from: b  reason: collision with root package name */
        final w2.r<? super T> f67365b;

        /* renamed from: c  reason: collision with root package name */
        l3.d f67366c;

        /* renamed from: d  reason: collision with root package name */
        boolean f67367d;

        a(l3.c<? super T> cVar, w2.r<? super T> rVar) {
            this.f67364a = cVar;
            this.f67365b = rVar;
        }

        @Override // l3.d
        public void cancel() {
            this.f67366c.cancel();
        }

        @Override // l3.c
        public void onComplete() {
            if (this.f67367d) {
                return;
            }
            this.f67367d = true;
            this.f67364a.onComplete();
        }

        @Override // l3.c
        public void onError(Throwable th) {
            if (!this.f67367d) {
                this.f67367d = true;
                this.f67364a.onError(th);
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // l3.c
        public void onNext(T t3) {
            if (this.f67367d) {
                return;
            }
            this.f67364a.onNext(t3);
            try {
                if (this.f67365b.test(t3)) {
                    this.f67367d = true;
                    this.f67366c.cancel();
                    this.f67364a.onComplete();
                }
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f67366c.cancel();
                onError(th);
            }
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            if (SubscriptionHelper.validate(this.f67366c, dVar)) {
                this.f67366c = dVar;
                this.f67364a.onSubscribe(this);
            }
        }

        @Override // l3.d
        public void request(long j4) {
            this.f67366c.request(j4);
        }
    }

    public f1(io.reactivex.j<T> jVar, w2.r<? super T> rVar) {
        super(jVar);
        this.f67363c = rVar;
    }

    @Override // io.reactivex.j
    protected void h6(l3.c<? super T> cVar) {
        this.f67288b.g6(new a(cVar, this.f67363c));
    }
}
