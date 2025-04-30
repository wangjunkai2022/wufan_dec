package io.reactivex.internal.operators.parallel;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.j;
import io.reactivex.o;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class ParallelSortedJoin<T> extends j<T> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.parallel.a<List<T>> f69494b;

    /* renamed from: c  reason: collision with root package name */
    final Comparator<? super T> f69495c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class SortedJoinInnerSubscriber<T> extends AtomicReference<l3.d> implements o<List<T>> {
        private static final long serialVersionUID = 6751017204873808094L;

        /* renamed from: a  reason: collision with root package name */
        final SortedJoinSubscription<T> f69496a;

        /* renamed from: b  reason: collision with root package name */
        final int f69497b;

        SortedJoinInnerSubscriber(SortedJoinSubscription<T> sortedJoinSubscription, int i2) {
            this.f69496a = sortedJoinSubscription;
            this.f69497b = i2;
        }

        void a() {
            SubscriptionHelper.cancel(this);
        }

        @Override // l3.c
        /* renamed from: b */
        public void onNext(List<T> list) {
            this.f69496a.d(list, this.f69497b);
        }

        @Override // l3.c
        public void onComplete() {
        }

        @Override // l3.c
        public void onError(Throwable th) {
            this.f69496a.c(th);
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            SubscriptionHelper.setOnce(this, dVar, Long.MAX_VALUE);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class SortedJoinSubscription<T> extends AtomicInteger implements l3.d {
        private static final long serialVersionUID = 3481980673745556697L;

        /* renamed from: a  reason: collision with root package name */
        final l3.c<? super T> f69498a;

        /* renamed from: b  reason: collision with root package name */
        final SortedJoinInnerSubscriber<T>[] f69499b;

        /* renamed from: c  reason: collision with root package name */
        final List<T>[] f69500c;

        /* renamed from: d  reason: collision with root package name */
        final int[] f69501d;

        /* renamed from: e  reason: collision with root package name */
        final Comparator<? super T> f69502e;

        /* renamed from: g  reason: collision with root package name */
        volatile boolean f69504g;

        /* renamed from: f  reason: collision with root package name */
        final AtomicLong f69503f = new AtomicLong();

        /* renamed from: h  reason: collision with root package name */
        final AtomicInteger f69505h = new AtomicInteger();

        /* renamed from: i  reason: collision with root package name */
        final AtomicReference<Throwable> f69506i = new AtomicReference<>();

        SortedJoinSubscription(l3.c<? super T> cVar, int i2, Comparator<? super T> comparator) {
            this.f69498a = cVar;
            this.f69502e = comparator;
            SortedJoinInnerSubscriber<T>[] sortedJoinInnerSubscriberArr = new SortedJoinInnerSubscriber[i2];
            for (int i4 = 0; i4 < i2; i4++) {
                sortedJoinInnerSubscriberArr[i4] = new SortedJoinInnerSubscriber<>(this, i4);
            }
            this.f69499b = sortedJoinInnerSubscriberArr;
            this.f69500c = new List[i2];
            this.f69501d = new int[i2];
            this.f69505h.lazySet(i2);
        }

        void a() {
            for (SortedJoinInnerSubscriber<T> sortedJoinInnerSubscriber : this.f69499b) {
                sortedJoinInnerSubscriber.a();
            }
        }

        void b() {
            boolean z3;
            if (getAndIncrement() != 0) {
                return;
            }
            l3.c<? super T> cVar = this.f69498a;
            List<T>[] listArr = this.f69500c;
            int[] iArr = this.f69501d;
            int length = iArr.length;
            int i2 = 1;
            while (true) {
                long j4 = this.f69503f.get();
                long j5 = 0;
                while (j5 != j4) {
                    if (this.f69504g) {
                        Arrays.fill(listArr, (Object) null);
                        return;
                    }
                    Throwable th = this.f69506i.get();
                    if (th != null) {
                        a();
                        Arrays.fill(listArr, (Object) null);
                        cVar.onError(th);
                        return;
                    }
                    int i4 = -1;
                    T t3 = (Object) null;
                    for (int i5 = 0; i5 < length; i5++) {
                        List<T> list = listArr[i5];
                        int i6 = iArr[i5];
                        if (list.size() != i6) {
                            if (t3 == null) {
                                t3 = list.get(i6);
                            } else {
                                T t4 = list.get(i6);
                                try {
                                    if (this.f69502e.compare(t3, t4) > 0) {
                                        t3 = t4;
                                    }
                                } catch (Throwable th2) {
                                    io.reactivex.exceptions.a.b(th2);
                                    a();
                                    Arrays.fill(listArr, (Object) null);
                                    if (!this.f69506i.compareAndSet(null, th2)) {
                                        io.reactivex.plugins.a.Y(th2);
                                    }
                                    cVar.onError(this.f69506i.get());
                                    return;
                                }
                            }
                            i4 = i5;
                        }
                    }
                    if (t3 == null) {
                        Arrays.fill(listArr, (Object) null);
                        cVar.onComplete();
                        return;
                    }
                    cVar.onNext(t3);
                    iArr[i4] = iArr[i4] + 1;
                    j5++;
                }
                if (j5 == j4) {
                    if (this.f69504g) {
                        Arrays.fill(listArr, (Object) null);
                        return;
                    }
                    Throwable th3 = this.f69506i.get();
                    if (th3 != null) {
                        a();
                        Arrays.fill(listArr, (Object) null);
                        cVar.onError(th3);
                        return;
                    }
                    int i7 = 0;
                    while (true) {
                        if (i7 >= length) {
                            z3 = true;
                            break;
                        } else if (iArr[i7] != listArr[i7].size()) {
                            z3 = false;
                            break;
                        } else {
                            i7++;
                        }
                    }
                    if (z3) {
                        Arrays.fill(listArr, (Object) null);
                        cVar.onComplete();
                        return;
                    }
                }
                if (j5 != 0 && j4 != Long.MAX_VALUE) {
                    this.f69503f.addAndGet(-j5);
                }
                int i8 = get();
                if (i8 == i2 && (i8 = addAndGet(-i2)) == 0) {
                    return;
                }
                i2 = i8;
            }
        }

        void c(Throwable th) {
            if (this.f69506i.compareAndSet(null, th)) {
                b();
            } else if (th != this.f69506i.get()) {
                io.reactivex.plugins.a.Y(th);
            }
        }

        @Override // l3.d
        public void cancel() {
            if (this.f69504g) {
                return;
            }
            this.f69504g = true;
            a();
            if (getAndIncrement() == 0) {
                Arrays.fill(this.f69500c, (Object) null);
            }
        }

        void d(List<T> list, int i2) {
            this.f69500c[i2] = list;
            if (this.f69505h.decrementAndGet() == 0) {
                b();
            }
        }

        @Override // l3.d
        public void request(long j4) {
            if (SubscriptionHelper.validate(j4)) {
                io.reactivex.internal.util.b.a(this.f69503f, j4);
                if (this.f69505h.get() == 0) {
                    b();
                }
            }
        }
    }

    public ParallelSortedJoin(io.reactivex.parallel.a<List<T>> aVar, Comparator<? super T> comparator) {
        this.f69494b = aVar;
        this.f69495c = comparator;
    }

    @Override // io.reactivex.j
    protected void h6(l3.c<? super T> cVar) {
        SortedJoinSubscription sortedJoinSubscription = new SortedJoinSubscription(cVar, this.f69494b.F(), this.f69495c);
        cVar.onSubscribe(sortedJoinSubscription);
        this.f69494b.Q(sortedJoinSubscription.f69499b);
    }
}
