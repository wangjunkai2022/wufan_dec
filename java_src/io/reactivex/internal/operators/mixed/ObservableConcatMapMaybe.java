package io.reactivex.internal.operators.mixed;

import io.reactivex.disposables.b;
import io.reactivex.g0;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.util.AtomicThrowable;
import io.reactivex.internal.util.ErrorMode;
import io.reactivex.t;
import io.reactivex.w;
import io.reactivex.z;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import w2.o;
import x2.n;
/* loaded from: classes5.dex */
public final class ObservableConcatMapMaybe<T, R> extends z<R> {

    /* renamed from: a  reason: collision with root package name */
    final z<T> f68051a;

    /* renamed from: b  reason: collision with root package name */
    final o<? super T, ? extends w<? extends R>> f68052b;

    /* renamed from: c  reason: collision with root package name */
    final ErrorMode f68053c;

    /* renamed from: d  reason: collision with root package name */
    final int f68054d;

    /* loaded from: classes5.dex */
    static final class ConcatMapMaybeMainObserver<T, R> extends AtomicInteger implements g0<T>, b {

        /* renamed from: l  reason: collision with root package name */
        static final int f68055l = 0;

        /* renamed from: m  reason: collision with root package name */
        static final int f68056m = 1;

        /* renamed from: n  reason: collision with root package name */
        static final int f68057n = 2;
        private static final long serialVersionUID = -9140123220065488293L;

        /* renamed from: a  reason: collision with root package name */
        final g0<? super R> f68058a;

        /* renamed from: b  reason: collision with root package name */
        final o<? super T, ? extends w<? extends R>> f68059b;

        /* renamed from: c  reason: collision with root package name */
        final AtomicThrowable f68060c = new AtomicThrowable();

        /* renamed from: d  reason: collision with root package name */
        final ConcatMapMaybeObserver<R> f68061d = new ConcatMapMaybeObserver<>(this);

        /* renamed from: e  reason: collision with root package name */
        final n<T> f68062e;

        /* renamed from: f  reason: collision with root package name */
        final ErrorMode f68063f;

        /* renamed from: g  reason: collision with root package name */
        b f68064g;

        /* renamed from: h  reason: collision with root package name */
        volatile boolean f68065h;

        /* renamed from: i  reason: collision with root package name */
        volatile boolean f68066i;

        /* renamed from: j  reason: collision with root package name */
        R f68067j;

        /* renamed from: k  reason: collision with root package name */
        volatile int f68068k;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes5.dex */
        public static final class ConcatMapMaybeObserver<R> extends AtomicReference<b> implements t<R> {
            private static final long serialVersionUID = -3051469169682093892L;

            /* renamed from: a  reason: collision with root package name */
            final ConcatMapMaybeMainObserver<?, R> f68069a;

            ConcatMapMaybeObserver(ConcatMapMaybeMainObserver<?, R> concatMapMaybeMainObserver) {
                this.f68069a = concatMapMaybeMainObserver;
            }

            void a() {
                DisposableHelper.dispose(this);
            }

            @Override // io.reactivex.t
            public void onComplete() {
                this.f68069a.b();
            }

            @Override // io.reactivex.t
            public void onError(Throwable th) {
                this.f68069a.c(th);
            }

            @Override // io.reactivex.t
            public void onSubscribe(b bVar) {
                DisposableHelper.replace(this, bVar);
            }

            @Override // io.reactivex.t
            public void onSuccess(R r3) {
                this.f68069a.d(r3);
            }
        }

        ConcatMapMaybeMainObserver(g0<? super R> g0Var, o<? super T, ? extends w<? extends R>> oVar, int i2, ErrorMode errorMode) {
            this.f68058a = g0Var;
            this.f68059b = oVar;
            this.f68063f = errorMode;
            this.f68062e = new io.reactivex.internal.queue.a(i2);
        }

        void a() {
            if (getAndIncrement() != 0) {
                return;
            }
            g0<? super R> g0Var = this.f68058a;
            ErrorMode errorMode = this.f68063f;
            n<T> nVar = this.f68062e;
            AtomicThrowable atomicThrowable = this.f68060c;
            int i2 = 1;
            while (true) {
                if (this.f68066i) {
                    nVar.clear();
                    this.f68067j = null;
                } else {
                    int i4 = this.f68068k;
                    if (atomicThrowable.get() == null || (errorMode != ErrorMode.IMMEDIATE && (errorMode != ErrorMode.BOUNDARY || i4 != 0))) {
                        if (i4 == 0) {
                            boolean z3 = this.f68065h;
                            T poll = nVar.poll();
                            boolean z4 = poll == null;
                            if (z3 && z4) {
                                Throwable c4 = atomicThrowable.c();
                                if (c4 == null) {
                                    g0Var.onComplete();
                                    return;
                                } else {
                                    g0Var.onError(c4);
                                    return;
                                }
                            } else if (!z4) {
                                try {
                                    w wVar = (w) io.reactivex.internal.functions.a.g(this.f68059b.apply(poll), "The mapper returned a null MaybeSource");
                                    this.f68068k = 1;
                                    wVar.a(this.f68061d);
                                } catch (Throwable th) {
                                    io.reactivex.exceptions.a.b(th);
                                    this.f68064g.dispose();
                                    nVar.clear();
                                    atomicThrowable.a(th);
                                    g0Var.onError(atomicThrowable.c());
                                    return;
                                }
                            }
                        } else if (i4 == 2) {
                            this.f68067j = null;
                            g0Var.onNext((R) this.f68067j);
                            this.f68068k = 0;
                        }
                    }
                }
                i2 = addAndGet(-i2);
                if (i2 == 0) {
                    return;
                }
            }
            nVar.clear();
            this.f68067j = null;
            g0Var.onError(atomicThrowable.c());
        }

        void b() {
            this.f68068k = 0;
            a();
        }

        void c(Throwable th) {
            if (this.f68060c.a(th)) {
                if (this.f68063f != ErrorMode.END) {
                    this.f68064g.dispose();
                }
                this.f68068k = 0;
                a();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        void d(R r3) {
            this.f68067j = r3;
            this.f68068k = 2;
            a();
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.f68066i = true;
            this.f68064g.dispose();
            this.f68061d.a();
            if (getAndIncrement() == 0) {
                this.f68062e.clear();
                this.f68067j = null;
            }
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f68066i;
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            this.f68065h = true;
            a();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            if (this.f68060c.a(th)) {
                if (this.f68063f == ErrorMode.IMMEDIATE) {
                    this.f68061d.a();
                }
                this.f68065h = true;
                a();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t3) {
            this.f68062e.offer(t3);
            a();
        }

        @Override // io.reactivex.g0
        public void onSubscribe(b bVar) {
            if (DisposableHelper.validate(this.f68064g, bVar)) {
                this.f68064g = bVar;
                this.f68058a.onSubscribe(this);
            }
        }
    }

    public ObservableConcatMapMaybe(z<T> zVar, o<? super T, ? extends w<? extends R>> oVar, ErrorMode errorMode, int i2) {
        this.f68051a = zVar;
        this.f68052b = oVar;
        this.f68053c = errorMode;
        this.f68054d = i2;
    }

    @Override // io.reactivex.z
    protected void F5(g0<? super R> g0Var) {
        if (a.b(this.f68051a, this.f68052b, g0Var)) {
            return;
        }
        this.f68051a.a(new ConcatMapMaybeMainObserver(g0Var, this.f68052b, this.f68054d, this.f68053c));
    }
}
