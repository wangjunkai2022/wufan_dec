package io.reactivex.internal.operators.observable;

import io.reactivex.h0;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class ObservableInterval extends io.reactivex.z<Long> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.h0 f68449a;

    /* renamed from: b  reason: collision with root package name */
    final long f68450b;

    /* renamed from: c  reason: collision with root package name */
    final long f68451c;

    /* renamed from: d  reason: collision with root package name */
    final TimeUnit f68452d;

    /* loaded from: classes5.dex */
    static final class IntervalObserver extends AtomicReference<io.reactivex.disposables.b> implements io.reactivex.disposables.b, Runnable {
        private static final long serialVersionUID = 346773832286157679L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super Long> f68453a;

        /* renamed from: b  reason: collision with root package name */
        long f68454b;

        IntervalObserver(io.reactivex.g0<? super Long> g0Var) {
            this.f68453a = g0Var;
        }

        public void a(io.reactivex.disposables.b bVar) {
            DisposableHelper.setOnce(this, bVar);
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
            if (get() != DisposableHelper.DISPOSED) {
                io.reactivex.g0<? super Long> g0Var = this.f68453a;
                long j4 = this.f68454b;
                this.f68454b = 1 + j4;
                g0Var.onNext(Long.valueOf(j4));
            }
        }
    }

    public ObservableInterval(long j4, long j5, TimeUnit timeUnit, io.reactivex.h0 h0Var) {
        this.f68450b = j4;
        this.f68451c = j5;
        this.f68452d = timeUnit;
        this.f68449a = h0Var;
    }

    @Override // io.reactivex.z
    public void F5(io.reactivex.g0<? super Long> g0Var) {
        IntervalObserver intervalObserver = new IntervalObserver(g0Var);
        g0Var.onSubscribe(intervalObserver);
        io.reactivex.h0 h0Var = this.f68449a;
        if (h0Var instanceof io.reactivex.internal.schedulers.l) {
            h0.c c4 = h0Var.c();
            intervalObserver.a(c4);
            c4.d(intervalObserver, this.f68450b, this.f68451c, this.f68452d);
            return;
        }
        intervalObserver.a(h0Var.g(intervalObserver, this.f68450b, this.f68451c, this.f68452d));
    }
}
