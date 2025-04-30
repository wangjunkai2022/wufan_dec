package io.reactivex.internal.operators.flowable;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.subscriptions.SubscriptionArbiter;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes5.dex */
public final class FlowableRetryPredicate<T> extends a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final w2.r<? super Throwable> f66902c;

    /* renamed from: d  reason: collision with root package name */
    final long f66903d;

    /* loaded from: classes5.dex */
    static final class RetrySubscriber<T> extends AtomicInteger implements io.reactivex.o<T> {
        private static final long serialVersionUID = -7098360935104053232L;

        /* renamed from: a  reason: collision with root package name */
        final l3.c<? super T> f66904a;

        /* renamed from: b  reason: collision with root package name */
        final SubscriptionArbiter f66905b;

        /* renamed from: c  reason: collision with root package name */
        final l3.b<? extends T> f66906c;

        /* renamed from: d  reason: collision with root package name */
        final w2.r<? super Throwable> f66907d;

        /* renamed from: e  reason: collision with root package name */
        long f66908e;

        /* renamed from: f  reason: collision with root package name */
        long f66909f;

        RetrySubscriber(l3.c<? super T> cVar, long j4, w2.r<? super Throwable> rVar, SubscriptionArbiter subscriptionArbiter, l3.b<? extends T> bVar) {
            this.f66904a = cVar;
            this.f66905b = subscriptionArbiter;
            this.f66906c = bVar;
            this.f66907d = rVar;
            this.f66908e = j4;
        }

        void a() {
            if (getAndIncrement() == 0) {
                int i2 = 1;
                while (!this.f66905b.e()) {
                    long j4 = this.f66909f;
                    if (j4 != 0) {
                        this.f66909f = 0L;
                        this.f66905b.g(j4);
                    }
                    this.f66906c.c(this);
                    i2 = addAndGet(-i2);
                    if (i2 == 0) {
                        return;
                    }
                }
            }
        }

        @Override // l3.c
        public void onComplete() {
            this.f66904a.onComplete();
        }

        @Override // l3.c
        public void onError(Throwable th) {
            long j4 = this.f66908e;
            if (j4 != Long.MAX_VALUE) {
                this.f66908e = j4 - 1;
            }
            if (j4 == 0) {
                this.f66904a.onError(th);
                return;
            }
            try {
                if (!this.f66907d.test(th)) {
                    this.f66904a.onError(th);
                } else {
                    a();
                }
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f66904a.onError(new CompositeException(th, th2));
            }
        }

        @Override // l3.c
        public void onNext(T t3) {
            this.f66909f++;
            this.f66904a.onNext(t3);
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            this.f66905b.h(dVar);
        }
    }

    public FlowableRetryPredicate(io.reactivex.j<T> jVar, long j4, w2.r<? super Throwable> rVar) {
        super(jVar);
        this.f66902c = rVar;
        this.f66903d = j4;
    }

    @Override // io.reactivex.j
    public void h6(l3.c<? super T> cVar) {
        SubscriptionArbiter subscriptionArbiter = new SubscriptionArbiter();
        cVar.onSubscribe(subscriptionArbiter);
        new RetrySubscriber(cVar, this.f66903d, this.f66902c, subscriptionArbiter, this.f67288b).a();
    }
}
