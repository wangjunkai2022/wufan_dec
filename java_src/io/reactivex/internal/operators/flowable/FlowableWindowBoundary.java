package io.reactivex.internal.operators.flowable;

import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.queue.MpscLinkedQueue;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.AtomicThrowable;
import io.reactivex.processors.UnicastProcessor;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class FlowableWindowBoundary<T, B> extends io.reactivex.internal.operators.flowable.a<T, io.reactivex.j<T>> {

    /* renamed from: c  reason: collision with root package name */
    final l3.b<B> f67208c;

    /* renamed from: d  reason: collision with root package name */
    final int f67209d;

    /* loaded from: classes5.dex */
    static final class WindowBoundaryMainSubscriber<T, B> extends AtomicInteger implements io.reactivex.o<T>, l3.d, Runnable {

        /* renamed from: m  reason: collision with root package name */
        static final Object f67210m = new Object();
        private static final long serialVersionUID = 2233020065421370272L;

        /* renamed from: a  reason: collision with root package name */
        final l3.c<? super io.reactivex.j<T>> f67211a;

        /* renamed from: b  reason: collision with root package name */
        final int f67212b;

        /* renamed from: c  reason: collision with root package name */
        final a<T, B> f67213c = new a<>(this);

        /* renamed from: d  reason: collision with root package name */
        final AtomicReference<l3.d> f67214d = new AtomicReference<>();

        /* renamed from: e  reason: collision with root package name */
        final AtomicInteger f67215e = new AtomicInteger(1);

        /* renamed from: f  reason: collision with root package name */
        final MpscLinkedQueue<Object> f67216f = new MpscLinkedQueue<>();

        /* renamed from: g  reason: collision with root package name */
        final AtomicThrowable f67217g = new AtomicThrowable();

        /* renamed from: h  reason: collision with root package name */
        final AtomicBoolean f67218h = new AtomicBoolean();

        /* renamed from: i  reason: collision with root package name */
        final AtomicLong f67219i = new AtomicLong();

        /* renamed from: j  reason: collision with root package name */
        volatile boolean f67220j;

        /* renamed from: k  reason: collision with root package name */
        UnicastProcessor<T> f67221k;

        /* renamed from: l  reason: collision with root package name */
        long f67222l;

        WindowBoundaryMainSubscriber(l3.c<? super io.reactivex.j<T>> cVar, int i2) {
            this.f67211a = cVar;
            this.f67212b = i2;
        }

        /* JADX WARN: Multi-variable type inference failed */
        void a() {
            if (getAndIncrement() != 0) {
                return;
            }
            l3.c<? super io.reactivex.j<T>> cVar = this.f67211a;
            MpscLinkedQueue<Object> mpscLinkedQueue = this.f67216f;
            AtomicThrowable atomicThrowable = this.f67217g;
            long j4 = this.f67222l;
            int i2 = 1;
            while (this.f67215e.get() != 0) {
                UnicastProcessor<T> unicastProcessor = this.f67221k;
                boolean z3 = this.f67220j;
                if (z3 && atomicThrowable.get() != null) {
                    mpscLinkedQueue.clear();
                    Throwable c4 = atomicThrowable.c();
                    if (unicastProcessor != 0) {
                        this.f67221k = null;
                        unicastProcessor.onError(c4);
                    }
                    cVar.onError(c4);
                    return;
                }
                Object poll = mpscLinkedQueue.poll();
                boolean z4 = poll == null;
                if (z3 && z4) {
                    Throwable c5 = atomicThrowable.c();
                    if (c5 == null) {
                        if (unicastProcessor != 0) {
                            this.f67221k = null;
                            unicastProcessor.onComplete();
                        }
                        cVar.onComplete();
                        return;
                    }
                    if (unicastProcessor != 0) {
                        this.f67221k = null;
                        unicastProcessor.onError(c5);
                    }
                    cVar.onError(c5);
                    return;
                } else if (z4) {
                    this.f67222l = j4;
                    i2 = addAndGet(-i2);
                    if (i2 == 0) {
                        return;
                    }
                } else if (poll != f67210m) {
                    unicastProcessor.onNext(poll);
                } else {
                    if (unicastProcessor != 0) {
                        this.f67221k = null;
                        unicastProcessor.onComplete();
                    }
                    if (!this.f67218h.get()) {
                        UnicastProcessor<T> R8 = UnicastProcessor.R8(this.f67212b, this);
                        this.f67221k = R8;
                        this.f67215e.getAndIncrement();
                        if (j4 != this.f67219i.get()) {
                            j4++;
                            cVar.onNext(R8);
                        } else {
                            SubscriptionHelper.cancel(this.f67214d);
                            this.f67213c.dispose();
                            atomicThrowable.a(new MissingBackpressureException("Could not deliver a window due to lack of requests"));
                            this.f67220j = true;
                        }
                    }
                }
            }
            mpscLinkedQueue.clear();
            this.f67221k = null;
        }

        void b() {
            SubscriptionHelper.cancel(this.f67214d);
            this.f67220j = true;
            a();
        }

        void c(Throwable th) {
            SubscriptionHelper.cancel(this.f67214d);
            if (this.f67217g.a(th)) {
                this.f67220j = true;
                a();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // l3.d
        public void cancel() {
            if (this.f67218h.compareAndSet(false, true)) {
                this.f67213c.dispose();
                if (this.f67215e.decrementAndGet() == 0) {
                    SubscriptionHelper.cancel(this.f67214d);
                }
            }
        }

        void d() {
            this.f67216f.offer(f67210m);
            a();
        }

        @Override // l3.c
        public void onComplete() {
            this.f67213c.dispose();
            this.f67220j = true;
            a();
        }

        @Override // l3.c
        public void onError(Throwable th) {
            this.f67213c.dispose();
            if (this.f67217g.a(th)) {
                this.f67220j = true;
                a();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // l3.c
        public void onNext(T t3) {
            this.f67216f.offer(t3);
            a();
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            SubscriptionHelper.setOnce(this.f67214d, dVar, Long.MAX_VALUE);
        }

        @Override // l3.d
        public void request(long j4) {
            io.reactivex.internal.util.b.a(this.f67219i, j4);
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f67215e.decrementAndGet() == 0) {
                SubscriptionHelper.cancel(this.f67214d);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class a<T, B> extends io.reactivex.subscribers.b<B> {

        /* renamed from: b  reason: collision with root package name */
        final WindowBoundaryMainSubscriber<T, B> f67223b;

        /* renamed from: c  reason: collision with root package name */
        boolean f67224c;

        a(WindowBoundaryMainSubscriber<T, B> windowBoundaryMainSubscriber) {
            this.f67223b = windowBoundaryMainSubscriber;
        }

        @Override // l3.c
        public void onComplete() {
            if (this.f67224c) {
                return;
            }
            this.f67224c = true;
            this.f67223b.b();
        }

        @Override // l3.c
        public void onError(Throwable th) {
            if (this.f67224c) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f67224c = true;
            this.f67223b.c(th);
        }

        @Override // l3.c
        public void onNext(B b4) {
            if (this.f67224c) {
                return;
            }
            this.f67223b.d();
        }
    }

    public FlowableWindowBoundary(io.reactivex.j<T> jVar, l3.b<B> bVar, int i2) {
        super(jVar);
        this.f67208c = bVar;
        this.f67209d = i2;
    }

    @Override // io.reactivex.j
    protected void h6(l3.c<? super io.reactivex.j<T>> cVar) {
        WindowBoundaryMainSubscriber windowBoundaryMainSubscriber = new WindowBoundaryMainSubscriber(cVar, this.f67209d);
        cVar.onSubscribe(windowBoundaryMainSubscriber);
        windowBoundaryMainSubscriber.d();
        this.f67208c.c(windowBoundaryMainSubscriber.f67213c);
        this.f67288b.g6(windowBoundaryMainSubscriber);
    }
}
