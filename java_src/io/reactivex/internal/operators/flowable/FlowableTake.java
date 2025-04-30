package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes5.dex */
public final class FlowableTake<T> extends a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final long f67042c;

    /* loaded from: classes5.dex */
    static final class TakeSubscriber<T> extends AtomicBoolean implements io.reactivex.o<T>, l3.d {
        private static final long serialVersionUID = -5636543848937116287L;

        /* renamed from: a  reason: collision with root package name */
        final l3.c<? super T> f67043a;

        /* renamed from: b  reason: collision with root package name */
        final long f67044b;

        /* renamed from: c  reason: collision with root package name */
        boolean f67045c;

        /* renamed from: d  reason: collision with root package name */
        l3.d f67046d;

        /* renamed from: e  reason: collision with root package name */
        long f67047e;

        /* JADX INFO: Access modifiers changed from: package-private */
        public TakeSubscriber(l3.c<? super T> cVar, long j4) {
            this.f67043a = cVar;
            this.f67044b = j4;
            this.f67047e = j4;
        }

        @Override // l3.d
        public void cancel() {
            this.f67046d.cancel();
        }

        @Override // l3.c
        public void onComplete() {
            if (this.f67045c) {
                return;
            }
            this.f67045c = true;
            this.f67043a.onComplete();
        }

        @Override // l3.c
        public void onError(Throwable th) {
            if (!this.f67045c) {
                this.f67045c = true;
                this.f67046d.cancel();
                this.f67043a.onError(th);
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // l3.c
        public void onNext(T t3) {
            if (this.f67045c) {
                return;
            }
            long j4 = this.f67047e;
            long j5 = j4 - 1;
            this.f67047e = j5;
            if (j4 > 0) {
                boolean z3 = j5 == 0;
                this.f67043a.onNext(t3);
                if (z3) {
                    this.f67046d.cancel();
                    onComplete();
                }
            }
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            if (SubscriptionHelper.validate(this.f67046d, dVar)) {
                this.f67046d = dVar;
                if (this.f67044b == 0) {
                    dVar.cancel();
                    this.f67045c = true;
                    EmptySubscription.complete(this.f67043a);
                    return;
                }
                this.f67043a.onSubscribe(this);
            }
        }

        @Override // l3.d
        public void request(long j4) {
            if (SubscriptionHelper.validate(j4)) {
                if (!get() && compareAndSet(false, true) && j4 >= this.f67044b) {
                    this.f67046d.request(Long.MAX_VALUE);
                } else {
                    this.f67046d.request(j4);
                }
            }
        }
    }

    public FlowableTake(io.reactivex.j<T> jVar, long j4) {
        super(jVar);
        this.f67042c = j4;
    }

    @Override // io.reactivex.j
    protected void h6(l3.c<? super T> cVar) {
        this.f67288b.g6(new TakeSubscriber(cVar, this.f67042c));
    }
}
