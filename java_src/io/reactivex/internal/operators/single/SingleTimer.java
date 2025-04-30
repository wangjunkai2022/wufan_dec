package io.reactivex.internal.operators.single;

import io.reactivex.h0;
import io.reactivex.i0;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.l0;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class SingleTimer extends i0<Long> {

    /* renamed from: a  reason: collision with root package name */
    final long f69699a;

    /* renamed from: b  reason: collision with root package name */
    final TimeUnit f69700b;

    /* renamed from: c  reason: collision with root package name */
    final h0 f69701c;

    /* loaded from: classes5.dex */
    static final class TimerDisposable extends AtomicReference<io.reactivex.disposables.b> implements io.reactivex.disposables.b, Runnable {
        private static final long serialVersionUID = 8465401857522493082L;

        /* renamed from: a  reason: collision with root package name */
        final l0<? super Long> f69702a;

        TimerDisposable(l0<? super Long> l0Var) {
            this.f69702a = l0Var;
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
            this.f69702a.onSuccess(0L);
        }
    }

    public SingleTimer(long j4, TimeUnit timeUnit, h0 h0Var) {
        this.f69699a = j4;
        this.f69700b = timeUnit;
        this.f69701c = h0Var;
    }

    @Override // io.reactivex.i0
    protected void Y0(l0<? super Long> l0Var) {
        TimerDisposable timerDisposable = new TimerDisposable(l0Var);
        l0Var.onSubscribe(timerDisposable);
        timerDisposable.a(this.f69701c.f(timerDisposable, this.f69699a, this.f69700b));
    }
}
