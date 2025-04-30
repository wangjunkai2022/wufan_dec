package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionArbiter;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.processors.UnicastProcessor;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class FlowableRepeatWhen<T> extends a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final w2.o<? super io.reactivex.j<Object>, ? extends l3.b<?>> f66841c;

    /* loaded from: classes5.dex */
    static final class RepeatWhenSubscriber<T> extends WhenSourceSubscriber<T, Object> {
        private static final long serialVersionUID = -2680129890138081029L;

        RepeatWhenSubscriber(l3.c<? super T> cVar, io.reactivex.processors.a<Object> aVar, l3.d dVar) {
            super(cVar, aVar, dVar);
        }

        @Override // l3.c
        public void onComplete() {
            i(0);
        }

        @Override // l3.c
        public void onError(Throwable th) {
            this.f66848j.cancel();
            this.f66846h.onError(th);
        }
    }

    /* loaded from: classes5.dex */
    static final class WhenReceiver<T, U> extends AtomicInteger implements io.reactivex.o<Object>, l3.d {
        private static final long serialVersionUID = 2827772011130406689L;

        /* renamed from: a  reason: collision with root package name */
        final l3.b<T> f66842a;

        /* renamed from: b  reason: collision with root package name */
        final AtomicReference<l3.d> f66843b = new AtomicReference<>();

        /* renamed from: c  reason: collision with root package name */
        final AtomicLong f66844c = new AtomicLong();

        /* renamed from: d  reason: collision with root package name */
        WhenSourceSubscriber<T, U> f66845d;

        /* JADX INFO: Access modifiers changed from: package-private */
        public WhenReceiver(l3.b<T> bVar) {
            this.f66842a = bVar;
        }

        @Override // l3.d
        public void cancel() {
            SubscriptionHelper.cancel(this.f66843b);
        }

        @Override // l3.c
        public void onComplete() {
            this.f66845d.cancel();
            this.f66845d.f66846h.onComplete();
        }

        @Override // l3.c
        public void onError(Throwable th) {
            this.f66845d.cancel();
            this.f66845d.f66846h.onError(th);
        }

        @Override // l3.c
        public void onNext(Object obj) {
            if (getAndIncrement() == 0) {
                while (!SubscriptionHelper.isCancelled(this.f66843b.get())) {
                    this.f66842a.c(this.f66845d);
                    if (decrementAndGet() == 0) {
                        return;
                    }
                }
            }
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            SubscriptionHelper.deferredSetOnce(this.f66843b, this.f66844c, dVar);
        }

        @Override // l3.d
        public void request(long j4) {
            SubscriptionHelper.deferredRequest(this.f66843b, this.f66844c, j4);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static abstract class WhenSourceSubscriber<T, U> extends SubscriptionArbiter implements io.reactivex.o<T> {
        private static final long serialVersionUID = -5604623027276966720L;

        /* renamed from: h  reason: collision with root package name */
        protected final l3.c<? super T> f66846h;

        /* renamed from: i  reason: collision with root package name */
        protected final io.reactivex.processors.a<U> f66847i;

        /* renamed from: j  reason: collision with root package name */
        protected final l3.d f66848j;

        /* renamed from: k  reason: collision with root package name */
        private long f66849k;

        /* JADX INFO: Access modifiers changed from: package-private */
        public WhenSourceSubscriber(l3.c<? super T> cVar, io.reactivex.processors.a<U> aVar, l3.d dVar) {
            this.f66846h = cVar;
            this.f66847i = aVar;
            this.f66848j = dVar;
        }

        @Override // io.reactivex.internal.subscriptions.SubscriptionArbiter, l3.d
        public final void cancel() {
            super.cancel();
            this.f66848j.cancel();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public final void i(U u3) {
            long j4 = this.f66849k;
            if (j4 != 0) {
                this.f66849k = 0L;
                g(j4);
            }
            this.f66848j.request(1L);
            this.f66847i.onNext(u3);
        }

        @Override // l3.c
        public final void onNext(T t3) {
            this.f66849k++;
            this.f66846h.onNext(t3);
        }

        @Override // io.reactivex.o, l3.c
        public final void onSubscribe(l3.d dVar) {
            h(dVar);
        }
    }

    public FlowableRepeatWhen(io.reactivex.j<T> jVar, w2.o<? super io.reactivex.j<Object>, ? extends l3.b<?>> oVar) {
        super(jVar);
        this.f66841c = oVar;
    }

    @Override // io.reactivex.j
    public void h6(l3.c<? super T> cVar) {
        io.reactivex.subscribers.e eVar = new io.reactivex.subscribers.e(cVar);
        io.reactivex.processors.a<T> N8 = UnicastProcessor.Q8(8).N8();
        try {
            l3.b bVar = (l3.b) io.reactivex.internal.functions.a.g(this.f66841c.apply(N8), "handler returned a null Publisher");
            WhenReceiver whenReceiver = new WhenReceiver(this.f67288b);
            RepeatWhenSubscriber repeatWhenSubscriber = new RepeatWhenSubscriber(eVar, N8, whenReceiver);
            whenReceiver.f66845d = repeatWhenSubscriber;
            cVar.onSubscribe(repeatWhenSubscriber);
            bVar.c(whenReceiver);
            whenReceiver.onNext(0);
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            EmptySubscription.error(th, cVar);
        }
    }
}
