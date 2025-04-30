package io.reactivex.internal.operators.flowable;

import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.h0;
import io.reactivex.internal.disposables.SequentialDisposable;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;
/* loaded from: classes5.dex */
public final class FlowableThrottleFirstTimed<T> extends a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final long f67082c;

    /* renamed from: d  reason: collision with root package name */
    final TimeUnit f67083d;

    /* renamed from: e  reason: collision with root package name */
    final io.reactivex.h0 f67084e;

    /* loaded from: classes5.dex */
    static final class DebounceTimedSubscriber<T> extends AtomicLong implements io.reactivex.o<T>, l3.d, Runnable {
        private static final long serialVersionUID = -9102637559663639004L;

        /* renamed from: a  reason: collision with root package name */
        final l3.c<? super T> f67085a;

        /* renamed from: b  reason: collision with root package name */
        final long f67086b;

        /* renamed from: c  reason: collision with root package name */
        final TimeUnit f67087c;

        /* renamed from: d  reason: collision with root package name */
        final h0.c f67088d;

        /* renamed from: e  reason: collision with root package name */
        l3.d f67089e;

        /* renamed from: f  reason: collision with root package name */
        final SequentialDisposable f67090f = new SequentialDisposable();

        /* renamed from: g  reason: collision with root package name */
        volatile boolean f67091g;

        /* renamed from: h  reason: collision with root package name */
        boolean f67092h;

        DebounceTimedSubscriber(l3.c<? super T> cVar, long j4, TimeUnit timeUnit, h0.c cVar2) {
            this.f67085a = cVar;
            this.f67086b = j4;
            this.f67087c = timeUnit;
            this.f67088d = cVar2;
        }

        @Override // l3.d
        public void cancel() {
            this.f67089e.cancel();
            this.f67088d.dispose();
        }

        @Override // l3.c
        public void onComplete() {
            if (this.f67092h) {
                return;
            }
            this.f67092h = true;
            this.f67085a.onComplete();
            this.f67088d.dispose();
        }

        @Override // l3.c
        public void onError(Throwable th) {
            if (this.f67092h) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f67092h = true;
            this.f67085a.onError(th);
            this.f67088d.dispose();
        }

        @Override // l3.c
        public void onNext(T t3) {
            if (this.f67092h || this.f67091g) {
                return;
            }
            this.f67091g = true;
            if (get() != 0) {
                this.f67085a.onNext(t3);
                io.reactivex.internal.util.b.e(this, 1L);
                io.reactivex.disposables.b bVar = this.f67090f.get();
                if (bVar != null) {
                    bVar.dispose();
                }
                this.f67090f.a(this.f67088d.c(this, this.f67086b, this.f67087c));
                return;
            }
            this.f67092h = true;
            cancel();
            this.f67085a.onError(new MissingBackpressureException("Could not deliver value due to lack of requests"));
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            if (SubscriptionHelper.validate(this.f67089e, dVar)) {
                this.f67089e = dVar;
                this.f67085a.onSubscribe(this);
                dVar.request(Long.MAX_VALUE);
            }
        }

        @Override // l3.d
        public void request(long j4) {
            if (SubscriptionHelper.validate(j4)) {
                io.reactivex.internal.util.b.a(this, j4);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f67091g = false;
        }
    }

    public FlowableThrottleFirstTimed(io.reactivex.j<T> jVar, long j4, TimeUnit timeUnit, io.reactivex.h0 h0Var) {
        super(jVar);
        this.f67082c = j4;
        this.f67083d = timeUnit;
        this.f67084e = h0Var;
    }

    @Override // io.reactivex.j
    protected void h6(l3.c<? super T> cVar) {
        this.f67288b.g6(new DebounceTimedSubscriber(new io.reactivex.subscribers.e(cVar), this.f67082c, this.f67083d, this.f67084e.c()));
    }
}
