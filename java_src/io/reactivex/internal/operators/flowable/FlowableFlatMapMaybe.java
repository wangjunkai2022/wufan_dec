package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.AtomicThrowable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class FlowableFlatMapMaybe<T, R> extends a<T, R> {

    /* renamed from: c  reason: collision with root package name */
    final w2.o<? super T, ? extends io.reactivex.w<? extends R>> f66434c;

    /* renamed from: d  reason: collision with root package name */
    final boolean f66435d;

    /* renamed from: e  reason: collision with root package name */
    final int f66436e;

    /* loaded from: classes5.dex */
    static final class FlatMapMaybeSubscriber<T, R> extends AtomicInteger implements io.reactivex.o<T>, l3.d {
        private static final long serialVersionUID = 8600231336733376951L;

        /* renamed from: a  reason: collision with root package name */
        final l3.c<? super R> f66437a;

        /* renamed from: b  reason: collision with root package name */
        final boolean f66438b;

        /* renamed from: c  reason: collision with root package name */
        final int f66439c;

        /* renamed from: h  reason: collision with root package name */
        final w2.o<? super T, ? extends io.reactivex.w<? extends R>> f66444h;

        /* renamed from: j  reason: collision with root package name */
        l3.d f66446j;

        /* renamed from: k  reason: collision with root package name */
        volatile boolean f66447k;

        /* renamed from: d  reason: collision with root package name */
        final AtomicLong f66440d = new AtomicLong();

        /* renamed from: e  reason: collision with root package name */
        final io.reactivex.disposables.a f66441e = new io.reactivex.disposables.a();

        /* renamed from: g  reason: collision with root package name */
        final AtomicThrowable f66443g = new AtomicThrowable();

        /* renamed from: f  reason: collision with root package name */
        final AtomicInteger f66442f = new AtomicInteger(1);

        /* renamed from: i  reason: collision with root package name */
        final AtomicReference<io.reactivex.internal.queue.a<R>> f66445i = new AtomicReference<>();

        /* loaded from: classes5.dex */
        final class InnerObserver extends AtomicReference<io.reactivex.disposables.b> implements io.reactivex.t<R>, io.reactivex.disposables.b {
            private static final long serialVersionUID = -502562646270949838L;

            InnerObserver() {
            }

            @Override // io.reactivex.disposables.b
            public void dispose() {
                DisposableHelper.dispose(this);
            }

            @Override // io.reactivex.disposables.b
            public boolean isDisposed() {
                return DisposableHelper.isDisposed(get());
            }

            @Override // io.reactivex.t
            public void onComplete() {
                FlatMapMaybeSubscriber.this.d(this);
            }

            @Override // io.reactivex.t
            public void onError(Throwable th) {
                FlatMapMaybeSubscriber.this.e(this, th);
            }

            @Override // io.reactivex.t
            public void onSubscribe(io.reactivex.disposables.b bVar) {
                DisposableHelper.setOnce(this, bVar);
            }

            @Override // io.reactivex.t
            public void onSuccess(R r3) {
                FlatMapMaybeSubscriber.this.f(this, r3);
            }
        }

        FlatMapMaybeSubscriber(l3.c<? super R> cVar, w2.o<? super T, ? extends io.reactivex.w<? extends R>> oVar, boolean z3, int i2) {
            this.f66437a = cVar;
            this.f66444h = oVar;
            this.f66438b = z3;
            this.f66439c = i2;
        }

        void a() {
            if (getAndIncrement() == 0) {
                b();
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:38:0x0075, code lost:
            if (r9 != r5) goto L67;
         */
        /* JADX WARN: Code restructure failed: missing block: B:40:0x0079, code lost:
            if (r15.f66447k == false) goto L39;
         */
        /* JADX WARN: Code restructure failed: missing block: B:41:0x007b, code lost:
            clear();
         */
        /* JADX WARN: Code restructure failed: missing block: B:42:0x007e, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:44:0x0081, code lost:
            if (r15.f66438b != false) goto L46;
         */
        /* JADX WARN: Code restructure failed: missing block: B:46:0x008b, code lost:
            if (r15.f66443g.get() == null) goto L46;
         */
        /* JADX WARN: Code restructure failed: missing block: B:47:0x008d, code lost:
            r1 = r15.f66443g.c();
            clear();
            r0.onError(r1);
         */
        /* JADX WARN: Code restructure failed: missing block: B:48:0x0099, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:50:0x009e, code lost:
            if (r1.get() != 0) goto L63;
         */
        /* JADX WARN: Code restructure failed: missing block: B:51:0x00a0, code lost:
            r5 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:52:0x00a2, code lost:
            r5 = false;
         */
        /* JADX WARN: Code restructure failed: missing block: B:53:0x00a3, code lost:
            r6 = r2.get();
         */
        /* JADX WARN: Code restructure failed: missing block: B:54:0x00a9, code lost:
            if (r6 == null) goto L62;
         */
        /* JADX WARN: Code restructure failed: missing block: B:56:0x00af, code lost:
            if (r6.isEmpty() == false) goto L53;
         */
        /* JADX WARN: Code restructure failed: missing block: B:57:0x00b1, code lost:
            r11 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:58:0x00b2, code lost:
            if (r5 == false) goto L67;
         */
        /* JADX WARN: Code restructure failed: missing block: B:59:0x00b4, code lost:
            if (r11 == false) goto L67;
         */
        /* JADX WARN: Code restructure failed: missing block: B:60:0x00b6, code lost:
            r1 = r15.f66443g.c();
         */
        /* JADX WARN: Code restructure failed: missing block: B:61:0x00bc, code lost:
            if (r1 == null) goto L60;
         */
        /* JADX WARN: Code restructure failed: missing block: B:62:0x00be, code lost:
            r0.onError(r1);
         */
        /* JADX WARN: Code restructure failed: missing block: B:63:0x00c2, code lost:
            r0.onComplete();
         */
        /* JADX WARN: Code restructure failed: missing block: B:64:0x00c5, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:66:0x00c8, code lost:
            if (r9 == 0) goto L72;
         */
        /* JADX WARN: Code restructure failed: missing block: B:67:0x00ca, code lost:
            io.reactivex.internal.util.b.e(r15.f66440d, r9);
         */
        /* JADX WARN: Code restructure failed: missing block: B:68:0x00d4, code lost:
            if (r15.f66439c == Integer.MAX_VALUE) goto L72;
         */
        /* JADX WARN: Code restructure failed: missing block: B:69:0x00d6, code lost:
            r15.f66446j.request(r9);
         */
        /* JADX WARN: Code restructure failed: missing block: B:70:0x00db, code lost:
            r4 = addAndGet(-r4);
         */
        /* JADX WARN: Code restructure failed: missing block: B:83:?, code lost:
            return;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        void b() {
            /*
                Method dump skipped, instructions count: 227
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.flowable.FlowableFlatMapMaybe.FlatMapMaybeSubscriber.b():void");
        }

        io.reactivex.internal.queue.a<R> c() {
            io.reactivex.internal.queue.a<R> aVar;
            do {
                io.reactivex.internal.queue.a<R> aVar2 = this.f66445i.get();
                if (aVar2 != null) {
                    return aVar2;
                }
                aVar = new io.reactivex.internal.queue.a<>(io.reactivex.j.V());
            } while (!this.f66445i.compareAndSet(null, aVar));
            return aVar;
        }

        @Override // l3.d
        public void cancel() {
            this.f66447k = true;
            this.f66446j.cancel();
            this.f66441e.dispose();
        }

        void clear() {
            io.reactivex.internal.queue.a<R> aVar = this.f66445i.get();
            if (aVar != null) {
                aVar.clear();
            }
        }

        void d(FlatMapMaybeSubscriber<T, R>.InnerObserver innerObserver) {
            this.f66441e.delete(innerObserver);
            if (get() == 0) {
                if (compareAndSet(0, 1)) {
                    boolean z3 = this.f66442f.decrementAndGet() == 0;
                    io.reactivex.internal.queue.a<R> aVar = this.f66445i.get();
                    if (z3 && (aVar == null || aVar.isEmpty())) {
                        Throwable c4 = this.f66443g.c();
                        if (c4 != null) {
                            this.f66437a.onError(c4);
                            return;
                        } else {
                            this.f66437a.onComplete();
                            return;
                        }
                    }
                    if (this.f66439c != Integer.MAX_VALUE) {
                        this.f66446j.request(1L);
                    }
                    if (decrementAndGet() == 0) {
                        return;
                    }
                    b();
                    return;
                }
            }
            this.f66442f.decrementAndGet();
            if (this.f66439c != Integer.MAX_VALUE) {
                this.f66446j.request(1L);
            }
            a();
        }

        void e(FlatMapMaybeSubscriber<T, R>.InnerObserver innerObserver, Throwable th) {
            this.f66441e.delete(innerObserver);
            if (this.f66443g.a(th)) {
                if (!this.f66438b) {
                    this.f66446j.cancel();
                    this.f66441e.dispose();
                } else if (this.f66439c != Integer.MAX_VALUE) {
                    this.f66446j.request(1L);
                }
                this.f66442f.decrementAndGet();
                a();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        void f(FlatMapMaybeSubscriber<T, R>.InnerObserver innerObserver, R r3) {
            this.f66441e.delete(innerObserver);
            if (get() == 0) {
                if (compareAndSet(0, 1)) {
                    boolean z3 = this.f66442f.decrementAndGet() == 0;
                    if (this.f66440d.get() != 0) {
                        this.f66437a.onNext(r3);
                        io.reactivex.internal.queue.a<R> aVar = this.f66445i.get();
                        if (z3 && (aVar == null || aVar.isEmpty())) {
                            Throwable c4 = this.f66443g.c();
                            if (c4 != null) {
                                this.f66437a.onError(c4);
                                return;
                            } else {
                                this.f66437a.onComplete();
                                return;
                            }
                        }
                        io.reactivex.internal.util.b.e(this.f66440d, 1L);
                        if (this.f66439c != Integer.MAX_VALUE) {
                            this.f66446j.request(1L);
                        }
                    } else {
                        io.reactivex.internal.queue.a<R> c5 = c();
                        synchronized (c5) {
                            c5.offer(r3);
                        }
                    }
                    if (decrementAndGet() == 0) {
                        return;
                    }
                    b();
                }
            }
            io.reactivex.internal.queue.a<R> c6 = c();
            synchronized (c6) {
                c6.offer(r3);
            }
            this.f66442f.decrementAndGet();
            if (getAndIncrement() != 0) {
                return;
            }
            b();
        }

        @Override // l3.c
        public void onComplete() {
            this.f66442f.decrementAndGet();
            a();
        }

        @Override // l3.c
        public void onError(Throwable th) {
            this.f66442f.decrementAndGet();
            if (this.f66443g.a(th)) {
                if (!this.f66438b) {
                    this.f66441e.dispose();
                }
                a();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // l3.c
        public void onNext(T t3) {
            try {
                io.reactivex.w wVar = (io.reactivex.w) io.reactivex.internal.functions.a.g(this.f66444h.apply(t3), "The mapper returned a null MaybeSource");
                this.f66442f.getAndIncrement();
                InnerObserver innerObserver = new InnerObserver();
                if (this.f66447k || !this.f66441e.b(innerObserver)) {
                    return;
                }
                wVar.a(innerObserver);
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f66446j.cancel();
                onError(th);
            }
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            if (SubscriptionHelper.validate(this.f66446j, dVar)) {
                this.f66446j = dVar;
                this.f66437a.onSubscribe(this);
                int i2 = this.f66439c;
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
                io.reactivex.internal.util.b.a(this.f66440d, j4);
                a();
            }
        }
    }

    public FlowableFlatMapMaybe(io.reactivex.j<T> jVar, w2.o<? super T, ? extends io.reactivex.w<? extends R>> oVar, boolean z3, int i2) {
        super(jVar);
        this.f66434c = oVar;
        this.f66435d = z3;
        this.f66436e = i2;
    }

    @Override // io.reactivex.j
    protected void h6(l3.c<? super R> cVar) {
        this.f67288b.g6(new FlatMapMaybeSubscriber(cVar, this.f66434c, this.f66435d, this.f66436e));
    }
}
