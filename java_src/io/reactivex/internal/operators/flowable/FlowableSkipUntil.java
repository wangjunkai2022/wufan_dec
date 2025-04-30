package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.AtomicThrowable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class FlowableSkipUntil<T, U> extends a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final l3.b<U> f67003c;

    /* loaded from: classes5.dex */
    static final class SkipUntilMainSubscriber<T> extends AtomicInteger implements x2.a<T>, l3.d {
        private static final long serialVersionUID = -6270983465606289181L;

        /* renamed from: a  reason: collision with root package name */
        final l3.c<? super T> f67004a;

        /* renamed from: b  reason: collision with root package name */
        final AtomicReference<l3.d> f67005b = new AtomicReference<>();

        /* renamed from: c  reason: collision with root package name */
        final AtomicLong f67006c = new AtomicLong();

        /* renamed from: d  reason: collision with root package name */
        final SkipUntilMainSubscriber<T>.OtherSubscriber f67007d = new OtherSubscriber();

        /* renamed from: e  reason: collision with root package name */
        final AtomicThrowable f67008e = new AtomicThrowable();

        /* renamed from: f  reason: collision with root package name */
        volatile boolean f67009f;

        /* loaded from: classes5.dex */
        final class OtherSubscriber extends AtomicReference<l3.d> implements io.reactivex.o<Object> {
            private static final long serialVersionUID = -5592042965931999169L;

            OtherSubscriber() {
            }

            @Override // l3.c
            public void onComplete() {
                SkipUntilMainSubscriber.this.f67009f = true;
            }

            @Override // l3.c
            public void onError(Throwable th) {
                SubscriptionHelper.cancel(SkipUntilMainSubscriber.this.f67005b);
                SkipUntilMainSubscriber skipUntilMainSubscriber = SkipUntilMainSubscriber.this;
                io.reactivex.internal.util.g.d(skipUntilMainSubscriber.f67004a, th, skipUntilMainSubscriber, skipUntilMainSubscriber.f67008e);
            }

            @Override // l3.c
            public void onNext(Object obj) {
                SkipUntilMainSubscriber.this.f67009f = true;
                get().cancel();
            }

            @Override // io.reactivex.o, l3.c
            public void onSubscribe(l3.d dVar) {
                SubscriptionHelper.setOnce(this, dVar, Long.MAX_VALUE);
            }
        }

        SkipUntilMainSubscriber(l3.c<? super T> cVar) {
            this.f67004a = cVar;
        }

        @Override // l3.d
        public void cancel() {
            SubscriptionHelper.cancel(this.f67005b);
            SubscriptionHelper.cancel(this.f67007d);
        }

        @Override // l3.c
        public void onComplete() {
            SubscriptionHelper.cancel(this.f67007d);
            io.reactivex.internal.util.g.b(this.f67004a, this, this.f67008e);
        }

        @Override // l3.c
        public void onError(Throwable th) {
            SubscriptionHelper.cancel(this.f67007d);
            io.reactivex.internal.util.g.d(this.f67004a, th, this, this.f67008e);
        }

        @Override // l3.c
        public void onNext(T t3) {
            if (v0(t3)) {
                return;
            }
            this.f67005b.get().request(1L);
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            SubscriptionHelper.deferredSetOnce(this.f67005b, this.f67006c, dVar);
        }

        @Override // l3.d
        public void request(long j4) {
            SubscriptionHelper.deferredRequest(this.f67005b, this.f67006c, j4);
        }

        @Override // x2.a
        public boolean v0(T t3) {
            if (this.f67009f) {
                io.reactivex.internal.util.g.f(this.f67004a, t3, this, this.f67008e);
                return true;
            }
            return false;
        }
    }

    public FlowableSkipUntil(io.reactivex.j<T> jVar, l3.b<U> bVar) {
        super(jVar);
        this.f67003c = bVar;
    }

    @Override // io.reactivex.j
    protected void h6(l3.c<? super T> cVar) {
        SkipUntilMainSubscriber skipUntilMainSubscriber = new SkipUntilMainSubscriber(cVar);
        cVar.onSubscribe(skipUntilMainSubscriber);
        this.f67003c.c(skipUntilMainSubscriber.f67007d);
        this.f67288b.g6(skipUntilMainSubscriber);
    }
}
