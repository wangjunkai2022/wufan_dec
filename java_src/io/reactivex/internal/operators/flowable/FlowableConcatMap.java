package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.queue.SpscArrayQueue;
import io.reactivex.internal.subscriptions.SubscriptionArbiter;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.AtomicThrowable;
import io.reactivex.internal.util.ErrorMode;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes5.dex */
public final class FlowableConcatMap<T, R> extends io.reactivex.internal.operators.flowable.a<T, R> {

    /* renamed from: c  reason: collision with root package name */
    final w2.o<? super T, ? extends l3.b<? extends R>> f66259c;

    /* renamed from: d  reason: collision with root package name */
    final int f66260d;

    /* renamed from: e  reason: collision with root package name */
    final ErrorMode f66261e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static abstract class BaseConcatMapSubscriber<T, R> extends AtomicInteger implements io.reactivex.o<T>, b<R>, l3.d {
        private static final long serialVersionUID = -3511336836796789179L;

        /* renamed from: b  reason: collision with root package name */
        final w2.o<? super T, ? extends l3.b<? extends R>> f66263b;

        /* renamed from: c  reason: collision with root package name */
        final int f66264c;

        /* renamed from: d  reason: collision with root package name */
        final int f66265d;

        /* renamed from: e  reason: collision with root package name */
        l3.d f66266e;

        /* renamed from: f  reason: collision with root package name */
        int f66267f;

        /* renamed from: g  reason: collision with root package name */
        x2.o<T> f66268g;

        /* renamed from: h  reason: collision with root package name */
        volatile boolean f66269h;

        /* renamed from: i  reason: collision with root package name */
        volatile boolean f66270i;

        /* renamed from: k  reason: collision with root package name */
        volatile boolean f66272k;

        /* renamed from: l  reason: collision with root package name */
        int f66273l;

        /* renamed from: a  reason: collision with root package name */
        final ConcatMapInner<R> f66262a = new ConcatMapInner<>(this);

        /* renamed from: j  reason: collision with root package name */
        final AtomicThrowable f66271j = new AtomicThrowable();

        BaseConcatMapSubscriber(w2.o<? super T, ? extends l3.b<? extends R>> oVar, int i2) {
            this.f66263b = oVar;
            this.f66264c = i2;
            this.f66265d = i2 - (i2 >> 2);
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableConcatMap.b
        public final void b() {
            this.f66272k = false;
            d();
        }

        abstract void d();

        abstract void e();

        @Override // l3.c
        public final void onComplete() {
            this.f66269h = true;
            d();
        }

        @Override // l3.c
        public final void onNext(T t3) {
            if (this.f66273l != 2 && !this.f66268g.offer(t3)) {
                this.f66266e.cancel();
                onError(new IllegalStateException("Queue full?!"));
                return;
            }
            d();
        }

        @Override // io.reactivex.o, l3.c
        public final void onSubscribe(l3.d dVar) {
            if (SubscriptionHelper.validate(this.f66266e, dVar)) {
                this.f66266e = dVar;
                if (dVar instanceof x2.l) {
                    x2.l lVar = (x2.l) dVar;
                    int requestFusion = lVar.requestFusion(7);
                    if (requestFusion == 1) {
                        this.f66273l = requestFusion;
                        this.f66268g = lVar;
                        this.f66269h = true;
                        e();
                        d();
                        return;
                    } else if (requestFusion == 2) {
                        this.f66273l = requestFusion;
                        this.f66268g = lVar;
                        e();
                        dVar.request(this.f66264c);
                        return;
                    }
                }
                this.f66268g = new SpscArrayQueue(this.f66264c);
                e();
                dVar.request(this.f66264c);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class ConcatMapDelayed<T, R> extends BaseConcatMapSubscriber<T, R> {
        private static final long serialVersionUID = -2945777694260521066L;

        /* renamed from: m  reason: collision with root package name */
        final l3.c<? super R> f66274m;

        /* renamed from: n  reason: collision with root package name */
        final boolean f66275n;

        ConcatMapDelayed(l3.c<? super R> cVar, w2.o<? super T, ? extends l3.b<? extends R>> oVar, int i2, boolean z3) {
            super(oVar, i2);
            this.f66274m = cVar;
            this.f66275n = z3;
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableConcatMap.b
        public void a(Throwable th) {
            if (this.f66271j.a(th)) {
                if (!this.f66275n) {
                    this.f66266e.cancel();
                    this.f66269h = true;
                }
                this.f66272k = false;
                d();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableConcatMap.b
        public void c(R r3) {
            this.f66274m.onNext(r3);
        }

        @Override // l3.d
        public void cancel() {
            if (this.f66270i) {
                return;
            }
            this.f66270i = true;
            this.f66262a.cancel();
            this.f66266e.cancel();
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableConcatMap.BaseConcatMapSubscriber
        void d() {
            if (getAndIncrement() == 0) {
                while (!this.f66270i) {
                    if (!this.f66272k) {
                        boolean z3 = this.f66269h;
                        if (z3 && !this.f66275n && this.f66271j.get() != null) {
                            this.f66274m.onError(this.f66271j.c());
                            return;
                        }
                        try {
                            T poll = this.f66268g.poll();
                            boolean z4 = poll == null;
                            if (z3 && z4) {
                                Throwable c4 = this.f66271j.c();
                                if (c4 != null) {
                                    this.f66274m.onError(c4);
                                    return;
                                } else {
                                    this.f66274m.onComplete();
                                    return;
                                }
                            } else if (!z4) {
                                try {
                                    l3.b bVar = (l3.b) io.reactivex.internal.functions.a.g(this.f66263b.apply(poll), "The mapper returned a null Publisher");
                                    if (this.f66273l != 1) {
                                        int i2 = this.f66267f + 1;
                                        if (i2 == this.f66265d) {
                                            this.f66267f = 0;
                                            this.f66266e.request(i2);
                                        } else {
                                            this.f66267f = i2;
                                        }
                                    }
                                    if (bVar instanceof Callable) {
                                        try {
                                            Object call = ((Callable) bVar).call();
                                            if (call == null) {
                                                continue;
                                            } else if (this.f66262a.f()) {
                                                this.f66274m.onNext(call);
                                            } else {
                                                this.f66272k = true;
                                                ConcatMapInner<R> concatMapInner = this.f66262a;
                                                concatMapInner.h(new c(call, concatMapInner));
                                            }
                                        } catch (Throwable th) {
                                            io.reactivex.exceptions.a.b(th);
                                            this.f66266e.cancel();
                                            this.f66271j.a(th);
                                            this.f66274m.onError(this.f66271j.c());
                                            return;
                                        }
                                    } else {
                                        this.f66272k = true;
                                        bVar.c(this.f66262a);
                                    }
                                } catch (Throwable th2) {
                                    io.reactivex.exceptions.a.b(th2);
                                    this.f66266e.cancel();
                                    this.f66271j.a(th2);
                                    this.f66274m.onError(this.f66271j.c());
                                    return;
                                }
                            }
                        } catch (Throwable th3) {
                            io.reactivex.exceptions.a.b(th3);
                            this.f66266e.cancel();
                            this.f66271j.a(th3);
                            this.f66274m.onError(this.f66271j.c());
                            return;
                        }
                    }
                    if (decrementAndGet() == 0) {
                        return;
                    }
                }
            }
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableConcatMap.BaseConcatMapSubscriber
        void e() {
            this.f66274m.onSubscribe(this);
        }

        @Override // l3.c
        public void onError(Throwable th) {
            if (this.f66271j.a(th)) {
                this.f66269h = true;
                d();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // l3.d
        public void request(long j4) {
            this.f66262a.request(j4);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class ConcatMapImmediate<T, R> extends BaseConcatMapSubscriber<T, R> {
        private static final long serialVersionUID = 7898995095634264146L;

        /* renamed from: m  reason: collision with root package name */
        final l3.c<? super R> f66276m;

        /* renamed from: n  reason: collision with root package name */
        final AtomicInteger f66277n;

        ConcatMapImmediate(l3.c<? super R> cVar, w2.o<? super T, ? extends l3.b<? extends R>> oVar, int i2) {
            super(oVar, i2);
            this.f66276m = cVar;
            this.f66277n = new AtomicInteger();
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableConcatMap.b
        public void a(Throwable th) {
            if (this.f66271j.a(th)) {
                this.f66266e.cancel();
                if (getAndIncrement() == 0) {
                    this.f66276m.onError(this.f66271j.c());
                    return;
                }
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableConcatMap.b
        public void c(R r3) {
            if (get() == 0 && compareAndSet(0, 1)) {
                this.f66276m.onNext(r3);
                if (compareAndSet(1, 0)) {
                    return;
                }
                this.f66276m.onError(this.f66271j.c());
            }
        }

        @Override // l3.d
        public void cancel() {
            if (this.f66270i) {
                return;
            }
            this.f66270i = true;
            this.f66262a.cancel();
            this.f66266e.cancel();
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableConcatMap.BaseConcatMapSubscriber
        void d() {
            if (this.f66277n.getAndIncrement() == 0) {
                while (!this.f66270i) {
                    if (!this.f66272k) {
                        boolean z3 = this.f66269h;
                        try {
                            T poll = this.f66268g.poll();
                            boolean z4 = poll == null;
                            if (z3 && z4) {
                                this.f66276m.onComplete();
                                return;
                            } else if (!z4) {
                                try {
                                    l3.b bVar = (l3.b) io.reactivex.internal.functions.a.g(this.f66263b.apply(poll), "The mapper returned a null Publisher");
                                    if (this.f66273l != 1) {
                                        int i2 = this.f66267f + 1;
                                        if (i2 == this.f66265d) {
                                            this.f66267f = 0;
                                            this.f66266e.request(i2);
                                        } else {
                                            this.f66267f = i2;
                                        }
                                    }
                                    if (bVar instanceof Callable) {
                                        try {
                                            Object call = ((Callable) bVar).call();
                                            if (call == null) {
                                                continue;
                                            } else if (this.f66262a.f()) {
                                                if (get() == 0 && compareAndSet(0, 1)) {
                                                    this.f66276m.onNext(call);
                                                    if (!compareAndSet(1, 0)) {
                                                        this.f66276m.onError(this.f66271j.c());
                                                        return;
                                                    }
                                                }
                                            } else {
                                                this.f66272k = true;
                                                ConcatMapInner<R> concatMapInner = this.f66262a;
                                                concatMapInner.h(new c(call, concatMapInner));
                                            }
                                        } catch (Throwable th) {
                                            io.reactivex.exceptions.a.b(th);
                                            this.f66266e.cancel();
                                            this.f66271j.a(th);
                                            this.f66276m.onError(this.f66271j.c());
                                            return;
                                        }
                                    } else {
                                        this.f66272k = true;
                                        bVar.c(this.f66262a);
                                    }
                                } catch (Throwable th2) {
                                    io.reactivex.exceptions.a.b(th2);
                                    this.f66266e.cancel();
                                    this.f66271j.a(th2);
                                    this.f66276m.onError(this.f66271j.c());
                                    return;
                                }
                            }
                        } catch (Throwable th3) {
                            io.reactivex.exceptions.a.b(th3);
                            this.f66266e.cancel();
                            this.f66271j.a(th3);
                            this.f66276m.onError(this.f66271j.c());
                            return;
                        }
                    }
                    if (this.f66277n.decrementAndGet() == 0) {
                        return;
                    }
                }
            }
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableConcatMap.BaseConcatMapSubscriber
        void e() {
            this.f66276m.onSubscribe(this);
        }

        @Override // l3.c
        public void onError(Throwable th) {
            if (this.f66271j.a(th)) {
                this.f66262a.cancel();
                if (getAndIncrement() == 0) {
                    this.f66276m.onError(this.f66271j.c());
                    return;
                }
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // l3.d
        public void request(long j4) {
            this.f66262a.request(j4);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class ConcatMapInner<R> extends SubscriptionArbiter implements io.reactivex.o<R> {
        private static final long serialVersionUID = 897683679971470653L;

        /* renamed from: h  reason: collision with root package name */
        final b<R> f66278h;

        /* renamed from: i  reason: collision with root package name */
        long f66279i;

        ConcatMapInner(b<R> bVar) {
            this.f66278h = bVar;
        }

        @Override // l3.c
        public void onComplete() {
            long j4 = this.f66279i;
            if (j4 != 0) {
                this.f66279i = 0L;
                g(j4);
            }
            this.f66278h.b();
        }

        @Override // l3.c
        public void onError(Throwable th) {
            long j4 = this.f66279i;
            if (j4 != 0) {
                this.f66279i = 0L;
                g(j4);
            }
            this.f66278h.a(th);
        }

        @Override // l3.c
        public void onNext(R r3) {
            this.f66279i++;
            this.f66278h.c(r3);
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            h(dVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f66280a;

        static {
            int[] iArr = new int[ErrorMode.values().length];
            f66280a = iArr;
            try {
                iArr[ErrorMode.BOUNDARY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f66280a[ErrorMode.END.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* loaded from: classes5.dex */
    interface b<T> {
        void a(Throwable th);

        void b();

        void c(T t3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class c<T> implements l3.d {

        /* renamed from: a  reason: collision with root package name */
        final l3.c<? super T> f66281a;

        /* renamed from: b  reason: collision with root package name */
        final T f66282b;

        /* renamed from: c  reason: collision with root package name */
        boolean f66283c;

        c(T t3, l3.c<? super T> cVar) {
            this.f66282b = t3;
            this.f66281a = cVar;
        }

        @Override // l3.d
        public void cancel() {
        }

        @Override // l3.d
        public void request(long j4) {
            if (j4 <= 0 || this.f66283c) {
                return;
            }
            this.f66283c = true;
            l3.c<? super T> cVar = this.f66281a;
            cVar.onNext((T) this.f66282b);
            cVar.onComplete();
        }
    }

    public FlowableConcatMap(io.reactivex.j<T> jVar, w2.o<? super T, ? extends l3.b<? extends R>> oVar, int i2, ErrorMode errorMode) {
        super(jVar);
        this.f66259c = oVar;
        this.f66260d = i2;
        this.f66261e = errorMode;
    }

    public static <T, R> l3.c<T> J8(l3.c<? super R> cVar, w2.o<? super T, ? extends l3.b<? extends R>> oVar, int i2, ErrorMode errorMode) {
        int i4 = a.f66280a[errorMode.ordinal()];
        if (i4 != 1) {
            if (i4 != 2) {
                return new ConcatMapImmediate(cVar, oVar, i2);
            }
            return new ConcatMapDelayed(cVar, oVar, i2, true);
        }
        return new ConcatMapDelayed(cVar, oVar, i2, false);
    }

    @Override // io.reactivex.j
    protected void h6(l3.c<? super R> cVar) {
        if (w0.b(this.f67288b, cVar, this.f66259c)) {
            return;
        }
        this.f67288b.c(J8(cVar, this.f66259c, this.f66260d, this.f66261e));
    }
}
