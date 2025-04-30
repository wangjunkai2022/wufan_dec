package io.reactivex.processors;

import io.reactivex.annotations.BackpressureKind;
import io.reactivex.annotations.BackpressureSupport;
import io.reactivex.annotations.CheckReturnValue;
import io.reactivex.annotations.NonNull;
import io.reactivex.annotations.SchedulerSupport;
import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.queue.SpscArrayQueue;
import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.j;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import l3.c;
import l3.d;
import x2.l;
import x2.o;
@SchedulerSupport("none")
@BackpressureSupport(BackpressureKind.FULL)
/* loaded from: classes.dex */
public final class MulticastProcessor<T> extends a<T> {

    /* renamed from: n  reason: collision with root package name */
    static final MulticastSubscription[] f70198n = new MulticastSubscription[0];

    /* renamed from: o  reason: collision with root package name */
    static final MulticastSubscription[] f70199o = new MulticastSubscription[0];

    /* renamed from: b  reason: collision with root package name */
    final AtomicInteger f70200b;

    /* renamed from: c  reason: collision with root package name */
    final AtomicReference<d> f70201c;

    /* renamed from: d  reason: collision with root package name */
    final AtomicReference<MulticastSubscription<T>[]> f70202d;

    /* renamed from: e  reason: collision with root package name */
    final AtomicBoolean f70203e;

    /* renamed from: f  reason: collision with root package name */
    final int f70204f;

    /* renamed from: g  reason: collision with root package name */
    final int f70205g;

    /* renamed from: h  reason: collision with root package name */
    final boolean f70206h;

    /* renamed from: i  reason: collision with root package name */
    volatile o<T> f70207i;

    /* renamed from: j  reason: collision with root package name */
    volatile boolean f70208j;

    /* renamed from: k  reason: collision with root package name */
    volatile Throwable f70209k;

    /* renamed from: l  reason: collision with root package name */
    int f70210l;

    /* renamed from: m  reason: collision with root package name */
    int f70211m;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class MulticastSubscription<T> extends AtomicLong implements d {
        private static final long serialVersionUID = -363282618957264509L;

        /* renamed from: a  reason: collision with root package name */
        final c<? super T> f70212a;

        /* renamed from: b  reason: collision with root package name */
        final MulticastProcessor<T> f70213b;

        /* renamed from: c  reason: collision with root package name */
        long f70214c;

        MulticastSubscription(c<? super T> cVar, MulticastProcessor<T> multicastProcessor) {
            this.f70212a = cVar;
            this.f70213b = multicastProcessor;
        }

        void a() {
            if (get() != Long.MIN_VALUE) {
                this.f70212a.onComplete();
            }
        }

        void b(Throwable th) {
            if (get() != Long.MIN_VALUE) {
                this.f70212a.onError(th);
            }
        }

        void c(T t3) {
            if (get() != Long.MIN_VALUE) {
                this.f70214c++;
                this.f70212a.onNext(t3);
            }
        }

        @Override // l3.d
        public void cancel() {
            if (getAndSet(Long.MIN_VALUE) != Long.MIN_VALUE) {
                this.f70213b.V8(this);
            }
        }

        @Override // l3.d
        public void request(long j4) {
            long j5;
            long j6;
            if (SubscriptionHelper.validate(j4)) {
                do {
                    j5 = get();
                    if (j5 == Long.MIN_VALUE) {
                        return;
                    }
                    if (j5 == Long.MAX_VALUE) {
                        return;
                    }
                    j6 = j5 + j4;
                } while (!compareAndSet(j5, j6 >= 0 ? j6 : Long.MAX_VALUE));
                this.f70213b.T8();
            }
        }
    }

    MulticastProcessor(int i2, boolean z3) {
        io.reactivex.internal.functions.a.h(i2, "bufferSize");
        this.f70204f = i2;
        this.f70205g = i2 - (i2 >> 2);
        this.f70200b = new AtomicInteger();
        this.f70202d = new AtomicReference<>(f70198n);
        this.f70201c = new AtomicReference<>();
        this.f70206h = z3;
        this.f70203e = new AtomicBoolean();
    }

    @CheckReturnValue
    @NonNull
    public static <T> MulticastProcessor<T> P8() {
        return new MulticastProcessor<>(j.V(), false);
    }

    @CheckReturnValue
    @NonNull
    public static <T> MulticastProcessor<T> Q8(int i2) {
        return new MulticastProcessor<>(i2, false);
    }

    @CheckReturnValue
    @NonNull
    public static <T> MulticastProcessor<T> R8(int i2, boolean z3) {
        return new MulticastProcessor<>(i2, z3);
    }

    @CheckReturnValue
    @NonNull
    public static <T> MulticastProcessor<T> S8(boolean z3) {
        return new MulticastProcessor<>(j.V(), z3);
    }

    @Override // io.reactivex.processors.a
    public Throwable J8() {
        if (this.f70203e.get()) {
            return this.f70209k;
        }
        return null;
    }

    @Override // io.reactivex.processors.a
    public boolean K8() {
        return this.f70203e.get() && this.f70209k == null;
    }

    @Override // io.reactivex.processors.a
    public boolean L8() {
        return this.f70202d.get().length != 0;
    }

    @Override // io.reactivex.processors.a
    public boolean M8() {
        return this.f70203e.get() && this.f70209k != null;
    }

    boolean O8(MulticastSubscription<T> multicastSubscription) {
        MulticastSubscription<T>[] multicastSubscriptionArr;
        MulticastSubscription<T>[] multicastSubscriptionArr2;
        do {
            multicastSubscriptionArr = this.f70202d.get();
            if (multicastSubscriptionArr == f70199o) {
                return false;
            }
            int length = multicastSubscriptionArr.length;
            multicastSubscriptionArr2 = new MulticastSubscription[length + 1];
            System.arraycopy(multicastSubscriptionArr, 0, multicastSubscriptionArr2, 0, length);
            multicastSubscriptionArr2[length] = multicastSubscription;
        } while (!this.f70202d.compareAndSet(multicastSubscriptionArr, multicastSubscriptionArr2));
        return true;
    }

    void T8() {
        T t3;
        if (this.f70200b.getAndIncrement() != 0) {
            return;
        }
        AtomicReference<MulticastSubscription<T>[]> atomicReference = this.f70202d;
        int i2 = this.f70210l;
        int i4 = this.f70205g;
        int i5 = this.f70211m;
        int i6 = 1;
        while (true) {
            o<T> oVar = this.f70207i;
            if (oVar != null) {
                MulticastSubscription<T>[] multicastSubscriptionArr = atomicReference.get();
                if (multicastSubscriptionArr.length != 0) {
                    int length = multicastSubscriptionArr.length;
                    long j4 = -1;
                    long j5 = -1;
                    int i7 = 0;
                    while (i7 < length) {
                        MulticastSubscription<T> multicastSubscription = multicastSubscriptionArr[i7];
                        long j6 = multicastSubscription.get();
                        if (j6 >= 0) {
                            if (j5 == j4) {
                                j5 = j6 - multicastSubscription.f70214c;
                            } else {
                                j5 = Math.min(j5, j6 - multicastSubscription.f70214c);
                            }
                        }
                        i7++;
                        j4 = -1;
                    }
                    int i8 = i2;
                    while (j5 > 0) {
                        MulticastSubscription<T>[] multicastSubscriptionArr2 = atomicReference.get();
                        if (multicastSubscriptionArr2 == f70199o) {
                            oVar.clear();
                            return;
                        } else if (multicastSubscriptionArr != multicastSubscriptionArr2) {
                            break;
                        } else {
                            boolean z3 = this.f70208j;
                            try {
                                t3 = oVar.poll();
                            } catch (Throwable th) {
                                io.reactivex.exceptions.a.b(th);
                                SubscriptionHelper.cancel(this.f70201c);
                                this.f70209k = th;
                                this.f70208j = true;
                                t3 = null;
                                z3 = true;
                            }
                            boolean z4 = t3 == null;
                            if (z3 && z4) {
                                Throwable th2 = this.f70209k;
                                if (th2 != null) {
                                    for (MulticastSubscription<T> multicastSubscription2 : atomicReference.getAndSet(f70199o)) {
                                        multicastSubscription2.b(th2);
                                    }
                                    return;
                                }
                                for (MulticastSubscription<T> multicastSubscription3 : atomicReference.getAndSet(f70199o)) {
                                    multicastSubscription3.a();
                                }
                                return;
                            } else if (z4) {
                                break;
                            } else {
                                for (MulticastSubscription<T> multicastSubscription4 : multicastSubscriptionArr) {
                                    multicastSubscription4.c(t3);
                                }
                                j5--;
                                if (i5 != 1 && (i8 = i8 + 1) == i4) {
                                    this.f70201c.get().request(i4);
                                    i8 = 0;
                                }
                            }
                        }
                    }
                    if (j5 == 0) {
                        MulticastSubscription<T>[] multicastSubscriptionArr3 = atomicReference.get();
                        MulticastSubscription<T>[] multicastSubscriptionArr4 = f70199o;
                        if (multicastSubscriptionArr3 == multicastSubscriptionArr4) {
                            oVar.clear();
                            return;
                        } else if (multicastSubscriptionArr != multicastSubscriptionArr3) {
                            i2 = i8;
                        } else if (this.f70208j && oVar.isEmpty()) {
                            Throwable th3 = this.f70209k;
                            if (th3 != null) {
                                for (MulticastSubscription<T> multicastSubscription5 : atomicReference.getAndSet(multicastSubscriptionArr4)) {
                                    multicastSubscription5.b(th3);
                                }
                                return;
                            }
                            for (MulticastSubscription<T> multicastSubscription6 : atomicReference.getAndSet(multicastSubscriptionArr4)) {
                                multicastSubscription6.a();
                            }
                            return;
                        }
                    }
                    i2 = i8;
                }
            }
            i6 = this.f70200b.addAndGet(-i6);
            if (i6 == 0) {
                return;
            }
        }
    }

    public boolean U8(T t3) {
        if (this.f70203e.get()) {
            return false;
        }
        io.reactivex.internal.functions.a.g(t3, "offer called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (this.f70211m == 0 && this.f70207i.offer(t3)) {
            T8();
            return true;
        }
        return false;
    }

    void V8(MulticastSubscription<T> multicastSubscription) {
        while (true) {
            MulticastSubscription<T>[] multicastSubscriptionArr = this.f70202d.get();
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
                if (this.f70206h) {
                    if (this.f70202d.compareAndSet(multicastSubscriptionArr, f70199o)) {
                        SubscriptionHelper.cancel(this.f70201c);
                        this.f70203e.set(true);
                        return;
                    }
                } else if (this.f70202d.compareAndSet(multicastSubscriptionArr, f70198n)) {
                    return;
                }
            } else {
                MulticastSubscription<T>[] multicastSubscriptionArr2 = new MulticastSubscription[length - 1];
                System.arraycopy(multicastSubscriptionArr, 0, multicastSubscriptionArr2, 0, i2);
                System.arraycopy(multicastSubscriptionArr, i2 + 1, multicastSubscriptionArr2, i2, (length - i2) - 1);
                if (this.f70202d.compareAndSet(multicastSubscriptionArr, multicastSubscriptionArr2)) {
                    return;
                }
            }
        }
    }

    public void W8() {
        if (SubscriptionHelper.setOnce(this.f70201c, EmptySubscription.INSTANCE)) {
            this.f70207i = new SpscArrayQueue(this.f70204f);
        }
    }

    public void X8() {
        if (SubscriptionHelper.setOnce(this.f70201c, EmptySubscription.INSTANCE)) {
            this.f70207i = new io.reactivex.internal.queue.a(this.f70204f);
        }
    }

    @Override // io.reactivex.j
    protected void h6(c<? super T> cVar) {
        Throwable th;
        MulticastSubscription<T> multicastSubscription = new MulticastSubscription<>(cVar, this);
        cVar.onSubscribe(multicastSubscription);
        if (O8(multicastSubscription)) {
            if (multicastSubscription.get() == Long.MIN_VALUE) {
                V8(multicastSubscription);
            } else {
                T8();
            }
        } else if ((this.f70203e.get() || !this.f70206h) && (th = this.f70209k) != null) {
            cVar.onError(th);
        } else {
            cVar.onComplete();
        }
    }

    @Override // l3.c
    public void onComplete() {
        if (this.f70203e.compareAndSet(false, true)) {
            this.f70208j = true;
            T8();
        }
    }

    @Override // l3.c
    public void onError(Throwable th) {
        io.reactivex.internal.functions.a.g(th, "onError called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (this.f70203e.compareAndSet(false, true)) {
            this.f70209k = th;
            this.f70208j = true;
            T8();
            return;
        }
        io.reactivex.plugins.a.Y(th);
    }

    @Override // l3.c
    public void onNext(T t3) {
        if (this.f70203e.get()) {
            return;
        }
        if (this.f70211m == 0) {
            io.reactivex.internal.functions.a.g(t3, "onNext called with null. Null values are generally not allowed in 2.x operators and sources.");
            if (!this.f70207i.offer(t3)) {
                SubscriptionHelper.cancel(this.f70201c);
                onError(new MissingBackpressureException());
                return;
            }
        }
        T8();
    }

    @Override // l3.c
    public void onSubscribe(d dVar) {
        if (SubscriptionHelper.setOnce(this.f70201c, dVar)) {
            if (dVar instanceof l) {
                l lVar = (l) dVar;
                int requestFusion = lVar.requestFusion(3);
                if (requestFusion == 1) {
                    this.f70211m = requestFusion;
                    this.f70207i = lVar;
                    this.f70208j = true;
                    T8();
                    return;
                } else if (requestFusion == 2) {
                    this.f70211m = requestFusion;
                    this.f70207i = lVar;
                    dVar.request(this.f70204f);
                    return;
                }
            }
            this.f70207i = new SpscArrayQueue(this.f70204f);
            dVar.request(this.f70204f);
        }
    }
}
