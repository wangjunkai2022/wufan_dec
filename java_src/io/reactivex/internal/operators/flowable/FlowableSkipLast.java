package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.ArrayDeque;
/* loaded from: classes5.dex */
public final class FlowableSkipLast<T> extends a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final int f66983c;

    /* loaded from: classes5.dex */
    static final class SkipLastSubscriber<T> extends ArrayDeque<T> implements io.reactivex.o<T>, l3.d {
        private static final long serialVersionUID = -3807491841935125653L;

        /* renamed from: a  reason: collision with root package name */
        final l3.c<? super T> f66984a;

        /* renamed from: b  reason: collision with root package name */
        final int f66985b;

        /* renamed from: c  reason: collision with root package name */
        l3.d f66986c;

        SkipLastSubscriber(l3.c<? super T> cVar, int i2) {
            super(i2);
            this.f66984a = cVar;
            this.f66985b = i2;
        }

        @Override // l3.d
        public void cancel() {
            this.f66986c.cancel();
        }

        @Override // l3.c
        public void onComplete() {
            this.f66984a.onComplete();
        }

        @Override // l3.c
        public void onError(Throwable th) {
            this.f66984a.onError(th);
        }

        @Override // l3.c
        public void onNext(T t3) {
            if (this.f66985b == size()) {
                this.f66984a.onNext((T) poll());
            } else {
                this.f66986c.request(1L);
            }
            offer(t3);
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            if (SubscriptionHelper.validate(this.f66986c, dVar)) {
                this.f66986c = dVar;
                this.f66984a.onSubscribe(this);
            }
        }

        @Override // l3.d
        public void request(long j4) {
            this.f66986c.request(j4);
        }
    }

    public FlowableSkipLast(io.reactivex.j<T> jVar, int i2) {
        super(jVar);
        this.f66983c = i2;
    }

    @Override // io.reactivex.j
    protected void h6(l3.c<? super T> cVar) {
        this.f67288b.g6(new SkipLastSubscriber(cVar, this.f66983c));
    }
}
