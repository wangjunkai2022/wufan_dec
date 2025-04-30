package io.reactivex.internal.operators.observable;

import io.reactivex.h0;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.queue.MpscLinkedQueue;
import io.reactivex.internal.util.NotificationLite;
import io.reactivex.subjects.UnicastSubject;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: ObservableWindowTimed.java */
/* loaded from: classes5.dex */
public final class x1<T> extends io.reactivex.internal.operators.observable.a<T, io.reactivex.z<T>> {

    /* renamed from: b  reason: collision with root package name */
    final long f69350b;

    /* renamed from: c  reason: collision with root package name */
    final long f69351c;

    /* renamed from: d  reason: collision with root package name */
    final TimeUnit f69352d;

    /* renamed from: e  reason: collision with root package name */
    final io.reactivex.h0 f69353e;

    /* renamed from: f  reason: collision with root package name */
    final long f69354f;

    /* renamed from: g  reason: collision with root package name */
    final int f69355g;

    /* renamed from: h  reason: collision with root package name */
    final boolean f69356h;

    /* compiled from: ObservableWindowTimed.java */
    /* loaded from: classes5.dex */
    static final class a<T> extends io.reactivex.internal.observers.k<T, Object, io.reactivex.z<T>> implements io.reactivex.disposables.b {
        final long K;

        /* renamed from: n0  reason: collision with root package name */
        final TimeUnit f69357n0;

        /* renamed from: o0  reason: collision with root package name */
        final io.reactivex.h0 f69358o0;

        /* renamed from: p0  reason: collision with root package name */
        final int f69359p0;

        /* renamed from: q0  reason: collision with root package name */
        final boolean f69360q0;

        /* renamed from: r0  reason: collision with root package name */
        final long f69361r0;

        /* renamed from: s0  reason: collision with root package name */
        final h0.c f69362s0;

        /* renamed from: t0  reason: collision with root package name */
        long f69363t0;

        /* renamed from: u0  reason: collision with root package name */
        long f69364u0;

        /* renamed from: v0  reason: collision with root package name */
        io.reactivex.disposables.b f69365v0;

        /* renamed from: w0  reason: collision with root package name */
        UnicastSubject<T> f69366w0;

        /* renamed from: x0  reason: collision with root package name */
        volatile boolean f69367x0;

        /* renamed from: y0  reason: collision with root package name */
        final AtomicReference<io.reactivex.disposables.b> f69368y0;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: ObservableWindowTimed.java */
        /* renamed from: io.reactivex.internal.operators.observable.x1$a$a  reason: collision with other inner class name */
        /* loaded from: classes5.dex */
        public static final class RunnableC0461a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final long f69369a;

            /* renamed from: b  reason: collision with root package name */
            final a<?> f69370b;

            RunnableC0461a(long j4, a<?> aVar) {
                this.f69369a = j4;
                this.f69370b = aVar;
            }

            @Override // java.lang.Runnable
            public void run() {
                a<?> aVar = this.f69370b;
                if (!((io.reactivex.internal.observers.k) aVar).H) {
                    ((io.reactivex.internal.observers.k) aVar).G.offer(this);
                } else {
                    aVar.f69367x0 = true;
                    aVar.k();
                }
                if (aVar.b()) {
                    aVar.l();
                }
            }
        }

        a(io.reactivex.g0<? super io.reactivex.z<T>> g0Var, long j4, TimeUnit timeUnit, io.reactivex.h0 h0Var, int i2, long j5, boolean z3) {
            super(g0Var, new MpscLinkedQueue());
            this.f69368y0 = new AtomicReference<>();
            this.K = j4;
            this.f69357n0 = timeUnit;
            this.f69358o0 = h0Var;
            this.f69359p0 = i2;
            this.f69361r0 = j5;
            this.f69360q0 = z3;
            if (z3) {
                this.f69362s0 = h0Var.c();
            } else {
                this.f69362s0 = null;
            }
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.H = true;
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.H;
        }

        void k() {
            DisposableHelper.dispose(this.f69368y0);
            h0.c cVar = this.f69362s0;
            if (cVar != null) {
                cVar.dispose();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        void l() {
            MpscLinkedQueue mpscLinkedQueue = (MpscLinkedQueue) this.G;
            io.reactivex.g0<? super V> g0Var = this.F;
            UnicastSubject<T> unicastSubject = this.f69366w0;
            int i2 = 1;
            while (!this.f69367x0) {
                boolean z3 = this.I;
                Object poll = mpscLinkedQueue.poll();
                boolean z4 = poll == null;
                boolean z5 = poll instanceof RunnableC0461a;
                if (z3 && (z4 || z5)) {
                    this.f69366w0 = null;
                    mpscLinkedQueue.clear();
                    k();
                    Throwable th = this.J;
                    if (th != null) {
                        unicastSubject.onError(th);
                        return;
                    } else {
                        unicastSubject.onComplete();
                        return;
                    }
                } else if (z4) {
                    i2 = a(-i2);
                    if (i2 == 0) {
                        return;
                    }
                } else if (z5) {
                    RunnableC0461a runnableC0461a = (RunnableC0461a) poll;
                    if (this.f69360q0 || this.f69364u0 == runnableC0461a.f69369a) {
                        unicastSubject.onComplete();
                        this.f69363t0 = 0L;
                        unicastSubject = (UnicastSubject<T>) UnicastSubject.l8(this.f69359p0);
                        this.f69366w0 = unicastSubject;
                        g0Var.onNext(unicastSubject);
                    }
                } else {
                    unicastSubject.onNext(NotificationLite.getValue(poll));
                    long j4 = this.f69363t0 + 1;
                    if (j4 >= this.f69361r0) {
                        this.f69364u0++;
                        this.f69363t0 = 0L;
                        unicastSubject.onComplete();
                        unicastSubject = (UnicastSubject<T>) UnicastSubject.l8(this.f69359p0);
                        this.f69366w0 = unicastSubject;
                        this.F.onNext(unicastSubject);
                        if (this.f69360q0) {
                            io.reactivex.disposables.b bVar = this.f69368y0.get();
                            bVar.dispose();
                            h0.c cVar = this.f69362s0;
                            RunnableC0461a runnableC0461a2 = new RunnableC0461a(this.f69364u0, this);
                            long j5 = this.K;
                            io.reactivex.disposables.b d4 = cVar.d(runnableC0461a2, j5, j5, this.f69357n0);
                            if (!this.f69368y0.compareAndSet(bVar, d4)) {
                                d4.dispose();
                            }
                        }
                    } else {
                        this.f69363t0 = j4;
                    }
                }
            }
            this.f69365v0.dispose();
            mpscLinkedQueue.clear();
            k();
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            this.I = true;
            if (b()) {
                l();
            }
            this.F.onComplete();
            k();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            this.J = th;
            this.I = true;
            if (b()) {
                l();
            }
            this.F.onError(th);
            k();
        }

        @Override // io.reactivex.g0
        public void onNext(T t3) {
            if (this.f69367x0) {
                return;
            }
            if (d()) {
                UnicastSubject<T> unicastSubject = this.f69366w0;
                unicastSubject.onNext(t3);
                long j4 = this.f69363t0 + 1;
                if (j4 >= this.f69361r0) {
                    this.f69364u0++;
                    this.f69363t0 = 0L;
                    unicastSubject.onComplete();
                    UnicastSubject<T> l8 = UnicastSubject.l8(this.f69359p0);
                    this.f69366w0 = l8;
                    this.F.onNext(l8);
                    if (this.f69360q0) {
                        this.f69368y0.get().dispose();
                        h0.c cVar = this.f69362s0;
                        RunnableC0461a runnableC0461a = new RunnableC0461a(this.f69364u0, this);
                        long j5 = this.K;
                        DisposableHelper.replace(this.f69368y0, cVar.d(runnableC0461a, j5, j5, this.f69357n0));
                    }
                } else {
                    this.f69363t0 = j4;
                }
                if (a(-1) == 0) {
                    return;
                }
            } else {
                this.G.offer(NotificationLite.next(t3));
                if (!b()) {
                    return;
                }
            }
            l();
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            io.reactivex.disposables.b g4;
            if (DisposableHelper.validate(this.f69365v0, bVar)) {
                this.f69365v0 = bVar;
                io.reactivex.g0<? super V> g0Var = this.F;
                g0Var.onSubscribe(this);
                if (this.H) {
                    return;
                }
                UnicastSubject<T> l8 = UnicastSubject.l8(this.f69359p0);
                this.f69366w0 = l8;
                g0Var.onNext(l8);
                RunnableC0461a runnableC0461a = new RunnableC0461a(this.f69364u0, this);
                if (this.f69360q0) {
                    h0.c cVar = this.f69362s0;
                    long j4 = this.K;
                    g4 = cVar.d(runnableC0461a, j4, j4, this.f69357n0);
                } else {
                    io.reactivex.h0 h0Var = this.f69358o0;
                    long j5 = this.K;
                    g4 = h0Var.g(runnableC0461a, j5, j5, this.f69357n0);
                }
                DisposableHelper.replace(this.f69368y0, g4);
            }
        }
    }

    /* compiled from: ObservableWindowTimed.java */
    /* loaded from: classes5.dex */
    static final class b<T> extends io.reactivex.internal.observers.k<T, Object, io.reactivex.z<T>> implements io.reactivex.g0<T>, io.reactivex.disposables.b, Runnable {

        /* renamed from: u0  reason: collision with root package name */
        static final Object f69371u0 = new Object();
        final long K;

        /* renamed from: n0  reason: collision with root package name */
        final TimeUnit f69372n0;

        /* renamed from: o0  reason: collision with root package name */
        final io.reactivex.h0 f69373o0;

        /* renamed from: p0  reason: collision with root package name */
        final int f69374p0;

        /* renamed from: q0  reason: collision with root package name */
        io.reactivex.disposables.b f69375q0;

        /* renamed from: r0  reason: collision with root package name */
        UnicastSubject<T> f69376r0;

        /* renamed from: s0  reason: collision with root package name */
        final AtomicReference<io.reactivex.disposables.b> f69377s0;

        /* renamed from: t0  reason: collision with root package name */
        volatile boolean f69378t0;

        b(io.reactivex.g0<? super io.reactivex.z<T>> g0Var, long j4, TimeUnit timeUnit, io.reactivex.h0 h0Var, int i2) {
            super(g0Var, new MpscLinkedQueue());
            this.f69377s0 = new AtomicReference<>();
            this.K = j4;
            this.f69372n0 = timeUnit;
            this.f69373o0 = h0Var;
            this.f69374p0 = i2;
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.H = true;
        }

        void i() {
            DisposableHelper.dispose(this.f69377s0);
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.H;
        }

        /* JADX WARN: Code restructure failed: missing block: B:10:0x0026, code lost:
            r2.onError(r0);
         */
        /* JADX WARN: Code restructure failed: missing block: B:11:0x002a, code lost:
            r2.onComplete();
         */
        /* JADX WARN: Code restructure failed: missing block: B:12:0x002d, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:38:?, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:8:0x0019, code lost:
            r7.f69376r0 = null;
            r0.clear();
            i();
            r0 = r7.J;
         */
        /* JADX WARN: Code restructure failed: missing block: B:9:0x0024, code lost:
            if (r0 == null) goto L13;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        void j() {
            /*
                r7 = this;
                x2.n<U> r0 = r7.G
                io.reactivex.internal.queue.MpscLinkedQueue r0 = (io.reactivex.internal.queue.MpscLinkedQueue) r0
                io.reactivex.g0<? super V> r1 = r7.F
                io.reactivex.subjects.UnicastSubject<T> r2 = r7.f69376r0
                r3 = 1
            L9:
                boolean r4 = r7.f69378t0
                boolean r5 = r7.I
                java.lang.Object r6 = r0.poll()
                if (r5 == 0) goto L2e
                if (r6 == 0) goto L19
                java.lang.Object r5 = io.reactivex.internal.operators.observable.x1.b.f69371u0
                if (r6 != r5) goto L2e
            L19:
                r1 = 0
                r7.f69376r0 = r1
                r0.clear()
                r7.i()
                java.lang.Throwable r0 = r7.J
                if (r0 == 0) goto L2a
                r2.onError(r0)
                goto L2d
            L2a:
                r2.onComplete()
            L2d:
                return
            L2e:
                if (r6 != 0) goto L38
                int r3 = -r3
                int r3 = r7.a(r3)
                if (r3 != 0) goto L9
                return
            L38:
                java.lang.Object r5 = io.reactivex.internal.operators.observable.x1.b.f69371u0
                if (r6 != r5) goto L53
                r2.onComplete()
                if (r4 != 0) goto L4d
                int r2 = r7.f69374p0
                io.reactivex.subjects.UnicastSubject r2 = io.reactivex.subjects.UnicastSubject.l8(r2)
                r7.f69376r0 = r2
                r1.onNext(r2)
                goto L9
            L4d:
                io.reactivex.disposables.b r4 = r7.f69375q0
                r4.dispose()
                goto L9
            L53:
                java.lang.Object r4 = io.reactivex.internal.util.NotificationLite.getValue(r6)
                r2.onNext(r4)
                goto L9
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.observable.x1.b.j():void");
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            this.I = true;
            if (b()) {
                j();
            }
            i();
            this.F.onComplete();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            this.J = th;
            this.I = true;
            if (b()) {
                j();
            }
            i();
            this.F.onError(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t3) {
            if (this.f69378t0) {
                return;
            }
            if (d()) {
                this.f69376r0.onNext(t3);
                if (a(-1) == 0) {
                    return;
                }
            } else {
                this.G.offer(NotificationLite.next(t3));
                if (!b()) {
                    return;
                }
            }
            j();
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.validate(this.f69375q0, bVar)) {
                this.f69375q0 = bVar;
                this.f69376r0 = UnicastSubject.l8(this.f69374p0);
                io.reactivex.g0<? super V> g0Var = this.F;
                g0Var.onSubscribe(this);
                g0Var.onNext(this.f69376r0);
                if (this.H) {
                    return;
                }
                io.reactivex.h0 h0Var = this.f69373o0;
                long j4 = this.K;
                DisposableHelper.replace(this.f69377s0, h0Var.g(this, j4, j4, this.f69372n0));
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.H) {
                this.f69378t0 = true;
                i();
            }
            this.G.offer(f69371u0);
            if (b()) {
                j();
            }
        }
    }

    /* compiled from: ObservableWindowTimed.java */
    /* loaded from: classes5.dex */
    static final class c<T> extends io.reactivex.internal.observers.k<T, Object, io.reactivex.z<T>> implements io.reactivex.disposables.b, Runnable {
        final long K;

        /* renamed from: n0  reason: collision with root package name */
        final long f69379n0;

        /* renamed from: o0  reason: collision with root package name */
        final TimeUnit f69380o0;

        /* renamed from: p0  reason: collision with root package name */
        final h0.c f69381p0;

        /* renamed from: q0  reason: collision with root package name */
        final int f69382q0;

        /* renamed from: r0  reason: collision with root package name */
        final List<UnicastSubject<T>> f69383r0;

        /* renamed from: s0  reason: collision with root package name */
        io.reactivex.disposables.b f69384s0;

        /* renamed from: t0  reason: collision with root package name */
        volatile boolean f69385t0;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: ObservableWindowTimed.java */
        /* loaded from: classes5.dex */
        public final class a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            private final UnicastSubject<T> f69386a;

            a(UnicastSubject<T> unicastSubject) {
                this.f69386a = unicastSubject;
            }

            @Override // java.lang.Runnable
            public void run() {
                c.this.i(this.f69386a);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: ObservableWindowTimed.java */
        /* loaded from: classes5.dex */
        public static final class b<T> {

            /* renamed from: a  reason: collision with root package name */
            final UnicastSubject<T> f69388a;

            /* renamed from: b  reason: collision with root package name */
            final boolean f69389b;

            b(UnicastSubject<T> unicastSubject, boolean z3) {
                this.f69388a = unicastSubject;
                this.f69389b = z3;
            }
        }

        c(io.reactivex.g0<? super io.reactivex.z<T>> g0Var, long j4, long j5, TimeUnit timeUnit, h0.c cVar, int i2) {
            super(g0Var, new MpscLinkedQueue());
            this.K = j4;
            this.f69379n0 = j5;
            this.f69380o0 = timeUnit;
            this.f69381p0 = cVar;
            this.f69382q0 = i2;
            this.f69383r0 = new LinkedList();
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.H = true;
        }

        void i(UnicastSubject<T> unicastSubject) {
            this.G.offer(new b(unicastSubject, false));
            if (b()) {
                k();
            }
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.H;
        }

        void j() {
            this.f69381p0.dispose();
        }

        void k() {
            MpscLinkedQueue mpscLinkedQueue = (MpscLinkedQueue) this.G;
            io.reactivex.g0<? super V> g0Var = this.F;
            List<UnicastSubject<T>> list = this.f69383r0;
            int i2 = 1;
            while (!this.f69385t0) {
                boolean z3 = this.I;
                T t3 = (T) mpscLinkedQueue.poll();
                boolean z4 = t3 == null;
                boolean z5 = t3 instanceof b;
                if (z3 && (z4 || z5)) {
                    mpscLinkedQueue.clear();
                    Throwable th = this.J;
                    if (th != null) {
                        for (UnicastSubject<T> unicastSubject : list) {
                            unicastSubject.onError(th);
                        }
                    } else {
                        for (UnicastSubject<T> unicastSubject2 : list) {
                            unicastSubject2.onComplete();
                        }
                    }
                    j();
                    list.clear();
                    return;
                } else if (z4) {
                    i2 = a(-i2);
                    if (i2 == 0) {
                        return;
                    }
                } else if (z5) {
                    b bVar = (b) t3;
                    if (bVar.f69389b) {
                        if (!this.H) {
                            UnicastSubject<T> l8 = UnicastSubject.l8(this.f69382q0);
                            list.add(l8);
                            g0Var.onNext(l8);
                            this.f69381p0.c(new a(l8), this.K, this.f69380o0);
                        }
                    } else {
                        list.remove(bVar.f69388a);
                        bVar.f69388a.onComplete();
                        if (list.isEmpty() && this.H) {
                            this.f69385t0 = true;
                        }
                    }
                } else {
                    for (UnicastSubject<T> unicastSubject3 : list) {
                        unicastSubject3.onNext(t3);
                    }
                }
            }
            this.f69384s0.dispose();
            j();
            mpscLinkedQueue.clear();
            list.clear();
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            this.I = true;
            if (b()) {
                k();
            }
            this.F.onComplete();
            j();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            this.J = th;
            this.I = true;
            if (b()) {
                k();
            }
            this.F.onError(th);
            j();
        }

        @Override // io.reactivex.g0
        public void onNext(T t3) {
            if (d()) {
                for (UnicastSubject<T> unicastSubject : this.f69383r0) {
                    unicastSubject.onNext(t3);
                }
                if (a(-1) == 0) {
                    return;
                }
            } else {
                this.G.offer(t3);
                if (!b()) {
                    return;
                }
            }
            k();
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.validate(this.f69384s0, bVar)) {
                this.f69384s0 = bVar;
                this.F.onSubscribe(this);
                if (this.H) {
                    return;
                }
                UnicastSubject<T> l8 = UnicastSubject.l8(this.f69382q0);
                this.f69383r0.add(l8);
                this.F.onNext(l8);
                this.f69381p0.c(new a(l8), this.K, this.f69380o0);
                h0.c cVar = this.f69381p0;
                long j4 = this.f69379n0;
                cVar.d(this, j4, j4, this.f69380o0);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            b bVar = new b(UnicastSubject.l8(this.f69382q0), true);
            if (!this.H) {
                this.G.offer(bVar);
            }
            if (b()) {
                k();
            }
        }
    }

    public x1(io.reactivex.e0<T> e0Var, long j4, long j5, TimeUnit timeUnit, io.reactivex.h0 h0Var, long j6, int i2, boolean z3) {
        super(e0Var);
        this.f69350b = j4;
        this.f69351c = j5;
        this.f69352d = timeUnit;
        this.f69353e = h0Var;
        this.f69354f = j6;
        this.f69355g = i2;
        this.f69356h = z3;
    }

    @Override // io.reactivex.z
    public void F5(io.reactivex.g0<? super io.reactivex.z<T>> g0Var) {
        io.reactivex.observers.l lVar = new io.reactivex.observers.l(g0Var);
        long j4 = this.f69350b;
        long j5 = this.f69351c;
        if (j4 == j5) {
            long j6 = this.f69354f;
            if (j6 == Long.MAX_VALUE) {
                this.f68961a.a(new b(lVar, this.f69350b, this.f69352d, this.f69353e, this.f69355g));
                return;
            } else {
                this.f68961a.a(new a(lVar, j4, this.f69352d, this.f69353e, this.f69355g, j6, this.f69356h));
                return;
            }
        }
        this.f68961a.a(new c(lVar, j4, j5, this.f69352d, this.f69353e.c(), this.f69355g));
    }
}
