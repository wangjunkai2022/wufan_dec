package io.reactivex.internal.operators.observable;

import io.reactivex.h0;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class ObservableIntervalRange extends io.reactivex.z<Long> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.h0 f68455a;

    /* renamed from: b  reason: collision with root package name */
    final long f68456b;

    /* renamed from: c  reason: collision with root package name */
    final long f68457c;

    /* renamed from: d  reason: collision with root package name */
    final long f68458d;

    /* renamed from: e  reason: collision with root package name */
    final long f68459e;

    /* renamed from: f  reason: collision with root package name */
    final TimeUnit f68460f;

    /* loaded from: classes5.dex */
    static final class IntervalRangeObserver extends AtomicReference<io.reactivex.disposables.b> implements io.reactivex.disposables.b, Runnable {
        private static final long serialVersionUID = 1891866368734007884L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super Long> f68461a;

        /* renamed from: b  reason: collision with root package name */
        final long f68462b;

        /* renamed from: c  reason: collision with root package name */
        long f68463c;

        IntervalRangeObserver(io.reactivex.g0<? super Long> g0Var, long j4, long j5) {
            this.f68461a = g0Var;
            this.f68463c = j4;
            this.f68462b = j5;
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
            if (isDisposed()) {
                return;
            }
            long j4 = this.f68463c;
            this.f68461a.onNext(Long.valueOf(j4));
            if (j4 == this.f68462b) {
                DisposableHelper.dispose(this);
                this.f68461a.onComplete();
                return;
            }
            this.f68463c = j4 + 1;
        }
    }

    public ObservableIntervalRange(long j4, long j5, long j6, long j7, TimeUnit timeUnit, io.reactivex.h0 h0Var) {
        this.f68458d = j6;
        this.f68459e = j7;
        this.f68460f = timeUnit;
        this.f68455a = h0Var;
        this.f68456b = j4;
        this.f68457c = j5;
    }

    @Override // io.reactivex.z
    public void F5(io.reactivex.g0<? super Long> g0Var) {
        IntervalRangeObserver intervalRangeObserver = new IntervalRangeObserver(g0Var, this.f68456b, this.f68457c);
        g0Var.onSubscribe(intervalRangeObserver);
        io.reactivex.h0 h0Var = this.f68455a;
        if (h0Var instanceof io.reactivex.internal.schedulers.l) {
            h0.c c4 = h0Var.c();
            intervalRangeObserver.a(c4);
            c4.d(intervalRangeObserver, this.f68458d, this.f68459e, this.f68460f);
            return;
        }
        intervalRangeObserver.a(h0Var.g(intervalRangeObserver, this.f68458d, this.f68459e, this.f68460f));
    }
}
