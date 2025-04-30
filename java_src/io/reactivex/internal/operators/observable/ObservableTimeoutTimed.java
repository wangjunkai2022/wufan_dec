package io.reactivex.internal.operators.observable;

import io.reactivex.h0;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.SequentialDisposable;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class ObservableTimeoutTimed<T> extends io.reactivex.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final long f68829b;

    /* renamed from: c  reason: collision with root package name */
    final TimeUnit f68830c;

    /* renamed from: d  reason: collision with root package name */
    final io.reactivex.h0 f68831d;

    /* renamed from: e  reason: collision with root package name */
    final io.reactivex.e0<? extends T> f68832e;

    /* loaded from: classes5.dex */
    static final class TimeoutFallbackObserver<T> extends AtomicReference<io.reactivex.disposables.b> implements io.reactivex.g0<T>, io.reactivex.disposables.b, b {
        private static final long serialVersionUID = 3764492702657003550L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super T> f68833a;

        /* renamed from: b  reason: collision with root package name */
        final long f68834b;

        /* renamed from: c  reason: collision with root package name */
        final TimeUnit f68835c;

        /* renamed from: d  reason: collision with root package name */
        final h0.c f68836d;

        /* renamed from: e  reason: collision with root package name */
        final SequentialDisposable f68837e = new SequentialDisposable();

        /* renamed from: f  reason: collision with root package name */
        final AtomicLong f68838f = new AtomicLong();

        /* renamed from: g  reason: collision with root package name */
        final AtomicReference<io.reactivex.disposables.b> f68839g = new AtomicReference<>();

        /* renamed from: h  reason: collision with root package name */
        io.reactivex.e0<? extends T> f68840h;

        TimeoutFallbackObserver(io.reactivex.g0<? super T> g0Var, long j4, TimeUnit timeUnit, h0.c cVar, io.reactivex.e0<? extends T> e0Var) {
            this.f68833a = g0Var;
            this.f68834b = j4;
            this.f68835c = timeUnit;
            this.f68836d = cVar;
            this.f68840h = e0Var;
        }

        @Override // io.reactivex.internal.operators.observable.ObservableTimeoutTimed.b
        public void b(long j4) {
            if (this.f68838f.compareAndSet(j4, Long.MAX_VALUE)) {
                DisposableHelper.dispose(this.f68839g);
                io.reactivex.e0<? extends T> e0Var = this.f68840h;
                this.f68840h = null;
                e0Var.a(new a(this.f68833a, this));
                this.f68836d.dispose();
            }
        }

        void c(long j4) {
            this.f68837e.a(this.f68836d.c(new c(j4, this), this.f68834b, this.f68835c));
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            DisposableHelper.dispose(this.f68839g);
            DisposableHelper.dispose(this);
            this.f68836d.dispose();
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            if (this.f68838f.getAndSet(Long.MAX_VALUE) != Long.MAX_VALUE) {
                this.f68837e.dispose();
                this.f68833a.onComplete();
                this.f68836d.dispose();
            }
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            if (this.f68838f.getAndSet(Long.MAX_VALUE) != Long.MAX_VALUE) {
                this.f68837e.dispose();
                this.f68833a.onError(th);
                this.f68836d.dispose();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t3) {
            long j4 = this.f68838f.get();
            if (j4 != Long.MAX_VALUE) {
                long j5 = 1 + j4;
                if (this.f68838f.compareAndSet(j4, j5)) {
                    this.f68837e.get().dispose();
                    this.f68833a.onNext(t3);
                    c(j5);
                }
            }
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            DisposableHelper.setOnce(this.f68839g, bVar);
        }
    }

    /* loaded from: classes5.dex */
    static final class TimeoutObserver<T> extends AtomicLong implements io.reactivex.g0<T>, io.reactivex.disposables.b, b {
        private static final long serialVersionUID = 3764492702657003550L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super T> f68841a;

        /* renamed from: b  reason: collision with root package name */
        final long f68842b;

        /* renamed from: c  reason: collision with root package name */
        final TimeUnit f68843c;

        /* renamed from: d  reason: collision with root package name */
        final h0.c f68844d;

        /* renamed from: e  reason: collision with root package name */
        final SequentialDisposable f68845e = new SequentialDisposable();

        /* renamed from: f  reason: collision with root package name */
        final AtomicReference<io.reactivex.disposables.b> f68846f = new AtomicReference<>();

        TimeoutObserver(io.reactivex.g0<? super T> g0Var, long j4, TimeUnit timeUnit, h0.c cVar) {
            this.f68841a = g0Var;
            this.f68842b = j4;
            this.f68843c = timeUnit;
            this.f68844d = cVar;
        }

        @Override // io.reactivex.internal.operators.observable.ObservableTimeoutTimed.b
        public void b(long j4) {
            if (compareAndSet(j4, Long.MAX_VALUE)) {
                DisposableHelper.dispose(this.f68846f);
                this.f68841a.onError(new TimeoutException());
                this.f68844d.dispose();
            }
        }

        void c(long j4) {
            this.f68845e.a(this.f68844d.c(new c(j4, this), this.f68842b, this.f68843c));
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            DisposableHelper.dispose(this.f68846f);
            this.f68844d.dispose();
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(this.f68846f.get());
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            if (getAndSet(Long.MAX_VALUE) != Long.MAX_VALUE) {
                this.f68845e.dispose();
                this.f68841a.onComplete();
                this.f68844d.dispose();
            }
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            if (getAndSet(Long.MAX_VALUE) != Long.MAX_VALUE) {
                this.f68845e.dispose();
                this.f68841a.onError(th);
                this.f68844d.dispose();
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
                    this.f68845e.get().dispose();
                    this.f68841a.onNext(t3);
                    c(j5);
                }
            }
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            DisposableHelper.setOnce(this.f68846f, bVar);
        }
    }

    /* loaded from: classes5.dex */
    static final class a<T> implements io.reactivex.g0<T> {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super T> f68847a;

        /* renamed from: b  reason: collision with root package name */
        final AtomicReference<io.reactivex.disposables.b> f68848b;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(io.reactivex.g0<? super T> g0Var, AtomicReference<io.reactivex.disposables.b> atomicReference) {
            this.f68847a = g0Var;
            this.f68848b = atomicReference;
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            this.f68847a.onComplete();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            this.f68847a.onError(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t3) {
            this.f68847a.onNext(t3);
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            DisposableHelper.replace(this.f68848b, bVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public interface b {
        void b(long j4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final b f68849a;

        /* renamed from: b  reason: collision with root package name */
        final long f68850b;

        c(long j4, b bVar) {
            this.f68850b = j4;
            this.f68849a = bVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f68849a.b(this.f68850b);
        }
    }

    public ObservableTimeoutTimed(io.reactivex.z<T> zVar, long j4, TimeUnit timeUnit, io.reactivex.h0 h0Var, io.reactivex.e0<? extends T> e0Var) {
        super(zVar);
        this.f68829b = j4;
        this.f68830c = timeUnit;
        this.f68831d = h0Var;
        this.f68832e = e0Var;
    }

    @Override // io.reactivex.z
    protected void F5(io.reactivex.g0<? super T> g0Var) {
        if (this.f68832e == null) {
            TimeoutObserver timeoutObserver = new TimeoutObserver(g0Var, this.f68829b, this.f68830c, this.f68831d.c());
            g0Var.onSubscribe(timeoutObserver);
            timeoutObserver.c(0L);
            this.f68961a.a(timeoutObserver);
            return;
        }
        TimeoutFallbackObserver timeoutFallbackObserver = new TimeoutFallbackObserver(g0Var, this.f68829b, this.f68830c, this.f68831d.c(), this.f68832e);
        g0Var.onSubscribe(timeoutFallbackObserver);
        timeoutFallbackObserver.c(0L);
        this.f68961a.a(timeoutFallbackObserver);
    }
}
