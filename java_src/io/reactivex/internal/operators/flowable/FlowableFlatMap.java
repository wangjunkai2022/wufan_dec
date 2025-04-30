package io.reactivex.internal.operators.flowable;

import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.queue.SpscArrayQueue;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.AtomicThrowable;
import io.reactivex.internal.util.ExceptionHelper;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class FlowableFlatMap<T, U> extends a<T, U> {

    /* renamed from: c  reason: collision with root package name */
    final w2.o<? super T, ? extends l3.b<? extends U>> f66378c;

    /* renamed from: d  reason: collision with root package name */
    final boolean f66379d;

    /* renamed from: e  reason: collision with root package name */
    final int f66380e;

    /* renamed from: f  reason: collision with root package name */
    final int f66381f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class InnerSubscriber<T, U> extends AtomicReference<l3.d> implements io.reactivex.o<U>, io.reactivex.disposables.b {
        private static final long serialVersionUID = -4606175640614850599L;

        /* renamed from: a  reason: collision with root package name */
        final long f66382a;

        /* renamed from: b  reason: collision with root package name */
        final MergeSubscriber<T, U> f66383b;

        /* renamed from: c  reason: collision with root package name */
        final int f66384c;

        /* renamed from: d  reason: collision with root package name */
        final int f66385d;

        /* renamed from: e  reason: collision with root package name */
        volatile boolean f66386e;

        /* renamed from: f  reason: collision with root package name */
        volatile x2.o<U> f66387f;

        /* renamed from: g  reason: collision with root package name */
        long f66388g;

        /* renamed from: h  reason: collision with root package name */
        int f66389h;

        InnerSubscriber(MergeSubscriber<T, U> mergeSubscriber, long j4) {
            this.f66382a = j4;
            this.f66383b = mergeSubscriber;
            int i2 = mergeSubscriber.f66396e;
            this.f66385d = i2;
            this.f66384c = i2 >> 2;
        }

        void a(long j4) {
            if (this.f66389h != 1) {
                long j5 = this.f66388g + j4;
                if (j5 >= this.f66384c) {
                    this.f66388g = 0L;
                    get().request(j5);
                    return;
                }
                this.f66388g = j5;
            }
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
            this.f66386e = true;
            this.f66383b.e();
        }

        @Override // l3.c
        public void onError(Throwable th) {
            lazySet(SubscriptionHelper.CANCELLED);
            this.f66383b.i(this, th);
        }

        @Override // l3.c
        public void onNext(U u3) {
            if (this.f66389h != 2) {
                this.f66383b.k(u3, this);
            } else {
                this.f66383b.e();
            }
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            if (SubscriptionHelper.setOnce(this, dVar)) {
                if (dVar instanceof x2.l) {
                    x2.l lVar = (x2.l) dVar;
                    int requestFusion = lVar.requestFusion(7);
                    if (requestFusion == 1) {
                        this.f66389h = requestFusion;
                        this.f66387f = lVar;
                        this.f66386e = true;
                        this.f66383b.e();
                        return;
                    } else if (requestFusion == 2) {
                        this.f66389h = requestFusion;
                        this.f66387f = lVar;
                    }
                }
                dVar.request(this.f66385d);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class MergeSubscriber<T, U> extends AtomicInteger implements io.reactivex.o<T>, l3.d {

        /* renamed from: r  reason: collision with root package name */
        static final InnerSubscriber<?, ?>[] f66390r = new InnerSubscriber[0];

        /* renamed from: s  reason: collision with root package name */
        static final InnerSubscriber<?, ?>[] f66391s = new InnerSubscriber[0];
        private static final long serialVersionUID = -2117620485640801370L;

        /* renamed from: a  reason: collision with root package name */
        final l3.c<? super U> f66392a;

        /* renamed from: b  reason: collision with root package name */
        final w2.o<? super T, ? extends l3.b<? extends U>> f66393b;

        /* renamed from: c  reason: collision with root package name */
        final boolean f66394c;

        /* renamed from: d  reason: collision with root package name */
        final int f66395d;

        /* renamed from: e  reason: collision with root package name */
        final int f66396e;

        /* renamed from: f  reason: collision with root package name */
        volatile x2.n<U> f66397f;

        /* renamed from: g  reason: collision with root package name */
        volatile boolean f66398g;

        /* renamed from: h  reason: collision with root package name */
        final AtomicThrowable f66399h = new AtomicThrowable();

        /* renamed from: i  reason: collision with root package name */
        volatile boolean f66400i;

        /* renamed from: j  reason: collision with root package name */
        final AtomicReference<InnerSubscriber<?, ?>[]> f66401j;

        /* renamed from: k  reason: collision with root package name */
        final AtomicLong f66402k;

        /* renamed from: l  reason: collision with root package name */
        l3.d f66403l;

        /* renamed from: m  reason: collision with root package name */
        long f66404m;

        /* renamed from: n  reason: collision with root package name */
        long f66405n;

        /* renamed from: o  reason: collision with root package name */
        int f66406o;

        /* renamed from: p  reason: collision with root package name */
        int f66407p;

        /* renamed from: q  reason: collision with root package name */
        final int f66408q;

        MergeSubscriber(l3.c<? super U> cVar, w2.o<? super T, ? extends l3.b<? extends U>> oVar, boolean z3, int i2, int i4) {
            AtomicReference<InnerSubscriber<?, ?>[]> atomicReference = new AtomicReference<>();
            this.f66401j = atomicReference;
            this.f66402k = new AtomicLong();
            this.f66392a = cVar;
            this.f66393b = oVar;
            this.f66394c = z3;
            this.f66395d = i2;
            this.f66396e = i4;
            this.f66408q = Math.max(1, i2 >> 1);
            atomicReference.lazySet(f66390r);
        }

        /* JADX WARN: Multi-variable type inference failed */
        boolean a(InnerSubscriber<T, U> innerSubscriber) {
            InnerSubscriber<?, ?>[] innerSubscriberArr;
            InnerSubscriber[] innerSubscriberArr2;
            do {
                innerSubscriberArr = this.f66401j.get();
                if (innerSubscriberArr == f66391s) {
                    innerSubscriber.dispose();
                    return false;
                }
                int length = innerSubscriberArr.length;
                innerSubscriberArr2 = new InnerSubscriber[length + 1];
                System.arraycopy(innerSubscriberArr, 0, innerSubscriberArr2, 0, length);
                innerSubscriberArr2[length] = innerSubscriber;
            } while (!this.f66401j.compareAndSet(innerSubscriberArr, innerSubscriberArr2));
            return true;
        }

        boolean b() {
            if (this.f66400i) {
                c();
                return true;
            } else if (this.f66394c || this.f66399h.get() == null) {
                return false;
            } else {
                c();
                Throwable c4 = this.f66399h.c();
                if (c4 != ExceptionHelper.f70084a) {
                    this.f66392a.onError(c4);
                }
                return true;
            }
        }

        void c() {
            x2.n<U> nVar = this.f66397f;
            if (nVar != null) {
                nVar.clear();
            }
        }

        @Override // l3.d
        public void cancel() {
            x2.n<U> nVar;
            if (this.f66400i) {
                return;
            }
            this.f66400i = true;
            this.f66403l.cancel();
            d();
            if (getAndIncrement() != 0 || (nVar = this.f66397f) == null) {
                return;
            }
            nVar.clear();
        }

        void d() {
            InnerSubscriber<?, ?>[] andSet;
            InnerSubscriber<?, ?>[] innerSubscriberArr = this.f66401j.get();
            InnerSubscriber<?, ?>[] innerSubscriberArr2 = f66391s;
            if (innerSubscriberArr == innerSubscriberArr2 || (andSet = this.f66401j.getAndSet(innerSubscriberArr2)) == innerSubscriberArr2) {
                return;
            }
            for (InnerSubscriber<?, ?> innerSubscriber : andSet) {
                innerSubscriber.dispose();
            }
            Throwable c4 = this.f66399h.c();
            if (c4 == null || c4 == ExceptionHelper.f70084a) {
                return;
            }
            io.reactivex.plugins.a.Y(c4);
        }

        void e() {
            if (getAndIncrement() == 0) {
                f();
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:121:0x018f, code lost:
            r24.f66406o = r3;
            r24.f66405n = r13[r3].f66382a;
            r3 = r16;
            r5 = 0;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        void f() {
            /*
                Method dump skipped, instructions count: 446
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.flowable.FlowableFlatMap.MergeSubscriber.f():void");
        }

        x2.o<U> g(InnerSubscriber<T, U> innerSubscriber) {
            x2.o<U> oVar = innerSubscriber.f66387f;
            if (oVar == null) {
                SpscArrayQueue spscArrayQueue = new SpscArrayQueue(this.f66396e);
                innerSubscriber.f66387f = spscArrayQueue;
                return spscArrayQueue;
            }
            return oVar;
        }

        x2.o<U> h() {
            x2.n<U> nVar = this.f66397f;
            if (nVar == null) {
                if (this.f66395d == Integer.MAX_VALUE) {
                    nVar = new io.reactivex.internal.queue.a<>(this.f66396e);
                } else {
                    nVar = new SpscArrayQueue<>(this.f66395d);
                }
                this.f66397f = nVar;
            }
            return nVar;
        }

        void i(InnerSubscriber<T, U> innerSubscriber, Throwable th) {
            if (this.f66399h.a(th)) {
                innerSubscriber.f66386e = true;
                if (!this.f66394c) {
                    this.f66403l.cancel();
                    for (InnerSubscriber<?, ?> innerSubscriber2 : this.f66401j.getAndSet(f66391s)) {
                        innerSubscriber2.dispose();
                    }
                }
                e();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        void j(InnerSubscriber<T, U> innerSubscriber) {
            InnerSubscriber<?, ?>[] innerSubscriberArr;
            InnerSubscriber<?, ?>[] innerSubscriberArr2;
            do {
                innerSubscriberArr = this.f66401j.get();
                int length = innerSubscriberArr.length;
                if (length == 0) {
                    return;
                }
                int i2 = -1;
                int i4 = 0;
                while (true) {
                    if (i4 >= length) {
                        break;
                    } else if (innerSubscriberArr[i4] == innerSubscriber) {
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
                    innerSubscriberArr2 = f66390r;
                } else {
                    InnerSubscriber<?, ?>[] innerSubscriberArr3 = new InnerSubscriber[length - 1];
                    System.arraycopy(innerSubscriberArr, 0, innerSubscriberArr3, 0, i2);
                    System.arraycopy(innerSubscriberArr, i2 + 1, innerSubscriberArr3, i2, (length - i2) - 1);
                    innerSubscriberArr2 = innerSubscriberArr3;
                }
            } while (!this.f66401j.compareAndSet(innerSubscriberArr, innerSubscriberArr2));
        }

        void k(U u3, InnerSubscriber<T, U> innerSubscriber) {
            if (get() == 0 && compareAndSet(0, 1)) {
                long j4 = this.f66402k.get();
                x2.o<U> oVar = innerSubscriber.f66387f;
                if (j4 != 0 && (oVar == null || oVar.isEmpty())) {
                    this.f66392a.onNext(u3);
                    if (j4 != Long.MAX_VALUE) {
                        this.f66402k.decrementAndGet();
                    }
                    innerSubscriber.a(1L);
                } else {
                    if (oVar == null) {
                        oVar = g(innerSubscriber);
                    }
                    if (!oVar.offer(u3)) {
                        onError(new MissingBackpressureException("Inner queue full?!"));
                        return;
                    }
                }
                if (decrementAndGet() == 0) {
                    return;
                }
            } else {
                x2.o oVar2 = innerSubscriber.f66387f;
                if (oVar2 == null) {
                    oVar2 = new SpscArrayQueue(this.f66396e);
                    innerSubscriber.f66387f = oVar2;
                }
                if (!oVar2.offer(u3)) {
                    onError(new MissingBackpressureException("Inner queue full?!"));
                    return;
                } else if (getAndIncrement() != 0) {
                    return;
                }
            }
            f();
        }

        void l(U u3) {
            if (get() == 0 && compareAndSet(0, 1)) {
                long j4 = this.f66402k.get();
                x2.o<U> oVar = this.f66397f;
                if (j4 != 0 && (oVar == null || oVar.isEmpty())) {
                    this.f66392a.onNext(u3);
                    if (j4 != Long.MAX_VALUE) {
                        this.f66402k.decrementAndGet();
                    }
                    if (this.f66395d != Integer.MAX_VALUE && !this.f66400i) {
                        int i2 = this.f66407p + 1;
                        this.f66407p = i2;
                        int i4 = this.f66408q;
                        if (i2 == i4) {
                            this.f66407p = 0;
                            this.f66403l.request(i4);
                        }
                    }
                } else {
                    if (oVar == null) {
                        oVar = h();
                    }
                    if (!oVar.offer(u3)) {
                        onError(new IllegalStateException("Scalar queue full?!"));
                        return;
                    }
                }
                if (decrementAndGet() == 0) {
                    return;
                }
            } else if (!h().offer(u3)) {
                onError(new IllegalStateException("Scalar queue full?!"));
                return;
            } else if (getAndIncrement() != 0) {
                return;
            }
            f();
        }

        @Override // l3.c
        public void onComplete() {
            if (this.f66398g) {
                return;
            }
            this.f66398g = true;
            e();
        }

        @Override // l3.c
        public void onError(Throwable th) {
            if (this.f66398g) {
                io.reactivex.plugins.a.Y(th);
            } else if (this.f66399h.a(th)) {
                this.f66398g = true;
                e();
            } else {
                io.reactivex.plugins.a.Y(th);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // l3.c
        public void onNext(T t3) {
            if (this.f66398g) {
                return;
            }
            try {
                l3.b bVar = (l3.b) io.reactivex.internal.functions.a.g(this.f66393b.apply(t3), "The mapper returned a null Publisher");
                if (bVar instanceof Callable) {
                    try {
                        Object call = ((Callable) bVar).call();
                        if (call != null) {
                            l(call);
                            return;
                        } else if (this.f66395d == Integer.MAX_VALUE || this.f66400i) {
                            return;
                        } else {
                            int i2 = this.f66407p + 1;
                            this.f66407p = i2;
                            int i4 = this.f66408q;
                            if (i2 == i4) {
                                this.f66407p = 0;
                                this.f66403l.request(i4);
                                return;
                            }
                            return;
                        }
                    } catch (Throwable th) {
                        io.reactivex.exceptions.a.b(th);
                        this.f66399h.a(th);
                        e();
                        return;
                    }
                }
                long j4 = this.f66404m;
                this.f66404m = 1 + j4;
                InnerSubscriber innerSubscriber = new InnerSubscriber(this, j4);
                if (a(innerSubscriber)) {
                    bVar.c(innerSubscriber);
                }
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f66403l.cancel();
                onError(th2);
            }
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            if (SubscriptionHelper.validate(this.f66403l, dVar)) {
                this.f66403l = dVar;
                this.f66392a.onSubscribe(this);
                if (this.f66400i) {
                    return;
                }
                int i2 = this.f66395d;
                if (i2 == Integer.MAX_VALUE) {
                    dVar.request(Long.MAX_VALUE);
                } else {
                    dVar.request(i2);
                }
            }
        }

        @Override // l3.d
        public void request(long j4) {
            if (SubscriptionHelper.validate(j4)) {
                io.reactivex.internal.util.b.a(this.f66402k, j4);
                e();
            }
        }
    }

    public FlowableFlatMap(io.reactivex.j<T> jVar, w2.o<? super T, ? extends l3.b<? extends U>> oVar, boolean z3, int i2, int i4) {
        super(jVar);
        this.f66378c = oVar;
        this.f66379d = z3;
        this.f66380e = i2;
        this.f66381f = i4;
    }

    public static <T, U> io.reactivex.o<T> J8(l3.c<? super U> cVar, w2.o<? super T, ? extends l3.b<? extends U>> oVar, boolean z3, int i2, int i4) {
        return new MergeSubscriber(cVar, oVar, z3, i2, i4);
    }

    @Override // io.reactivex.j
    protected void h6(l3.c<? super U> cVar) {
        if (w0.b(this.f67288b, cVar, this.f66378c)) {
            return;
        }
        this.f67288b.g6(J8(cVar, this.f66378c, this.f66379d, this.f66380e, this.f66381f));
    }
}
