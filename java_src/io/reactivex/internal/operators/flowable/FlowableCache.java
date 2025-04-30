package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.NotificationLite;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class FlowableCache<T> extends io.reactivex.internal.operators.flowable.a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final a<T> f66203c;

    /* renamed from: d  reason: collision with root package name */
    final AtomicBoolean f66204d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class ReplaySubscription<T> extends AtomicInteger implements l3.d {

        /* renamed from: h  reason: collision with root package name */
        private static final long f66205h = Long.MIN_VALUE;
        private static final long serialVersionUID = -2557562030197141021L;

        /* renamed from: a  reason: collision with root package name */
        final l3.c<? super T> f66206a;

        /* renamed from: b  reason: collision with root package name */
        final a<T> f66207b;

        /* renamed from: c  reason: collision with root package name */
        final AtomicLong f66208c = new AtomicLong();

        /* renamed from: d  reason: collision with root package name */
        Object[] f66209d;

        /* renamed from: e  reason: collision with root package name */
        int f66210e;

        /* renamed from: f  reason: collision with root package name */
        int f66211f;

        /* renamed from: g  reason: collision with root package name */
        long f66212g;

        ReplaySubscription(l3.c<? super T> cVar, a<T> aVar) {
            this.f66206a = cVar;
            this.f66207b = aVar;
        }

        public void a() {
            if (getAndIncrement() != 0) {
                return;
            }
            l3.c<? super T> cVar = this.f66206a;
            AtomicLong atomicLong = this.f66208c;
            long j4 = this.f66212g;
            int i2 = 1;
            int i4 = 1;
            while (true) {
                long j5 = atomicLong.get();
                if (j5 == Long.MIN_VALUE) {
                    return;
                }
                int c4 = this.f66207b.c();
                if (c4 != 0) {
                    Object[] objArr = this.f66209d;
                    if (objArr == null) {
                        objArr = this.f66207b.b();
                        this.f66209d = objArr;
                    }
                    int length = objArr.length - i2;
                    int i5 = this.f66211f;
                    int i6 = this.f66210e;
                    while (i5 < c4 && j4 != j5) {
                        if (atomicLong.get() == Long.MIN_VALUE) {
                            return;
                        }
                        if (i6 == length) {
                            objArr = (Object[]) objArr[length];
                            i6 = 0;
                        }
                        if (NotificationLite.accept(objArr[i6], cVar)) {
                            return;
                        }
                        i6++;
                        i5++;
                        j4++;
                    }
                    if (atomicLong.get() == Long.MIN_VALUE) {
                        return;
                    }
                    if (j5 == j4) {
                        Object obj = objArr[i6];
                        if (NotificationLite.isComplete(obj)) {
                            cVar.onComplete();
                            return;
                        } else if (NotificationLite.isError(obj)) {
                            cVar.onError(NotificationLite.getError(obj));
                            return;
                        }
                    }
                    this.f66211f = i5;
                    this.f66210e = i6;
                    this.f66209d = objArr;
                }
                this.f66212g = j4;
                i4 = addAndGet(-i4);
                if (i4 == 0) {
                    return;
                }
                i2 = 1;
            }
        }

        @Override // l3.d
        public void cancel() {
            if (this.f66208c.getAndSet(Long.MIN_VALUE) != Long.MIN_VALUE) {
                this.f66207b.f(this);
            }
        }

        @Override // l3.d
        public void request(long j4) {
            if (SubscriptionHelper.validate(j4)) {
                io.reactivex.internal.util.b.b(this.f66208c, j4);
                a();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class a<T> extends io.reactivex.internal.util.h implements io.reactivex.o<T> {

        /* renamed from: k  reason: collision with root package name */
        static final ReplaySubscription[] f66213k = new ReplaySubscription[0];

        /* renamed from: l  reason: collision with root package name */
        static final ReplaySubscription[] f66214l = new ReplaySubscription[0];

        /* renamed from: f  reason: collision with root package name */
        final io.reactivex.j<T> f66215f;

        /* renamed from: g  reason: collision with root package name */
        final AtomicReference<l3.d> f66216g;

        /* renamed from: h  reason: collision with root package name */
        final AtomicReference<ReplaySubscription<T>[]> f66217h;

        /* renamed from: i  reason: collision with root package name */
        volatile boolean f66218i;

        /* renamed from: j  reason: collision with root package name */
        boolean f66219j;

        a(io.reactivex.j<T> jVar, int i2) {
            super(i2);
            this.f66216g = new AtomicReference<>();
            this.f66215f = jVar;
            this.f66217h = new AtomicReference<>(f66213k);
        }

        public boolean d(ReplaySubscription<T> replaySubscription) {
            ReplaySubscription<T>[] replaySubscriptionArr;
            ReplaySubscription<T>[] replaySubscriptionArr2;
            do {
                replaySubscriptionArr = this.f66217h.get();
                if (replaySubscriptionArr == f66214l) {
                    return false;
                }
                int length = replaySubscriptionArr.length;
                replaySubscriptionArr2 = new ReplaySubscription[length + 1];
                System.arraycopy(replaySubscriptionArr, 0, replaySubscriptionArr2, 0, length);
                replaySubscriptionArr2[length] = replaySubscription;
            } while (!this.f66217h.compareAndSet(replaySubscriptionArr, replaySubscriptionArr2));
            return true;
        }

        public void e() {
            this.f66215f.g6(this);
            this.f66218i = true;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public void f(ReplaySubscription<T> replaySubscription) {
            ReplaySubscription<T>[] replaySubscriptionArr;
            ReplaySubscription[] replaySubscriptionArr2;
            do {
                replaySubscriptionArr = this.f66217h.get();
                int length = replaySubscriptionArr.length;
                if (length == 0) {
                    return;
                }
                int i2 = -1;
                int i4 = 0;
                while (true) {
                    if (i4 >= length) {
                        break;
                    } else if (replaySubscriptionArr[i4].equals(replaySubscription)) {
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
                    replaySubscriptionArr2 = f66213k;
                } else {
                    ReplaySubscription[] replaySubscriptionArr3 = new ReplaySubscription[length - 1];
                    System.arraycopy(replaySubscriptionArr, 0, replaySubscriptionArr3, 0, i2);
                    System.arraycopy(replaySubscriptionArr, i2 + 1, replaySubscriptionArr3, i2, (length - i2) - 1);
                    replaySubscriptionArr2 = replaySubscriptionArr3;
                }
            } while (!this.f66217h.compareAndSet(replaySubscriptionArr, replaySubscriptionArr2));
        }

        @Override // l3.c
        public void onComplete() {
            if (this.f66219j) {
                return;
            }
            this.f66219j = true;
            a(NotificationLite.complete());
            SubscriptionHelper.cancel(this.f66216g);
            for (ReplaySubscription<T> replaySubscription : this.f66217h.getAndSet(f66214l)) {
                replaySubscription.a();
            }
        }

        @Override // l3.c
        public void onError(Throwable th) {
            if (!this.f66219j) {
                this.f66219j = true;
                a(NotificationLite.error(th));
                SubscriptionHelper.cancel(this.f66216g);
                for (ReplaySubscription<T> replaySubscription : this.f66217h.getAndSet(f66214l)) {
                    replaySubscription.a();
                }
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // l3.c
        public void onNext(T t3) {
            if (this.f66219j) {
                return;
            }
            a(NotificationLite.next(t3));
            for (ReplaySubscription<T> replaySubscription : this.f66217h.get()) {
                replaySubscription.a();
            }
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            SubscriptionHelper.setOnce(this.f66216g, dVar, Long.MAX_VALUE);
        }
    }

    public FlowableCache(io.reactivex.j<T> jVar, int i2) {
        super(jVar);
        this.f66203c = new a<>(jVar, i2);
        this.f66204d = new AtomicBoolean();
    }

    int J8() {
        return this.f66203c.c();
    }

    boolean K8() {
        return this.f66203c.f66217h.get().length != 0;
    }

    boolean L8() {
        return this.f66203c.f66218i;
    }

    @Override // io.reactivex.j
    protected void h6(l3.c<? super T> cVar) {
        boolean z3;
        ReplaySubscription<T> replaySubscription = new ReplaySubscription<>(cVar, this.f66203c);
        cVar.onSubscribe(replaySubscription);
        if (this.f66203c.d(replaySubscription) && replaySubscription.f66208c.get() == Long.MIN_VALUE) {
            this.f66203c.f(replaySubscription);
            z3 = false;
        } else {
            z3 = true;
        }
        if (!this.f66204d.get() && this.f66204d.compareAndSet(false, true)) {
            this.f66203c.e();
        }
        if (z3) {
            replaySubscription.a();
        }
    }
}
