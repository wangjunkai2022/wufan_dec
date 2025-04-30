package io.reactivex.internal.operators.flowable;

import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class FlowableSamplePublisher<T> extends io.reactivex.j<T> {

    /* renamed from: b  reason: collision with root package name */
    final l3.b<T> f66911b;

    /* renamed from: c  reason: collision with root package name */
    final l3.b<?> f66912c;

    /* renamed from: d  reason: collision with root package name */
    final boolean f66913d;

    /* loaded from: classes5.dex */
    static final class SampleMainEmitLast<T> extends SamplePublisherSubscriber<T> {
        private static final long serialVersionUID = -3029755663834015785L;

        /* renamed from: f  reason: collision with root package name */
        final AtomicInteger f66914f;

        /* renamed from: g  reason: collision with root package name */
        volatile boolean f66915g;

        SampleMainEmitLast(l3.c<? super T> cVar, l3.b<?> bVar) {
            super(cVar, bVar);
            this.f66914f = new AtomicInteger();
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableSamplePublisher.SamplePublisherSubscriber
        void b() {
            this.f66915g = true;
            if (this.f66914f.getAndIncrement() == 0) {
                d();
                this.f66916a.onComplete();
            }
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableSamplePublisher.SamplePublisherSubscriber
        void c() {
            this.f66915g = true;
            if (this.f66914f.getAndIncrement() == 0) {
                d();
                this.f66916a.onComplete();
            }
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableSamplePublisher.SamplePublisherSubscriber
        void f() {
            if (this.f66914f.getAndIncrement() == 0) {
                do {
                    boolean z3 = this.f66915g;
                    d();
                    if (z3) {
                        this.f66916a.onComplete();
                        return;
                    }
                } while (this.f66914f.decrementAndGet() != 0);
            }
        }
    }

    /* loaded from: classes5.dex */
    static final class SampleMainNoLast<T> extends SamplePublisherSubscriber<T> {
        private static final long serialVersionUID = -3029755663834015785L;

        SampleMainNoLast(l3.c<? super T> cVar, l3.b<?> bVar) {
            super(cVar, bVar);
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableSamplePublisher.SamplePublisherSubscriber
        void b() {
            this.f66916a.onComplete();
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableSamplePublisher.SamplePublisherSubscriber
        void c() {
            this.f66916a.onComplete();
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableSamplePublisher.SamplePublisherSubscriber
        void f() {
            d();
        }
    }

    /* loaded from: classes5.dex */
    static abstract class SamplePublisherSubscriber<T> extends AtomicReference<T> implements io.reactivex.o<T>, l3.d {
        private static final long serialVersionUID = -3517602651313910099L;

        /* renamed from: a  reason: collision with root package name */
        final l3.c<? super T> f66916a;

        /* renamed from: b  reason: collision with root package name */
        final l3.b<?> f66917b;

        /* renamed from: c  reason: collision with root package name */
        final AtomicLong f66918c = new AtomicLong();

        /* renamed from: d  reason: collision with root package name */
        final AtomicReference<l3.d> f66919d = new AtomicReference<>();

        /* renamed from: e  reason: collision with root package name */
        l3.d f66920e;

        SamplePublisherSubscriber(l3.c<? super T> cVar, l3.b<?> bVar) {
            this.f66916a = cVar;
            this.f66917b = bVar;
        }

        public void a() {
            this.f66920e.cancel();
            c();
        }

        abstract void b();

        abstract void c();

        @Override // l3.d
        public void cancel() {
            SubscriptionHelper.cancel(this.f66919d);
            this.f66920e.cancel();
        }

        void d() {
            T andSet = getAndSet(null);
            if (andSet != null) {
                if (this.f66918c.get() != 0) {
                    this.f66916a.onNext(andSet);
                    io.reactivex.internal.util.b.e(this.f66918c, 1L);
                    return;
                }
                cancel();
                this.f66916a.onError(new MissingBackpressureException("Couldn't emit value due to lack of requests!"));
            }
        }

        public void e(Throwable th) {
            this.f66920e.cancel();
            this.f66916a.onError(th);
        }

        abstract void f();

        void g(l3.d dVar) {
            SubscriptionHelper.setOnce(this.f66919d, dVar, Long.MAX_VALUE);
        }

        @Override // l3.c
        public void onComplete() {
            SubscriptionHelper.cancel(this.f66919d);
            b();
        }

        @Override // l3.c
        public void onError(Throwable th) {
            SubscriptionHelper.cancel(this.f66919d);
            this.f66916a.onError(th);
        }

        @Override // l3.c
        public void onNext(T t3) {
            lazySet(t3);
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            if (SubscriptionHelper.validate(this.f66920e, dVar)) {
                this.f66920e = dVar;
                this.f66916a.onSubscribe(this);
                if (this.f66919d.get() == null) {
                    this.f66917b.c(new a(this));
                    dVar.request(Long.MAX_VALUE);
                }
            }
        }

        @Override // l3.d
        public void request(long j4) {
            if (SubscriptionHelper.validate(j4)) {
                io.reactivex.internal.util.b.a(this.f66918c, j4);
            }
        }
    }

    /* loaded from: classes5.dex */
    static final class a<T> implements io.reactivex.o<Object> {

        /* renamed from: a  reason: collision with root package name */
        final SamplePublisherSubscriber<T> f66921a;

        a(SamplePublisherSubscriber<T> samplePublisherSubscriber) {
            this.f66921a = samplePublisherSubscriber;
        }

        @Override // l3.c
        public void onComplete() {
            this.f66921a.a();
        }

        @Override // l3.c
        public void onError(Throwable th) {
            this.f66921a.e(th);
        }

        @Override // l3.c
        public void onNext(Object obj) {
            this.f66921a.f();
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            this.f66921a.g(dVar);
        }
    }

    public FlowableSamplePublisher(l3.b<T> bVar, l3.b<?> bVar2, boolean z3) {
        this.f66911b = bVar;
        this.f66912c = bVar2;
        this.f66913d = z3;
    }

    @Override // io.reactivex.j
    protected void h6(l3.c<? super T> cVar) {
        io.reactivex.subscribers.e eVar = new io.reactivex.subscribers.e(cVar);
        if (this.f66913d) {
            this.f66911b.c(new SampleMainEmitLast(eVar, this.f66912c));
        } else {
            this.f66911b.c(new SampleMainNoLast(eVar, this.f66912c));
        }
    }
}
