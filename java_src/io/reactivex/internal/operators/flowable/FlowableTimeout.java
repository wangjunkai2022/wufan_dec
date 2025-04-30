package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.disposables.SequentialDisposable;
import io.reactivex.internal.operators.flowable.FlowableTimeoutTimed;
import io.reactivex.internal.subscriptions.SubscriptionArbiter;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class FlowableTimeout<T, U, V> extends io.reactivex.internal.operators.flowable.a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final l3.b<U> f67111c;

    /* renamed from: d  reason: collision with root package name */
    final w2.o<? super T, ? extends l3.b<V>> f67112d;

    /* renamed from: e  reason: collision with root package name */
    final l3.b<? extends T> f67113e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class TimeoutConsumer extends AtomicReference<l3.d> implements io.reactivex.o<Object>, io.reactivex.disposables.b {
        private static final long serialVersionUID = 8708641127342403073L;

        /* renamed from: a  reason: collision with root package name */
        final a f67114a;

        /* renamed from: b  reason: collision with root package name */
        final long f67115b;

        TimeoutConsumer(long j4, a aVar) {
            this.f67115b = j4;
            this.f67114a = aVar;
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            SubscriptionHelper.cancel(this);
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return SubscriptionHelper.isCancelled(get());
        }

        @Override // l3.c
        public void onComplete() {
            Object obj = get();
            SubscriptionHelper subscriptionHelper = SubscriptionHelper.CANCELLED;
            if (obj != subscriptionHelper) {
                lazySet(subscriptionHelper);
                this.f67114a.b(this.f67115b);
            }
        }

        @Override // l3.c
        public void onError(Throwable th) {
            Object obj = get();
            SubscriptionHelper subscriptionHelper = SubscriptionHelper.CANCELLED;
            if (obj != subscriptionHelper) {
                lazySet(subscriptionHelper);
                this.f67114a.a(this.f67115b, th);
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // l3.c
        public void onNext(Object obj) {
            l3.d dVar = (l3.d) get();
            SubscriptionHelper subscriptionHelper = SubscriptionHelper.CANCELLED;
            if (dVar != subscriptionHelper) {
                dVar.cancel();
                lazySet(subscriptionHelper);
                this.f67114a.b(this.f67115b);
            }
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            SubscriptionHelper.setOnce(this, dVar, Long.MAX_VALUE);
        }
    }

    /* loaded from: classes5.dex */
    static final class TimeoutFallbackSubscriber<T> extends SubscriptionArbiter implements io.reactivex.o<T>, a {
        private static final long serialVersionUID = 3764492702657003550L;

        /* renamed from: h  reason: collision with root package name */
        final l3.c<? super T> f67116h;

        /* renamed from: i  reason: collision with root package name */
        final w2.o<? super T, ? extends l3.b<?>> f67117i;

        /* renamed from: j  reason: collision with root package name */
        final SequentialDisposable f67118j = new SequentialDisposable();

        /* renamed from: k  reason: collision with root package name */
        final AtomicReference<l3.d> f67119k = new AtomicReference<>();

        /* renamed from: l  reason: collision with root package name */
        final AtomicLong f67120l = new AtomicLong();

        /* renamed from: m  reason: collision with root package name */
        l3.b<? extends T> f67121m;

        /* renamed from: n  reason: collision with root package name */
        long f67122n;

        TimeoutFallbackSubscriber(l3.c<? super T> cVar, w2.o<? super T, ? extends l3.b<?>> oVar, l3.b<? extends T> bVar) {
            this.f67116h = cVar;
            this.f67117i = oVar;
            this.f67121m = bVar;
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableTimeout.a
        public void a(long j4, Throwable th) {
            if (this.f67120l.compareAndSet(j4, Long.MAX_VALUE)) {
                SubscriptionHelper.cancel(this.f67119k);
                this.f67116h.onError(th);
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableTimeoutTimed.b
        public void b(long j4) {
            if (this.f67120l.compareAndSet(j4, Long.MAX_VALUE)) {
                SubscriptionHelper.cancel(this.f67119k);
                l3.b<? extends T> bVar = this.f67121m;
                this.f67121m = null;
                long j5 = this.f67122n;
                if (j5 != 0) {
                    g(j5);
                }
                bVar.c(new FlowableTimeoutTimed.a(this.f67116h, this));
            }
        }

        @Override // io.reactivex.internal.subscriptions.SubscriptionArbiter, l3.d
        public void cancel() {
            super.cancel();
            this.f67118j.dispose();
        }

        void i(l3.b<?> bVar) {
            if (bVar != null) {
                TimeoutConsumer timeoutConsumer = new TimeoutConsumer(0L, this);
                if (this.f67118j.a(timeoutConsumer)) {
                    bVar.c(timeoutConsumer);
                }
            }
        }

        @Override // l3.c
        public void onComplete() {
            if (this.f67120l.getAndSet(Long.MAX_VALUE) != Long.MAX_VALUE) {
                this.f67118j.dispose();
                this.f67116h.onComplete();
                this.f67118j.dispose();
            }
        }

        @Override // l3.c
        public void onError(Throwable th) {
            if (this.f67120l.getAndSet(Long.MAX_VALUE) != Long.MAX_VALUE) {
                this.f67118j.dispose();
                this.f67116h.onError(th);
                this.f67118j.dispose();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // l3.c
        public void onNext(T t3) {
            long j4 = this.f67120l.get();
            if (j4 != Long.MAX_VALUE) {
                long j5 = j4 + 1;
                if (this.f67120l.compareAndSet(j4, j5)) {
                    io.reactivex.disposables.b bVar = this.f67118j.get();
                    if (bVar != null) {
                        bVar.dispose();
                    }
                    this.f67122n++;
                    this.f67116h.onNext(t3);
                    try {
                        l3.b bVar2 = (l3.b) io.reactivex.internal.functions.a.g(this.f67117i.apply(t3), "The itemTimeoutIndicator returned a null Publisher.");
                        TimeoutConsumer timeoutConsumer = new TimeoutConsumer(j5, this);
                        if (this.f67118j.a(timeoutConsumer)) {
                            bVar2.c(timeoutConsumer);
                        }
                    } catch (Throwable th) {
                        io.reactivex.exceptions.a.b(th);
                        this.f67119k.get().cancel();
                        this.f67120l.getAndSet(Long.MAX_VALUE);
                        this.f67116h.onError(th);
                    }
                }
            }
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            if (SubscriptionHelper.setOnce(this.f67119k, dVar)) {
                h(dVar);
            }
        }
    }

    /* loaded from: classes5.dex */
    static final class TimeoutSubscriber<T> extends AtomicLong implements io.reactivex.o<T>, l3.d, a {
        private static final long serialVersionUID = 3764492702657003550L;

        /* renamed from: a  reason: collision with root package name */
        final l3.c<? super T> f67123a;

        /* renamed from: b  reason: collision with root package name */
        final w2.o<? super T, ? extends l3.b<?>> f67124b;

        /* renamed from: c  reason: collision with root package name */
        final SequentialDisposable f67125c = new SequentialDisposable();

        /* renamed from: d  reason: collision with root package name */
        final AtomicReference<l3.d> f67126d = new AtomicReference<>();

        /* renamed from: e  reason: collision with root package name */
        final AtomicLong f67127e = new AtomicLong();

        TimeoutSubscriber(l3.c<? super T> cVar, w2.o<? super T, ? extends l3.b<?>> oVar) {
            this.f67123a = cVar;
            this.f67124b = oVar;
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableTimeout.a
        public void a(long j4, Throwable th) {
            if (compareAndSet(j4, Long.MAX_VALUE)) {
                SubscriptionHelper.cancel(this.f67126d);
                this.f67123a.onError(th);
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableTimeoutTimed.b
        public void b(long j4) {
            if (compareAndSet(j4, Long.MAX_VALUE)) {
                SubscriptionHelper.cancel(this.f67126d);
                this.f67123a.onError(new TimeoutException());
            }
        }

        void c(l3.b<?> bVar) {
            if (bVar != null) {
                TimeoutConsumer timeoutConsumer = new TimeoutConsumer(0L, this);
                if (this.f67125c.a(timeoutConsumer)) {
                    bVar.c(timeoutConsumer);
                }
            }
        }

        @Override // l3.d
        public void cancel() {
            SubscriptionHelper.cancel(this.f67126d);
            this.f67125c.dispose();
        }

        @Override // l3.c
        public void onComplete() {
            if (getAndSet(Long.MAX_VALUE) != Long.MAX_VALUE) {
                this.f67125c.dispose();
                this.f67123a.onComplete();
            }
        }

        @Override // l3.c
        public void onError(Throwable th) {
            if (getAndSet(Long.MAX_VALUE) != Long.MAX_VALUE) {
                this.f67125c.dispose();
                this.f67123a.onError(th);
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // l3.c
        public void onNext(T t3) {
            long j4 = get();
            if (j4 != Long.MAX_VALUE) {
                long j5 = 1 + j4;
                if (compareAndSet(j4, j5)) {
                    io.reactivex.disposables.b bVar = this.f67125c.get();
                    if (bVar != null) {
                        bVar.dispose();
                    }
                    this.f67123a.onNext(t3);
                    try {
                        l3.b bVar2 = (l3.b) io.reactivex.internal.functions.a.g(this.f67124b.apply(t3), "The itemTimeoutIndicator returned a null Publisher.");
                        TimeoutConsumer timeoutConsumer = new TimeoutConsumer(j5, this);
                        if (this.f67125c.a(timeoutConsumer)) {
                            bVar2.c(timeoutConsumer);
                        }
                    } catch (Throwable th) {
                        io.reactivex.exceptions.a.b(th);
                        this.f67126d.get().cancel();
                        getAndSet(Long.MAX_VALUE);
                        this.f67123a.onError(th);
                    }
                }
            }
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            SubscriptionHelper.deferredSetOnce(this.f67126d, this.f67127e, dVar);
        }

        @Override // l3.d
        public void request(long j4) {
            SubscriptionHelper.deferredRequest(this.f67126d, this.f67127e, j4);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public interface a extends FlowableTimeoutTimed.b {
        void a(long j4, Throwable th);
    }

    public FlowableTimeout(io.reactivex.j<T> jVar, l3.b<U> bVar, w2.o<? super T, ? extends l3.b<V>> oVar, l3.b<? extends T> bVar2) {
        super(jVar);
        this.f67111c = bVar;
        this.f67112d = oVar;
        this.f67113e = bVar2;
    }

    @Override // io.reactivex.j
    protected void h6(l3.c<? super T> cVar) {
        if (this.f67113e == null) {
            TimeoutSubscriber timeoutSubscriber = new TimeoutSubscriber(cVar, this.f67112d);
            cVar.onSubscribe(timeoutSubscriber);
            timeoutSubscriber.c(this.f67111c);
            this.f67288b.g6(timeoutSubscriber);
            return;
        }
        TimeoutFallbackSubscriber timeoutFallbackSubscriber = new TimeoutFallbackSubscriber(cVar, this.f67112d, this.f67113e);
        cVar.onSubscribe(timeoutFallbackSubscriber);
        timeoutFallbackSubscriber.i(this.f67111c);
        this.f67288b.g6(timeoutFallbackSubscriber);
    }
}
