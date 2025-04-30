package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.SequentialDisposable;
import io.reactivex.internal.operators.observable.ObservableTimeoutTimed;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class ObservableTimeout<T, U, V> extends io.reactivex.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.e0<U> f68814b;

    /* renamed from: c  reason: collision with root package name */
    final w2.o<? super T, ? extends io.reactivex.e0<V>> f68815c;

    /* renamed from: d  reason: collision with root package name */
    final io.reactivex.e0<? extends T> f68816d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class TimeoutConsumer extends AtomicReference<io.reactivex.disposables.b> implements io.reactivex.g0<Object>, io.reactivex.disposables.b {
        private static final long serialVersionUID = 8708641127342403073L;

        /* renamed from: a  reason: collision with root package name */
        final a f68817a;

        /* renamed from: b  reason: collision with root package name */
        final long f68818b;

        TimeoutConsumer(long j4, a aVar) {
            this.f68818b = j4;
            this.f68817a = aVar;
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            Object obj = get();
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (obj != disposableHelper) {
                lazySet(disposableHelper);
                this.f68817a.b(this.f68818b);
            }
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            Object obj = get();
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (obj != disposableHelper) {
                lazySet(disposableHelper);
                this.f68817a.a(this.f68818b, th);
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // io.reactivex.g0
        public void onNext(Object obj) {
            io.reactivex.disposables.b bVar = (io.reactivex.disposables.b) get();
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (bVar != disposableHelper) {
                bVar.dispose();
                lazySet(disposableHelper);
                this.f68817a.b(this.f68818b);
            }
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            DisposableHelper.setOnce(this, bVar);
        }
    }

    /* loaded from: classes5.dex */
    static final class TimeoutFallbackObserver<T> extends AtomicReference<io.reactivex.disposables.b> implements io.reactivex.g0<T>, io.reactivex.disposables.b, a {
        private static final long serialVersionUID = -7508389464265974549L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super T> f68819a;

        /* renamed from: b  reason: collision with root package name */
        final w2.o<? super T, ? extends io.reactivex.e0<?>> f68820b;

        /* renamed from: c  reason: collision with root package name */
        final SequentialDisposable f68821c = new SequentialDisposable();

        /* renamed from: d  reason: collision with root package name */
        final AtomicLong f68822d = new AtomicLong();

        /* renamed from: e  reason: collision with root package name */
        final AtomicReference<io.reactivex.disposables.b> f68823e = new AtomicReference<>();

        /* renamed from: f  reason: collision with root package name */
        io.reactivex.e0<? extends T> f68824f;

        TimeoutFallbackObserver(io.reactivex.g0<? super T> g0Var, w2.o<? super T, ? extends io.reactivex.e0<?>> oVar, io.reactivex.e0<? extends T> e0Var) {
            this.f68819a = g0Var;
            this.f68820b = oVar;
            this.f68824f = e0Var;
        }

        @Override // io.reactivex.internal.operators.observable.ObservableTimeout.a
        public void a(long j4, Throwable th) {
            if (this.f68822d.compareAndSet(j4, Long.MAX_VALUE)) {
                DisposableHelper.dispose(this);
                this.f68819a.onError(th);
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // io.reactivex.internal.operators.observable.ObservableTimeoutTimed.b
        public void b(long j4) {
            if (this.f68822d.compareAndSet(j4, Long.MAX_VALUE)) {
                DisposableHelper.dispose(this.f68823e);
                io.reactivex.e0<? extends T> e0Var = this.f68824f;
                this.f68824f = null;
                e0Var.a(new ObservableTimeoutTimed.a(this.f68819a, this));
            }
        }

        void c(io.reactivex.e0<?> e0Var) {
            if (e0Var != null) {
                TimeoutConsumer timeoutConsumer = new TimeoutConsumer(0L, this);
                if (this.f68821c.a(timeoutConsumer)) {
                    e0Var.a(timeoutConsumer);
                }
            }
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            DisposableHelper.dispose(this.f68823e);
            DisposableHelper.dispose(this);
            this.f68821c.dispose();
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            if (this.f68822d.getAndSet(Long.MAX_VALUE) != Long.MAX_VALUE) {
                this.f68821c.dispose();
                this.f68819a.onComplete();
                this.f68821c.dispose();
            }
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            if (this.f68822d.getAndSet(Long.MAX_VALUE) != Long.MAX_VALUE) {
                this.f68821c.dispose();
                this.f68819a.onError(th);
                this.f68821c.dispose();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t3) {
            long j4 = this.f68822d.get();
            if (j4 != Long.MAX_VALUE) {
                long j5 = 1 + j4;
                if (this.f68822d.compareAndSet(j4, j5)) {
                    io.reactivex.disposables.b bVar = this.f68821c.get();
                    if (bVar != null) {
                        bVar.dispose();
                    }
                    this.f68819a.onNext(t3);
                    try {
                        io.reactivex.e0 e0Var = (io.reactivex.e0) io.reactivex.internal.functions.a.g(this.f68820b.apply(t3), "The itemTimeoutIndicator returned a null ObservableSource.");
                        TimeoutConsumer timeoutConsumer = new TimeoutConsumer(j5, this);
                        if (this.f68821c.a(timeoutConsumer)) {
                            e0Var.a(timeoutConsumer);
                        }
                    } catch (Throwable th) {
                        io.reactivex.exceptions.a.b(th);
                        this.f68823e.get().dispose();
                        this.f68822d.getAndSet(Long.MAX_VALUE);
                        this.f68819a.onError(th);
                    }
                }
            }
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            DisposableHelper.setOnce(this.f68823e, bVar);
        }
    }

    /* loaded from: classes5.dex */
    static final class TimeoutObserver<T> extends AtomicLong implements io.reactivex.g0<T>, io.reactivex.disposables.b, a {
        private static final long serialVersionUID = 3764492702657003550L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super T> f68825a;

        /* renamed from: b  reason: collision with root package name */
        final w2.o<? super T, ? extends io.reactivex.e0<?>> f68826b;

        /* renamed from: c  reason: collision with root package name */
        final SequentialDisposable f68827c = new SequentialDisposable();

        /* renamed from: d  reason: collision with root package name */
        final AtomicReference<io.reactivex.disposables.b> f68828d = new AtomicReference<>();

        TimeoutObserver(io.reactivex.g0<? super T> g0Var, w2.o<? super T, ? extends io.reactivex.e0<?>> oVar) {
            this.f68825a = g0Var;
            this.f68826b = oVar;
        }

        @Override // io.reactivex.internal.operators.observable.ObservableTimeout.a
        public void a(long j4, Throwable th) {
            if (compareAndSet(j4, Long.MAX_VALUE)) {
                DisposableHelper.dispose(this.f68828d);
                this.f68825a.onError(th);
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // io.reactivex.internal.operators.observable.ObservableTimeoutTimed.b
        public void b(long j4) {
            if (compareAndSet(j4, Long.MAX_VALUE)) {
                DisposableHelper.dispose(this.f68828d);
                this.f68825a.onError(new TimeoutException());
            }
        }

        void c(io.reactivex.e0<?> e0Var) {
            if (e0Var != null) {
                TimeoutConsumer timeoutConsumer = new TimeoutConsumer(0L, this);
                if (this.f68827c.a(timeoutConsumer)) {
                    e0Var.a(timeoutConsumer);
                }
            }
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            DisposableHelper.dispose(this.f68828d);
            this.f68827c.dispose();
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(this.f68828d.get());
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            if (getAndSet(Long.MAX_VALUE) != Long.MAX_VALUE) {
                this.f68827c.dispose();
                this.f68825a.onComplete();
            }
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            if (getAndSet(Long.MAX_VALUE) != Long.MAX_VALUE) {
                this.f68827c.dispose();
                this.f68825a.onError(th);
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t3) {
            long j4 = get();
            if (j4 != Long.MAX_VALUE) {
                long j5 = 1 + j4;
                if (compareAndSet(j4, j5)) {
                    io.reactivex.disposables.b bVar = this.f68827c.get();
                    if (bVar != null) {
                        bVar.dispose();
                    }
                    this.f68825a.onNext(t3);
                    try {
                        io.reactivex.e0 e0Var = (io.reactivex.e0) io.reactivex.internal.functions.a.g(this.f68826b.apply(t3), "The itemTimeoutIndicator returned a null ObservableSource.");
                        TimeoutConsumer timeoutConsumer = new TimeoutConsumer(j5, this);
                        if (this.f68827c.a(timeoutConsumer)) {
                            e0Var.a(timeoutConsumer);
                        }
                    } catch (Throwable th) {
                        io.reactivex.exceptions.a.b(th);
                        this.f68828d.get().dispose();
                        getAndSet(Long.MAX_VALUE);
                        this.f68825a.onError(th);
                    }
                }
            }
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            DisposableHelper.setOnce(this.f68828d, bVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public interface a extends ObservableTimeoutTimed.b {
        void a(long j4, Throwable th);
    }

    public ObservableTimeout(io.reactivex.z<T> zVar, io.reactivex.e0<U> e0Var, w2.o<? super T, ? extends io.reactivex.e0<V>> oVar, io.reactivex.e0<? extends T> e0Var2) {
        super(zVar);
        this.f68814b = e0Var;
        this.f68815c = oVar;
        this.f68816d = e0Var2;
    }

    @Override // io.reactivex.z
    protected void F5(io.reactivex.g0<? super T> g0Var) {
        if (this.f68816d == null) {
            TimeoutObserver timeoutObserver = new TimeoutObserver(g0Var, this.f68815c);
            g0Var.onSubscribe(timeoutObserver);
            timeoutObserver.c(this.f68814b);
            this.f68961a.a(timeoutObserver);
            return;
        }
        TimeoutFallbackObserver timeoutFallbackObserver = new TimeoutFallbackObserver(g0Var, this.f68815c, this.f68816d);
        g0Var.onSubscribe(timeoutFallbackObserver);
        timeoutFallbackObserver.c(this.f68814b);
        this.f68961a.a(timeoutFallbackObserver);
    }
}
