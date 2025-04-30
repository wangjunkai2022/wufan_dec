package io.reactivex.internal.operators.flowable;

import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.queue.MpscLinkedQueue;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.AtomicThrowable;
import io.reactivex.processors.UnicastProcessor;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class FlowableWindowBoundarySupplier<T, B> extends io.reactivex.internal.operators.flowable.a<T, io.reactivex.j<T>> {

    /* renamed from: c  reason: collision with root package name */
    final Callable<? extends l3.b<B>> f67225c;

    /* renamed from: d  reason: collision with root package name */
    final int f67226d;

    /* loaded from: classes5.dex */
    static final class WindowBoundaryMainSubscriber<T, B> extends AtomicInteger implements io.reactivex.o<T>, l3.d, Runnable {

        /* renamed from: n  reason: collision with root package name */
        static final a<Object, Object> f67227n = new a<>(null);

        /* renamed from: o  reason: collision with root package name */
        static final Object f67228o = new Object();
        private static final long serialVersionUID = 2233020065421370272L;

        /* renamed from: a  reason: collision with root package name */
        final l3.c<? super io.reactivex.j<T>> f67229a;

        /* renamed from: b  reason: collision with root package name */
        final int f67230b;

        /* renamed from: h  reason: collision with root package name */
        final Callable<? extends l3.b<B>> f67236h;

        /* renamed from: j  reason: collision with root package name */
        l3.d f67238j;

        /* renamed from: k  reason: collision with root package name */
        volatile boolean f67239k;

        /* renamed from: l  reason: collision with root package name */
        UnicastProcessor<T> f67240l;

        /* renamed from: m  reason: collision with root package name */
        long f67241m;

        /* renamed from: c  reason: collision with root package name */
        final AtomicReference<a<T, B>> f67231c = new AtomicReference<>();

        /* renamed from: d  reason: collision with root package name */
        final AtomicInteger f67232d = new AtomicInteger(1);

        /* renamed from: e  reason: collision with root package name */
        final MpscLinkedQueue<Object> f67233e = new MpscLinkedQueue<>();

        /* renamed from: f  reason: collision with root package name */
        final AtomicThrowable f67234f = new AtomicThrowable();

        /* renamed from: g  reason: collision with root package name */
        final AtomicBoolean f67235g = new AtomicBoolean();

        /* renamed from: i  reason: collision with root package name */
        final AtomicLong f67237i = new AtomicLong();

        WindowBoundaryMainSubscriber(l3.c<? super io.reactivex.j<T>> cVar, int i2, Callable<? extends l3.b<B>> callable) {
            this.f67229a = cVar;
            this.f67230b = i2;
            this.f67236h = callable;
        }

        /* JADX WARN: Multi-variable type inference failed */
        void a() {
            a<Object, Object> aVar = f67227n;
            io.reactivex.disposables.b bVar = (io.reactivex.disposables.b) this.f67231c.getAndSet(aVar);
            if (bVar == null || bVar == aVar) {
                return;
            }
            bVar.dispose();
        }

        /* JADX WARN: Multi-variable type inference failed */
        void b() {
            if (getAndIncrement() != 0) {
                return;
            }
            l3.c<? super io.reactivex.j<T>> cVar = this.f67229a;
            MpscLinkedQueue<Object> mpscLinkedQueue = this.f67233e;
            AtomicThrowable atomicThrowable = this.f67234f;
            long j4 = this.f67241m;
            int i2 = 1;
            while (this.f67232d.get() != 0) {
                UnicastProcessor<T> unicastProcessor = this.f67240l;
                boolean z3 = this.f67239k;
                if (z3 && atomicThrowable.get() != null) {
                    mpscLinkedQueue.clear();
                    Throwable c4 = atomicThrowable.c();
                    if (unicastProcessor != 0) {
                        this.f67240l = null;
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
                            this.f67240l = null;
                            unicastProcessor.onComplete();
                        }
                        cVar.onComplete();
                        return;
                    }
                    if (unicastProcessor != 0) {
                        this.f67240l = null;
                        unicastProcessor.onError(c5);
                    }
                    cVar.onError(c5);
                    return;
                } else if (z4) {
                    this.f67241m = j4;
                    i2 = addAndGet(-i2);
                    if (i2 == 0) {
                        return;
                    }
                } else if (poll != f67228o) {
                    unicastProcessor.onNext(poll);
                } else {
                    if (unicastProcessor != 0) {
                        this.f67240l = null;
                        unicastProcessor.onComplete();
                    }
                    if (!this.f67235g.get()) {
                        if (j4 != this.f67237i.get()) {
                            UnicastProcessor<T> R8 = UnicastProcessor.R8(this.f67230b, this);
                            this.f67240l = R8;
                            this.f67232d.getAndIncrement();
                            try {
                                l3.b bVar = (l3.b) io.reactivex.internal.functions.a.g(this.f67236h.call(), "The other Callable returned a null Publisher");
                                a<T, B> aVar = new a<>(this);
                                if (this.f67231c.compareAndSet(null, aVar)) {
                                    bVar.c(aVar);
                                    j4++;
                                    cVar.onNext(R8);
                                }
                            } catch (Throwable th) {
                                io.reactivex.exceptions.a.b(th);
                                atomicThrowable.a(th);
                                this.f67239k = true;
                            }
                        } else {
                            this.f67238j.cancel();
                            a();
                            atomicThrowable.a(new MissingBackpressureException("Could not deliver a window due to lack of requests"));
                            this.f67239k = true;
                        }
                    }
                }
            }
            mpscLinkedQueue.clear();
            this.f67240l = null;
        }

        void c() {
            this.f67238j.cancel();
            this.f67239k = true;
            b();
        }

        @Override // l3.d
        public void cancel() {
            if (this.f67235g.compareAndSet(false, true)) {
                a();
                if (this.f67232d.decrementAndGet() == 0) {
                    this.f67238j.cancel();
                }
            }
        }

        void d(Throwable th) {
            this.f67238j.cancel();
            if (this.f67234f.a(th)) {
                this.f67239k = true;
                b();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        void e(a<T, B> aVar) {
            this.f67231c.compareAndSet(aVar, null);
            this.f67233e.offer(f67228o);
            b();
        }

        @Override // l3.c
        public void onComplete() {
            a();
            this.f67239k = true;
            b();
        }

        @Override // l3.c
        public void onError(Throwable th) {
            a();
            if (this.f67234f.a(th)) {
                this.f67239k = true;
                b();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // l3.c
        public void onNext(T t3) {
            this.f67233e.offer(t3);
            b();
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            if (SubscriptionHelper.validate(this.f67238j, dVar)) {
                this.f67238j = dVar;
                this.f67229a.onSubscribe(this);
                this.f67233e.offer(f67228o);
                b();
                dVar.request(Long.MAX_VALUE);
            }
        }

        @Override // l3.d
        public void request(long j4) {
            io.reactivex.internal.util.b.a(this.f67237i, j4);
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f67232d.decrementAndGet() == 0) {
                this.f67238j.cancel();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class a<T, B> extends io.reactivex.subscribers.b<B> {

        /* renamed from: b  reason: collision with root package name */
        final WindowBoundaryMainSubscriber<T, B> f67242b;

        /* renamed from: c  reason: collision with root package name */
        boolean f67243c;

        a(WindowBoundaryMainSubscriber<T, B> windowBoundaryMainSubscriber) {
            this.f67242b = windowBoundaryMainSubscriber;
        }

        @Override // l3.c
        public void onComplete() {
            if (this.f67243c) {
                return;
            }
            this.f67243c = true;
            this.f67242b.c();
        }

        @Override // l3.c
        public void onError(Throwable th) {
            if (this.f67243c) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f67243c = true;
            this.f67242b.d(th);
        }

        @Override // l3.c
        public void onNext(B b4) {
            if (this.f67243c) {
                return;
            }
            this.f67243c = true;
            dispose();
            this.f67242b.e(this);
        }
    }

    public FlowableWindowBoundarySupplier(io.reactivex.j<T> jVar, Callable<? extends l3.b<B>> callable, int i2) {
        super(jVar);
        this.f67225c = callable;
        this.f67226d = i2;
    }

    @Override // io.reactivex.j
    protected void h6(l3.c<? super io.reactivex.j<T>> cVar) {
        this.f67288b.g6(new WindowBoundaryMainSubscriber(cVar, this.f67226d, this.f67225c));
    }
}
