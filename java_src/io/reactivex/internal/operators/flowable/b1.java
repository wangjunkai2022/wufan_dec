package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
/* compiled from: FlowableSkip.java */
/* loaded from: classes5.dex */
public final class b1<T> extends io.reactivex.internal.operators.flowable.a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final long f67310c;

    /* compiled from: FlowableSkip.java */
    /* loaded from: classes5.dex */
    static final class a<T> implements io.reactivex.o<T>, l3.d {

        /* renamed from: a  reason: collision with root package name */
        final l3.c<? super T> f67311a;

        /* renamed from: b  reason: collision with root package name */
        long f67312b;

        /* renamed from: c  reason: collision with root package name */
        l3.d f67313c;

        a(l3.c<? super T> cVar, long j4) {
            this.f67311a = cVar;
            this.f67312b = j4;
        }

        @Override // l3.d
        public void cancel() {
            this.f67313c.cancel();
        }

        @Override // l3.c
        public void onComplete() {
            this.f67311a.onComplete();
        }

        @Override // l3.c
        public void onError(Throwable th) {
            this.f67311a.onError(th);
        }

        @Override // l3.c
        public void onNext(T t3) {
            long j4 = this.f67312b;
            if (j4 != 0) {
                this.f67312b = j4 - 1;
            } else {
                this.f67311a.onNext(t3);
            }
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            if (SubscriptionHelper.validate(this.f67313c, dVar)) {
                long j4 = this.f67312b;
                this.f67313c = dVar;
                this.f67311a.onSubscribe(this);
                dVar.request(j4);
            }
        }

        @Override // l3.d
        public void request(long j4) {
            this.f67313c.request(j4);
        }
    }

    public b1(io.reactivex.j<T> jVar, long j4) {
        super(jVar);
        this.f67310c = j4;
    }

    @Override // io.reactivex.j
    protected void h6(l3.c<? super T> cVar) {
        this.f67288b.g6(new a(cVar, this.f67310c));
    }
}
