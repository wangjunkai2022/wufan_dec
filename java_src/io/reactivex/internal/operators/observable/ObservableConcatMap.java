package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.util.AtomicThrowable;
import io.reactivex.internal.util.ErrorMode;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class ObservableConcatMap<T, U> extends a<T, U> {

    /* renamed from: b  reason: collision with root package name */
    final w2.o<? super T, ? extends io.reactivex.e0<? extends U>> f68216b;

    /* renamed from: c  reason: collision with root package name */
    final int f68217c;

    /* renamed from: d  reason: collision with root package name */
    final ErrorMode f68218d;

    /* loaded from: classes5.dex */
    static final class ConcatMapDelayErrorObserver<T, R> extends AtomicInteger implements io.reactivex.g0<T>, io.reactivex.disposables.b {
        private static final long serialVersionUID = -6951100001833242599L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super R> f68219a;

        /* renamed from: b  reason: collision with root package name */
        final w2.o<? super T, ? extends io.reactivex.e0<? extends R>> f68220b;

        /* renamed from: c  reason: collision with root package name */
        final int f68221c;

        /* renamed from: d  reason: collision with root package name */
        final AtomicThrowable f68222d = new AtomicThrowable();

        /* renamed from: e  reason: collision with root package name */
        final DelayErrorInnerObserver<R> f68223e;

        /* renamed from: f  reason: collision with root package name */
        final boolean f68224f;

        /* renamed from: g  reason: collision with root package name */
        x2.o<T> f68225g;

        /* renamed from: h  reason: collision with root package name */
        io.reactivex.disposables.b f68226h;

        /* renamed from: i  reason: collision with root package name */
        volatile boolean f68227i;

        /* renamed from: j  reason: collision with root package name */
        volatile boolean f68228j;

        /* renamed from: k  reason: collision with root package name */
        volatile boolean f68229k;

        /* renamed from: l  reason: collision with root package name */
        int f68230l;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes5.dex */
        public static final class DelayErrorInnerObserver<R> extends AtomicReference<io.reactivex.disposables.b> implements io.reactivex.g0<R> {
            private static final long serialVersionUID = 2620149119579502636L;

            /* renamed from: a  reason: collision with root package name */
            final io.reactivex.g0<? super R> f68231a;

            /* renamed from: b  reason: collision with root package name */
            final ConcatMapDelayErrorObserver<?, R> f68232b;

            DelayErrorInnerObserver(io.reactivex.g0<? super R> g0Var, ConcatMapDelayErrorObserver<?, R> concatMapDelayErrorObserver) {
                this.f68231a = g0Var;
                this.f68232b = concatMapDelayErrorObserver;
            }

            void a() {
                DisposableHelper.dispose(this);
            }

            @Override // io.reactivex.g0
            public void onComplete() {
                ConcatMapDelayErrorObserver<?, R> concatMapDelayErrorObserver = this.f68232b;
                concatMapDelayErrorObserver.f68227i = false;
                concatMapDelayErrorObserver.a();
            }

            @Override // io.reactivex.g0
            public void onError(Throwable th) {
                ConcatMapDelayErrorObserver<?, R> concatMapDelayErrorObserver = this.f68232b;
                if (concatMapDelayErrorObserver.f68222d.a(th)) {
                    if (!concatMapDelayErrorObserver.f68224f) {
                        concatMapDelayErrorObserver.f68226h.dispose();
                    }
                    concatMapDelayErrorObserver.f68227i = false;
                    concatMapDelayErrorObserver.a();
                    return;
                }
                io.reactivex.plugins.a.Y(th);
            }

            @Override // io.reactivex.g0
            public void onNext(R r3) {
                this.f68231a.onNext(r3);
            }

            @Override // io.reactivex.g0
            public void onSubscribe(io.reactivex.disposables.b bVar) {
                DisposableHelper.replace(this, bVar);
            }
        }

        ConcatMapDelayErrorObserver(io.reactivex.g0<? super R> g0Var, w2.o<? super T, ? extends io.reactivex.e0<? extends R>> oVar, int i2, boolean z3) {
            this.f68219a = g0Var;
            this.f68220b = oVar;
            this.f68221c = i2;
            this.f68224f = z3;
            this.f68223e = new DelayErrorInnerObserver<>(g0Var, this);
        }

        void a() {
            if (getAndIncrement() != 0) {
                return;
            }
            io.reactivex.g0<? super R> g0Var = this.f68219a;
            x2.o<T> oVar = this.f68225g;
            AtomicThrowable atomicThrowable = this.f68222d;
            while (true) {
                if (!this.f68227i) {
                    if (this.f68229k) {
                        oVar.clear();
                        return;
                    } else if (!this.f68224f && atomicThrowable.get() != null) {
                        oVar.clear();
                        this.f68229k = true;
                        g0Var.onError(atomicThrowable.c());
                        return;
                    } else {
                        boolean z3 = this.f68228j;
                        try {
                            T poll = oVar.poll();
                            boolean z4 = poll == null;
                            if (z3 && z4) {
                                this.f68229k = true;
                                Throwable c4 = atomicThrowable.c();
                                if (c4 != null) {
                                    g0Var.onError(c4);
                                    return;
                                } else {
                                    g0Var.onComplete();
                                    return;
                                }
                            } else if (!z4) {
                                try {
                                    io.reactivex.e0 e0Var = (io.reactivex.e0) io.reactivex.internal.functions.a.g(this.f68220b.apply(poll), "The mapper returned a null ObservableSource");
                                    if (e0Var instanceof Callable) {
                                        try {
                                            Object obj = (Object) ((Callable) e0Var).call();
                                            if (obj != 0 && !this.f68229k) {
                                                g0Var.onNext(obj);
                                            }
                                        } catch (Throwable th) {
                                            io.reactivex.exceptions.a.b(th);
                                            atomicThrowable.a(th);
                                        }
                                    } else {
                                        this.f68227i = true;
                                        e0Var.a(this.f68223e);
                                    }
                                } catch (Throwable th2) {
                                    io.reactivex.exceptions.a.b(th2);
                                    this.f68229k = true;
                                    this.f68226h.dispose();
                                    oVar.clear();
                                    atomicThrowable.a(th2);
                                    g0Var.onError(atomicThrowable.c());
                                    return;
                                }
                            }
                        } catch (Throwable th3) {
                            io.reactivex.exceptions.a.b(th3);
                            this.f68229k = true;
                            this.f68226h.dispose();
                            atomicThrowable.a(th3);
                            g0Var.onError(atomicThrowable.c());
                            return;
                        }
                    }
                }
                if (decrementAndGet() == 0) {
                    return;
                }
            }
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.f68229k = true;
            this.f68226h.dispose();
            this.f68223e.a();
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f68229k;
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            this.f68228j = true;
            a();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            if (this.f68222d.a(th)) {
                this.f68228j = true;
                a();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t3) {
            if (this.f68230l == 0) {
                this.f68225g.offer(t3);
            }
            a();
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.validate(this.f68226h, bVar)) {
                this.f68226h = bVar;
                if (bVar instanceof x2.j) {
                    x2.j jVar = (x2.j) bVar;
                    int requestFusion = jVar.requestFusion(3);
                    if (requestFusion == 1) {
                        this.f68230l = requestFusion;
                        this.f68225g = jVar;
                        this.f68228j = true;
                        this.f68219a.onSubscribe(this);
                        a();
                        return;
                    } else if (requestFusion == 2) {
                        this.f68230l = requestFusion;
                        this.f68225g = jVar;
                        this.f68219a.onSubscribe(this);
                        return;
                    }
                }
                this.f68225g = new io.reactivex.internal.queue.a(this.f68221c);
                this.f68219a.onSubscribe(this);
            }
        }
    }

    /* loaded from: classes5.dex */
    static final class SourceObserver<T, U> extends AtomicInteger implements io.reactivex.g0<T>, io.reactivex.disposables.b {
        private static final long serialVersionUID = 8828587559905699186L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super U> f68233a;

        /* renamed from: b  reason: collision with root package name */
        final w2.o<? super T, ? extends io.reactivex.e0<? extends U>> f68234b;

        /* renamed from: c  reason: collision with root package name */
        final InnerObserver<U> f68235c;

        /* renamed from: d  reason: collision with root package name */
        final int f68236d;

        /* renamed from: e  reason: collision with root package name */
        x2.o<T> f68237e;

        /* renamed from: f  reason: collision with root package name */
        io.reactivex.disposables.b f68238f;

        /* renamed from: g  reason: collision with root package name */
        volatile boolean f68239g;

        /* renamed from: h  reason: collision with root package name */
        volatile boolean f68240h;

        /* renamed from: i  reason: collision with root package name */
        volatile boolean f68241i;

        /* renamed from: j  reason: collision with root package name */
        int f68242j;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes5.dex */
        public static final class InnerObserver<U> extends AtomicReference<io.reactivex.disposables.b> implements io.reactivex.g0<U> {
            private static final long serialVersionUID = -7449079488798789337L;

            /* renamed from: a  reason: collision with root package name */
            final io.reactivex.g0<? super U> f68243a;

            /* renamed from: b  reason: collision with root package name */
            final SourceObserver<?, ?> f68244b;

            InnerObserver(io.reactivex.g0<? super U> g0Var, SourceObserver<?, ?> sourceObserver) {
                this.f68243a = g0Var;
                this.f68244b = sourceObserver;
            }

            void a() {
                DisposableHelper.dispose(this);
            }

            @Override // io.reactivex.g0
            public void onComplete() {
                this.f68244b.b();
            }

            @Override // io.reactivex.g0
            public void onError(Throwable th) {
                this.f68244b.dispose();
                this.f68243a.onError(th);
            }

            @Override // io.reactivex.g0
            public void onNext(U u3) {
                this.f68243a.onNext(u3);
            }

            @Override // io.reactivex.g0
            public void onSubscribe(io.reactivex.disposables.b bVar) {
                DisposableHelper.set(this, bVar);
            }
        }

        SourceObserver(io.reactivex.g0<? super U> g0Var, w2.o<? super T, ? extends io.reactivex.e0<? extends U>> oVar, int i2) {
            this.f68233a = g0Var;
            this.f68234b = oVar;
            this.f68236d = i2;
            this.f68235c = new InnerObserver<>(g0Var, this);
        }

        void a() {
            if (getAndIncrement() != 0) {
                return;
            }
            while (!this.f68240h) {
                if (!this.f68239g) {
                    boolean z3 = this.f68241i;
                    try {
                        T poll = this.f68237e.poll();
                        boolean z4 = poll == null;
                        if (z3 && z4) {
                            this.f68240h = true;
                            this.f68233a.onComplete();
                            return;
                        } else if (!z4) {
                            try {
                                io.reactivex.e0 e0Var = (io.reactivex.e0) io.reactivex.internal.functions.a.g(this.f68234b.apply(poll), "The mapper returned a null ObservableSource");
                                this.f68239g = true;
                                e0Var.a(this.f68235c);
                            } catch (Throwable th) {
                                io.reactivex.exceptions.a.b(th);
                                dispose();
                                this.f68237e.clear();
                                this.f68233a.onError(th);
                                return;
                            }
                        }
                    } catch (Throwable th2) {
                        io.reactivex.exceptions.a.b(th2);
                        dispose();
                        this.f68237e.clear();
                        this.f68233a.onError(th2);
                        return;
                    }
                }
                if (decrementAndGet() == 0) {
                    return;
                }
            }
            this.f68237e.clear();
        }

        void b() {
            this.f68239g = false;
            a();
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.f68240h = true;
            this.f68235c.a();
            this.f68238f.dispose();
            if (getAndIncrement() == 0) {
                this.f68237e.clear();
            }
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f68240h;
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            if (this.f68241i) {
                return;
            }
            this.f68241i = true;
            a();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            if (this.f68241i) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f68241i = true;
            dispose();
            this.f68233a.onError(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t3) {
            if (this.f68241i) {
                return;
            }
            if (this.f68242j == 0) {
                this.f68237e.offer(t3);
            }
            a();
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.validate(this.f68238f, bVar)) {
                this.f68238f = bVar;
                if (bVar instanceof x2.j) {
                    x2.j jVar = (x2.j) bVar;
                    int requestFusion = jVar.requestFusion(3);
                    if (requestFusion == 1) {
                        this.f68242j = requestFusion;
                        this.f68237e = jVar;
                        this.f68241i = true;
                        this.f68233a.onSubscribe(this);
                        a();
                        return;
                    } else if (requestFusion == 2) {
                        this.f68242j = requestFusion;
                        this.f68237e = jVar;
                        this.f68233a.onSubscribe(this);
                        return;
                    }
                }
                this.f68237e = new io.reactivex.internal.queue.a(this.f68236d);
                this.f68233a.onSubscribe(this);
            }
        }
    }

    public ObservableConcatMap(io.reactivex.e0<T> e0Var, w2.o<? super T, ? extends io.reactivex.e0<? extends U>> oVar, int i2, ErrorMode errorMode) {
        super(e0Var);
        this.f68216b = oVar;
        this.f68218d = errorMode;
        this.f68217c = Math.max(8, i2);
    }

    @Override // io.reactivex.z
    public void F5(io.reactivex.g0<? super U> g0Var) {
        if (ObservableScalarXMap.b(this.f68961a, g0Var, this.f68216b)) {
            return;
        }
        if (this.f68218d == ErrorMode.IMMEDIATE) {
            this.f68961a.a(new SourceObserver(new io.reactivex.observers.l(g0Var), this.f68216b, this.f68217c));
        } else {
            this.f68961a.a(new ConcatMapDelayErrorObserver(g0Var, this.f68216b, this.f68217c, this.f68218d == ErrorMode.END));
        }
    }
}
