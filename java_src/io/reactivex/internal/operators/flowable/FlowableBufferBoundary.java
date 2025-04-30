package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.AtomicThrowable;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class FlowableBufferBoundary<T, U extends Collection<? super T>, Open, Close> extends a<T, U> {

    /* renamed from: c  reason: collision with root package name */
    final Callable<U> f66183c;

    /* renamed from: d  reason: collision with root package name */
    final l3.b<? extends Open> f66184d;

    /* renamed from: e  reason: collision with root package name */
    final w2.o<? super Open, ? extends l3.b<? extends Close>> f66185e;

    /* loaded from: classes5.dex */
    static final class BufferBoundarySubscriber<T, C extends Collection<? super T>, Open, Close> extends AtomicInteger implements io.reactivex.o<T>, l3.d {
        private static final long serialVersionUID = -8466418554264089604L;

        /* renamed from: a  reason: collision with root package name */
        final l3.c<? super C> f66186a;

        /* renamed from: b  reason: collision with root package name */
        final Callable<C> f66187b;

        /* renamed from: c  reason: collision with root package name */
        final l3.b<? extends Open> f66188c;

        /* renamed from: d  reason: collision with root package name */
        final w2.o<? super Open, ? extends l3.b<? extends Close>> f66189d;

        /* renamed from: i  reason: collision with root package name */
        volatile boolean f66194i;

        /* renamed from: k  reason: collision with root package name */
        volatile boolean f66196k;

        /* renamed from: l  reason: collision with root package name */
        long f66197l;

        /* renamed from: n  reason: collision with root package name */
        long f66199n;

        /* renamed from: j  reason: collision with root package name */
        final io.reactivex.internal.queue.a<C> f66195j = new io.reactivex.internal.queue.a<>(io.reactivex.j.V());

        /* renamed from: e  reason: collision with root package name */
        final io.reactivex.disposables.a f66190e = new io.reactivex.disposables.a();

        /* renamed from: f  reason: collision with root package name */
        final AtomicLong f66191f = new AtomicLong();

        /* renamed from: g  reason: collision with root package name */
        final AtomicReference<l3.d> f66192g = new AtomicReference<>();

        /* renamed from: m  reason: collision with root package name */
        Map<Long, C> f66198m = new LinkedHashMap();

        /* renamed from: h  reason: collision with root package name */
        final AtomicThrowable f66193h = new AtomicThrowable();

        /* loaded from: classes5.dex */
        static final class BufferOpenSubscriber<Open> extends AtomicReference<l3.d> implements io.reactivex.o<Open>, io.reactivex.disposables.b {
            private static final long serialVersionUID = -8498650778633225126L;

            /* renamed from: a  reason: collision with root package name */
            final BufferBoundarySubscriber<?, ?, Open, ?> f66200a;

            BufferOpenSubscriber(BufferBoundarySubscriber<?, ?, Open, ?> bufferBoundarySubscriber) {
                this.f66200a = bufferBoundarySubscriber;
            }

            @Override // io.reactivex.disposables.b
            public void dispose() {
                SubscriptionHelper.cancel(this);
            }

            @Override // io.reactivex.disposables.b
            public boolean isDisposed() {
                return get() == SubscriptionHelper.CANCELLED;
            }

            @Override // l3.c
            public void onComplete() {
                lazySet(SubscriptionHelper.CANCELLED);
                this.f66200a.e(this);
            }

            @Override // l3.c
            public void onError(Throwable th) {
                lazySet(SubscriptionHelper.CANCELLED);
                this.f66200a.a(this, th);
            }

            @Override // l3.c
            public void onNext(Open open) {
                this.f66200a.d(open);
            }

            @Override // io.reactivex.o, l3.c
            public void onSubscribe(l3.d dVar) {
                SubscriptionHelper.setOnce(this, dVar, Long.MAX_VALUE);
            }
        }

        BufferBoundarySubscriber(l3.c<? super C> cVar, l3.b<? extends Open> bVar, w2.o<? super Open, ? extends l3.b<? extends Close>> oVar, Callable<C> callable) {
            this.f66186a = cVar;
            this.f66187b = callable;
            this.f66188c = bVar;
            this.f66189d = oVar;
        }

        void a(io.reactivex.disposables.b bVar, Throwable th) {
            SubscriptionHelper.cancel(this.f66192g);
            this.f66190e.delete(bVar);
            onError(th);
        }

        void b(BufferCloseSubscriber<T, C> bufferCloseSubscriber, long j4) {
            boolean z3;
            this.f66190e.delete(bufferCloseSubscriber);
            if (this.f66190e.f() == 0) {
                SubscriptionHelper.cancel(this.f66192g);
                z3 = true;
            } else {
                z3 = false;
            }
            synchronized (this) {
                Map<Long, C> map = this.f66198m;
                if (map == null) {
                    return;
                }
                this.f66195j.offer(map.remove(Long.valueOf(j4)));
                if (z3) {
                    this.f66194i = true;
                }
                c();
            }
        }

        void c() {
            if (getAndIncrement() != 0) {
                return;
            }
            long j4 = this.f66199n;
            l3.c<? super C> cVar = this.f66186a;
            io.reactivex.internal.queue.a<C> aVar = this.f66195j;
            int i2 = 1;
            do {
                long j5 = this.f66191f.get();
                while (j4 != j5) {
                    if (this.f66196k) {
                        aVar.clear();
                        return;
                    }
                    boolean z3 = this.f66194i;
                    if (z3 && this.f66193h.get() != null) {
                        aVar.clear();
                        cVar.onError(this.f66193h.c());
                        return;
                    }
                    C poll = aVar.poll();
                    boolean z4 = poll == null;
                    if (z3 && z4) {
                        cVar.onComplete();
                        return;
                    } else if (z4) {
                        break;
                    } else {
                        cVar.onNext(poll);
                        j4++;
                    }
                }
                if (j4 == j5) {
                    if (this.f66196k) {
                        aVar.clear();
                        return;
                    } else if (this.f66194i) {
                        if (this.f66193h.get() != null) {
                            aVar.clear();
                            cVar.onError(this.f66193h.c());
                            return;
                        } else if (aVar.isEmpty()) {
                            cVar.onComplete();
                            return;
                        }
                    }
                }
                this.f66199n = j4;
                i2 = addAndGet(-i2);
            } while (i2 != 0);
        }

        @Override // l3.d
        public void cancel() {
            if (SubscriptionHelper.cancel(this.f66192g)) {
                this.f66196k = true;
                this.f66190e.dispose();
                synchronized (this) {
                    this.f66198m = null;
                }
                if (getAndIncrement() != 0) {
                    this.f66195j.clear();
                }
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        void d(Open open) {
            try {
                Collection collection = (Collection) io.reactivex.internal.functions.a.g(this.f66187b.call(), "The bufferSupplier returned a null Collection");
                l3.b bVar = (l3.b) io.reactivex.internal.functions.a.g(this.f66189d.apply(open), "The bufferClose returned a null Publisher");
                long j4 = this.f66197l;
                this.f66197l = 1 + j4;
                synchronized (this) {
                    Map<Long, C> map = this.f66198m;
                    if (map == 0) {
                        return;
                    }
                    map.put(Long.valueOf(j4), collection);
                    BufferCloseSubscriber bufferCloseSubscriber = new BufferCloseSubscriber(this, j4);
                    this.f66190e.b(bufferCloseSubscriber);
                    bVar.c(bufferCloseSubscriber);
                }
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                SubscriptionHelper.cancel(this.f66192g);
                onError(th);
            }
        }

        void e(BufferOpenSubscriber<Open> bufferOpenSubscriber) {
            this.f66190e.delete(bufferOpenSubscriber);
            if (this.f66190e.f() == 0) {
                SubscriptionHelper.cancel(this.f66192g);
                this.f66194i = true;
                c();
            }
        }

        @Override // l3.c
        public void onComplete() {
            this.f66190e.dispose();
            synchronized (this) {
                Map<Long, C> map = this.f66198m;
                if (map == null) {
                    return;
                }
                for (C c4 : map.values()) {
                    this.f66195j.offer(c4);
                }
                this.f66198m = null;
                this.f66194i = true;
                c();
            }
        }

        @Override // l3.c
        public void onError(Throwable th) {
            if (this.f66193h.a(th)) {
                this.f66190e.dispose();
                synchronized (this) {
                    this.f66198m = null;
                }
                this.f66194i = true;
                c();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // l3.c
        public void onNext(T t3) {
            synchronized (this) {
                Map<Long, C> map = this.f66198m;
                if (map == null) {
                    return;
                }
                for (C c4 : map.values()) {
                    c4.add(t3);
                }
            }
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            if (SubscriptionHelper.setOnce(this.f66192g, dVar)) {
                BufferOpenSubscriber bufferOpenSubscriber = new BufferOpenSubscriber(this);
                this.f66190e.b(bufferOpenSubscriber);
                this.f66188c.c(bufferOpenSubscriber);
                dVar.request(Long.MAX_VALUE);
            }
        }

        @Override // l3.d
        public void request(long j4) {
            io.reactivex.internal.util.b.a(this.f66191f, j4);
            c();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class BufferCloseSubscriber<T, C extends Collection<? super T>> extends AtomicReference<l3.d> implements io.reactivex.o<Object>, io.reactivex.disposables.b {
        private static final long serialVersionUID = -8498650778633225126L;

        /* renamed from: a  reason: collision with root package name */
        final BufferBoundarySubscriber<T, C, ?, ?> f66201a;

        /* renamed from: b  reason: collision with root package name */
        final long f66202b;

        BufferCloseSubscriber(BufferBoundarySubscriber<T, C, ?, ?> bufferBoundarySubscriber, long j4) {
            this.f66201a = bufferBoundarySubscriber;
            this.f66202b = j4;
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            SubscriptionHelper.cancel(this);
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return get() == SubscriptionHelper.CANCELLED;
        }

        @Override // l3.c
        public void onComplete() {
            l3.d dVar = get();
            SubscriptionHelper subscriptionHelper = SubscriptionHelper.CANCELLED;
            if (dVar != subscriptionHelper) {
                lazySet(subscriptionHelper);
                this.f66201a.b(this, this.f66202b);
            }
        }

        @Override // l3.c
        public void onError(Throwable th) {
            l3.d dVar = get();
            SubscriptionHelper subscriptionHelper = SubscriptionHelper.CANCELLED;
            if (dVar != subscriptionHelper) {
                lazySet(subscriptionHelper);
                this.f66201a.a(this, th);
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // l3.c
        public void onNext(Object obj) {
            l3.d dVar = get();
            SubscriptionHelper subscriptionHelper = SubscriptionHelper.CANCELLED;
            if (dVar != subscriptionHelper) {
                lazySet(subscriptionHelper);
                dVar.cancel();
                this.f66201a.b(this, this.f66202b);
            }
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            SubscriptionHelper.setOnce(this, dVar, Long.MAX_VALUE);
        }
    }

    public FlowableBufferBoundary(io.reactivex.j<T> jVar, l3.b<? extends Open> bVar, w2.o<? super Open, ? extends l3.b<? extends Close>> oVar, Callable<U> callable) {
        super(jVar);
        this.f66184d = bVar;
        this.f66185e = oVar;
        this.f66183c = callable;
    }

    @Override // io.reactivex.j
    protected void h6(l3.c<? super U> cVar) {
        BufferBoundarySubscriber bufferBoundarySubscriber = new BufferBoundarySubscriber(cVar, this.f66184d, this.f66185e, this.f66183c);
        cVar.onSubscribe(bufferBoundarySubscriber);
        this.f67288b.g6(bufferBoundarySubscriber);
    }
}
