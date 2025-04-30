package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicLong;
/* loaded from: classes5.dex */
public final class FlowableLimit<T> extends a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final long f66629c;

    /* loaded from: classes5.dex */
    static final class LimitSubscriber<T> extends AtomicLong implements io.reactivex.o<T>, l3.d {
        private static final long serialVersionUID = 2288246011222124525L;

        /* renamed from: a  reason: collision with root package name */
        final l3.c<? super T> f66630a;

        /* renamed from: b  reason: collision with root package name */
        long f66631b;

        /* renamed from: c  reason: collision with root package name */
        l3.d f66632c;

        LimitSubscriber(l3.c<? super T> cVar, long j4) {
            this.f66630a = cVar;
            this.f66631b = j4;
            lazySet(j4);
        }

        @Override // l3.d
        public void cancel() {
            this.f66632c.cancel();
        }

        @Override // l3.c
        public void onComplete() {
            if (this.f66631b > 0) {
                this.f66631b = 0L;
                this.f66630a.onComplete();
            }
        }

        @Override // l3.c
        public void onError(Throwable th) {
            if (this.f66631b > 0) {
                this.f66631b = 0L;
                this.f66630a.onError(th);
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // l3.c
        public void onNext(T t3) {
            long j4 = this.f66631b;
            if (j4 > 0) {
                long j5 = j4 - 1;
                this.f66631b = j5;
                this.f66630a.onNext(t3);
                if (j5 == 0) {
                    this.f66632c.cancel();
                    this.f66630a.onComplete();
                }
            }
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            if (SubscriptionHelper.validate(this.f66632c, dVar)) {
                if (this.f66631b == 0) {
                    dVar.cancel();
                    EmptySubscription.complete(this.f66630a);
                    return;
                }
                this.f66632c = dVar;
                this.f66630a.onSubscribe(this);
            }
        }

        @Override // l3.d
        public void request(long j4) {
            long j5;
            long j6;
            if (SubscriptionHelper.validate(j4)) {
                do {
                    j5 = get();
                    if (j5 == 0) {
                        return;
                    }
                    j6 = j5 <= j4 ? j5 : j4;
                } while (!compareAndSet(j5, j5 - j6));
                this.f66632c.request(j6);
            }
        }
    }

    public FlowableLimit(io.reactivex.j<T> jVar, long j4) {
        super(jVar);
        this.f66629c = j4;
    }

    @Override // io.reactivex.j
    protected void h6(l3.c<? super T> cVar) {
        this.f67288b.g6(new LimitSubscriber(cVar, this.f66629c));
    }
}
