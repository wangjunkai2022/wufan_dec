package io.reactivex.internal.operators.observable;

import io.reactivex.h0;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class ObservableDebounceTimed<T> extends io.reactivex.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final long f68281b;

    /* renamed from: c  reason: collision with root package name */
    final TimeUnit f68282c;

    /* renamed from: d  reason: collision with root package name */
    final io.reactivex.h0 f68283d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class DebounceEmitter<T> extends AtomicReference<io.reactivex.disposables.b> implements Runnable, io.reactivex.disposables.b {
        private static final long serialVersionUID = 6812032969491025141L;

        /* renamed from: a  reason: collision with root package name */
        final T f68284a;

        /* renamed from: b  reason: collision with root package name */
        final long f68285b;

        /* renamed from: c  reason: collision with root package name */
        final a<T> f68286c;

        /* renamed from: d  reason: collision with root package name */
        final AtomicBoolean f68287d = new AtomicBoolean();

        DebounceEmitter(T t3, long j4, a<T> aVar) {
            this.f68284a = t3;
            this.f68285b = j4;
            this.f68286c = aVar;
        }

        public void a(io.reactivex.disposables.b bVar) {
            DisposableHelper.replace(this, bVar);
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return get() == DisposableHelper.DISPOSED;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f68287d.compareAndSet(false, true)) {
                this.f68286c.a(this.f68285b, this.f68284a, this);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class a<T> implements io.reactivex.g0<T>, io.reactivex.disposables.b {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super T> f68288a;

        /* renamed from: b  reason: collision with root package name */
        final long f68289b;

        /* renamed from: c  reason: collision with root package name */
        final TimeUnit f68290c;

        /* renamed from: d  reason: collision with root package name */
        final h0.c f68291d;

        /* renamed from: e  reason: collision with root package name */
        io.reactivex.disposables.b f68292e;

        /* renamed from: f  reason: collision with root package name */
        io.reactivex.disposables.b f68293f;

        /* renamed from: g  reason: collision with root package name */
        volatile long f68294g;

        /* renamed from: h  reason: collision with root package name */
        boolean f68295h;

        a(io.reactivex.g0<? super T> g0Var, long j4, TimeUnit timeUnit, h0.c cVar) {
            this.f68288a = g0Var;
            this.f68289b = j4;
            this.f68290c = timeUnit;
            this.f68291d = cVar;
        }

        void a(long j4, T t3, DebounceEmitter<T> debounceEmitter) {
            if (j4 == this.f68294g) {
                this.f68288a.onNext(t3);
                debounceEmitter.dispose();
            }
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.f68292e.dispose();
            this.f68291d.dispose();
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f68291d.isDisposed();
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            if (this.f68295h) {
                return;
            }
            this.f68295h = true;
            io.reactivex.disposables.b bVar = this.f68293f;
            if (bVar != null) {
                bVar.dispose();
            }
            DebounceEmitter debounceEmitter = (DebounceEmitter) bVar;
            if (debounceEmitter != null) {
                debounceEmitter.run();
            }
            this.f68288a.onComplete();
            this.f68291d.dispose();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            if (this.f68295h) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            io.reactivex.disposables.b bVar = this.f68293f;
            if (bVar != null) {
                bVar.dispose();
            }
            this.f68295h = true;
            this.f68288a.onError(th);
            this.f68291d.dispose();
        }

        @Override // io.reactivex.g0
        public void onNext(T t3) {
            if (this.f68295h) {
                return;
            }
            long j4 = this.f68294g + 1;
            this.f68294g = j4;
            io.reactivex.disposables.b bVar = this.f68293f;
            if (bVar != null) {
                bVar.dispose();
            }
            DebounceEmitter debounceEmitter = new DebounceEmitter(t3, j4, this);
            this.f68293f = debounceEmitter;
            debounceEmitter.a(this.f68291d.c(debounceEmitter, this.f68289b, this.f68290c));
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.validate(this.f68292e, bVar)) {
                this.f68292e = bVar;
                this.f68288a.onSubscribe(this);
            }
        }
    }

    public ObservableDebounceTimed(io.reactivex.e0<T> e0Var, long j4, TimeUnit timeUnit, io.reactivex.h0 h0Var) {
        super(e0Var);
        this.f68281b = j4;
        this.f68282c = timeUnit;
        this.f68283d = h0Var;
    }

    @Override // io.reactivex.z
    public void F5(io.reactivex.g0<? super T> g0Var) {
        this.f68961a.a(new a(new io.reactivex.observers.l(g0Var), this.f68281b, this.f68282c, this.f68283d.c()));
    }
}
