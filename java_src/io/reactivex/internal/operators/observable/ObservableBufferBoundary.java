package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.util.AtomicThrowable;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class ObservableBufferBoundary<T, U extends Collection<? super T>, Open, Close> extends a<T, U> {

    /* renamed from: b  reason: collision with root package name */
    final Callable<U> f68165b;

    /* renamed from: c  reason: collision with root package name */
    final io.reactivex.e0<? extends Open> f68166c;

    /* renamed from: d  reason: collision with root package name */
    final w2.o<? super Open, ? extends io.reactivex.e0<? extends Close>> f68167d;

    /* loaded from: classes5.dex */
    static final class BufferBoundaryObserver<T, C extends Collection<? super T>, Open, Close> extends AtomicInteger implements io.reactivex.g0<T>, io.reactivex.disposables.b {
        private static final long serialVersionUID = -8466418554264089604L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super C> f68168a;

        /* renamed from: b  reason: collision with root package name */
        final Callable<C> f68169b;

        /* renamed from: c  reason: collision with root package name */
        final io.reactivex.e0<? extends Open> f68170c;

        /* renamed from: d  reason: collision with root package name */
        final w2.o<? super Open, ? extends io.reactivex.e0<? extends Close>> f68171d;

        /* renamed from: h  reason: collision with root package name */
        volatile boolean f68175h;

        /* renamed from: j  reason: collision with root package name */
        volatile boolean f68177j;

        /* renamed from: k  reason: collision with root package name */
        long f68178k;

        /* renamed from: i  reason: collision with root package name */
        final io.reactivex.internal.queue.a<C> f68176i = new io.reactivex.internal.queue.a<>(io.reactivex.z.S());

        /* renamed from: e  reason: collision with root package name */
        final io.reactivex.disposables.a f68172e = new io.reactivex.disposables.a();

        /* renamed from: f  reason: collision with root package name */
        final AtomicReference<io.reactivex.disposables.b> f68173f = new AtomicReference<>();

        /* renamed from: l  reason: collision with root package name */
        Map<Long, C> f68179l = new LinkedHashMap();

        /* renamed from: g  reason: collision with root package name */
        final AtomicThrowable f68174g = new AtomicThrowable();

        /* loaded from: classes5.dex */
        static final class BufferOpenObserver<Open> extends AtomicReference<io.reactivex.disposables.b> implements io.reactivex.g0<Open>, io.reactivex.disposables.b {
            private static final long serialVersionUID = -8498650778633225126L;

            /* renamed from: a  reason: collision with root package name */
            final BufferBoundaryObserver<?, ?, Open, ?> f68180a;

            BufferOpenObserver(BufferBoundaryObserver<?, ?, Open, ?> bufferBoundaryObserver) {
                this.f68180a = bufferBoundaryObserver;
            }

            @Override // io.reactivex.disposables.b
            public void dispose() {
                DisposableHelper.dispose(this);
            }

            @Override // io.reactivex.disposables.b
            public boolean isDisposed() {
                return get() == DisposableHelper.DISPOSED;
            }

            @Override // io.reactivex.g0
            public void onComplete() {
                lazySet(DisposableHelper.DISPOSED);
                this.f68180a.e(this);
            }

            @Override // io.reactivex.g0
            public void onError(Throwable th) {
                lazySet(DisposableHelper.DISPOSED);
                this.f68180a.a(this, th);
            }

            @Override // io.reactivex.g0
            public void onNext(Open open) {
                this.f68180a.d(open);
            }

            @Override // io.reactivex.g0
            public void onSubscribe(io.reactivex.disposables.b bVar) {
                DisposableHelper.setOnce(this, bVar);
            }
        }

        BufferBoundaryObserver(io.reactivex.g0<? super C> g0Var, io.reactivex.e0<? extends Open> e0Var, w2.o<? super Open, ? extends io.reactivex.e0<? extends Close>> oVar, Callable<C> callable) {
            this.f68168a = g0Var;
            this.f68169b = callable;
            this.f68170c = e0Var;
            this.f68171d = oVar;
        }

        void a(io.reactivex.disposables.b bVar, Throwable th) {
            DisposableHelper.dispose(this.f68173f);
            this.f68172e.delete(bVar);
            onError(th);
        }

        void b(BufferCloseObserver<T, C> bufferCloseObserver, long j4) {
            boolean z3;
            this.f68172e.delete(bufferCloseObserver);
            if (this.f68172e.f() == 0) {
                DisposableHelper.dispose(this.f68173f);
                z3 = true;
            } else {
                z3 = false;
            }
            synchronized (this) {
                Map<Long, C> map = this.f68179l;
                if (map == null) {
                    return;
                }
                this.f68176i.offer(map.remove(Long.valueOf(j4)));
                if (z3) {
                    this.f68175h = true;
                }
                c();
            }
        }

        void c() {
            if (getAndIncrement() != 0) {
                return;
            }
            io.reactivex.g0<? super C> g0Var = this.f68168a;
            io.reactivex.internal.queue.a<C> aVar = this.f68176i;
            int i2 = 1;
            while (!this.f68177j) {
                boolean z3 = this.f68175h;
                if (z3 && this.f68174g.get() != null) {
                    aVar.clear();
                    g0Var.onError(this.f68174g.c());
                    return;
                }
                C poll = aVar.poll();
                boolean z4 = poll == null;
                if (z3 && z4) {
                    g0Var.onComplete();
                    return;
                } else if (z4) {
                    i2 = addAndGet(-i2);
                    if (i2 == 0) {
                        return;
                    }
                } else {
                    g0Var.onNext(poll);
                }
            }
            aVar.clear();
        }

        /* JADX WARN: Multi-variable type inference failed */
        void d(Open open) {
            try {
                Collection collection = (Collection) io.reactivex.internal.functions.a.g(this.f68169b.call(), "The bufferSupplier returned a null Collection");
                io.reactivex.e0 e0Var = (io.reactivex.e0) io.reactivex.internal.functions.a.g(this.f68171d.apply(open), "The bufferClose returned a null ObservableSource");
                long j4 = this.f68178k;
                this.f68178k = 1 + j4;
                synchronized (this) {
                    Map<Long, C> map = this.f68179l;
                    if (map == 0) {
                        return;
                    }
                    map.put(Long.valueOf(j4), collection);
                    BufferCloseObserver bufferCloseObserver = new BufferCloseObserver(this, j4);
                    this.f68172e.b(bufferCloseObserver);
                    e0Var.a(bufferCloseObserver);
                }
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                DisposableHelper.dispose(this.f68173f);
                onError(th);
            }
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            if (DisposableHelper.dispose(this.f68173f)) {
                this.f68177j = true;
                this.f68172e.dispose();
                synchronized (this) {
                    this.f68179l = null;
                }
                if (getAndIncrement() != 0) {
                    this.f68176i.clear();
                }
            }
        }

        void e(BufferOpenObserver<Open> bufferOpenObserver) {
            this.f68172e.delete(bufferOpenObserver);
            if (this.f68172e.f() == 0) {
                DisposableHelper.dispose(this.f68173f);
                this.f68175h = true;
                c();
            }
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(this.f68173f.get());
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            this.f68172e.dispose();
            synchronized (this) {
                Map<Long, C> map = this.f68179l;
                if (map == null) {
                    return;
                }
                for (C c4 : map.values()) {
                    this.f68176i.offer(c4);
                }
                this.f68179l = null;
                this.f68175h = true;
                c();
            }
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            if (this.f68174g.a(th)) {
                this.f68172e.dispose();
                synchronized (this) {
                    this.f68179l = null;
                }
                this.f68175h = true;
                c();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t3) {
            synchronized (this) {
                Map<Long, C> map = this.f68179l;
                if (map == null) {
                    return;
                }
                for (C c4 : map.values()) {
                    c4.add(t3);
                }
            }
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.setOnce(this.f68173f, bVar)) {
                BufferOpenObserver bufferOpenObserver = new BufferOpenObserver(this);
                this.f68172e.b(bufferOpenObserver);
                this.f68170c.a(bufferOpenObserver);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class BufferCloseObserver<T, C extends Collection<? super T>> extends AtomicReference<io.reactivex.disposables.b> implements io.reactivex.g0<Object>, io.reactivex.disposables.b {
        private static final long serialVersionUID = -8498650778633225126L;

        /* renamed from: a  reason: collision with root package name */
        final BufferBoundaryObserver<T, C, ?, ?> f68181a;

        /* renamed from: b  reason: collision with root package name */
        final long f68182b;

        BufferCloseObserver(BufferBoundaryObserver<T, C, ?, ?> bufferBoundaryObserver, long j4) {
            this.f68181a = bufferBoundaryObserver;
            this.f68182b = j4;
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return get() == DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            io.reactivex.disposables.b bVar = get();
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (bVar != disposableHelper) {
                lazySet(disposableHelper);
                this.f68181a.b(this, this.f68182b);
            }
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            io.reactivex.disposables.b bVar = get();
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (bVar != disposableHelper) {
                lazySet(disposableHelper);
                this.f68181a.a(this, th);
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // io.reactivex.g0
        public void onNext(Object obj) {
            io.reactivex.disposables.b bVar = get();
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (bVar != disposableHelper) {
                lazySet(disposableHelper);
                bVar.dispose();
                this.f68181a.b(this, this.f68182b);
            }
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            DisposableHelper.setOnce(this, bVar);
        }
    }

    public ObservableBufferBoundary(io.reactivex.e0<T> e0Var, io.reactivex.e0<? extends Open> e0Var2, w2.o<? super Open, ? extends io.reactivex.e0<? extends Close>> oVar, Callable<U> callable) {
        super(e0Var);
        this.f68166c = e0Var2;
        this.f68167d = oVar;
        this.f68165b = callable;
    }

    @Override // io.reactivex.z
    protected void F5(io.reactivex.g0<? super U> g0Var) {
        BufferBoundaryObserver bufferBoundaryObserver = new BufferBoundaryObserver(g0Var, this.f68166c, this.f68167d, this.f68165b);
        g0Var.onSubscribe(bufferBoundaryObserver);
        this.f68961a.a(bufferBoundaryObserver);
    }
}
