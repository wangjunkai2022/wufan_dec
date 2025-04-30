package io.reactivex.internal.operators.observable;

import io.reactivex.annotations.Nullable;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.observers.BasicIntQueueDisposable;
import io.reactivex.internal.util.AtomicThrowable;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class ObservableFlatMapCompletable<T> extends a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final w2.o<? super T, ? extends io.reactivex.g> f68329b;

    /* renamed from: c  reason: collision with root package name */
    final boolean f68330c;

    /* loaded from: classes5.dex */
    static final class FlatMapCompletableMainObserver<T> extends BasicIntQueueDisposable<T> implements io.reactivex.g0<T> {
        private static final long serialVersionUID = 8443155186132538303L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super T> f68331a;

        /* renamed from: c  reason: collision with root package name */
        final w2.o<? super T, ? extends io.reactivex.g> f68333c;

        /* renamed from: d  reason: collision with root package name */
        final boolean f68334d;

        /* renamed from: f  reason: collision with root package name */
        io.reactivex.disposables.b f68336f;

        /* renamed from: g  reason: collision with root package name */
        volatile boolean f68337g;

        /* renamed from: b  reason: collision with root package name */
        final AtomicThrowable f68332b = new AtomicThrowable();

        /* renamed from: e  reason: collision with root package name */
        final io.reactivex.disposables.a f68335e = new io.reactivex.disposables.a();

        /* loaded from: classes5.dex */
        final class InnerObserver extends AtomicReference<io.reactivex.disposables.b> implements io.reactivex.d, io.reactivex.disposables.b {
            private static final long serialVersionUID = 8606673141535671828L;

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

            @Override // io.reactivex.d
            public void onComplete() {
                FlatMapCompletableMainObserver.this.a(this);
            }

            @Override // io.reactivex.d
            public void onError(Throwable th) {
                FlatMapCompletableMainObserver.this.b(this, th);
            }

            @Override // io.reactivex.d
            public void onSubscribe(io.reactivex.disposables.b bVar) {
                DisposableHelper.setOnce(this, bVar);
            }
        }

        FlatMapCompletableMainObserver(io.reactivex.g0<? super T> g0Var, w2.o<? super T, ? extends io.reactivex.g> oVar, boolean z3) {
            this.f68331a = g0Var;
            this.f68333c = oVar;
            this.f68334d = z3;
            lazySet(1);
        }

        void a(FlatMapCompletableMainObserver<T>.InnerObserver innerObserver) {
            this.f68335e.delete(innerObserver);
            onComplete();
        }

        void b(FlatMapCompletableMainObserver<T>.InnerObserver innerObserver, Throwable th) {
            this.f68335e.delete(innerObserver);
            onError(th);
        }

        @Override // x2.o
        public void clear() {
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.f68337g = true;
            this.f68336f.dispose();
            this.f68335e.dispose();
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f68336f.isDisposed();
        }

        @Override // x2.o
        public boolean isEmpty() {
            return true;
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            if (decrementAndGet() == 0) {
                Throwable c4 = this.f68332b.c();
                if (c4 != null) {
                    this.f68331a.onError(c4);
                } else {
                    this.f68331a.onComplete();
                }
            }
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            if (this.f68332b.a(th)) {
                if (this.f68334d) {
                    if (decrementAndGet() == 0) {
                        this.f68331a.onError(this.f68332b.c());
                        return;
                    }
                    return;
                }
                dispose();
                if (getAndSet(0) > 0) {
                    this.f68331a.onError(this.f68332b.c());
                    return;
                }
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t3) {
            try {
                io.reactivex.g gVar = (io.reactivex.g) io.reactivex.internal.functions.a.g(this.f68333c.apply(t3), "The mapper returned a null CompletableSource");
                getAndIncrement();
                InnerObserver innerObserver = new InnerObserver();
                if (this.f68337g || !this.f68335e.b(innerObserver)) {
                    return;
                }
                gVar.a(innerObserver);
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f68336f.dispose();
                onError(th);
            }
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.validate(this.f68336f, bVar)) {
                this.f68336f = bVar;
                this.f68331a.onSubscribe(this);
            }
        }

        @Override // x2.o
        @Nullable
        public T poll() throws Exception {
            return null;
        }

        @Override // x2.k
        public int requestFusion(int i2) {
            return i2 & 2;
        }
    }

    public ObservableFlatMapCompletable(io.reactivex.e0<T> e0Var, w2.o<? super T, ? extends io.reactivex.g> oVar, boolean z3) {
        super(e0Var);
        this.f68329b = oVar;
        this.f68330c = z3;
    }

    @Override // io.reactivex.z
    protected void F5(io.reactivex.g0<? super T> g0Var) {
        this.f68961a.a(new FlatMapCompletableMainObserver(g0Var, this.f68329b, this.f68330c));
    }
}
