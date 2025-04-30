package io.reactivex.internal.operators.parallel;

import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.queue.SpscArrayQueue;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.AtomicThrowable;
import io.reactivex.j;
import io.reactivex.o;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import x2.n;
/* loaded from: classes5.dex */
public final class ParallelJoin<T> extends j<T> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.parallel.a<? extends T> f69442b;

    /* renamed from: c  reason: collision with root package name */
    final int f69443c;

    /* renamed from: d  reason: collision with root package name */
    final boolean f69444d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class JoinInnerSubscriber<T> extends AtomicReference<l3.d> implements o<T> {
        private static final long serialVersionUID = 8410034718427740355L;

        /* renamed from: a  reason: collision with root package name */
        final JoinSubscriptionBase<T> f69445a;

        /* renamed from: b  reason: collision with root package name */
        final int f69446b;

        /* renamed from: c  reason: collision with root package name */
        final int f69447c;

        /* renamed from: d  reason: collision with root package name */
        long f69448d;

        /* renamed from: e  reason: collision with root package name */
        volatile n<T> f69449e;

        JoinInnerSubscriber(JoinSubscriptionBase<T> joinSubscriptionBase, int i2) {
            this.f69445a = joinSubscriptionBase;
            this.f69446b = i2;
            this.f69447c = i2 - (i2 >> 2);
        }

        public boolean a() {
            return SubscriptionHelper.cancel(this);
        }

        n<T> b() {
            n<T> nVar = this.f69449e;
            if (nVar == null) {
                SpscArrayQueue spscArrayQueue = new SpscArrayQueue(this.f69446b);
                this.f69449e = spscArrayQueue;
                return spscArrayQueue;
            }
            return nVar;
        }

        public void c(long j4) {
            long j5 = this.f69448d + j4;
            if (j5 >= this.f69447c) {
                this.f69448d = 0L;
                get().request(j5);
                return;
            }
            this.f69448d = j5;
        }

        public void d() {
            long j4 = this.f69448d + 1;
            if (j4 == this.f69447c) {
                this.f69448d = 0L;
                get().request(j4);
                return;
            }
            this.f69448d = j4;
        }

        @Override // l3.c
        public void onComplete() {
            this.f69445a.d();
        }

        @Override // l3.c
        public void onError(Throwable th) {
            this.f69445a.e(th);
        }

        @Override // l3.c
        public void onNext(T t3) {
            this.f69445a.f(this, t3);
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            SubscriptionHelper.setOnce(this, dVar, this.f69446b);
        }
    }

    /* loaded from: classes5.dex */
    static final class JoinSubscription<T> extends JoinSubscriptionBase<T> {
        private static final long serialVersionUID = 6312374661811000451L;

        JoinSubscription(l3.c<? super T> cVar, int i2, int i4) {
            super(cVar, i2, i4);
        }

        @Override // io.reactivex.internal.operators.parallel.ParallelJoin.JoinSubscriptionBase
        void c() {
            if (getAndIncrement() != 0) {
                return;
            }
            g();
        }

        @Override // io.reactivex.internal.operators.parallel.ParallelJoin.JoinSubscriptionBase
        public void d() {
            this.f69455f.decrementAndGet();
            c();
        }

        @Override // io.reactivex.internal.operators.parallel.ParallelJoin.JoinSubscriptionBase
        public void e(Throwable th) {
            if (this.f69452c.compareAndSet(null, th)) {
                a();
                c();
            } else if (th != this.f69452c.get()) {
                io.reactivex.plugins.a.Y(th);
            }
        }

        @Override // io.reactivex.internal.operators.parallel.ParallelJoin.JoinSubscriptionBase
        public void f(JoinInnerSubscriber<T> joinInnerSubscriber, T t3) {
            if (get() == 0 && compareAndSet(0, 1)) {
                if (this.f69453d.get() != 0) {
                    this.f69450a.onNext(t3);
                    if (this.f69453d.get() != Long.MAX_VALUE) {
                        this.f69453d.decrementAndGet();
                    }
                    joinInnerSubscriber.c(1L);
                } else if (!joinInnerSubscriber.b().offer(t3)) {
                    a();
                    MissingBackpressureException missingBackpressureException = new MissingBackpressureException("Queue full?!");
                    if (this.f69452c.compareAndSet(null, missingBackpressureException)) {
                        this.f69450a.onError(missingBackpressureException);
                        return;
                    } else {
                        io.reactivex.plugins.a.Y(missingBackpressureException);
                        return;
                    }
                }
                if (decrementAndGet() == 0) {
                    return;
                }
            } else if (!joinInnerSubscriber.b().offer(t3)) {
                a();
                e(new MissingBackpressureException("Queue full?!"));
                return;
            } else if (getAndIncrement() != 0) {
                return;
            }
            g();
        }

        /* JADX WARN: Code restructure failed: missing block: B:30:0x005d, code lost:
            if (r13 == false) goto L85;
         */
        /* JADX WARN: Code restructure failed: missing block: B:31:0x005f, code lost:
            if (r15 == false) goto L82;
         */
        /* JADX WARN: Code restructure failed: missing block: B:32:0x0061, code lost:
            r3.onComplete();
         */
        /* JADX WARN: Code restructure failed: missing block: B:33:0x0064, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:34:0x0065, code lost:
            if (r15 == false) goto L3;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        void g() {
            /*
                Method dump skipped, instructions count: 208
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.parallel.ParallelJoin.JoinSubscription.g():void");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static abstract class JoinSubscriptionBase<T> extends AtomicInteger implements l3.d {
        private static final long serialVersionUID = 3100232009247827843L;

        /* renamed from: a  reason: collision with root package name */
        final l3.c<? super T> f69450a;

        /* renamed from: b  reason: collision with root package name */
        final JoinInnerSubscriber<T>[] f69451b;

        /* renamed from: e  reason: collision with root package name */
        volatile boolean f69454e;

        /* renamed from: c  reason: collision with root package name */
        final AtomicThrowable f69452c = new AtomicThrowable();

        /* renamed from: d  reason: collision with root package name */
        final AtomicLong f69453d = new AtomicLong();

        /* renamed from: f  reason: collision with root package name */
        final AtomicInteger f69455f = new AtomicInteger();

        JoinSubscriptionBase(l3.c<? super T> cVar, int i2, int i4) {
            this.f69450a = cVar;
            JoinInnerSubscriber<T>[] joinInnerSubscriberArr = new JoinInnerSubscriber[i2];
            for (int i5 = 0; i5 < i2; i5++) {
                joinInnerSubscriberArr[i5] = new JoinInnerSubscriber<>(this, i4);
            }
            this.f69451b = joinInnerSubscriberArr;
            this.f69455f.lazySet(i2);
        }

        void a() {
            int i2 = 0;
            while (true) {
                JoinInnerSubscriber<T>[] joinInnerSubscriberArr = this.f69451b;
                if (i2 >= joinInnerSubscriberArr.length) {
                    return;
                }
                joinInnerSubscriberArr[i2].a();
                i2++;
            }
        }

        void b() {
            int i2 = 0;
            while (true) {
                JoinInnerSubscriber<T>[] joinInnerSubscriberArr = this.f69451b;
                if (i2 >= joinInnerSubscriberArr.length) {
                    return;
                }
                joinInnerSubscriberArr[i2].f69449e = null;
                i2++;
            }
        }

        abstract void c();

        @Override // l3.d
        public void cancel() {
            if (this.f69454e) {
                return;
            }
            this.f69454e = true;
            a();
            if (getAndIncrement() == 0) {
                b();
            }
        }

        abstract void d();

        abstract void e(Throwable th);

        abstract void f(JoinInnerSubscriber<T> joinInnerSubscriber, T t3);

        @Override // l3.d
        public void request(long j4) {
            if (SubscriptionHelper.validate(j4)) {
                io.reactivex.internal.util.b.a(this.f69453d, j4);
                c();
            }
        }
    }

    /* loaded from: classes5.dex */
    static final class JoinSubscriptionDelayError<T> extends JoinSubscriptionBase<T> {
        private static final long serialVersionUID = -5737965195918321883L;

        JoinSubscriptionDelayError(l3.c<? super T> cVar, int i2, int i4) {
            super(cVar, i2, i4);
        }

        @Override // io.reactivex.internal.operators.parallel.ParallelJoin.JoinSubscriptionBase
        void c() {
            if (getAndIncrement() != 0) {
                return;
            }
            g();
        }

        @Override // io.reactivex.internal.operators.parallel.ParallelJoin.JoinSubscriptionBase
        void d() {
            this.f69455f.decrementAndGet();
            c();
        }

        @Override // io.reactivex.internal.operators.parallel.ParallelJoin.JoinSubscriptionBase
        void e(Throwable th) {
            this.f69452c.a(th);
            this.f69455f.decrementAndGet();
            c();
        }

        @Override // io.reactivex.internal.operators.parallel.ParallelJoin.JoinSubscriptionBase
        void f(JoinInnerSubscriber<T> joinInnerSubscriber, T t3) {
            if (get() == 0 && compareAndSet(0, 1)) {
                if (this.f69453d.get() != 0) {
                    this.f69450a.onNext(t3);
                    if (this.f69453d.get() != Long.MAX_VALUE) {
                        this.f69453d.decrementAndGet();
                    }
                    joinInnerSubscriber.c(1L);
                } else if (!joinInnerSubscriber.b().offer(t3)) {
                    joinInnerSubscriber.a();
                    this.f69452c.a(new MissingBackpressureException("Queue full?!"));
                    this.f69455f.decrementAndGet();
                    g();
                    return;
                }
                if (decrementAndGet() == 0) {
                    return;
                }
            } else {
                if (!joinInnerSubscriber.b().offer(t3) && joinInnerSubscriber.a()) {
                    this.f69452c.a(new MissingBackpressureException("Queue full?!"));
                    this.f69455f.decrementAndGet();
                }
                if (getAndIncrement() != 0) {
                    return;
                }
            }
            g();
        }

        /* JADX WARN: Code restructure failed: missing block: B:25:0x004b, code lost:
            if (r13 == false) goto L85;
         */
        /* JADX WARN: Code restructure failed: missing block: B:26:0x004d, code lost:
            if (r15 == false) goto L82;
         */
        /* JADX WARN: Code restructure failed: missing block: B:28:0x0057, code lost:
            if (r18.f69452c.get() == null) goto L80;
         */
        /* JADX WARN: Code restructure failed: missing block: B:29:0x0059, code lost:
            r3.onError(r18.f69452c.c());
         */
        /* JADX WARN: Code restructure failed: missing block: B:30:0x0063, code lost:
            r3.onComplete();
         */
        /* JADX WARN: Code restructure failed: missing block: B:31:0x0066, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:32:0x0067, code lost:
            if (r15 == false) goto L3;
         */
        /* JADX WARN: Code restructure failed: missing block: B:90:?, code lost:
            return;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        void g() {
            /*
                Method dump skipped, instructions count: 213
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.parallel.ParallelJoin.JoinSubscriptionDelayError.g():void");
        }
    }

    public ParallelJoin(io.reactivex.parallel.a<? extends T> aVar, int i2, boolean z3) {
        this.f69442b = aVar;
        this.f69443c = i2;
        this.f69444d = z3;
    }

    @Override // io.reactivex.j
    protected void h6(l3.c<? super T> cVar) {
        JoinSubscriptionBase joinSubscription;
        if (this.f69444d) {
            joinSubscription = new JoinSubscriptionDelayError(cVar, this.f69442b.F(), this.f69443c);
        } else {
            joinSubscription = new JoinSubscription(cVar, this.f69442b.F(), this.f69443c);
        }
        cVar.onSubscribe(joinSubscription);
        this.f69442b.Q(joinSubscription.f69451b);
    }
}
