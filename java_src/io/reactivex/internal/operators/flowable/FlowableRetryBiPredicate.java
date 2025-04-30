package io.reactivex.internal.operators.flowable;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.subscriptions.SubscriptionArbiter;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes5.dex */
public final class FlowableRetryBiPredicate<T> extends a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final w2.d<? super Integer, ? super Throwable> f66895c;

    /* loaded from: classes5.dex */
    static final class RetryBiSubscriber<T> extends AtomicInteger implements io.reactivex.o<T> {
        private static final long serialVersionUID = -7098360935104053232L;

        /* renamed from: a  reason: collision with root package name */
        final l3.c<? super T> f66896a;

        /* renamed from: b  reason: collision with root package name */
        final SubscriptionArbiter f66897b;

        /* renamed from: c  reason: collision with root package name */
        final l3.b<? extends T> f66898c;

        /* renamed from: d  reason: collision with root package name */
        final w2.d<? super Integer, ? super Throwable> f66899d;

        /* renamed from: e  reason: collision with root package name */
        int f66900e;

        /* renamed from: f  reason: collision with root package name */
        long f66901f;

        RetryBiSubscriber(l3.c<? super T> cVar, w2.d<? super Integer, ? super Throwable> dVar, SubscriptionArbiter subscriptionArbiter, l3.b<? extends T> bVar) {
            this.f66896a = cVar;
            this.f66897b = subscriptionArbiter;
            this.f66898c = bVar;
            this.f66899d = dVar;
        }

        void a() {
            if (getAndIncrement() == 0) {
                int i2 = 1;
                while (!this.f66897b.e()) {
                    long j4 = this.f66901f;
                    if (j4 != 0) {
                        this.f66901f = 0L;
                        this.f66897b.g(j4);
                    }
                    this.f66898c.c(this);
                    i2 = addAndGet(-i2);
                    if (i2 == 0) {
                        return;
                    }
                }
            }
        }

        @Override // l3.c
        public void onComplete() {
            this.f66896a.onComplete();
        }

        @Override // l3.c
        public void onError(Throwable th) {
            try {
                w2.d<? super Integer, ? super Throwable> dVar = this.f66899d;
                int i2 = this.f66900e + 1;
                this.f66900e = i2;
                if (!dVar.a(Integer.valueOf(i2), th)) {
                    this.f66896a.onError(th);
                } else {
                    a();
                }
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f66896a.onError(new CompositeException(th, th2));
            }
        }

        @Override // l3.c
        public void onNext(T t3) {
            this.f66901f++;
            this.f66896a.onNext(t3);
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            this.f66897b.h(dVar);
        }
    }

    public FlowableRetryBiPredicate(io.reactivex.j<T> jVar, w2.d<? super Integer, ? super Throwable> dVar) {
        super(jVar);
        this.f66895c = dVar;
    }

    @Override // io.reactivex.j
    public void h6(l3.c<? super T> cVar) {
        SubscriptionArbiter subscriptionArbiter = new SubscriptionArbiter();
        cVar.onSubscribe(subscriptionArbiter);
        new RetryBiSubscriber(cVar, this.f66895c, subscriptionArbiter, this.f67288b).a();
    }
}
