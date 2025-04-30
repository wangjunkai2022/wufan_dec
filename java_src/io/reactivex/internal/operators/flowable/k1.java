package io.reactivex.internal.operators.flowable;

import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.h0;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.SequentialDisposable;
import io.reactivex.internal.queue.MpscLinkedQueue;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.NotificationLite;
import io.reactivex.processors.UnicastProcessor;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.TimeUnit;
/* compiled from: FlowableWindowTimed.java */
/* loaded from: classes5.dex */
public final class k1<T> extends io.reactivex.internal.operators.flowable.a<T, io.reactivex.j<T>> {

    /* renamed from: c  reason: collision with root package name */
    final long f67425c;

    /* renamed from: d  reason: collision with root package name */
    final long f67426d;

    /* renamed from: e  reason: collision with root package name */
    final TimeUnit f67427e;

    /* renamed from: f  reason: collision with root package name */
    final io.reactivex.h0 f67428f;

    /* renamed from: g  reason: collision with root package name */
    final long f67429g;

    /* renamed from: h  reason: collision with root package name */
    final int f67430h;

    /* renamed from: i  reason: collision with root package name */
    final boolean f67431i;

    /* compiled from: FlowableWindowTimed.java */
    /* loaded from: classes5.dex */
    static final class a<T> extends io.reactivex.internal.subscribers.h<T, Object, io.reactivex.j<T>> implements l3.d {
        final long C0;
        final TimeUnit D0;
        final io.reactivex.h0 E0;
        final int F0;
        final boolean G0;
        final long H0;
        final h0.c I0;
        long J0;
        long K0;
        l3.d L0;
        UnicastProcessor<T> M0;
        volatile boolean N0;
        final SequentialDisposable O0;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: FlowableWindowTimed.java */
        /* renamed from: io.reactivex.internal.operators.flowable.k1$a$a  reason: collision with other inner class name */
        /* loaded from: classes5.dex */
        public static final class RunnableC0454a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final long f67432a;

            /* renamed from: b  reason: collision with root package name */
            final a<?> f67433b;

            RunnableC0454a(long j4, a<?> aVar) {
                this.f67432a = j4;
                this.f67433b = aVar;
            }

            @Override // java.lang.Runnable
            public void run() {
                a<?> aVar = this.f67433b;
                if (!((io.reactivex.internal.subscribers.h) aVar).f70023z0) {
                    ((io.reactivex.internal.subscribers.h) aVar).f70022y0.offer(this);
                } else {
                    aVar.N0 = true;
                    aVar.dispose();
                }
                if (aVar.b()) {
                    aVar.n();
                }
            }
        }

        a(l3.c<? super io.reactivex.j<T>> cVar, long j4, TimeUnit timeUnit, io.reactivex.h0 h0Var, int i2, long j5, boolean z3) {
            super(cVar, new MpscLinkedQueue());
            this.O0 = new SequentialDisposable();
            this.C0 = j4;
            this.D0 = timeUnit;
            this.E0 = h0Var;
            this.F0 = i2;
            this.H0 = j5;
            this.G0 = z3;
            if (z3) {
                this.I0 = h0Var.c();
            } else {
                this.I0 = null;
            }
        }

        @Override // l3.d
        public void cancel() {
            this.f70023z0 = true;
        }

        public void dispose() {
            DisposableHelper.dispose(this.O0);
            h0.c cVar = this.I0;
            if (cVar != null) {
                cVar.dispose();
            }
        }

        void n() {
            x2.o oVar = this.f70022y0;
            l3.c<? super V> cVar = this.f70021x0;
            UnicastProcessor<T> unicastProcessor = this.M0;
            int i2 = 1;
            while (!this.N0) {
                boolean z3 = this.A0;
                Object poll = oVar.poll();
                boolean z4 = poll == null;
                boolean z5 = poll instanceof RunnableC0454a;
                if (z3 && (z4 || z5)) {
                    this.M0 = null;
                    oVar.clear();
                    Throwable th = this.B0;
                    if (th != null) {
                        unicastProcessor.onError(th);
                    } else {
                        unicastProcessor.onComplete();
                    }
                    dispose();
                    return;
                } else if (z4) {
                    i2 = a(-i2);
                    if (i2 == 0) {
                        return;
                    }
                } else {
                    int i4 = i2;
                    if (z5) {
                        RunnableC0454a runnableC0454a = (RunnableC0454a) poll;
                        if (this.G0 || this.K0 == runnableC0454a.f67432a) {
                            unicastProcessor.onComplete();
                            this.J0 = 0L;
                            unicastProcessor = UnicastProcessor.Q8(this.F0);
                            this.M0 = unicastProcessor;
                            long d4 = d();
                            if (d4 != 0) {
                                cVar.onNext(unicastProcessor);
                                if (d4 != Long.MAX_VALUE) {
                                    g(1L);
                                }
                            } else {
                                this.M0 = null;
                                this.f70022y0.clear();
                                this.L0.cancel();
                                cVar.onError(new MissingBackpressureException("Could not deliver first window due to lack of requests."));
                                dispose();
                                return;
                            }
                        }
                    } else {
                        unicastProcessor.onNext(NotificationLite.getValue(poll));
                        long j4 = this.J0 + 1;
                        if (j4 >= this.H0) {
                            this.K0++;
                            this.J0 = 0L;
                            unicastProcessor.onComplete();
                            long d5 = d();
                            if (d5 != 0) {
                                UnicastProcessor<T> Q8 = UnicastProcessor.Q8(this.F0);
                                this.M0 = Q8;
                                this.f70021x0.onNext(Q8);
                                if (d5 != Long.MAX_VALUE) {
                                    g(1L);
                                }
                                if (this.G0) {
                                    this.O0.get().dispose();
                                    h0.c cVar2 = this.I0;
                                    RunnableC0454a runnableC0454a2 = new RunnableC0454a(this.K0, this);
                                    long j5 = this.C0;
                                    this.O0.a(cVar2.d(runnableC0454a2, j5, j5, this.D0));
                                }
                                unicastProcessor = Q8;
                            } else {
                                this.M0 = null;
                                this.L0.cancel();
                                this.f70021x0.onError(new MissingBackpressureException("Could not deliver window due to lack of requests"));
                                dispose();
                                return;
                            }
                        } else {
                            this.J0 = j4;
                        }
                    }
                    i2 = i4;
                }
            }
            this.L0.cancel();
            oVar.clear();
            dispose();
        }

        @Override // l3.c
        public void onComplete() {
            this.A0 = true;
            if (b()) {
                n();
            }
            this.f70021x0.onComplete();
            dispose();
        }

        @Override // l3.c
        public void onError(Throwable th) {
            this.B0 = th;
            this.A0 = true;
            if (b()) {
                n();
            }
            this.f70021x0.onError(th);
            dispose();
        }

        @Override // l3.c
        public void onNext(T t3) {
            if (this.N0) {
                return;
            }
            if (h()) {
                UnicastProcessor<T> unicastProcessor = this.M0;
                unicastProcessor.onNext(t3);
                long j4 = this.J0 + 1;
                if (j4 >= this.H0) {
                    this.K0++;
                    this.J0 = 0L;
                    unicastProcessor.onComplete();
                    long d4 = d();
                    if (d4 != 0) {
                        UnicastProcessor<T> Q8 = UnicastProcessor.Q8(this.F0);
                        this.M0 = Q8;
                        this.f70021x0.onNext(Q8);
                        if (d4 != Long.MAX_VALUE) {
                            g(1L);
                        }
                        if (this.G0) {
                            this.O0.get().dispose();
                            h0.c cVar = this.I0;
                            RunnableC0454a runnableC0454a = new RunnableC0454a(this.K0, this);
                            long j5 = this.C0;
                            this.O0.a(cVar.d(runnableC0454a, j5, j5, this.D0));
                        }
                    } else {
                        this.M0 = null;
                        this.L0.cancel();
                        this.f70021x0.onError(new MissingBackpressureException("Could not deliver window due to lack of requests"));
                        dispose();
                        return;
                    }
                } else {
                    this.J0 = j4;
                }
                if (a(-1) == 0) {
                    return;
                }
            } else {
                this.f70022y0.offer(NotificationLite.next(t3));
                if (!b()) {
                    return;
                }
            }
            n();
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            io.reactivex.disposables.b g4;
            if (SubscriptionHelper.validate(this.L0, dVar)) {
                this.L0 = dVar;
                l3.c<? super V> cVar = this.f70021x0;
                cVar.onSubscribe(this);
                if (this.f70023z0) {
                    return;
                }
                UnicastProcessor<T> Q8 = UnicastProcessor.Q8(this.F0);
                this.M0 = Q8;
                long d4 = d();
                if (d4 != 0) {
                    cVar.onNext(Q8);
                    if (d4 != Long.MAX_VALUE) {
                        g(1L);
                    }
                    RunnableC0454a runnableC0454a = new RunnableC0454a(this.K0, this);
                    if (this.G0) {
                        h0.c cVar2 = this.I0;
                        long j4 = this.C0;
                        g4 = cVar2.d(runnableC0454a, j4, j4, this.D0);
                    } else {
                        io.reactivex.h0 h0Var = this.E0;
                        long j5 = this.C0;
                        g4 = h0Var.g(runnableC0454a, j5, j5, this.D0);
                    }
                    if (this.O0.a(g4)) {
                        dVar.request(Long.MAX_VALUE);
                        return;
                    }
                    return;
                }
                this.f70023z0 = true;
                dVar.cancel();
                cVar.onError(new MissingBackpressureException("Could not deliver initial window due to lack of requests."));
            }
        }

        @Override // l3.d
        public void request(long j4) {
            k(j4);
        }
    }

    /* compiled from: FlowableWindowTimed.java */
    /* loaded from: classes5.dex */
    static final class b<T> extends io.reactivex.internal.subscribers.h<T, Object, io.reactivex.j<T>> implements io.reactivex.o<T>, l3.d, Runnable {
        static final Object K0 = new Object();
        final long C0;
        final TimeUnit D0;
        final io.reactivex.h0 E0;
        final int F0;
        l3.d G0;
        UnicastProcessor<T> H0;
        final SequentialDisposable I0;
        volatile boolean J0;

        b(l3.c<? super io.reactivex.j<T>> cVar, long j4, TimeUnit timeUnit, io.reactivex.h0 h0Var, int i2) {
            super(cVar, new MpscLinkedQueue());
            this.I0 = new SequentialDisposable();
            this.C0 = j4;
            this.D0 = timeUnit;
            this.E0 = h0Var;
            this.F0 = i2;
        }

        @Override // l3.d
        public void cancel() {
            this.f70023z0 = true;
        }

        public void dispose() {
            DisposableHelper.dispose(this.I0);
        }

        /* JADX WARN: Code restructure failed: missing block: B:10:0x0024, code lost:
            r2.onError(r0);
         */
        /* JADX WARN: Code restructure failed: missing block: B:11:0x0028, code lost:
            r2.onComplete();
         */
        /* JADX WARN: Code restructure failed: missing block: B:12:0x002b, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:47:?, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:8:0x0018, code lost:
            r10.H0 = null;
            r0.clear();
            dispose();
            r0 = r10.B0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:9:0x0022, code lost:
            if (r0 == null) goto L13;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        void l() {
            /*
                r10 = this;
                x2.n<U> r0 = r10.f70022y0
                l3.c<? super V> r1 = r10.f70021x0
                io.reactivex.processors.UnicastProcessor<T> r2 = r10.H0
                r3 = 1
            L7:
                boolean r4 = r10.J0
                boolean r5 = r10.A0
                java.lang.Object r6 = r0.poll()
                r7 = 0
                if (r5 == 0) goto L2c
                if (r6 == 0) goto L18
                java.lang.Object r5 = io.reactivex.internal.operators.flowable.k1.b.K0
                if (r6 != r5) goto L2c
            L18:
                r10.H0 = r7
                r0.clear()
                r10.dispose()
                java.lang.Throwable r0 = r10.B0
                if (r0 == 0) goto L28
                r2.onError(r0)
                goto L2b
            L28:
                r2.onComplete()
            L2b:
                return
            L2c:
                if (r6 != 0) goto L36
                int r3 = -r3
                int r3 = r10.a(r3)
                if (r3 != 0) goto L7
                return
            L36:
                java.lang.Object r5 = io.reactivex.internal.operators.flowable.k1.b.K0
                if (r6 != r5) goto L83
                r2.onComplete()
                if (r4 != 0) goto L7d
                int r2 = r10.F0
                io.reactivex.processors.UnicastProcessor r2 = io.reactivex.processors.UnicastProcessor.Q8(r2)
                r10.H0 = r2
                long r4 = r10.d()
                r8 = 0
                int r6 = (r4 > r8 ? 1 : (r4 == r8 ? 0 : -1))
                if (r6 == 0) goto L63
                r1.onNext(r2)
                r6 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
                int r8 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
                if (r8 == 0) goto L7
                r4 = 1
                r10.g(r4)
                goto L7
            L63:
                r10.H0 = r7
                x2.n<U> r0 = r10.f70022y0
                r0.clear()
                l3.d r0 = r10.G0
                r0.cancel()
                r10.dispose()
                io.reactivex.exceptions.MissingBackpressureException r0 = new io.reactivex.exceptions.MissingBackpressureException
                java.lang.String r2 = "Could not deliver first window due to lack of requests."
                r0.<init>(r2)
                r1.onError(r0)
                return
            L7d:
                l3.d r4 = r10.G0
                r4.cancel()
                goto L7
            L83:
                java.lang.Object r4 = io.reactivex.internal.util.NotificationLite.getValue(r6)
                r2.onNext(r4)
                goto L7
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.flowable.k1.b.l():void");
        }

        @Override // l3.c
        public void onComplete() {
            this.A0 = true;
            if (b()) {
                l();
            }
            this.f70021x0.onComplete();
            dispose();
        }

        @Override // l3.c
        public void onError(Throwable th) {
            this.B0 = th;
            this.A0 = true;
            if (b()) {
                l();
            }
            this.f70021x0.onError(th);
            dispose();
        }

        @Override // l3.c
        public void onNext(T t3) {
            if (this.J0) {
                return;
            }
            if (h()) {
                this.H0.onNext(t3);
                if (a(-1) == 0) {
                    return;
                }
            } else {
                this.f70022y0.offer(NotificationLite.next(t3));
                if (!b()) {
                    return;
                }
            }
            l();
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            if (SubscriptionHelper.validate(this.G0, dVar)) {
                this.G0 = dVar;
                this.H0 = UnicastProcessor.Q8(this.F0);
                l3.c<? super V> cVar = this.f70021x0;
                cVar.onSubscribe(this);
                long d4 = d();
                if (d4 != 0) {
                    cVar.onNext(this.H0);
                    if (d4 != Long.MAX_VALUE) {
                        g(1L);
                    }
                    if (this.f70023z0) {
                        return;
                    }
                    SequentialDisposable sequentialDisposable = this.I0;
                    io.reactivex.h0 h0Var = this.E0;
                    long j4 = this.C0;
                    if (sequentialDisposable.a(h0Var.g(this, j4, j4, this.D0))) {
                        dVar.request(Long.MAX_VALUE);
                        return;
                    }
                    return;
                }
                this.f70023z0 = true;
                dVar.cancel();
                cVar.onError(new MissingBackpressureException("Could not deliver first window due to lack of requests."));
            }
        }

        @Override // l3.d
        public void request(long j4) {
            k(j4);
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f70023z0) {
                this.J0 = true;
                dispose();
            }
            this.f70022y0.offer(K0);
            if (b()) {
                l();
            }
        }
    }

    /* compiled from: FlowableWindowTimed.java */
    /* loaded from: classes5.dex */
    static final class c<T> extends io.reactivex.internal.subscribers.h<T, Object, io.reactivex.j<T>> implements l3.d, Runnable {
        final long C0;
        final long D0;
        final TimeUnit E0;
        final h0.c F0;
        final int G0;
        final List<UnicastProcessor<T>> H0;
        l3.d I0;
        volatile boolean J0;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: FlowableWindowTimed.java */
        /* loaded from: classes5.dex */
        public final class a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            private final UnicastProcessor<T> f67434a;

            a(UnicastProcessor<T> unicastProcessor) {
                this.f67434a = unicastProcessor;
            }

            @Override // java.lang.Runnable
            public void run() {
                c.this.l(this.f67434a);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: FlowableWindowTimed.java */
        /* loaded from: classes5.dex */
        public static final class b<T> {

            /* renamed from: a  reason: collision with root package name */
            final UnicastProcessor<T> f67436a;

            /* renamed from: b  reason: collision with root package name */
            final boolean f67437b;

            b(UnicastProcessor<T> unicastProcessor, boolean z3) {
                this.f67436a = unicastProcessor;
                this.f67437b = z3;
            }
        }

        c(l3.c<? super io.reactivex.j<T>> cVar, long j4, long j5, TimeUnit timeUnit, h0.c cVar2, int i2) {
            super(cVar, new MpscLinkedQueue());
            this.C0 = j4;
            this.D0 = j5;
            this.E0 = timeUnit;
            this.F0 = cVar2;
            this.G0 = i2;
            this.H0 = new LinkedList();
        }

        @Override // l3.d
        public void cancel() {
            this.f70023z0 = true;
        }

        public void dispose() {
            this.F0.dispose();
        }

        void l(UnicastProcessor<T> unicastProcessor) {
            this.f70022y0.offer(new b(unicastProcessor, false));
            if (b()) {
                m();
            }
        }

        void m() {
            x2.o oVar = this.f70022y0;
            l3.c<? super V> cVar = this.f70021x0;
            List<UnicastProcessor<T>> list = this.H0;
            int i2 = 1;
            while (!this.J0) {
                boolean z3 = this.A0;
                T t3 = (T) oVar.poll();
                boolean z4 = t3 == null;
                boolean z5 = t3 instanceof b;
                if (z3 && (z4 || z5)) {
                    oVar.clear();
                    Throwable th = this.B0;
                    if (th != null) {
                        for (UnicastProcessor<T> unicastProcessor : list) {
                            unicastProcessor.onError(th);
                        }
                    } else {
                        for (UnicastProcessor<T> unicastProcessor2 : list) {
                            unicastProcessor2.onComplete();
                        }
                    }
                    list.clear();
                    dispose();
                    return;
                } else if (z4) {
                    i2 = a(-i2);
                    if (i2 == 0) {
                        return;
                    }
                } else if (z5) {
                    b bVar = (b) t3;
                    if (bVar.f67437b) {
                        if (!this.f70023z0) {
                            long d4 = d();
                            if (d4 != 0) {
                                UnicastProcessor<T> Q8 = UnicastProcessor.Q8(this.G0);
                                list.add(Q8);
                                cVar.onNext(Q8);
                                if (d4 != Long.MAX_VALUE) {
                                    g(1L);
                                }
                                this.F0.c(new a(Q8), this.C0, this.E0);
                            } else {
                                cVar.onError(new MissingBackpressureException("Can't emit window due to lack of requests"));
                            }
                        }
                    } else {
                        list.remove(bVar.f67436a);
                        bVar.f67436a.onComplete();
                        if (list.isEmpty() && this.f70023z0) {
                            this.J0 = true;
                        }
                    }
                } else {
                    for (UnicastProcessor<T> unicastProcessor3 : list) {
                        unicastProcessor3.onNext(t3);
                    }
                }
            }
            this.I0.cancel();
            dispose();
            oVar.clear();
            list.clear();
        }

        @Override // l3.c
        public void onComplete() {
            this.A0 = true;
            if (b()) {
                m();
            }
            this.f70021x0.onComplete();
            dispose();
        }

        @Override // l3.c
        public void onError(Throwable th) {
            this.B0 = th;
            this.A0 = true;
            if (b()) {
                m();
            }
            this.f70021x0.onError(th);
            dispose();
        }

        @Override // l3.c
        public void onNext(T t3) {
            if (h()) {
                for (UnicastProcessor<T> unicastProcessor : this.H0) {
                    unicastProcessor.onNext(t3);
                }
                if (a(-1) == 0) {
                    return;
                }
            } else {
                this.f70022y0.offer(t3);
                if (!b()) {
                    return;
                }
            }
            m();
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            if (SubscriptionHelper.validate(this.I0, dVar)) {
                this.I0 = dVar;
                this.f70021x0.onSubscribe(this);
                if (this.f70023z0) {
                    return;
                }
                long d4 = d();
                if (d4 != 0) {
                    UnicastProcessor<T> Q8 = UnicastProcessor.Q8(this.G0);
                    this.H0.add(Q8);
                    this.f70021x0.onNext(Q8);
                    if (d4 != Long.MAX_VALUE) {
                        g(1L);
                    }
                    this.F0.c(new a(Q8), this.C0, this.E0);
                    h0.c cVar = this.F0;
                    long j4 = this.D0;
                    cVar.d(this, j4, j4, this.E0);
                    dVar.request(Long.MAX_VALUE);
                    return;
                }
                dVar.cancel();
                this.f70021x0.onError(new MissingBackpressureException("Could not emit the first window due to lack of requests"));
            }
        }

        @Override // l3.d
        public void request(long j4) {
            k(j4);
        }

        @Override // java.lang.Runnable
        public void run() {
            b bVar = new b(UnicastProcessor.Q8(this.G0), true);
            if (!this.f70023z0) {
                this.f70022y0.offer(bVar);
            }
            if (b()) {
                m();
            }
        }
    }

    public k1(io.reactivex.j<T> jVar, long j4, long j5, TimeUnit timeUnit, io.reactivex.h0 h0Var, long j6, int i2, boolean z3) {
        super(jVar);
        this.f67425c = j4;
        this.f67426d = j5;
        this.f67427e = timeUnit;
        this.f67428f = h0Var;
        this.f67429g = j6;
        this.f67430h = i2;
        this.f67431i = z3;
    }

    @Override // io.reactivex.j
    protected void h6(l3.c<? super io.reactivex.j<T>> cVar) {
        io.reactivex.subscribers.e eVar = new io.reactivex.subscribers.e(cVar);
        long j4 = this.f67425c;
        long j5 = this.f67426d;
        if (j4 == j5) {
            long j6 = this.f67429g;
            if (j6 == Long.MAX_VALUE) {
                this.f67288b.g6(new b(eVar, this.f67425c, this.f67427e, this.f67428f, this.f67430h));
                return;
            } else {
                this.f67288b.g6(new a(eVar, j4, this.f67427e, this.f67428f, this.f67430h, j6, this.f67431i));
                return;
            }
        }
        this.f67288b.g6(new c(eVar, j4, j5, this.f67427e, this.f67428f.c(), this.f67430h));
    }
}
