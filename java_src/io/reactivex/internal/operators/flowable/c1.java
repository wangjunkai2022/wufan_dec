package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
/* compiled from: FlowableSkipWhile.java */
/* loaded from: classes5.dex */
public final class c1<T> extends io.reactivex.internal.operators.flowable.a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final w2.r<? super T> f67320c;

    /* compiled from: FlowableSkipWhile.java */
    /* loaded from: classes5.dex */
    static final class a<T> implements io.reactivex.o<T>, l3.d {

        /* renamed from: a  reason: collision with root package name */
        final l3.c<? super T> f67321a;

        /* renamed from: b  reason: collision with root package name */
        final w2.r<? super T> f67322b;

        /* renamed from: c  reason: collision with root package name */
        l3.d f67323c;

        /* renamed from: d  reason: collision with root package name */
        boolean f67324d;

        a(l3.c<? super T> cVar, w2.r<? super T> rVar) {
            this.f67321a = cVar;
            this.f67322b = rVar;
        }

        @Override // l3.d
        public void cancel() {
            this.f67323c.cancel();
        }

        @Override // l3.c
        public void onComplete() {
            this.f67321a.onComplete();
        }

        @Override // l3.c
        public void onError(Throwable th) {
            this.f67321a.onError(th);
        }

        @Override // l3.c
        public void onNext(T t3) {
            if (this.f67324d) {
                this.f67321a.onNext(t3);
                return;
            }
            try {
                if (this.f67322b.test(t3)) {
                    this.f67323c.request(1L);
                    return;
                }
                this.f67324d = true;
                this.f67321a.onNext(t3);
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f67323c.cancel();
                this.f67321a.onError(th);
            }
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            if (SubscriptionHelper.validate(this.f67323c, dVar)) {
                this.f67323c = dVar;
                this.f67321a.onSubscribe(this);
            }
        }

        @Override // l3.d
        public void request(long j4) {
            this.f67323c.request(j4);
        }
    }

    public c1(io.reactivex.j<T> jVar, w2.r<? super T> rVar) {
        super(jVar);
        this.f67320c = rVar;
    }

    @Override // io.reactivex.j
    protected void h6(l3.c<? super T> cVar) {
        this.f67288b.g6(new a(cVar, this.f67320c));
    }
}
