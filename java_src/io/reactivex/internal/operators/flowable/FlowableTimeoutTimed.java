package io.reactivex.internal.operators.flowable;

import io.reactivex.h0;
import io.reactivex.internal.disposables.SequentialDisposable;
import io.reactivex.internal.subscriptions.SubscriptionArbiter;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class FlowableTimeoutTimed<T> extends io.reactivex.internal.operators.flowable.a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final long f67128c;

    /* renamed from: d  reason: collision with root package name */
    final TimeUnit f67129d;

    /* renamed from: e  reason: collision with root package name */
    final io.reactivex.h0 f67130e;

    /* renamed from: f  reason: collision with root package name */
    final l3.b<? extends T> f67131f;

    /* loaded from: classes5.dex */
    static final class TimeoutFallbackSubscriber<T> extends SubscriptionArbiter implements io.reactivex.o<T>, b {
        private static final long serialVersionUID = 3764492702657003550L;

        /* renamed from: h  reason: collision with root package name */
        final l3.c<? super T> f67132h;

        /* renamed from: i  reason: collision with root package name */
        final long f67133i;

        /* renamed from: j  reason: collision with root package name */
        final TimeUnit f67134j;

        /* renamed from: k  reason: collision with root package name */
        final h0.c f67135k;

        /* renamed from: l  reason: collision with root package name */
        final SequentialDisposable f67136l = new SequentialDisposable();

        /* renamed from: m  reason: collision with root package name */
        final AtomicReference<l3.d> f67137m = new AtomicReference<>();

        /* renamed from: n  reason: collision with root package name */
        final AtomicLong f67138n = new AtomicLong();

        /* renamed from: o  reason: collision with root package name */
        long f67139o;

        /* renamed from: p  reason: collision with root package name */
        l3.b<? extends T> f67140p;

        TimeoutFallbackSubscriber(l3.c<? super T> cVar, long j4, TimeUnit timeUnit, h0.c cVar2, l3.b<? extends T> bVar) {
            this.f67132h = cVar;
            this.f67133i = j4;
            this.f67134j = timeUnit;
            this.f67135k = cVar2;
            this.f67140p = bVar;
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableTimeoutTimed.b
        public void b(long j4) {
            if (this.f67138n.compareAndSet(j4, Long.MAX_VALUE)) {
                SubscriptionHelper.cancel(this.f67137m);
                long j5 = this.f67139o;
                if (j5 != 0) {
                    g(j5);
                }
                l3.b<? extends T> bVar = this.f67140p;
                this.f67140p = null;
                bVar.c(new a(this.f67132h, this));
                this.f67135k.dispose();
            }
        }

        @Override // io.reactivex.internal.subscriptions.SubscriptionArbiter, l3.d
        public void cancel() {
            super.cancel();
            this.f67135k.dispose();
        }

        void i(long j4) {
            this.f67136l.a(this.f67135k.c(new c(j4, this), this.f67133i, this.f67134j));
        }

        @Override // l3.c
        public void onComplete() {
            if (this.f67138n.getAndSet(Long.MAX_VALUE) != Long.MAX_VALUE) {
                this.f67136l.dispose();
                this.f67132h.onComplete();
                this.f67135k.dispose();
            }
        }

        @Override // l3.c
        public void onError(Throwable th) {
            if (this.f67138n.getAndSet(Long.MAX_VALUE) != Long.MAX_VALUE) {
                this.f67136l.dispose();
                this.f67132h.onError(th);
                this.f67135k.dispose();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // l3.c
        public void onNext(T t3) {
            long j4 = this.f67138n.get();
            if (j4 != Long.MAX_VALUE) {
                long j5 = j4 + 1;
                if (this.f67138n.compareAndSet(j4, j5)) {
                    this.f67136l.get().dispose();
                    this.f67139o++;
                    this.f67132h.onNext(t3);
                    i(j5);
                }
            }
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            if (SubscriptionHelper.setOnce(this.f67137m, dVar)) {
                h(dVar);
            }
        }
    }

    /* loaded from: classes5.dex */
    static final class TimeoutSubscriber<T> extends AtomicLong implements io.reactivex.o<T>, l3.d, b {
        private static final long serialVersionUID = 3764492702657003550L;

        /* renamed from: a  reason: collision with root package name */
        final l3.c<? super T> f67141a;

        /* renamed from: b  reason: collision with root package name */
        final long f67142b;

        /* renamed from: c  reason: collision with root package name */
        final TimeUnit f67143c;

        /* renamed from: d  reason: collision with root package name */
        final h0.c f67144d;

        /* renamed from: e  reason: collision with root package name */
        final SequentialDisposable f67145e = new SequentialDisposable();

        /* renamed from: f  reason: collision with root package name */
        final AtomicReference<l3.d> f67146f = new AtomicReference<>();

        /* renamed from: g  reason: collision with root package name */
        final AtomicLong f67147g = new AtomicLong();

        TimeoutSubscriber(l3.c<? super T> cVar, long j4, TimeUnit timeUnit, h0.c cVar2) {
            this.f67141a = cVar;
            this.f67142b = j4;
            this.f67143c = timeUnit;
            this.f67144d = cVar2;
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableTimeoutTimed.b
        public void b(long j4) {
            if (compareAndSet(j4, Long.MAX_VALUE)) {
                SubscriptionHelper.cancel(this.f67146f);
                this.f67141a.onError(new TimeoutException());
                this.f67144d.dispose();
            }
        }

        void c(long j4) {
            this.f67145e.a(this.f67144d.c(new c(j4, this), this.f67142b, this.f67143c));
        }

        @Override // l3.d
        public void cancel() {
            SubscriptionHelper.cancel(this.f67146f);
            this.f67144d.dispose();
        }

        @Override // l3.c
        public void onComplete() {
            if (getAndSet(Long.MAX_VALUE) != Long.MAX_VALUE) {
                this.f67145e.dispose();
                this.f67141a.onComplete();
                this.f67144d.dispose();
            }
        }

        @Override // l3.c
        public void onError(Throwable th) {
            if (getAndSet(Long.MAX_VALUE) != Long.MAX_VALUE) {
                this.f67145e.dispose();
                this.f67141a.onError(th);
                this.f67144d.dispose();
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
                    this.f67145e.get().dispose();
                    this.f67141a.onNext(t3);
                    c(j5);
                }
            }
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            SubscriptionHelper.deferredSetOnce(this.f67146f, this.f67147g, dVar);
        }

        @Override // l3.d
        public void request(long j4) {
            SubscriptionHelper.deferredRequest(this.f67146f, this.f67147g, j4);
        }
    }

    /* loaded from: classes5.dex */
    static final class a<T> implements io.reactivex.o<T> {

        /* renamed from: a  reason: collision with root package name */
        final l3.c<? super T> f67148a;

        /* renamed from: b  reason: collision with root package name */
        final SubscriptionArbiter f67149b;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(l3.c<? super T> cVar, SubscriptionArbiter subscriptionArbiter) {
            this.f67148a = cVar;
            this.f67149b = subscriptionArbiter;
        }

        @Override // l3.c
        public void onComplete() {
            this.f67148a.onComplete();
        }

        @Override // l3.c
        public void onError(Throwable th) {
            this.f67148a.onError(th);
        }

        @Override // l3.c
        public void onNext(T t3) {
            this.f67148a.onNext(t3);
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            this.f67149b.h(dVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public interface b {
        void b(long j4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final b f67150a;

        /* renamed from: b  reason: collision with root package name */
        final long f67151b;

        c(long j4, b bVar) {
            this.f67151b = j4;
            this.f67150a = bVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f67150a.b(this.f67151b);
        }
    }

    public FlowableTimeoutTimed(io.reactivex.j<T> jVar, long j4, TimeUnit timeUnit, io.reactivex.h0 h0Var, l3.b<? extends T> bVar) {
        super(jVar);
        this.f67128c = j4;
        this.f67129d = timeUnit;
        this.f67130e = h0Var;
        this.f67131f = bVar;
    }

    @Override // io.reactivex.j
    protected void h6(l3.c<? super T> cVar) {
        if (this.f67131f == null) {
            TimeoutSubscriber timeoutSubscriber = new TimeoutSubscriber(cVar, this.f67128c, this.f67129d, this.f67130e.c());
            cVar.onSubscribe(timeoutSubscriber);
            timeoutSubscriber.c(0L);
            this.f67288b.g6(timeoutSubscriber);
            return;
        }
        TimeoutFallbackSubscriber timeoutFallbackSubscriber = new TimeoutFallbackSubscriber(cVar, this.f67128c, this.f67129d, this.f67130e.c(), this.f67131f);
        cVar.onSubscribe(timeoutFallbackSubscriber);
        timeoutFallbackSubscriber.i(0L);
        this.f67288b.g6(timeoutFallbackSubscriber);
    }
}
