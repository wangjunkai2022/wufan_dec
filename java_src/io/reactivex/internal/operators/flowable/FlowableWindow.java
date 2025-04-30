package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.processors.UnicastProcessor;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
/* loaded from: classes5.dex */
public final class FlowableWindow<T> extends a<T, io.reactivex.j<T>> {

    /* renamed from: c  reason: collision with root package name */
    final long f67173c;

    /* renamed from: d  reason: collision with root package name */
    final long f67174d;

    /* renamed from: e  reason: collision with root package name */
    final int f67175e;

    /* loaded from: classes5.dex */
    static final class WindowExactSubscriber<T> extends AtomicInteger implements io.reactivex.o<T>, l3.d, Runnable {
        private static final long serialVersionUID = -2365647875069161133L;

        /* renamed from: a  reason: collision with root package name */
        final l3.c<? super io.reactivex.j<T>> f67176a;

        /* renamed from: b  reason: collision with root package name */
        final long f67177b;

        /* renamed from: c  reason: collision with root package name */
        final AtomicBoolean f67178c;

        /* renamed from: d  reason: collision with root package name */
        final int f67179d;

        /* renamed from: e  reason: collision with root package name */
        long f67180e;

        /* renamed from: f  reason: collision with root package name */
        l3.d f67181f;

        /* renamed from: g  reason: collision with root package name */
        UnicastProcessor<T> f67182g;

        WindowExactSubscriber(l3.c<? super io.reactivex.j<T>> cVar, long j4, int i2) {
            super(1);
            this.f67176a = cVar;
            this.f67177b = j4;
            this.f67178c = new AtomicBoolean();
            this.f67179d = i2;
        }

        @Override // l3.d
        public void cancel() {
            if (this.f67178c.compareAndSet(false, true)) {
                run();
            }
        }

        @Override // l3.c
        public void onComplete() {
            UnicastProcessor<T> unicastProcessor = this.f67182g;
            if (unicastProcessor != null) {
                this.f67182g = null;
                unicastProcessor.onComplete();
            }
            this.f67176a.onComplete();
        }

        @Override // l3.c
        public void onError(Throwable th) {
            UnicastProcessor<T> unicastProcessor = this.f67182g;
            if (unicastProcessor != null) {
                this.f67182g = null;
                unicastProcessor.onError(th);
            }
            this.f67176a.onError(th);
        }

        @Override // l3.c
        public void onNext(T t3) {
            long j4 = this.f67180e;
            UnicastProcessor<T> unicastProcessor = this.f67182g;
            if (j4 == 0) {
                getAndIncrement();
                unicastProcessor = UnicastProcessor.R8(this.f67179d, this);
                this.f67182g = unicastProcessor;
                this.f67176a.onNext(unicastProcessor);
            }
            long j5 = j4 + 1;
            unicastProcessor.onNext(t3);
            if (j5 == this.f67177b) {
                this.f67180e = 0L;
                this.f67182g = null;
                unicastProcessor.onComplete();
                return;
            }
            this.f67180e = j5;
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            if (SubscriptionHelper.validate(this.f67181f, dVar)) {
                this.f67181f = dVar;
                this.f67176a.onSubscribe(this);
            }
        }

        @Override // l3.d
        public void request(long j4) {
            if (SubscriptionHelper.validate(j4)) {
                this.f67181f.request(io.reactivex.internal.util.b.d(this.f67177b, j4));
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            if (decrementAndGet() == 0) {
                this.f67181f.cancel();
            }
        }
    }

    /* loaded from: classes5.dex */
    static final class WindowOverlapSubscriber<T> extends AtomicInteger implements io.reactivex.o<T>, l3.d, Runnable {
        private static final long serialVersionUID = 2428527070996323976L;

        /* renamed from: a  reason: collision with root package name */
        final l3.c<? super io.reactivex.j<T>> f67183a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.internal.queue.a<UnicastProcessor<T>> f67184b;

        /* renamed from: c  reason: collision with root package name */
        final long f67185c;

        /* renamed from: d  reason: collision with root package name */
        final long f67186d;

        /* renamed from: e  reason: collision with root package name */
        final ArrayDeque<UnicastProcessor<T>> f67187e;

        /* renamed from: f  reason: collision with root package name */
        final AtomicBoolean f67188f;

        /* renamed from: g  reason: collision with root package name */
        final AtomicBoolean f67189g;

        /* renamed from: h  reason: collision with root package name */
        final AtomicLong f67190h;

        /* renamed from: i  reason: collision with root package name */
        final AtomicInteger f67191i;

        /* renamed from: j  reason: collision with root package name */
        final int f67192j;

        /* renamed from: k  reason: collision with root package name */
        long f67193k;

        /* renamed from: l  reason: collision with root package name */
        long f67194l;

        /* renamed from: m  reason: collision with root package name */
        l3.d f67195m;

        /* renamed from: n  reason: collision with root package name */
        volatile boolean f67196n;

        /* renamed from: o  reason: collision with root package name */
        Throwable f67197o;

        /* renamed from: p  reason: collision with root package name */
        volatile boolean f67198p;

        WindowOverlapSubscriber(l3.c<? super io.reactivex.j<T>> cVar, long j4, long j5, int i2) {
            super(1);
            this.f67183a = cVar;
            this.f67185c = j4;
            this.f67186d = j5;
            this.f67184b = new io.reactivex.internal.queue.a<>(i2);
            this.f67187e = new ArrayDeque<>();
            this.f67188f = new AtomicBoolean();
            this.f67189g = new AtomicBoolean();
            this.f67190h = new AtomicLong();
            this.f67191i = new AtomicInteger();
            this.f67192j = i2;
        }

        boolean a(boolean z3, boolean z4, l3.c<?> cVar, io.reactivex.internal.queue.a<?> aVar) {
            if (this.f67198p) {
                aVar.clear();
                return true;
            } else if (z3) {
                Throwable th = this.f67197o;
                if (th != null) {
                    aVar.clear();
                    cVar.onError(th);
                    return true;
                } else if (z4) {
                    cVar.onComplete();
                    return true;
                } else {
                    return false;
                }
            } else {
                return false;
            }
        }

        void b() {
            if (this.f67191i.getAndIncrement() != 0) {
                return;
            }
            l3.c<? super io.reactivex.j<T>> cVar = this.f67183a;
            io.reactivex.internal.queue.a<UnicastProcessor<T>> aVar = this.f67184b;
            int i2 = 1;
            do {
                long j4 = this.f67190h.get();
                long j5 = 0;
                while (j5 != j4) {
                    boolean z3 = this.f67196n;
                    UnicastProcessor<T> poll = aVar.poll();
                    boolean z4 = poll == null;
                    if (a(z3, z4, cVar, aVar)) {
                        return;
                    }
                    if (z4) {
                        break;
                    }
                    cVar.onNext(poll);
                    j5++;
                }
                if (j5 == j4 && a(this.f67196n, aVar.isEmpty(), cVar, aVar)) {
                    return;
                }
                if (j5 != 0 && j4 != Long.MAX_VALUE) {
                    this.f67190h.addAndGet(-j5);
                }
                i2 = this.f67191i.addAndGet(-i2);
            } while (i2 != 0);
        }

        @Override // l3.d
        public void cancel() {
            this.f67198p = true;
            if (this.f67188f.compareAndSet(false, true)) {
                run();
            }
        }

        @Override // l3.c
        public void onComplete() {
            if (this.f67196n) {
                return;
            }
            Iterator<UnicastProcessor<T>> it2 = this.f67187e.iterator();
            while (it2.hasNext()) {
                it2.next().onComplete();
            }
            this.f67187e.clear();
            this.f67196n = true;
            b();
        }

        @Override // l3.c
        public void onError(Throwable th) {
            if (this.f67196n) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            Iterator<UnicastProcessor<T>> it2 = this.f67187e.iterator();
            while (it2.hasNext()) {
                it2.next().onError(th);
            }
            this.f67187e.clear();
            this.f67197o = th;
            this.f67196n = true;
            b();
        }

        @Override // l3.c
        public void onNext(T t3) {
            if (this.f67196n) {
                return;
            }
            long j4 = this.f67193k;
            if (j4 == 0 && !this.f67198p) {
                getAndIncrement();
                UnicastProcessor<T> R8 = UnicastProcessor.R8(this.f67192j, this);
                this.f67187e.offer(R8);
                this.f67184b.offer(R8);
                b();
            }
            long j5 = j4 + 1;
            Iterator<UnicastProcessor<T>> it2 = this.f67187e.iterator();
            while (it2.hasNext()) {
                it2.next().onNext(t3);
            }
            long j6 = this.f67194l + 1;
            if (j6 == this.f67185c) {
                this.f67194l = j6 - this.f67186d;
                UnicastProcessor<T> poll = this.f67187e.poll();
                if (poll != null) {
                    poll.onComplete();
                }
            } else {
                this.f67194l = j6;
            }
            if (j5 == this.f67186d) {
                this.f67193k = 0L;
            } else {
                this.f67193k = j5;
            }
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            if (SubscriptionHelper.validate(this.f67195m, dVar)) {
                this.f67195m = dVar;
                this.f67183a.onSubscribe(this);
            }
        }

        @Override // l3.d
        public void request(long j4) {
            if (SubscriptionHelper.validate(j4)) {
                io.reactivex.internal.util.b.a(this.f67190h, j4);
                if (!this.f67189g.get() && this.f67189g.compareAndSet(false, true)) {
                    this.f67195m.request(io.reactivex.internal.util.b.c(this.f67185c, io.reactivex.internal.util.b.d(this.f67186d, j4 - 1)));
                } else {
                    this.f67195m.request(io.reactivex.internal.util.b.d(this.f67186d, j4));
                }
                b();
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            if (decrementAndGet() == 0) {
                this.f67195m.cancel();
            }
        }
    }

    /* loaded from: classes5.dex */
    static final class WindowSkipSubscriber<T> extends AtomicInteger implements io.reactivex.o<T>, l3.d, Runnable {
        private static final long serialVersionUID = -8792836352386833856L;

        /* renamed from: a  reason: collision with root package name */
        final l3.c<? super io.reactivex.j<T>> f67199a;

        /* renamed from: b  reason: collision with root package name */
        final long f67200b;

        /* renamed from: c  reason: collision with root package name */
        final long f67201c;

        /* renamed from: d  reason: collision with root package name */
        final AtomicBoolean f67202d;

        /* renamed from: e  reason: collision with root package name */
        final AtomicBoolean f67203e;

        /* renamed from: f  reason: collision with root package name */
        final int f67204f;

        /* renamed from: g  reason: collision with root package name */
        long f67205g;

        /* renamed from: h  reason: collision with root package name */
        l3.d f67206h;

        /* renamed from: i  reason: collision with root package name */
        UnicastProcessor<T> f67207i;

        WindowSkipSubscriber(l3.c<? super io.reactivex.j<T>> cVar, long j4, long j5, int i2) {
            super(1);
            this.f67199a = cVar;
            this.f67200b = j4;
            this.f67201c = j5;
            this.f67202d = new AtomicBoolean();
            this.f67203e = new AtomicBoolean();
            this.f67204f = i2;
        }

        @Override // l3.d
        public void cancel() {
            if (this.f67202d.compareAndSet(false, true)) {
                run();
            }
        }

        @Override // l3.c
        public void onComplete() {
            UnicastProcessor<T> unicastProcessor = this.f67207i;
            if (unicastProcessor != null) {
                this.f67207i = null;
                unicastProcessor.onComplete();
            }
            this.f67199a.onComplete();
        }

        @Override // l3.c
        public void onError(Throwable th) {
            UnicastProcessor<T> unicastProcessor = this.f67207i;
            if (unicastProcessor != null) {
                this.f67207i = null;
                unicastProcessor.onError(th);
            }
            this.f67199a.onError(th);
        }

        @Override // l3.c
        public void onNext(T t3) {
            long j4 = this.f67205g;
            UnicastProcessor<T> unicastProcessor = this.f67207i;
            if (j4 == 0) {
                getAndIncrement();
                unicastProcessor = UnicastProcessor.R8(this.f67204f, this);
                this.f67207i = unicastProcessor;
                this.f67199a.onNext(unicastProcessor);
            }
            long j5 = j4 + 1;
            if (unicastProcessor != null) {
                unicastProcessor.onNext(t3);
            }
            if (j5 == this.f67200b) {
                this.f67207i = null;
                unicastProcessor.onComplete();
            }
            if (j5 == this.f67201c) {
                this.f67205g = 0L;
            } else {
                this.f67205g = j5;
            }
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            if (SubscriptionHelper.validate(this.f67206h, dVar)) {
                this.f67206h = dVar;
                this.f67199a.onSubscribe(this);
            }
        }

        @Override // l3.d
        public void request(long j4) {
            if (SubscriptionHelper.validate(j4)) {
                if (!this.f67203e.get() && this.f67203e.compareAndSet(false, true)) {
                    this.f67206h.request(io.reactivex.internal.util.b.c(io.reactivex.internal.util.b.d(this.f67200b, j4), io.reactivex.internal.util.b.d(this.f67201c - this.f67200b, j4 - 1)));
                    return;
                }
                this.f67206h.request(io.reactivex.internal.util.b.d(this.f67201c, j4));
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            if (decrementAndGet() == 0) {
                this.f67206h.cancel();
            }
        }
    }

    public FlowableWindow(io.reactivex.j<T> jVar, long j4, long j5, int i2) {
        super(jVar);
        this.f67173c = j4;
        this.f67174d = j5;
        this.f67175e = i2;
    }

    @Override // io.reactivex.j
    public void h6(l3.c<? super io.reactivex.j<T>> cVar) {
        long j4 = this.f67174d;
        long j5 = this.f67173c;
        if (j4 == j5) {
            this.f67288b.g6(new WindowExactSubscriber(cVar, this.f67173c, this.f67175e));
        } else if (j4 > j5) {
            this.f67288b.g6(new WindowSkipSubscriber(cVar, this.f67173c, this.f67174d, this.f67175e));
        } else {
            this.f67288b.g6(new WindowOverlapSubscriber(cVar, this.f67173c, this.f67174d, this.f67175e));
        }
    }
}
