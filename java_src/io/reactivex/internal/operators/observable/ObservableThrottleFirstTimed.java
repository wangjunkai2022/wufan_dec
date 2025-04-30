package io.reactivex.internal.operators.observable;

import io.reactivex.h0;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class ObservableThrottleFirstTimed<T> extends a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final long f68788b;

    /* renamed from: c  reason: collision with root package name */
    final TimeUnit f68789c;

    /* renamed from: d  reason: collision with root package name */
    final io.reactivex.h0 f68790d;

    /* loaded from: classes5.dex */
    static final class DebounceTimedObserver<T> extends AtomicReference<io.reactivex.disposables.b> implements io.reactivex.g0<T>, io.reactivex.disposables.b, Runnable {
        private static final long serialVersionUID = 786994795061867455L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super T> f68791a;

        /* renamed from: b  reason: collision with root package name */
        final long f68792b;

        /* renamed from: c  reason: collision with root package name */
        final TimeUnit f68793c;

        /* renamed from: d  reason: collision with root package name */
        final h0.c f68794d;

        /* renamed from: e  reason: collision with root package name */
        io.reactivex.disposables.b f68795e;

        /* renamed from: f  reason: collision with root package name */
        volatile boolean f68796f;

        /* renamed from: g  reason: collision with root package name */
        boolean f68797g;

        DebounceTimedObserver(io.reactivex.g0<? super T> g0Var, long j4, TimeUnit timeUnit, h0.c cVar) {
            this.f68791a = g0Var;
            this.f68792b = j4;
            this.f68793c = timeUnit;
            this.f68794d = cVar;
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.f68795e.dispose();
            this.f68794d.dispose();
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f68794d.isDisposed();
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            if (this.f68797g) {
                return;
            }
            this.f68797g = true;
            this.f68791a.onComplete();
            this.f68794d.dispose();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            if (this.f68797g) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f68797g = true;
            this.f68791a.onError(th);
            this.f68794d.dispose();
        }

        @Override // io.reactivex.g0
        public void onNext(T t3) {
            if (this.f68796f || this.f68797g) {
                return;
            }
            this.f68796f = true;
            this.f68791a.onNext(t3);
            io.reactivex.disposables.b bVar = get();
            if (bVar != null) {
                bVar.dispose();
            }
            DisposableHelper.replace(this, this.f68794d.c(this, this.f68792b, this.f68793c));
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.validate(this.f68795e, bVar)) {
                this.f68795e = bVar;
                this.f68791a.onSubscribe(this);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f68796f = false;
        }
    }

    public ObservableThrottleFirstTimed(io.reactivex.e0<T> e0Var, long j4, TimeUnit timeUnit, io.reactivex.h0 h0Var) {
        super(e0Var);
        this.f68788b = j4;
        this.f68789c = timeUnit;
        this.f68790d = h0Var;
    }

    @Override // io.reactivex.z
    public void F5(io.reactivex.g0<? super T> g0Var) {
        this.f68961a.a(new DebounceTimedObserver(new io.reactivex.observers.l(g0Var), this.f68788b, this.f68789c, this.f68790d.c()));
    }
}
