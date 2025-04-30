package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.util.AtomicThrowable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class ObservableCombineLatest<T, R> extends io.reactivex.z<R> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.e0<? extends T>[] f68198a;

    /* renamed from: b  reason: collision with root package name */
    final Iterable<? extends io.reactivex.e0<? extends T>> f68199b;

    /* renamed from: c  reason: collision with root package name */
    final w2.o<? super Object[], ? extends R> f68200c;

    /* renamed from: d  reason: collision with root package name */
    final int f68201d;

    /* renamed from: e  reason: collision with root package name */
    final boolean f68202e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class CombinerObserver<T, R> extends AtomicReference<io.reactivex.disposables.b> implements io.reactivex.g0<T> {
        private static final long serialVersionUID = -4823716997131257941L;

        /* renamed from: a  reason: collision with root package name */
        final LatestCoordinator<T, R> f68203a;

        /* renamed from: b  reason: collision with root package name */
        final int f68204b;

        CombinerObserver(LatestCoordinator<T, R> latestCoordinator, int i2) {
            this.f68203a = latestCoordinator;
            this.f68204b = i2;
        }

        public void a() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            this.f68203a.d(this.f68204b);
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            this.f68203a.e(this.f68204b, th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t3) {
            this.f68203a.f(this.f68204b, t3);
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            DisposableHelper.setOnce(this, bVar);
        }
    }

    /* loaded from: classes5.dex */
    static final class LatestCoordinator<T, R> extends AtomicInteger implements io.reactivex.disposables.b {
        private static final long serialVersionUID = 8567835998786448817L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super R> f68205a;

        /* renamed from: b  reason: collision with root package name */
        final w2.o<? super Object[], ? extends R> f68206b;

        /* renamed from: c  reason: collision with root package name */
        final CombinerObserver<T, R>[] f68207c;

        /* renamed from: d  reason: collision with root package name */
        Object[] f68208d;

        /* renamed from: e  reason: collision with root package name */
        final io.reactivex.internal.queue.a<Object[]> f68209e;

        /* renamed from: f  reason: collision with root package name */
        final boolean f68210f;

        /* renamed from: g  reason: collision with root package name */
        volatile boolean f68211g;

        /* renamed from: h  reason: collision with root package name */
        volatile boolean f68212h;

        /* renamed from: i  reason: collision with root package name */
        final AtomicThrowable f68213i = new AtomicThrowable();

        /* renamed from: j  reason: collision with root package name */
        int f68214j;

        /* renamed from: k  reason: collision with root package name */
        int f68215k;

        LatestCoordinator(io.reactivex.g0<? super R> g0Var, w2.o<? super Object[], ? extends R> oVar, int i2, int i4, boolean z3) {
            this.f68205a = g0Var;
            this.f68206b = oVar;
            this.f68210f = z3;
            this.f68208d = new Object[i2];
            CombinerObserver<T, R>[] combinerObserverArr = new CombinerObserver[i2];
            for (int i5 = 0; i5 < i2; i5++) {
                combinerObserverArr[i5] = new CombinerObserver<>(this, i5);
            }
            this.f68207c = combinerObserverArr;
            this.f68209e = new io.reactivex.internal.queue.a<>(i4);
        }

        void a() {
            for (CombinerObserver<T, R> combinerObserver : this.f68207c) {
                combinerObserver.a();
            }
        }

        void b(io.reactivex.internal.queue.a<?> aVar) {
            synchronized (this) {
                this.f68208d = null;
            }
            aVar.clear();
        }

        void c() {
            if (getAndIncrement() != 0) {
                return;
            }
            io.reactivex.internal.queue.a<Object[]> aVar = this.f68209e;
            io.reactivex.g0<? super R> g0Var = this.f68205a;
            boolean z3 = this.f68210f;
            int i2 = 1;
            while (!this.f68211g) {
                if (!z3 && this.f68213i.get() != null) {
                    a();
                    b(aVar);
                    g0Var.onError(this.f68213i.c());
                    return;
                }
                boolean z4 = this.f68212h;
                Object[] poll = aVar.poll();
                boolean z5 = poll == null;
                if (z4 && z5) {
                    b(aVar);
                    Throwable c4 = this.f68213i.c();
                    if (c4 == null) {
                        g0Var.onComplete();
                        return;
                    } else {
                        g0Var.onError(c4);
                        return;
                    }
                } else if (z5) {
                    i2 = addAndGet(-i2);
                    if (i2 == 0) {
                        return;
                    }
                } else {
                    try {
                        g0Var.onNext((Object) io.reactivex.internal.functions.a.g(this.f68206b.apply(poll), "The combiner returned a null value"));
                    } catch (Throwable th) {
                        io.reactivex.exceptions.a.b(th);
                        this.f68213i.a(th);
                        a();
                        b(aVar);
                        g0Var.onError(this.f68213i.c());
                        return;
                    }
                }
            }
            b(aVar);
        }

        /* JADX WARN: Code restructure failed: missing block: B:13:0x0017, code lost:
            if (r2 == r0.length) goto L19;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        void d(int r4) {
            /*
                r3 = this;
                monitor-enter(r3)
                java.lang.Object[] r0 = r3.f68208d     // Catch: java.lang.Throwable -> L25
                if (r0 != 0) goto L7
                monitor-exit(r3)     // Catch: java.lang.Throwable -> L25
                return
            L7:
                r4 = r0[r4]     // Catch: java.lang.Throwable -> L25
                r1 = 1
                if (r4 != 0) goto Le
                r4 = 1
                goto Lf
            Le:
                r4 = 0
            Lf:
                if (r4 != 0) goto L19
                int r2 = r3.f68215k     // Catch: java.lang.Throwable -> L25
                int r2 = r2 + r1
                r3.f68215k = r2     // Catch: java.lang.Throwable -> L25
                int r0 = r0.length     // Catch: java.lang.Throwable -> L25
                if (r2 != r0) goto L1b
            L19:
                r3.f68212h = r1     // Catch: java.lang.Throwable -> L25
            L1b:
                monitor-exit(r3)     // Catch: java.lang.Throwable -> L25
                if (r4 == 0) goto L21
                r3.a()
            L21:
                r3.c()
                return
            L25:
                r4 = move-exception
                monitor-exit(r3)     // Catch: java.lang.Throwable -> L25
                throw r4
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.observable.ObservableCombineLatest.LatestCoordinator.d(int):void");
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            if (this.f68211g) {
                return;
            }
            this.f68211g = true;
            a();
            if (getAndIncrement() == 0) {
                b(this.f68209e);
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:17:0x0023, code lost:
            if (r1 == r4.length) goto L20;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        void e(int r3, java.lang.Throwable r4) {
            /*
                r2 = this;
                io.reactivex.internal.util.AtomicThrowable r0 = r2.f68213i
                boolean r0 = r0.a(r4)
                if (r0 == 0) goto L36
                boolean r4 = r2.f68210f
                r0 = 1
                if (r4 == 0) goto L2d
                monitor-enter(r2)
                java.lang.Object[] r4 = r2.f68208d     // Catch: java.lang.Throwable -> L2a
                if (r4 != 0) goto L14
                monitor-exit(r2)     // Catch: java.lang.Throwable -> L2a
                return
            L14:
                r3 = r4[r3]     // Catch: java.lang.Throwable -> L2a
                if (r3 != 0) goto L1a
                r3 = 1
                goto L1b
            L1a:
                r3 = 0
            L1b:
                if (r3 != 0) goto L25
                int r1 = r2.f68215k     // Catch: java.lang.Throwable -> L2a
                int r1 = r1 + r0
                r2.f68215k = r1     // Catch: java.lang.Throwable -> L2a
                int r4 = r4.length     // Catch: java.lang.Throwable -> L2a
                if (r1 != r4) goto L27
            L25:
                r2.f68212h = r0     // Catch: java.lang.Throwable -> L2a
            L27:
                monitor-exit(r2)     // Catch: java.lang.Throwable -> L2a
                r0 = r3
                goto L2d
            L2a:
                r3 = move-exception
                monitor-exit(r2)     // Catch: java.lang.Throwable -> L2a
                throw r3
            L2d:
                if (r0 == 0) goto L32
                r2.a()
            L32:
                r2.c()
                goto L39
            L36:
                io.reactivex.plugins.a.Y(r4)
            L39:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.observable.ObservableCombineLatest.LatestCoordinator.e(int, java.lang.Throwable):void");
        }

        /* JADX WARN: Multi-variable type inference failed */
        void f(int i2, T t3) {
            boolean z3;
            synchronized (this) {
                Object[] objArr = this.f68208d;
                if (objArr == null) {
                    return;
                }
                Object obj = objArr[i2];
                int i4 = this.f68214j;
                if (obj == null) {
                    i4++;
                    this.f68214j = i4;
                }
                objArr[i2] = t3;
                if (i4 == objArr.length) {
                    this.f68209e.offer(objArr.clone());
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (z3) {
                    c();
                }
            }
        }

        public void g(io.reactivex.e0<? extends T>[] e0VarArr) {
            CombinerObserver<T, R>[] combinerObserverArr = this.f68207c;
            int length = combinerObserverArr.length;
            this.f68205a.onSubscribe(this);
            for (int i2 = 0; i2 < length && !this.f68212h && !this.f68211g; i2++) {
                e0VarArr[i2].a(combinerObserverArr[i2]);
            }
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f68211g;
        }
    }

    public ObservableCombineLatest(io.reactivex.e0<? extends T>[] e0VarArr, Iterable<? extends io.reactivex.e0<? extends T>> iterable, w2.o<? super Object[], ? extends R> oVar, int i2, boolean z3) {
        this.f68198a = e0VarArr;
        this.f68199b = iterable;
        this.f68200c = oVar;
        this.f68201d = i2;
        this.f68202e = z3;
    }

    @Override // io.reactivex.z
    public void F5(io.reactivex.g0<? super R> g0Var) {
        int length;
        io.reactivex.e0<? extends T>[] e0VarArr = this.f68198a;
        if (e0VarArr == null) {
            e0VarArr = new io.reactivex.z[8];
            length = 0;
            for (io.reactivex.e0<? extends T> e0Var : this.f68199b) {
                if (length == e0VarArr.length) {
                    io.reactivex.e0<? extends T>[] e0VarArr2 = new io.reactivex.e0[(length >> 2) + length];
                    System.arraycopy(e0VarArr, 0, e0VarArr2, 0, length);
                    e0VarArr = e0VarArr2;
                }
                e0VarArr[length] = e0Var;
                length++;
            }
        } else {
            length = e0VarArr.length;
        }
        int i2 = length;
        if (i2 == 0) {
            EmptyDisposable.complete(g0Var);
        } else {
            new LatestCoordinator(g0Var, this.f68200c, i2, this.f68201d, this.f68202e).g(e0VarArr);
        }
    }
}
