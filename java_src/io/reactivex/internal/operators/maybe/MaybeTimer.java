package io.reactivex.internal.operators.maybe;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class MaybeTimer extends io.reactivex.q<Long> {

    /* renamed from: a  reason: collision with root package name */
    final long f67783a;

    /* renamed from: b  reason: collision with root package name */
    final TimeUnit f67784b;

    /* renamed from: c  reason: collision with root package name */
    final io.reactivex.h0 f67785c;

    /* loaded from: classes5.dex */
    static final class TimerDisposable extends AtomicReference<io.reactivex.disposables.b> implements io.reactivex.disposables.b, Runnable {
        private static final long serialVersionUID = 2875964065294031672L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.t<? super Long> f67786a;

        TimerDisposable(io.reactivex.t<? super Long> tVar) {
            this.f67786a = tVar;
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
            this.f67786a.onSuccess(0L);
        }
    }

    public MaybeTimer(long j4, TimeUnit timeUnit, io.reactivex.h0 h0Var) {
        this.f67783a = j4;
        this.f67784b = timeUnit;
        this.f67785c = h0Var;
    }

    @Override // io.reactivex.q
    protected void o1(io.reactivex.t<? super Long> tVar) {
        TimerDisposable timerDisposable = new TimerDisposable(tVar);
        tVar.onSubscribe(timerDisposable);
        timerDisposable.a(this.f67785c.f(timerDisposable, this.f67783a, this.f67784b));
    }
}
