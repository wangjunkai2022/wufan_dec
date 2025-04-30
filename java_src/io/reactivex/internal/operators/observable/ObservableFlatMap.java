package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.queue.SpscArrayQueue;
import io.reactivex.internal.util.AtomicThrowable;
import io.reactivex.internal.util.ExceptionHelper;
import java.util.ArrayDeque;
import java.util.Queue;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class ObservableFlatMap<T, U> extends a<T, U> {

    /* renamed from: b  reason: collision with root package name */
    final w2.o<? super T, ? extends io.reactivex.e0<? extends U>> f68302b;

    /* renamed from: c  reason: collision with root package name */
    final boolean f68303c;

    /* renamed from: d  reason: collision with root package name */
    final int f68304d;

    /* renamed from: e  reason: collision with root package name */
    final int f68305e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class InnerObserver<T, U> extends AtomicReference<io.reactivex.disposables.b> implements io.reactivex.g0<U> {
        private static final long serialVersionUID = -4606175640614850599L;

        /* renamed from: a  reason: collision with root package name */
        final long f68306a;

        /* renamed from: b  reason: collision with root package name */
        final MergeObserver<T, U> f68307b;

        /* renamed from: c  reason: collision with root package name */
        volatile boolean f68308c;

        /* renamed from: d  reason: collision with root package name */
        volatile x2.o<U> f68309d;

        /* renamed from: e  reason: collision with root package name */
        int f68310e;

        InnerObserver(MergeObserver<T, U> mergeObserver, long j4) {
            this.f68306a = j4;
            this.f68307b = mergeObserver;
        }

        public void a() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            this.f68308c = true;
            this.f68307b.d();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            if (this.f68307b.f68320h.a(th)) {
                MergeObserver<T, U> mergeObserver = this.f68307b;
                if (!mergeObserver.f68315c) {
                    mergeObserver.c();
                }
                this.f68308c = true;
                this.f68307b.d();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // io.reactivex.g0
        public void onNext(U u3) {
            if (this.f68310e == 0) {
                this.f68307b.h(u3, this);
            } else {
                this.f68307b.d();
            }
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.setOnce(this, bVar) && (bVar instanceof x2.j)) {
                x2.j jVar = (x2.j) bVar;
                int requestFusion = jVar.requestFusion(7);
                if (requestFusion == 1) {
                    this.f68310e = requestFusion;
                    this.f68309d = jVar;
                    this.f68308c = true;
                    this.f68307b.d();
                } else if (requestFusion == 2) {
                    this.f68310e = requestFusion;
                    this.f68309d = jVar;
                }
            }
        }
    }

    /* loaded from: classes5.dex */
    static final class MergeObserver<T, U> extends AtomicInteger implements io.reactivex.disposables.b, io.reactivex.g0<T> {

        /* renamed from: q  reason: collision with root package name */
        static final InnerObserver<?, ?>[] f68311q = new InnerObserver[0];

        /* renamed from: r  reason: collision with root package name */
        static final InnerObserver<?, ?>[] f68312r = new InnerObserver[0];
        private static final long serialVersionUID = -2117620485640801370L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super U> f68313a;

        /* renamed from: b  reason: collision with root package name */
        final w2.o<? super T, ? extends io.reactivex.e0<? extends U>> f68314b;

        /* renamed from: c  reason: collision with root package name */
        final boolean f68315c;

        /* renamed from: d  reason: collision with root package name */
        final int f68316d;

        /* renamed from: e  reason: collision with root package name */
        final int f68317e;

        /* renamed from: f  reason: collision with root package name */
        volatile x2.n<U> f68318f;

        /* renamed from: g  reason: collision with root package name */
        volatile boolean f68319g;

        /* renamed from: h  reason: collision with root package name */
        final AtomicThrowable f68320h = new AtomicThrowable();

        /* renamed from: i  reason: collision with root package name */
        volatile boolean f68321i;

        /* renamed from: j  reason: collision with root package name */
        final AtomicReference<InnerObserver<?, ?>[]> f68322j;

        /* renamed from: k  reason: collision with root package name */
        io.reactivex.disposables.b f68323k;

        /* renamed from: l  reason: collision with root package name */
        long f68324l;

        /* renamed from: m  reason: collision with root package name */
        long f68325m;

        /* renamed from: n  reason: collision with root package name */
        int f68326n;

        /* renamed from: o  reason: collision with root package name */
        Queue<io.reactivex.e0<? extends U>> f68327o;

        /* renamed from: p  reason: collision with root package name */
        int f68328p;

        MergeObserver(io.reactivex.g0<? super U> g0Var, w2.o<? super T, ? extends io.reactivex.e0<? extends U>> oVar, boolean z3, int i2, int i4) {
            this.f68313a = g0Var;
            this.f68314b = oVar;
            this.f68315c = z3;
            this.f68316d = i2;
            this.f68317e = i4;
            if (i2 != Integer.MAX_VALUE) {
                this.f68327o = new ArrayDeque(i2);
            }
            this.f68322j = new AtomicReference<>(f68311q);
        }

        /* JADX WARN: Multi-variable type inference failed */
        boolean a(InnerObserver<T, U> innerObserver) {
            InnerObserver<?, ?>[] innerObserverArr;
            InnerObserver[] innerObserverArr2;
            do {
                innerObserverArr = this.f68322j.get();
                if (innerObserverArr == f68312r) {
                    innerObserver.a();
                    return false;
                }
                int length = innerObserverArr.length;
                innerObserverArr2 = new InnerObserver[length + 1];
                System.arraycopy(innerObserverArr, 0, innerObserverArr2, 0, length);
                innerObserverArr2[length] = innerObserver;
            } while (!this.f68322j.compareAndSet(innerObserverArr, innerObserverArr2));
            return true;
        }

        boolean b() {
            if (this.f68321i) {
                return true;
            }
            Throwable th = this.f68320h.get();
            if (this.f68315c || th == null) {
                return false;
            }
            c();
            Throwable c4 = this.f68320h.c();
            if (c4 != ExceptionHelper.f70084a) {
                this.f68313a.onError(c4);
            }
            return true;
        }

        boolean c() {
            InnerObserver<?, ?>[] andSet;
            this.f68323k.dispose();
            InnerObserver<?, ?>[] innerObserverArr = this.f68322j.get();
            InnerObserver<?, ?>[] innerObserverArr2 = f68312r;
            if (innerObserverArr == innerObserverArr2 || (andSet = this.f68322j.getAndSet(innerObserverArr2)) == innerObserverArr2) {
                return false;
            }
            for (InnerObserver<?, ?> innerObserver : andSet) {
                innerObserver.a();
            }
            return true;
        }

        void d() {
            if (getAndIncrement() == 0) {
                e();
            }
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            Throwable c4;
            if (this.f68321i) {
                return;
            }
            this.f68321i = true;
            if (!c() || (c4 = this.f68320h.c()) == null || c4 == ExceptionHelper.f70084a) {
                return;
            }
            io.reactivex.plugins.a.Y(c4);
        }

        /* JADX WARN: Code restructure failed: missing block: B:69:0x00b5, code lost:
            if (r12 != null) goto L53;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        void e() {
            /*
                Method dump skipped, instructions count: 302
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.observable.ObservableFlatMap.MergeObserver.e():void");
        }

        void f(InnerObserver<T, U> innerObserver) {
            InnerObserver<?, ?>[] innerObserverArr;
            InnerObserver<?, ?>[] innerObserverArr2;
            do {
                innerObserverArr = this.f68322j.get();
                int length = innerObserverArr.length;
                if (length == 0) {
                    return;
                }
                int i2 = -1;
                int i4 = 0;
                while (true) {
                    if (i4 >= length) {
                        break;
                    } else if (innerObserverArr[i4] == innerObserver) {
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
                    innerObserverArr2 = f68311q;
                } else {
                    InnerObserver<?, ?>[] innerObserverArr3 = new InnerObserver[length - 1];
                    System.arraycopy(innerObserverArr, 0, innerObserverArr3, 0, i2);
                    System.arraycopy(innerObserverArr, i2 + 1, innerObserverArr3, i2, (length - i2) - 1);
                    innerObserverArr2 = innerObserverArr3;
                }
            } while (!this.f68322j.compareAndSet(innerObserverArr, innerObserverArr2));
        }

        void g(io.reactivex.e0<? extends U> e0Var) {
            io.reactivex.e0<? extends U> poll;
            while (e0Var instanceof Callable) {
                if (!i((Callable) e0Var) || this.f68316d == Integer.MAX_VALUE) {
                    return;
                }
                boolean z3 = false;
                synchronized (this) {
                    poll = this.f68327o.poll();
                    if (poll == null) {
                        this.f68328p--;
                        z3 = true;
                    }
                }
                if (z3) {
                    d();
                    return;
                }
                e0Var = poll;
            }
            long j4 = this.f68324l;
            this.f68324l = 1 + j4;
            InnerObserver<T, U> innerObserver = new InnerObserver<>(this, j4);
            if (a(innerObserver)) {
                e0Var.a(innerObserver);
            }
        }

        void h(U u3, InnerObserver<T, U> innerObserver) {
            if (get() == 0 && compareAndSet(0, 1)) {
                this.f68313a.onNext(u3);
                if (decrementAndGet() == 0) {
                    return;
                }
            } else {
                x2.o oVar = innerObserver.f68309d;
                if (oVar == null) {
                    oVar = new io.reactivex.internal.queue.a(this.f68317e);
                    innerObserver.f68309d = oVar;
                }
                oVar.offer(u3);
                if (getAndIncrement() != 0) {
                    return;
                }
            }
            e();
        }

        boolean i(Callable<? extends U> callable) {
            try {
                U call = callable.call();
                if (call == null) {
                    return true;
                }
                if (get() == 0 && compareAndSet(0, 1)) {
                    this.f68313a.onNext(call);
                    if (decrementAndGet() == 0) {
                        return true;
                    }
                } else {
                    x2.n<U> nVar = this.f68318f;
                    if (nVar == null) {
                        if (this.f68316d == Integer.MAX_VALUE) {
                            nVar = new io.reactivex.internal.queue.a<>(this.f68317e);
                        } else {
                            nVar = new SpscArrayQueue<>(this.f68316d);
                        }
                        this.f68318f = nVar;
                    }
                    if (!nVar.offer(call)) {
                        onError(new IllegalStateException("Scalar queue full?!"));
                        return true;
                    } else if (getAndIncrement() != 0) {
                        return false;
                    }
                }
                e();
                return true;
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f68320h.a(th);
                d();
                return true;
            }
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f68321i;
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            if (this.f68319g) {
                return;
            }
            this.f68319g = true;
            d();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            if (this.f68319g) {
                io.reactivex.plugins.a.Y(th);
            } else if (this.f68320h.a(th)) {
                this.f68319g = true;
                d();
            } else {
                io.reactivex.plugins.a.Y(th);
            }
        }

        @Override // io.reactivex.g0
        public void onNext(T t3) {
            if (this.f68319g) {
                return;
            }
            try {
                io.reactivex.e0<? extends U> e0Var = (io.reactivex.e0) io.reactivex.internal.functions.a.g(this.f68314b.apply(t3), "The mapper returned a null ObservableSource");
                if (this.f68316d != Integer.MAX_VALUE) {
                    synchronized (this) {
                        int i2 = this.f68328p;
                        if (i2 == this.f68316d) {
                            this.f68327o.offer(e0Var);
                            return;
                        }
                        this.f68328p = i2 + 1;
                    }
                }
                g(e0Var);
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f68323k.dispose();
                onError(th);
            }
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.validate(this.f68323k, bVar)) {
                this.f68323k = bVar;
                this.f68313a.onSubscribe(this);
            }
        }
    }

    public ObservableFlatMap(io.reactivex.e0<T> e0Var, w2.o<? super T, ? extends io.reactivex.e0<? extends U>> oVar, boolean z3, int i2, int i4) {
        super(e0Var);
        this.f68302b = oVar;
        this.f68303c = z3;
        this.f68304d = i2;
        this.f68305e = i4;
    }

    @Override // io.reactivex.z
    public void F5(io.reactivex.g0<? super U> g0Var) {
        if (ObservableScalarXMap.b(this.f68961a, g0Var, this.f68302b)) {
            return;
        }
        this.f68961a.a(new MergeObserver(g0Var, this.f68302b, this.f68303c, this.f68304d, this.f68305e));
    }
}
