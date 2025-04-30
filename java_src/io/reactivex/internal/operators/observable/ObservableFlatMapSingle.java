package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.util.AtomicThrowable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class ObservableFlatMapSingle<T, R> extends a<T, R> {

    /* renamed from: b  reason: collision with root package name */
    final w2.o<? super T, ? extends io.reactivex.o0<? extends R>> f68362b;

    /* renamed from: c  reason: collision with root package name */
    final boolean f68363c;

    /* loaded from: classes5.dex */
    static final class FlatMapSingleObserver<T, R> extends AtomicInteger implements io.reactivex.g0<T>, io.reactivex.disposables.b {
        private static final long serialVersionUID = 8600231336733376951L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super R> f68364a;

        /* renamed from: b  reason: collision with root package name */
        final boolean f68365b;

        /* renamed from: f  reason: collision with root package name */
        final w2.o<? super T, ? extends io.reactivex.o0<? extends R>> f68369f;

        /* renamed from: h  reason: collision with root package name */
        io.reactivex.disposables.b f68371h;

        /* renamed from: i  reason: collision with root package name */
        volatile boolean f68372i;

        /* renamed from: c  reason: collision with root package name */
        final io.reactivex.disposables.a f68366c = new io.reactivex.disposables.a();

        /* renamed from: e  reason: collision with root package name */
        final AtomicThrowable f68368e = new AtomicThrowable();

        /* renamed from: d  reason: collision with root package name */
        final AtomicInteger f68367d = new AtomicInteger(1);

        /* renamed from: g  reason: collision with root package name */
        final AtomicReference<io.reactivex.internal.queue.a<R>> f68370g = new AtomicReference<>();

        /* loaded from: classes5.dex */
        final class InnerObserver extends AtomicReference<io.reactivex.disposables.b> implements io.reactivex.l0<R>, io.reactivex.disposables.b {
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

            @Override // io.reactivex.l0
            public void onError(Throwable th) {
                FlatMapSingleObserver.this.d(this, th);
            }

            @Override // io.reactivex.l0
            public void onSubscribe(io.reactivex.disposables.b bVar) {
                DisposableHelper.setOnce(this, bVar);
            }

            @Override // io.reactivex.l0
            public void onSuccess(R r3) {
                FlatMapSingleObserver.this.e(this, r3);
            }
        }

        FlatMapSingleObserver(io.reactivex.g0<? super R> g0Var, w2.o<? super T, ? extends io.reactivex.o0<? extends R>> oVar, boolean z3) {
            this.f68364a = g0Var;
            this.f68369f = oVar;
            this.f68365b = z3;
        }

        void a() {
            if (getAndIncrement() == 0) {
                b();
            }
        }

        void b() {
            io.reactivex.g0<? super R> g0Var = this.f68364a;
            AtomicInteger atomicInteger = this.f68367d;
            AtomicReference<io.reactivex.internal.queue.a<R>> atomicReference = this.f68370g;
            int i2 = 1;
            while (!this.f68372i) {
                if (!this.f68365b && this.f68368e.get() != null) {
                    Throwable c4 = this.f68368e.c();
                    clear();
                    g0Var.onError(c4);
                    return;
                }
                boolean z3 = atomicInteger.get() == 0;
                io.reactivex.internal.queue.a<R> aVar = atomicReference.get();
                R poll = aVar != null ? aVar.poll() : (Object) null;
                boolean z4 = poll == null;
                if (z3 && z4) {
                    Throwable c5 = this.f68368e.c();
                    if (c5 != null) {
                        g0Var.onError(c5);
                        return;
                    } else {
                        g0Var.onComplete();
                        return;
                    }
                } else if (z4) {
                    i2 = addAndGet(-i2);
                    if (i2 == 0) {
                        return;
                    }
                } else {
                    g0Var.onNext(poll);
                }
            }
            clear();
        }

        io.reactivex.internal.queue.a<R> c() {
            io.reactivex.internal.queue.a<R> aVar;
            do {
                io.reactivex.internal.queue.a<R> aVar2 = this.f68370g.get();
                if (aVar2 != null) {
                    return aVar2;
                }
                aVar = new io.reactivex.internal.queue.a<>(io.reactivex.z.S());
            } while (!this.f68370g.compareAndSet(null, aVar));
            return aVar;
        }

        void clear() {
            io.reactivex.internal.queue.a<R> aVar = this.f68370g.get();
            if (aVar != null) {
                aVar.clear();
            }
        }

        void d(FlatMapSingleObserver<T, R>.InnerObserver innerObserver, Throwable th) {
            this.f68366c.delete(innerObserver);
            if (this.f68368e.a(th)) {
                if (!this.f68365b) {
                    this.f68371h.dispose();
                    this.f68366c.dispose();
                }
                this.f68367d.decrementAndGet();
                a();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.f68372i = true;
            this.f68371h.dispose();
            this.f68366c.dispose();
        }

        void e(FlatMapSingleObserver<T, R>.InnerObserver innerObserver, R r3) {
            this.f68366c.delete(innerObserver);
            if (get() == 0) {
                if (compareAndSet(0, 1)) {
                    this.f68364a.onNext(r3);
                    boolean z3 = this.f68367d.decrementAndGet() == 0;
                    io.reactivex.internal.queue.a<R> aVar = this.f68370g.get();
                    if (z3 && (aVar == null || aVar.isEmpty())) {
                        Throwable c4 = this.f68368e.c();
                        if (c4 != null) {
                            this.f68364a.onError(c4);
                            return;
                        } else {
                            this.f68364a.onComplete();
                            return;
                        }
                    }
                    if (decrementAndGet() == 0) {
                        return;
                    }
                    b();
                }
            }
            io.reactivex.internal.queue.a<R> c5 = c();
            synchronized (c5) {
                c5.offer(r3);
            }
            this.f68367d.decrementAndGet();
            if (getAndIncrement() != 0) {
                return;
            }
            b();
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f68372i;
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            this.f68367d.decrementAndGet();
            a();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            this.f68367d.decrementAndGet();
            if (this.f68368e.a(th)) {
                if (!this.f68365b) {
                    this.f68366c.dispose();
                }
                a();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t3) {
            try {
                io.reactivex.o0 o0Var = (io.reactivex.o0) io.reactivex.internal.functions.a.g(this.f68369f.apply(t3), "The mapper returned a null SingleSource");
                this.f68367d.getAndIncrement();
                InnerObserver innerObserver = new InnerObserver();
                if (this.f68372i || !this.f68366c.b(innerObserver)) {
                    return;
                }
                o0Var.a(innerObserver);
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f68371h.dispose();
                onError(th);
            }
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.validate(this.f68371h, bVar)) {
                this.f68371h = bVar;
                this.f68364a.onSubscribe(this);
            }
        }
    }

    public ObservableFlatMapSingle(io.reactivex.e0<T> e0Var, w2.o<? super T, ? extends io.reactivex.o0<? extends R>> oVar, boolean z3) {
        super(e0Var);
        this.f68362b = oVar;
        this.f68363c = z3;
    }

    @Override // io.reactivex.z
    protected void F5(io.reactivex.g0<? super R> g0Var) {
        this.f68961a.a(new FlatMapSingleObserver(g0Var, this.f68362b, this.f68363c));
    }
}
