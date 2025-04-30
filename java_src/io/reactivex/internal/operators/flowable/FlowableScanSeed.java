package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.queue.SpscArrayQueue;
import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
/* loaded from: classes5.dex */
public final class FlowableScanSeed<T, R> extends a<T, R> {

    /* renamed from: c  reason: collision with root package name */
    final w2.c<R, ? super T, R> f66934c;

    /* renamed from: d  reason: collision with root package name */
    final Callable<R> f66935d;

    /* loaded from: classes5.dex */
    static final class ScanSeedSubscriber<T, R> extends AtomicInteger implements io.reactivex.o<T>, l3.d {
        private static final long serialVersionUID = -1776795561228106469L;

        /* renamed from: a  reason: collision with root package name */
        final l3.c<? super R> f66936a;

        /* renamed from: b  reason: collision with root package name */
        final w2.c<R, ? super T, R> f66937b;

        /* renamed from: c  reason: collision with root package name */
        final x2.n<R> f66938c;

        /* renamed from: d  reason: collision with root package name */
        final AtomicLong f66939d;

        /* renamed from: e  reason: collision with root package name */
        final int f66940e;

        /* renamed from: f  reason: collision with root package name */
        final int f66941f;

        /* renamed from: g  reason: collision with root package name */
        volatile boolean f66942g;

        /* renamed from: h  reason: collision with root package name */
        volatile boolean f66943h;

        /* renamed from: i  reason: collision with root package name */
        Throwable f66944i;

        /* renamed from: j  reason: collision with root package name */
        l3.d f66945j;

        /* renamed from: k  reason: collision with root package name */
        R f66946k;

        /* renamed from: l  reason: collision with root package name */
        int f66947l;

        ScanSeedSubscriber(l3.c<? super R> cVar, w2.c<R, ? super T, R> cVar2, R r3, int i2) {
            this.f66936a = cVar;
            this.f66937b = cVar2;
            this.f66946k = r3;
            this.f66940e = i2;
            this.f66941f = i2 - (i2 >> 2);
            SpscArrayQueue spscArrayQueue = new SpscArrayQueue(i2);
            this.f66938c = spscArrayQueue;
            spscArrayQueue.offer(r3);
            this.f66939d = new AtomicLong();
        }

        void a() {
            Throwable th;
            if (getAndIncrement() != 0) {
                return;
            }
            l3.c<? super R> cVar = this.f66936a;
            x2.n<R> nVar = this.f66938c;
            int i2 = this.f66941f;
            int i4 = this.f66947l;
            int i5 = 1;
            do {
                long j4 = this.f66939d.get();
                long j5 = 0;
                while (j5 != j4) {
                    if (this.f66942g) {
                        nVar.clear();
                        return;
                    }
                    boolean z3 = this.f66943h;
                    if (z3 && (th = this.f66944i) != null) {
                        nVar.clear();
                        cVar.onError(th);
                        return;
                    }
                    Object obj = (R) nVar.poll();
                    boolean z4 = obj == null;
                    if (z3 && z4) {
                        cVar.onComplete();
                        return;
                    } else if (z4) {
                        break;
                    } else {
                        cVar.onNext(obj);
                        j5++;
                        i4++;
                        if (i4 == i2) {
                            this.f66945j.request(i2);
                            i4 = 0;
                        }
                    }
                }
                if (j5 == j4 && this.f66943h) {
                    Throwable th2 = this.f66944i;
                    if (th2 != null) {
                        nVar.clear();
                        cVar.onError(th2);
                        return;
                    } else if (nVar.isEmpty()) {
                        cVar.onComplete();
                        return;
                    }
                }
                if (j5 != 0) {
                    io.reactivex.internal.util.b.e(this.f66939d, j5);
                }
                this.f66947l = i4;
                i5 = addAndGet(-i5);
            } while (i5 != 0);
        }

        @Override // l3.d
        public void cancel() {
            this.f66942g = true;
            this.f66945j.cancel();
            if (getAndIncrement() == 0) {
                this.f66938c.clear();
            }
        }

        @Override // l3.c
        public void onComplete() {
            if (this.f66943h) {
                return;
            }
            this.f66943h = true;
            a();
        }

        @Override // l3.c
        public void onError(Throwable th) {
            if (this.f66943h) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f66944i = th;
            this.f66943h = true;
            a();
        }

        @Override // l3.c
        public void onNext(T t3) {
            if (this.f66943h) {
                return;
            }
            try {
                R r3 = (R) io.reactivex.internal.functions.a.g(this.f66937b.apply(this.f66946k, t3), "The accumulator returned a null value");
                this.f66946k = r3;
                this.f66938c.offer(r3);
                a();
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f66945j.cancel();
                onError(th);
            }
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            if (SubscriptionHelper.validate(this.f66945j, dVar)) {
                this.f66945j = dVar;
                this.f66936a.onSubscribe(this);
                dVar.request(this.f66940e - 1);
            }
        }

        @Override // l3.d
        public void request(long j4) {
            if (SubscriptionHelper.validate(j4)) {
                io.reactivex.internal.util.b.a(this.f66939d, j4);
                a();
            }
        }
    }

    public FlowableScanSeed(io.reactivex.j<T> jVar, Callable<R> callable, w2.c<R, ? super T, R> cVar) {
        super(jVar);
        this.f66934c = cVar;
        this.f66935d = callable;
    }

    @Override // io.reactivex.j
    protected void h6(l3.c<? super R> cVar) {
        try {
            this.f67288b.g6(new ScanSeedSubscriber(cVar, this.f66934c, io.reactivex.internal.functions.a.g(this.f66935d.call(), "The seed supplied is null"), io.reactivex.j.V()));
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            EmptySubscription.error(th, cVar);
        }
    }
}
