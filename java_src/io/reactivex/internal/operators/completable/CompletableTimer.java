package io.reactivex.internal.operators.completable;

import io.reactivex.h0;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class CompletableTimer extends io.reactivex.a {

    /* renamed from: a  reason: collision with root package name */
    final long f66033a;

    /* renamed from: b  reason: collision with root package name */
    final TimeUnit f66034b;

    /* renamed from: c  reason: collision with root package name */
    final h0 f66035c;

    /* loaded from: classes5.dex */
    static final class TimerDisposable extends AtomicReference<io.reactivex.disposables.b> implements io.reactivex.disposables.b, Runnable {
        private static final long serialVersionUID = 3167244060586201109L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.d f66036a;

        TimerDisposable(io.reactivex.d dVar) {
            this.f66036a = dVar;
        }

        void a(io.reactivex.disposables.b bVar) {
            DisposableHelper.replace(this, bVar);
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f66036a.onComplete();
        }
    }

    public CompletableTimer(long j4, TimeUnit timeUnit, h0 h0Var) {
        this.f66033a = j4;
        this.f66034b = timeUnit;
        this.f66035c = h0Var;
    }

    @Override // io.reactivex.a
    protected void F0(io.reactivex.d dVar) {
        TimerDisposable timerDisposable = new TimerDisposable(dVar);
        dVar.onSubscribe(timerDisposable);
        timerDisposable.a(this.f66035c.f(timerDisposable, this.f66033a, this.f66034b));
    }
}
