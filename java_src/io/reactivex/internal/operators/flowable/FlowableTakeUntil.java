package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.AtomicThrowable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class FlowableTakeUntil<T, U> extends a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final l3.b<? extends U> f67075c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class TakeUntilMainSubscriber<T> extends AtomicInteger implements io.reactivex.o<T>, l3.d {
        private static final long serialVersionUID = -4945480365982832967L;

        /* renamed from: a  reason: collision with root package name */
        final l3.c<? super T> f67076a;

        /* renamed from: b  reason: collision with root package name */
        final AtomicLong f67077b = new AtomicLong();

        /* renamed from: c  reason: collision with root package name */
        final AtomicReference<l3.d> f67078c = new AtomicReference<>();

        /* renamed from: e  reason: collision with root package name */
        final TakeUntilMainSubscriber<T>.OtherSubscriber f67080e = new OtherSubscriber();

        /* renamed from: d  reason: collision with root package name */
        final AtomicThrowable f67079d = new AtomicThrowable();

        /* loaded from: classes5.dex */
        final class OtherSubscriber extends AtomicReference<l3.d> implements io.reactivex.o<Object> {
            private static final long serialVersionUID = -3592821756711087922L;

            OtherSubscriber() {
            }

            @Override // l3.c
            public void onComplete() {
                SubscriptionHelper.cancel(TakeUntilMainSubscriber.this.f67078c);
                TakeUntilMainSubscriber takeUntilMainSubscriber = TakeUntilMainSubscriber.this;
                io.reactivex.internal.util.g.b(takeUntilMainSubscriber.f67076a, takeUntilMainSubscriber, takeUntilMainSubscriber.f67079d);
            }

            @Override // l3.c
            public void onError(Throwable th) {
                SubscriptionHelper.cancel(TakeUntilMainSubscriber.this.f67078c);
                TakeUntilMainSubscriber takeUntilMainSubscriber = TakeUntilMainSubscriber.this;
                io.reactivex.internal.util.g.d(takeUntilMainSubscriber.f67076a, th, takeUntilMainSubscriber, takeUntilMainSubscriber.f67079d);
            }

            @Override // l3.c
            public void onNext(Object obj) {
                SubscriptionHelper.cancel(this);
                onComplete();
            }

            @Override // io.reactivex.o, l3.c
            public void onSubscribe(l3.d dVar) {
                SubscriptionHelper.setOnce(this, dVar, Long.MAX_VALUE);
            }
        }

        TakeUntilMainSubscriber(l3.c<? super T> cVar) {
            this.f67076a = cVar;
        }

        @Override // l3.d
        public void cancel() {
            SubscriptionHelper.cancel(this.f67078c);
            SubscriptionHelper.cancel(this.f67080e);
        }

        @Override // l3.c
        public void onComplete() {
            SubscriptionHelper.cancel(this.f67080e);
            io.reactivex.internal.util.g.b(this.f67076a, this, this.f67079d);
        }

        @Override // l3.c
        public void onError(Throwable th) {
            SubscriptionHelper.cancel(this.f67080e);
            io.reactivex.internal.util.g.d(this.f67076a, th, this, this.f67079d);
        }

        @Override // l3.c
        public void onNext(T t3) {
            io.reactivex.internal.util.g.f(this.f67076a, t3, this, this.f67079d);
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            SubscriptionHelper.deferredSetOnce(this.f67078c, this.f67077b, dVar);
        }

        @Override // l3.d
        public void request(long j4) {
            SubscriptionHelper.deferredRequest(this.f67078c, this.f67077b, j4);
        }
    }

    public FlowableTakeUntil(io.reactivex.j<T> jVar, l3.b<? extends U> bVar) {
        super(jVar);
        this.f67075c = bVar;
    }

    @Override // io.reactivex.j
    protected void h6(l3.c<? super T> cVar) {
        TakeUntilMainSubscriber takeUntilMainSubscriber = new TakeUntilMainSubscriber(cVar);
        cVar.onSubscribe(takeUntilMainSubscriber);
        this.f67075c.c(takeUntilMainSubscriber.f67080e);
        this.f67288b.g6(takeUntilMainSubscriber);
    }
}
