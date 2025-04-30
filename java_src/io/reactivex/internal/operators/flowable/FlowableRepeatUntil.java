package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.SubscriptionArbiter;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes5.dex */
public final class FlowableRepeatUntil<T> extends a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final w2.e f66835c;

    /* loaded from: classes5.dex */
    static final class RepeatSubscriber<T> extends AtomicInteger implements io.reactivex.o<T> {
        private static final long serialVersionUID = -7098360935104053232L;

        /* renamed from: a  reason: collision with root package name */
        final l3.c<? super T> f66836a;

        /* renamed from: b  reason: collision with root package name */
        final SubscriptionArbiter f66837b;

        /* renamed from: c  reason: collision with root package name */
        final l3.b<? extends T> f66838c;

        /* renamed from: d  reason: collision with root package name */
        final w2.e f66839d;

        /* renamed from: e  reason: collision with root package name */
        long f66840e;

        RepeatSubscriber(l3.c<? super T> cVar, w2.e eVar, SubscriptionArbiter subscriptionArbiter, l3.b<? extends T> bVar) {
            this.f66836a = cVar;
            this.f66837b = subscriptionArbiter;
            this.f66838c = bVar;
            this.f66839d = eVar;
        }

        void a() {
            if (getAndIncrement() == 0) {
                int i2 = 1;
                while (!this.f66837b.e()) {
                    long j4 = this.f66840e;
                    if (j4 != 0) {
                        this.f66840e = 0L;
                        this.f66837b.g(j4);
                    }
                    this.f66838c.c(this);
                    i2 = addAndGet(-i2);
                    if (i2 == 0) {
                        return;
                    }
                }
            }
        }

        @Override // l3.c
        public void onComplete() {
            try {
                if (this.f66839d.a()) {
                    this.f66836a.onComplete();
                } else {
                    a();
                }
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f66836a.onError(th);
            }
        }

        @Override // l3.c
        public void onError(Throwable th) {
            this.f66836a.onError(th);
        }

        @Override // l3.c
        public void onNext(T t3) {
            this.f66840e++;
            this.f66836a.onNext(t3);
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            this.f66837b.h(dVar);
        }
    }

    public FlowableRepeatUntil(io.reactivex.j<T> jVar, w2.e eVar) {
        super(jVar);
        this.f66835c = eVar;
    }

    @Override // io.reactivex.j
    public void h6(l3.c<? super T> cVar) {
        SubscriptionArbiter subscriptionArbiter = new SubscriptionArbiter();
        cVar.onSubscribe(subscriptionArbiter);
        new RepeatSubscriber(cVar, this.f66835c, subscriptionArbiter, this.f67288b).a();
    }
}
