package io.reactivex.internal.operators.flowable;

import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicLong;
/* loaded from: classes5.dex */
public final class FlowableOnBackpressureError<T> extends a<T, T> {

    /* loaded from: classes5.dex */
    static final class BackpressureErrorSubscriber<T> extends AtomicLong implements io.reactivex.o<T>, l3.d {
        private static final long serialVersionUID = -3176480756392482682L;

        /* renamed from: a  reason: collision with root package name */
        final l3.c<? super T> f66736a;

        /* renamed from: b  reason: collision with root package name */
        l3.d f66737b;

        /* renamed from: c  reason: collision with root package name */
        boolean f66738c;

        BackpressureErrorSubscriber(l3.c<? super T> cVar) {
            this.f66736a = cVar;
        }

        @Override // l3.d
        public void cancel() {
            this.f66737b.cancel();
        }

        @Override // l3.c
        public void onComplete() {
            if (this.f66738c) {
                return;
            }
            this.f66738c = true;
            this.f66736a.onComplete();
        }

        @Override // l3.c
        public void onError(Throwable th) {
            if (this.f66738c) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f66738c = true;
            this.f66736a.onError(th);
        }

        @Override // l3.c
        public void onNext(T t3) {
            if (this.f66738c) {
                return;
            }
            if (get() != 0) {
                this.f66736a.onNext(t3);
                io.reactivex.internal.util.b.e(this, 1L);
                return;
            }
            onError(new MissingBackpressureException("could not emit value due to lack of requests"));
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            if (SubscriptionHelper.validate(this.f66737b, dVar)) {
                this.f66737b = dVar;
                this.f66736a.onSubscribe(this);
                dVar.request(Long.MAX_VALUE);
            }
        }

        @Override // l3.d
        public void request(long j4) {
            if (SubscriptionHelper.validate(j4)) {
                io.reactivex.internal.util.b.a(this, j4);
            }
        }
    }

    public FlowableOnBackpressureError(io.reactivex.j<T> jVar) {
        super(jVar);
    }

    @Override // io.reactivex.j
    protected void h6(l3.c<? super T> cVar) {
        this.f67288b.g6(new BackpressureErrorSubscriber(cVar));
    }
}
