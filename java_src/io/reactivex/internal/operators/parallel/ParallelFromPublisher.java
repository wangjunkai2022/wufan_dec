package io.reactivex.internal.operators.parallel;

import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.queue.SpscArrayQueue;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.o;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLongArray;
import org.reactivestreams.Subscriber;
import x2.l;
/* loaded from: classes5.dex */
public final class ParallelFromPublisher<T> extends io.reactivex.parallel.a<T> {

    /* renamed from: a  reason: collision with root package name */
    final l3.b<? extends T> f69422a;

    /* renamed from: b  reason: collision with root package name */
    final int f69423b;

    /* renamed from: c  reason: collision with root package name */
    final int f69424c;

    /* loaded from: classes5.dex */
    static final class ParallelDispatcher<T> extends AtomicInteger implements o<T> {
        private static final long serialVersionUID = -4470634016609963609L;

        /* renamed from: a  reason: collision with root package name */
        final Subscriber<? super T>[] f69425a;

        /* renamed from: b  reason: collision with root package name */
        final AtomicLongArray f69426b;

        /* renamed from: c  reason: collision with root package name */
        final long[] f69427c;

        /* renamed from: d  reason: collision with root package name */
        final int f69428d;

        /* renamed from: e  reason: collision with root package name */
        final int f69429e;

        /* renamed from: f  reason: collision with root package name */
        l3.d f69430f;

        /* renamed from: g  reason: collision with root package name */
        x2.o<T> f69431g;

        /* renamed from: h  reason: collision with root package name */
        Throwable f69432h;

        /* renamed from: i  reason: collision with root package name */
        volatile boolean f69433i;

        /* renamed from: j  reason: collision with root package name */
        int f69434j;

        /* renamed from: k  reason: collision with root package name */
        volatile boolean f69435k;

        /* renamed from: l  reason: collision with root package name */
        final AtomicInteger f69436l = new AtomicInteger();

        /* renamed from: m  reason: collision with root package name */
        int f69437m;

        /* renamed from: n  reason: collision with root package name */
        int f69438n;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes5.dex */
        public final class a implements l3.d {

            /* renamed from: a  reason: collision with root package name */
            final int f69439a;

            /* renamed from: b  reason: collision with root package name */
            final int f69440b;

            a(int i2, int i4) {
                this.f69439a = i2;
                this.f69440b = i4;
            }

            @Override // l3.d
            public void cancel() {
                if (ParallelDispatcher.this.f69426b.compareAndSet(this.f69439a + this.f69440b, 0L, 1L)) {
                    ParallelDispatcher parallelDispatcher = ParallelDispatcher.this;
                    int i2 = this.f69440b;
                    parallelDispatcher.a(i2 + i2);
                }
            }

            @Override // l3.d
            public void request(long j4) {
                long j5;
                if (SubscriptionHelper.validate(j4)) {
                    AtomicLongArray atomicLongArray = ParallelDispatcher.this.f69426b;
                    do {
                        j5 = atomicLongArray.get(this.f69439a);
                        if (j5 == Long.MAX_VALUE) {
                            return;
                        }
                    } while (!atomicLongArray.compareAndSet(this.f69439a, j5, io.reactivex.internal.util.b.c(j5, j4)));
                    if (ParallelDispatcher.this.f69436l.get() == this.f69440b) {
                        ParallelDispatcher.this.b();
                    }
                }
            }
        }

        ParallelDispatcher(Subscriber<? super T>[] subscriberArr, int i2) {
            this.f69425a = subscriberArr;
            this.f69428d = i2;
            this.f69429e = i2 - (i2 >> 2);
            int length = subscriberArr.length;
            int i4 = length + length;
            AtomicLongArray atomicLongArray = new AtomicLongArray(i4 + 1);
            this.f69426b = atomicLongArray;
            atomicLongArray.lazySet(i4, length);
            this.f69427c = new long[length];
        }

        void a(int i2) {
            if (this.f69426b.decrementAndGet(i2) == 0) {
                this.f69435k = true;
                this.f69430f.cancel();
                if (getAndIncrement() == 0) {
                    this.f69431g.clear();
                }
            }
        }

        void b() {
            if (getAndIncrement() != 0) {
                return;
            }
            if (this.f69438n == 1) {
                d();
            } else {
                c();
            }
        }

        void c() {
            Throwable th;
            x2.o<T> oVar = this.f69431g;
            l3.c[] cVarArr = this.f69425a;
            AtomicLongArray atomicLongArray = this.f69426b;
            long[] jArr = this.f69427c;
            int length = jArr.length;
            int i2 = this.f69434j;
            int i4 = this.f69437m;
            int i5 = 1;
            while (true) {
                int i6 = 0;
                int i7 = 0;
                while (!this.f69435k) {
                    boolean z3 = this.f69433i;
                    if (z3 && (th = this.f69432h) != null) {
                        oVar.clear();
                        int length2 = cVarArr.length;
                        while (i6 < length2) {
                            cVarArr[i6].onError(th);
                            i6++;
                        }
                        return;
                    }
                    boolean isEmpty = oVar.isEmpty();
                    if (z3 && isEmpty) {
                        int length3 = cVarArr.length;
                        while (i6 < length3) {
                            cVarArr[i6].onComplete();
                            i6++;
                        }
                        return;
                    }
                    if (!isEmpty) {
                        long j4 = atomicLongArray.get(i2);
                        long j5 = jArr[i2];
                        if (j4 == j5 || atomicLongArray.get(length + i2) != 0) {
                            i7++;
                        } else {
                            try {
                                T poll = oVar.poll();
                                if (poll != null) {
                                    cVarArr[i2].onNext(poll);
                                    jArr[i2] = j5 + 1;
                                    i4++;
                                    if (i4 == this.f69429e) {
                                        this.f69430f.request(i4);
                                        i4 = 0;
                                    }
                                    i7 = 0;
                                }
                            } catch (Throwable th2) {
                                io.reactivex.exceptions.a.b(th2);
                                this.f69430f.cancel();
                                int length4 = cVarArr.length;
                                while (i6 < length4) {
                                    cVarArr[i6].onError(th2);
                                    i6++;
                                }
                                return;
                            }
                        }
                        i2++;
                        if (i2 == length) {
                            i2 = 0;
                            continue;
                        }
                        if (i7 == length) {
                        }
                    }
                    int i8 = get();
                    if (i8 == i5) {
                        this.f69434j = i2;
                        this.f69437m = i4;
                        i5 = addAndGet(-i5);
                        if (i5 == 0) {
                            return;
                        }
                    } else {
                        i5 = i8;
                    }
                }
                oVar.clear();
                return;
            }
        }

        void d() {
            x2.o<T> oVar = this.f69431g;
            l3.c[] cVarArr = this.f69425a;
            AtomicLongArray atomicLongArray = this.f69426b;
            long[] jArr = this.f69427c;
            int length = jArr.length;
            int i2 = this.f69434j;
            int i4 = 1;
            while (true) {
                int i5 = 0;
                int i6 = 0;
                while (!this.f69435k) {
                    if (oVar.isEmpty()) {
                        int length2 = cVarArr.length;
                        while (i5 < length2) {
                            cVarArr[i5].onComplete();
                            i5++;
                        }
                        return;
                    }
                    long j4 = atomicLongArray.get(i2);
                    long j5 = jArr[i2];
                    if (j4 == j5 || atomicLongArray.get(length + i2) != 0) {
                        i6++;
                    } else {
                        try {
                            T poll = oVar.poll();
                            if (poll == null) {
                                int length3 = cVarArr.length;
                                while (i5 < length3) {
                                    cVarArr[i5].onComplete();
                                    i5++;
                                }
                                return;
                            }
                            cVarArr[i2].onNext(poll);
                            jArr[i2] = j5 + 1;
                            i6 = 0;
                        } catch (Throwable th) {
                            io.reactivex.exceptions.a.b(th);
                            this.f69430f.cancel();
                            int length4 = cVarArr.length;
                            while (i5 < length4) {
                                cVarArr[i5].onError(th);
                                i5++;
                            }
                            return;
                        }
                    }
                    i2++;
                    if (i2 == length) {
                        i2 = 0;
                        continue;
                    }
                    if (i6 == length) {
                        int i7 = get();
                        if (i7 == i4) {
                            this.f69434j = i2;
                            i4 = addAndGet(-i4);
                            if (i4 == 0) {
                                return;
                            }
                        } else {
                            i4 = i7;
                        }
                    }
                }
                oVar.clear();
                return;
            }
        }

        void e() {
            l3.c[] cVarArr = this.f69425a;
            int length = cVarArr.length;
            int i2 = 0;
            while (i2 < length && !this.f69435k) {
                int i4 = i2 + 1;
                this.f69436l.lazySet(i4);
                cVarArr[i2].onSubscribe(new a(i2, length));
                i2 = i4;
            }
        }

        @Override // l3.c
        public void onComplete() {
            this.f69433i = true;
            b();
        }

        @Override // l3.c
        public void onError(Throwable th) {
            this.f69432h = th;
            this.f69433i = true;
            b();
        }

        @Override // l3.c
        public void onNext(T t3) {
            if (this.f69438n == 0 && !this.f69431g.offer(t3)) {
                this.f69430f.cancel();
                onError(new MissingBackpressureException("Queue is full?"));
                return;
            }
            b();
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            if (SubscriptionHelper.validate(this.f69430f, dVar)) {
                this.f69430f = dVar;
                if (dVar instanceof l) {
                    l lVar = (l) dVar;
                    int requestFusion = lVar.requestFusion(7);
                    if (requestFusion == 1) {
                        this.f69438n = requestFusion;
                        this.f69431g = lVar;
                        this.f69433i = true;
                        e();
                        b();
                        return;
                    } else if (requestFusion == 2) {
                        this.f69438n = requestFusion;
                        this.f69431g = lVar;
                        e();
                        dVar.request(this.f69428d);
                        return;
                    }
                }
                this.f69431g = new SpscArrayQueue(this.f69428d);
                e();
                dVar.request(this.f69428d);
            }
        }
    }

    public ParallelFromPublisher(l3.b<? extends T> bVar, int i2, int i4) {
        this.f69422a = bVar;
        this.f69423b = i2;
        this.f69424c = i4;
    }

    @Override // io.reactivex.parallel.a
    public int F() {
        return this.f69423b;
    }

    @Override // io.reactivex.parallel.a
    public void Q(Subscriber<? super T>[] subscriberArr) {
        if (U(subscriberArr)) {
            this.f69422a.c(new ParallelDispatcher(subscriberArr, this.f69424c));
        }
    }
}
