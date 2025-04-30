package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class ObservableTimer extends io.reactivex.z<Long> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.h0 f68851a;

    /* renamed from: b  reason: collision with root package name */
    final long f68852b;

    /* renamed from: c  reason: collision with root package name */
    final TimeUnit f68853c;

    /* loaded from: classes5.dex */
    static final class TimerObserver extends AtomicReference<io.reactivex.disposables.b> implements io.reactivex.disposables.b, Runnable {
        private static final long serialVersionUID = -2809475196591179431L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super Long> f68854a;

        TimerObserver(io.reactivex.g0<? super Long> g0Var) {
            this.f68854a = g0Var;
        }

        public void a(io.reactivex.disposables.b bVar) {
            DisposableHelper.trySet(this, bVar);
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
            if (isDisposed()) {
                return;
            }
            this.f68854a.onNext(0L);
            lazySet(EmptyDisposable.INSTANCE);
            this.f68854a.onComplete();
        }
    }

    public ObservableTimer(long j4, TimeUnit timeUnit, io.reactivex.h0 h0Var) {
        this.f68852b = j4;
        this.f68853c = timeUnit;
        this.f68851a = h0Var;
    }

    @Override // io.reactivex.z
    public void F5(io.reactivex.g0<? super Long> g0Var) {
        TimerObserver timerObserver = new TimerObserver(g0Var);
        g0Var.onSubscribe(timerObserver);
        timerObserver.a(this.f68851a.f(timerObserver, this.f68852b, this.f68853c));
    }
}
