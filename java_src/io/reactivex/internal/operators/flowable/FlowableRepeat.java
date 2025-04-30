package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.SubscriptionArbiter;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes5.dex */
public final class FlowableRepeat<T> extends a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final long f66829c;

    /* loaded from: classes5.dex */
    static final class RepeatSubscriber<T> extends AtomicInteger implements io.reactivex.o<T> {
        private static final long serialVersionUID = -7098360935104053232L;

        /* renamed from: a  reason: collision with root package name */
        final l3.c<? super T> f66830a;

        /* renamed from: b  reason: collision with root package name */
        final SubscriptionArbiter f66831b;

        /* renamed from: c  reason: collision with root package name */
        final l3.b<? extends T> f66832c;

        /* renamed from: d  reason: collision with root package name */
        long f66833d;

        /* renamed from: e  reason: collision with root package name */
        long f66834e;

        RepeatSubscriber(l3.c<? super T> cVar, long j4, SubscriptionArbiter subscriptionArbiter, l3.b<? extends T> bVar) {
            this.f66830a = cVar;
            this.f66831b = subscriptionArbiter;
            this.f66832c = bVar;
            this.f66833d = j4;
        }

        void a() {
            if (getAndIncrement() == 0) {
                int i2 = 1;
                while (!this.f66831b.e()) {
                    long j4 = this.f66834e;
                    if (j4 != 0) {
                        this.f66834e = 0L;
                        this.f66831b.g(j4);
                    }
                    this.f66832c.c(this);
                    i2 = addAndGet(-i2);
                    if (i2 == 0) {
                        return;
                    }
                }
            }
        }

        @Override // l3.c
        public void onComplete() {
            long j4 = this.f66833d;
            if (j4 != Long.MAX_VALUE) {
                this.f66833d = j4 - 1;
            }
            if (j4 != 0) {
                a();
            } else {
                this.f66830a.onComplete();
            }
        }

        @Override // l3.c
        public void onError(Throwable th) {
            this.f66830a.onError(th);
        }

        @Override // l3.c
        public void onNext(T t3) {
            this.f66834e++;
            this.f66830a.onNext(t3);
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            this.f66831b.h(dVar);
        }
    }

    public FlowableRepeat(io.reactivex.j<T> jVar, long j4) {
        super(jVar);
        this.f66829c = j4;
    }

    @Override // io.reactivex.j
    public void h6(l3.c<? super T> cVar) {
        SubscriptionArbiter subscriptionArbiter = new SubscriptionArbiter();
        cVar.onSubscribe(subscriptionArbiter);
        long j4 = this.f66829c;
        new RepeatSubscriber(cVar, j4 != Long.MAX_VALUE ? j4 - 1 : Long.MAX_VALUE, subscriptionArbiter, this.f67288b).a();
    }
}
