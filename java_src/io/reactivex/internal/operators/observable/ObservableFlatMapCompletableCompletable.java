package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.util.AtomicThrowable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class ObservableFlatMapCompletableCompletable<T> extends io.reactivex.a implements x2.d<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.e0<T> f68339a;

    /* renamed from: b  reason: collision with root package name */
    final w2.o<? super T, ? extends io.reactivex.g> f68340b;

    /* renamed from: c  reason: collision with root package name */
    final boolean f68341c;

    /* loaded from: classes5.dex */
    static final class FlatMapCompletableMainObserver<T> extends AtomicInteger implements io.reactivex.disposables.b, io.reactivex.g0<T> {
        private static final long serialVersionUID = 8443155186132538303L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.d f68342a;

        /* renamed from: c  reason: collision with root package name */
        final w2.o<? super T, ? extends io.reactivex.g> f68344c;

        /* renamed from: d  reason: collision with root package name */
        final boolean f68345d;

        /* renamed from: f  reason: collision with root package name */
        io.reactivex.disposables.b f68347f;

        /* renamed from: g  reason: collision with root package name */
        volatile boolean f68348g;

        /* renamed from: b  reason: collision with root package name */
        final AtomicThrowable f68343b = new AtomicThrowable();

        /* renamed from: e  reason: collision with root package name */
        final io.reactivex.disposables.a f68346e = new io.reactivex.disposables.a();

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

        FlatMapCompletableMainObserver(io.reactivex.d dVar, w2.o<? super T, ? extends io.reactivex.g> oVar, boolean z3) {
            this.f68342a = dVar;
            this.f68344c = oVar;
            this.f68345d = z3;
            lazySet(1);
        }

        void a(FlatMapCompletableMainObserver<T>.InnerObserver innerObserver) {
            this.f68346e.delete(innerObserver);
            onComplete();
        }

        void b(FlatMapCompletableMainObserver<T>.InnerObserver innerObserver, Throwable th) {
            this.f68346e.delete(innerObserver);
            onError(th);
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.f68348g = true;
            this.f68347f.dispose();
            this.f68346e.dispose();
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f68347f.isDisposed();
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            if (decrementAndGet() == 0) {
                Throwable c4 = this.f68343b.c();
                if (c4 != null) {
                    this.f68342a.onError(c4);
                } else {
                    this.f68342a.onComplete();
                }
            }
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            if (this.f68343b.a(th)) {
                if (this.f68345d) {
                    if (decrementAndGet() == 0) {
                        this.f68342a.onError(this.f68343b.c());
                        return;
                    }
                    return;
                }
                dispose();
                if (getAndSet(0) > 0) {
                    this.f68342a.onError(this.f68343b.c());
                    return;
                }
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t3) {
            try {
                io.reactivex.g gVar = (io.reactivex.g) io.reactivex.internal.functions.a.g(this.f68344c.apply(t3), "The mapper returned a null CompletableSource");
                getAndIncrement();
                InnerObserver innerObserver = new InnerObserver();
                if (this.f68348g || !this.f68346e.b(innerObserver)) {
                    return;
                }
                gVar.a(innerObserver);
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f68347f.dispose();
                onError(th);
            }
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.validate(this.f68347f, bVar)) {
                this.f68347f = bVar;
                this.f68342a.onSubscribe(this);
            }
        }
    }

    public ObservableFlatMapCompletableCompletable(io.reactivex.e0<T> e0Var, w2.o<? super T, ? extends io.reactivex.g> oVar, boolean z3) {
        this.f68339a = e0Var;
        this.f68340b = oVar;
        this.f68341c = z3;
    }

    @Override // io.reactivex.a
    protected void F0(io.reactivex.d dVar) {
        this.f68339a.a(new FlatMapCompletableMainObserver(dVar, this.f68340b, this.f68341c));
    }

    @Override // x2.d
    public io.reactivex.z<T> b() {
        return io.reactivex.plugins.a.R(new ObservableFlatMapCompletable(this.f68339a, this.f68340b, this.f68341c));
    }
}
