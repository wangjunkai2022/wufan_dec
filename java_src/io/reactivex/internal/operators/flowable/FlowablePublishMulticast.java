package io.reactivex.internal.operators.flowable;

import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class FlowablePublishMulticast<T, R> extends io.reactivex.internal.operators.flowable.a<T, R> {

    /* renamed from: c  reason: collision with root package name */
    final w2.o<? super io.reactivex.j<T>, ? extends l3.b<? extends R>> f66776c;

    /* renamed from: d  reason: collision with root package name */
    final int f66777d;

    /* renamed from: e  reason: collision with root package name */
    final boolean f66778e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class MulticastSubscription<T> extends AtomicLong implements l3.d {
        private static final long serialVersionUID = 8664815189257569791L;

        /* renamed from: a  reason: collision with root package name */
        final l3.c<? super T> f66779a;

        /* renamed from: b  reason: collision with root package name */
        final a<T> f66780b;

        /* renamed from: c  reason: collision with root package name */
        long f66781c;

        MulticastSubscription(l3.c<? super T> cVar, a<T> aVar) {
            this.f66779a = cVar;
            this.f66780b = aVar;
        }

        public boolean a() {
            return get() == Long.MIN_VALUE;
        }

        @Override // l3.d
        public void cancel() {
            if (getAndSet(Long.MIN_VALUE) != Long.MIN_VALUE) {
                this.f66780b.N8(this);
                this.f66780b.L8();
            }
        }

        @Override // l3.d
        public void request(long j4) {
            if (SubscriptionHelper.validate(j4)) {
                io.reactivex.internal.util.b.b(this, j4);
                this.f66780b.L8();
            }
        }
    }

    /* loaded from: classes5.dex */
    static final class a<T> extends io.reactivex.j<T> implements io.reactivex.o<T>, io.reactivex.disposables.b {

        /* renamed from: m  reason: collision with root package name */
        static final MulticastSubscription[] f66782m = new MulticastSubscription[0];

        /* renamed from: n  reason: collision with root package name */
        static final MulticastSubscription[] f66783n = new MulticastSubscription[0];

        /* renamed from: d  reason: collision with root package name */
        final int f66786d;

        /* renamed from: e  reason: collision with root package name */
        final int f66787e;

        /* renamed from: f  reason: collision with root package name */
        final boolean f66788f;

        /* renamed from: h  reason: collision with root package name */
        volatile x2.o<T> f66790h;

        /* renamed from: i  reason: collision with root package name */
        int f66791i;

        /* renamed from: j  reason: collision with root package name */
        volatile boolean f66792j;

        /* renamed from: k  reason: collision with root package name */
        Throwable f66793k;

        /* renamed from: l  reason: collision with root package name */
        int f66794l;

        /* renamed from: b  reason: collision with root package name */
        final AtomicInteger f66784b = new AtomicInteger();

        /* renamed from: g  reason: collision with root package name */
        final AtomicReference<l3.d> f66789g = new AtomicReference<>();

        /* renamed from: c  reason: collision with root package name */
        final AtomicReference<MulticastSubscription<T>[]> f66785c = new AtomicReference<>(f66782m);

        a(int i2, boolean z3) {
            this.f66786d = i2;
            this.f66787e = i2 - (i2 >> 2);
            this.f66788f = z3;
        }

        boolean J8(MulticastSubscription<T> multicastSubscription) {
            MulticastSubscription<T>[] multicastSubscriptionArr;
            MulticastSubscription<T>[] multicastSubscriptionArr2;
            do {
                multicastSubscriptionArr = this.f66785c.get();
                if (multicastSubscriptionArr == f66783n) {
                    return false;
                }
                int length = multicastSubscriptionArr.length;
                multicastSubscriptionArr2 = new MulticastSubscription[length + 1];
                System.arraycopy(multicastSubscriptionArr, 0, multicastSubscriptionArr2, 0, length);
                multicastSubscriptionArr2[length] = multicastSubscription;
            } while (!this.f66785c.compareAndSet(multicastSubscriptionArr, multicastSubscriptionArr2));
            return true;
        }

        void K8() {
            MulticastSubscription<T>[] andSet;
            for (MulticastSubscription<T> multicastSubscription : this.f66785c.getAndSet(f66783n)) {
                if (multicastSubscription.get() != Long.MIN_VALUE) {
                    multicastSubscription.f66779a.onComplete();
                }
            }
        }

        void L8() {
            AtomicReference<MulticastSubscription<T>[]> atomicReference;
            Throwable th;
            Throwable th2;
            if (this.f66784b.getAndIncrement() != 0) {
                return;
            }
            x2.o<T> oVar = this.f66790h;
            int i2 = this.f66794l;
            int i4 = this.f66787e;
            boolean z3 = this.f66791i != 1;
            AtomicReference<MulticastSubscription<T>[]> atomicReference2 = this.f66785c;
            MulticastSubscription<T>[] multicastSubscriptionArr = atomicReference2.get();
            int i5 = 1;
            while (true) {
                int length = multicastSubscriptionArr.length;
                if (oVar == null || length == 0) {
                    atomicReference = atomicReference2;
                } else {
                    int length2 = multicastSubscriptionArr.length;
                    long j4 = Long.MAX_VALUE;
                    long j5 = Long.MAX_VALUE;
                    int i6 = 0;
                    while (i6 < length2) {
                        MulticastSubscription<T> multicastSubscription = multicastSubscriptionArr[i6];
                        AtomicReference<MulticastSubscription<T>[]> atomicReference3 = atomicReference2;
                        long j6 = multicastSubscription.get() - multicastSubscription.f66781c;
                        if (j6 == Long.MIN_VALUE) {
                            length--;
                        } else if (j5 > j6) {
                            j5 = j6;
                        }
                        i6++;
                        atomicReference2 = atomicReference3;
                    }
                    atomicReference = atomicReference2;
                    long j7 = 0;
                    if (length == 0) {
                        j5 = 0;
                    }
                    while (j5 != j7) {
                        if (isDisposed()) {
                            oVar.clear();
                            return;
                        }
                        boolean z4 = this.f66792j;
                        if (z4 && !this.f66788f && (th2 = this.f66793k) != null) {
                            M8(th2);
                            return;
                        }
                        try {
                            T poll = oVar.poll();
                            boolean z5 = poll == null;
                            if (z4 && z5) {
                                Throwable th3 = this.f66793k;
                                if (th3 != null) {
                                    M8(th3);
                                    return;
                                } else {
                                    K8();
                                    return;
                                }
                            } else if (z5) {
                                break;
                            } else {
                                int length3 = multicastSubscriptionArr.length;
                                int i7 = 0;
                                boolean z6 = false;
                                while (i7 < length3) {
                                    MulticastSubscription<T> multicastSubscription2 = multicastSubscriptionArr[i7];
                                    long j8 = multicastSubscription2.get();
                                    if (j8 != Long.MIN_VALUE) {
                                        if (j8 != j4) {
                                            multicastSubscription2.f66781c++;
                                        }
                                        multicastSubscription2.f66779a.onNext(poll);
                                    } else {
                                        z6 = true;
                                    }
                                    i7++;
                                    j4 = Long.MAX_VALUE;
                                }
                                j5--;
                                if (z3 && (i2 = i2 + 1) == i4) {
                                    this.f66789g.get().request(i4);
                                    i2 = 0;
                                }
                                MulticastSubscription<T>[] multicastSubscriptionArr2 = atomicReference.get();
                                if (z6 || multicastSubscriptionArr2 != multicastSubscriptionArr) {
                                    multicastSubscriptionArr = multicastSubscriptionArr2;
                                    break;
                                } else {
                                    j7 = 0;
                                    j4 = Long.MAX_VALUE;
                                }
                            }
                        } catch (Throwable th4) {
                            io.reactivex.exceptions.a.b(th4);
                            SubscriptionHelper.cancel(this.f66789g);
                            M8(th4);
                            return;
                        }
                    }
                    if (j5 == j7) {
                        if (isDisposed()) {
                            oVar.clear();
                            return;
                        }
                        boolean z7 = this.f66792j;
                        if (z7 && !this.f66788f && (th = this.f66793k) != null) {
                            M8(th);
                            return;
                        } else if (z7 && oVar.isEmpty()) {
                            Throwable th5 = this.f66793k;
                            if (th5 != null) {
                                M8(th5);
                                return;
                            } else {
                                K8();
                                return;
                            }
                        }
                    }
                }
                this.f66794l = i2;
                i5 = this.f66784b.addAndGet(-i5);
                if (i5 == 0) {
                    return;
                }
                if (oVar == null) {
                    oVar = this.f66790h;
                }
                multicastSubscriptionArr = atomicReference.get();
                atomicReference2 = atomicReference;
            }
        }

        void M8(Throwable th) {
            MulticastSubscription<T>[] andSet;
            for (MulticastSubscription<T> multicastSubscription : this.f66785c.getAndSet(f66783n)) {
                if (multicastSubscription.get() != Long.MIN_VALUE) {
                    multicastSubscription.f66779a.onError(th);
                }
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        void N8(MulticastSubscription<T> multicastSubscription) {
            MulticastSubscription<T>[] multicastSubscriptionArr;
            MulticastSubscription[] multicastSubscriptionArr2;
            do {
                multicastSubscriptionArr = this.f66785c.get();
                int length = multicastSubscriptionArr.length;
                if (length == 0) {
                    return;
                }
                int i2 = -1;
                int i4 = 0;
                while (true) {
                    if (i4 >= length) {
                        break;
                    } else if (multicastSubscriptionArr[i4] == multicastSubscription) {
                        i2 = i4;
                        break;
                    } else {
                        i4++;
                    }
                }
                if (i2 < 0) {
                    return;
                }
                if (length == 1) {
                    multicastSubscriptionArr2 = f66782m;
                } else {
                    MulticastSubscription[] multicastSubscriptionArr3 = new MulticastSubscription[length - 1];
                    System.arraycopy(multicastSubscriptionArr, 0, multicastSubscriptionArr3, 0, i2);
                    System.arraycopy(multicastSubscriptionArr, i2 + 1, multicastSubscriptionArr3, i2, (length - i2) - 1);
                    multicastSubscriptionArr2 = multicastSubscriptionArr3;
                }
            } while (!this.f66785c.compareAndSet(multicastSubscriptionArr, multicastSubscriptionArr2));
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            x2.o<T> oVar;
            SubscriptionHelper.cancel(this.f66789g);
            if (this.f66784b.getAndIncrement() != 0 || (oVar = this.f66790h) == null) {
                return;
            }
            oVar.clear();
        }

        @Override // io.reactivex.j
        protected void h6(l3.c<? super T> cVar) {
            MulticastSubscription<T> multicastSubscription = new MulticastSubscription<>(cVar, this);
            cVar.onSubscribe(multicastSubscription);
            if (J8(multicastSubscription)) {
                if (multicastSubscription.a()) {
                    N8(multicastSubscription);
                    return;
                } else {
                    L8();
                    return;
                }
            }
            Throwable th = this.f66793k;
            if (th != null) {
                cVar.onError(th);
            } else {
                cVar.onComplete();
            }
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return SubscriptionHelper.isCancelled(this.f66789g.get());
        }

        @Override // l3.c
        public void onComplete() {
            if (this.f66792j) {
                return;
            }
            this.f66792j = true;
            L8();
        }

        @Override // l3.c
        public void onError(Throwable th) {
            if (this.f66792j) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f66793k = th;
            this.f66792j = true;
            L8();
        }

        @Override // l3.c
        public void onNext(T t3) {
            if (this.f66792j) {
                return;
            }
            if (this.f66791i == 0 && !this.f66790h.offer(t3)) {
                this.f66789g.get().cancel();
                onError(new MissingBackpressureException());
                return;
            }
            L8();
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            if (SubscriptionHelper.setOnce(this.f66789g, dVar)) {
                if (dVar instanceof x2.l) {
                    x2.l lVar = (x2.l) dVar;
                    int requestFusion = lVar.requestFusion(3);
                    if (requestFusion == 1) {
                        this.f66791i = requestFusion;
                        this.f66790h = lVar;
                        this.f66792j = true;
                        L8();
                        return;
                    } else if (requestFusion == 2) {
                        this.f66791i = requestFusion;
                        this.f66790h = lVar;
                        io.reactivex.internal.util.n.j(dVar, this.f66786d);
                        return;
                    }
                }
                this.f66790h = io.reactivex.internal.util.n.c(this.f66786d);
                io.reactivex.internal.util.n.j(dVar, this.f66786d);
            }
        }
    }

    /* loaded from: classes5.dex */
    static final class b<R> implements io.reactivex.o<R>, l3.d {

        /* renamed from: a  reason: collision with root package name */
        final l3.c<? super R> f66795a;

        /* renamed from: b  reason: collision with root package name */
        final a<?> f66796b;

        /* renamed from: c  reason: collision with root package name */
        l3.d f66797c;

        b(l3.c<? super R> cVar, a<?> aVar) {
            this.f66795a = cVar;
            this.f66796b = aVar;
        }

        @Override // l3.d
        public void cancel() {
            this.f66797c.cancel();
            this.f66796b.dispose();
        }

        @Override // l3.c
        public void onComplete() {
            this.f66795a.onComplete();
            this.f66796b.dispose();
        }

        @Override // l3.c
        public void onError(Throwable th) {
            this.f66795a.onError(th);
            this.f66796b.dispose();
        }

        @Override // l3.c
        public void onNext(R r3) {
            this.f66795a.onNext(r3);
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            if (SubscriptionHelper.validate(this.f66797c, dVar)) {
                this.f66797c = dVar;
                this.f66795a.onSubscribe(this);
            }
        }

        @Override // l3.d
        public void request(long j4) {
            this.f66797c.request(j4);
        }
    }

    public FlowablePublishMulticast(io.reactivex.j<T> jVar, w2.o<? super io.reactivex.j<T>, ? extends l3.b<? extends R>> oVar, int i2, boolean z3) {
        super(jVar);
        this.f66776c = oVar;
        this.f66777d = i2;
        this.f66778e = z3;
    }

    @Override // io.reactivex.j
    protected void h6(l3.c<? super R> cVar) {
        a aVar = new a(this.f66777d, this.f66778e);
        try {
            ((l3.b) io.reactivex.internal.functions.a.g(this.f66776c.apply(aVar), "selector returned a null Publisher")).c(new b(cVar, aVar));
            this.f67288b.g6(aVar);
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            EmptySubscription.error(th, cVar);
        }
    }
}
