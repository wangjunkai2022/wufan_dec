package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.util.AtomicThrowable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class ObservableFlatMapMaybe<T, R> extends a<T, R> {

    /* renamed from: b  reason: collision with root package name */
    final w2.o<? super T, ? extends io.reactivex.w<? extends R>> f68350b;

    /* renamed from: c  reason: collision with root package name */
    final boolean f68351c;

    /* loaded from: classes5.dex */
    static final class FlatMapMaybeObserver<T, R> extends AtomicInteger implements io.reactivex.g0<T>, io.reactivex.disposables.b {
        private static final long serialVersionUID = 8600231336733376951L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super R> f68352a;

        /* renamed from: b  reason: collision with root package name */
        final boolean f68353b;

        /* renamed from: f  reason: collision with root package name */
        final w2.o<? super T, ? extends io.reactivex.w<? extends R>> f68357f;

        /* renamed from: h  reason: collision with root package name */
        io.reactivex.disposables.b f68359h;

        /* renamed from: i  reason: collision with root package name */
        volatile boolean f68360i;

        /* renamed from: c  reason: collision with root package name */
        final io.reactivex.disposables.a f68354c = new io.reactivex.disposables.a();

        /* renamed from: e  reason: collision with root package name */
        final AtomicThrowable f68356e = new AtomicThrowable();

        /* renamed from: d  reason: collision with root package name */
        final AtomicInteger f68355d = new AtomicInteger(1);

        /* renamed from: g  reason: collision with root package name */
        final AtomicReference<io.reactivex.internal.queue.a<R>> f68358g = new AtomicReference<>();

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
                FlatMapMaybeObserver.this.d(this);
            }

            @Override // io.reactivex.t
            public void onError(Throwable th) {
                FlatMapMaybeObserver.this.e(this, th);
            }

            @Override // io.reactivex.t
            public void onSubscribe(io.reactivex.disposables.b bVar) {
                DisposableHelper.setOnce(this, bVar);
            }

            @Override // io.reactivex.t
            public void onSuccess(R r3) {
                FlatMapMaybeObserver.this.f(this, r3);
            }
        }

        FlatMapMaybeObserver(io.reactivex.g0<? super R> g0Var, w2.o<? super T, ? extends io.reactivex.w<? extends R>> oVar, boolean z3) {
            this.f68352a = g0Var;
            this.f68357f = oVar;
            this.f68353b = z3;
        }

        void a() {
            if (getAndIncrement() == 0) {
                b();
            }
        }

        void b() {
            io.reactivex.g0<? super R> g0Var = this.f68352a;
            AtomicInteger atomicInteger = this.f68355d;
            AtomicReference<io.reactivex.internal.queue.a<R>> atomicReference = this.f68358g;
            int i2 = 1;
            while (!this.f68360i) {
                if (!this.f68353b && this.f68356e.get() != null) {
                    Throwable c4 = this.f68356e.c();
                    clear();
                    g0Var.onError(c4);
                    return;
                }
                boolean z3 = atomicInteger.get() == 0;
                io.reactivex.internal.queue.a<R> aVar = atomicReference.get();
                R poll = aVar != null ? aVar.poll() : (Object) null;
                boolean z4 = poll == null;
                if (z3 && z4) {
                    Throwable c5 = this.f68356e.c();
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
                io.reactivex.internal.queue.a<R> aVar2 = this.f68358g.get();
                if (aVar2 != null) {
                    return aVar2;
                }
                aVar = new io.reactivex.internal.queue.a<>(io.reactivex.z.S());
            } while (!this.f68358g.compareAndSet(null, aVar));
            return aVar;
        }

        void clear() {
            io.reactivex.internal.queue.a<R> aVar = this.f68358g.get();
            if (aVar != null) {
                aVar.clear();
            }
        }

        void d(FlatMapMaybeObserver<T, R>.InnerObserver innerObserver) {
            this.f68354c.delete(innerObserver);
            if (get() == 0) {
                if (compareAndSet(0, 1)) {
                    boolean z3 = this.f68355d.decrementAndGet() == 0;
                    io.reactivex.internal.queue.a<R> aVar = this.f68358g.get();
                    if (z3 && (aVar == null || aVar.isEmpty())) {
                        Throwable c4 = this.f68356e.c();
                        if (c4 != null) {
                            this.f68352a.onError(c4);
                            return;
                        } else {
                            this.f68352a.onComplete();
                            return;
                        }
                    } else if (decrementAndGet() == 0) {
                        return;
                    } else {
                        b();
                        return;
                    }
                }
            }
            this.f68355d.decrementAndGet();
            a();
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.f68360i = true;
            this.f68359h.dispose();
            this.f68354c.dispose();
        }

        void e(FlatMapMaybeObserver<T, R>.InnerObserver innerObserver, Throwable th) {
            this.f68354c.delete(innerObserver);
            if (this.f68356e.a(th)) {
                if (!this.f68353b) {
                    this.f68359h.dispose();
                    this.f68354c.dispose();
                }
                this.f68355d.decrementAndGet();
                a();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        void f(FlatMapMaybeObserver<T, R>.InnerObserver innerObserver, R r3) {
            this.f68354c.delete(innerObserver);
            if (get() == 0) {
                if (compareAndSet(0, 1)) {
                    this.f68352a.onNext(r3);
                    boolean z3 = this.f68355d.decrementAndGet() == 0;
                    io.reactivex.internal.queue.a<R> aVar = this.f68358g.get();
                    if (z3 && (aVar == null || aVar.isEmpty())) {
                        Throwable c4 = this.f68356e.c();
                        if (c4 != null) {
                            this.f68352a.onError(c4);
                            return;
                        } else {
                            this.f68352a.onComplete();
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
            this.f68355d.decrementAndGet();
            if (getAndIncrement() != 0) {
                return;
            }
            b();
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f68360i;
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            this.f68355d.decrementAndGet();
            a();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            this.f68355d.decrementAndGet();
            if (this.f68356e.a(th)) {
                if (!this.f68353b) {
                    this.f68354c.dispose();
                }
                a();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t3) {
            try {
                io.reactivex.w wVar = (io.reactivex.w) io.reactivex.internal.functions.a.g(this.f68357f.apply(t3), "The mapper returned a null MaybeSource");
                this.f68355d.getAndIncrement();
                InnerObserver innerObserver = new InnerObserver();
                if (this.f68360i || !this.f68354c.b(innerObserver)) {
                    return;
                }
                wVar.a(innerObserver);
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f68359h.dispose();
                onError(th);
            }
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.validate(this.f68359h, bVar)) {
                this.f68359h = bVar;
                this.f68352a.onSubscribe(this);
            }
        }
    }

    public ObservableFlatMapMaybe(io.reactivex.e0<T> e0Var, w2.o<? super T, ? extends io.reactivex.w<? extends R>> oVar, boolean z3) {
        super(e0Var);
        this.f68350b = oVar;
        this.f68351c = z3;
    }

    @Override // io.reactivex.z
    protected void F5(io.reactivex.g0<? super R> g0Var) {
        this.f68961a.a(new FlatMapMaybeObserver(g0Var, this.f68350b, this.f68351c));
    }
}
