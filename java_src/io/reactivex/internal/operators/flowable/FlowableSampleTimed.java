package io.reactivex.internal.operators.flowable;

import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.SequentialDisposable;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class FlowableSampleTimed<T> extends a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final long f66922c;

    /* renamed from: d  reason: collision with root package name */
    final TimeUnit f66923d;

    /* renamed from: e  reason: collision with root package name */
    final io.reactivex.h0 f66924e;

    /* renamed from: f  reason: collision with root package name */
    final boolean f66925f;

    /* loaded from: classes5.dex */
    static final class SampleTimedEmitLast<T> extends SampleTimedSubscriber<T> {
        private static final long serialVersionUID = -7139995637533111443L;

        /* renamed from: h  reason: collision with root package name */
        final AtomicInteger f66926h;

        SampleTimedEmitLast(l3.c<? super T> cVar, long j4, TimeUnit timeUnit, io.reactivex.h0 h0Var) {
            super(cVar, j4, timeUnit, h0Var);
            this.f66926h = new AtomicInteger(1);
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableSampleTimed.SampleTimedSubscriber
        void b() {
            c();
            if (this.f66926h.decrementAndGet() == 0) {
                this.f66927a.onComplete();
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f66926h.incrementAndGet() == 2) {
                c();
                if (this.f66926h.decrementAndGet() == 0) {
                    this.f66927a.onComplete();
                }
            }
        }
    }

    /* loaded from: classes5.dex */
    static final class SampleTimedNoLast<T> extends SampleTimedSubscriber<T> {
        private static final long serialVersionUID = -7139995637533111443L;

        SampleTimedNoLast(l3.c<? super T> cVar, long j4, TimeUnit timeUnit, io.reactivex.h0 h0Var) {
            super(cVar, j4, timeUnit, h0Var);
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableSampleTimed.SampleTimedSubscriber
        void b() {
            this.f66927a.onComplete();
        }

        @Override // java.lang.Runnable
        public void run() {
            c();
        }
    }

    /* loaded from: classes5.dex */
    static abstract class SampleTimedSubscriber<T> extends AtomicReference<T> implements io.reactivex.o<T>, l3.d, Runnable {
        private static final long serialVersionUID = -3517602651313910099L;

        /* renamed from: a  reason: collision with root package name */
        final l3.c<? super T> f66927a;

        /* renamed from: b  reason: collision with root package name */
        final long f66928b;

        /* renamed from: c  reason: collision with root package name */
        final TimeUnit f66929c;

        /* renamed from: d  reason: collision with root package name */
        final io.reactivex.h0 f66930d;

        /* renamed from: e  reason: collision with root package name */
        final AtomicLong f66931e = new AtomicLong();

        /* renamed from: f  reason: collision with root package name */
        final SequentialDisposable f66932f = new SequentialDisposable();

        /* renamed from: g  reason: collision with root package name */
        l3.d f66933g;

        SampleTimedSubscriber(l3.c<? super T> cVar, long j4, TimeUnit timeUnit, io.reactivex.h0 h0Var) {
            this.f66927a = cVar;
            this.f66928b = j4;
            this.f66929c = timeUnit;
            this.f66930d = h0Var;
        }

        void a() {
            DisposableHelper.dispose(this.f66932f);
        }

        abstract void b();

        void c() {
            T andSet = getAndSet(null);
            if (andSet != null) {
                if (this.f66931e.get() != 0) {
                    this.f66927a.onNext(andSet);
                    io.reactivex.internal.util.b.e(this.f66931e, 1L);
                    return;
                }
                cancel();
                this.f66927a.onError(new MissingBackpressureException("Couldn't emit value due to lack of requests!"));
            }
        }

        @Override // l3.d
        public void cancel() {
            a();
            this.f66933g.cancel();
        }

        @Override // l3.c
        public void onComplete() {
            a();
            b();
        }

        @Override // l3.c
        public void onError(Throwable th) {
            a();
            this.f66927a.onError(th);
        }

        @Override // l3.c
        public void onNext(T t3) {
            lazySet(t3);
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            if (SubscriptionHelper.validate(this.f66933g, dVar)) {
                this.f66933g = dVar;
                this.f66927a.onSubscribe(this);
                SequentialDisposable sequentialDisposable = this.f66932f;
                io.reactivex.h0 h0Var = this.f66930d;
                long j4 = this.f66928b;
                sequentialDisposable.a(h0Var.g(this, j4, j4, this.f66929c));
                dVar.request(Long.MAX_VALUE);
            }
        }

        @Override // l3.d
        public void request(long j4) {
            if (SubscriptionHelper.validate(j4)) {
                io.reactivex.internal.util.b.a(this.f66931e, j4);
            }
        }
    }

    public FlowableSampleTimed(io.reactivex.j<T> jVar, long j4, TimeUnit timeUnit, io.reactivex.h0 h0Var, boolean z3) {
        super(jVar);
        this.f66922c = j4;
        this.f66923d = timeUnit;
        this.f66924e = h0Var;
        this.f66925f = z3;
    }

    @Override // io.reactivex.j
    protected void h6(l3.c<? super T> cVar) {
        io.reactivex.subscribers.e eVar = new io.reactivex.subscribers.e(cVar);
        if (this.f66925f) {
            this.f67288b.g6(new SampleTimedEmitLast(eVar, this.f66922c, this.f66923d, this.f66924e));
        } else {
            this.f67288b.g6(new SampleTimedNoLast(eVar, this.f66922c, this.f66923d, this.f66924e));
        }
    }
}
