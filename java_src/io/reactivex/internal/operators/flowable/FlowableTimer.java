package io.reactivex.internal.operators.flowable;

import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class FlowableTimer extends io.reactivex.j<Long> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.h0 f67152b;

    /* renamed from: c  reason: collision with root package name */
    final long f67153c;

    /* renamed from: d  reason: collision with root package name */
    final TimeUnit f67154d;

    /* loaded from: classes5.dex */
    static final class TimerSubscriber extends AtomicReference<io.reactivex.disposables.b> implements l3.d, Runnable {
        private static final long serialVersionUID = -2809475196591179431L;

        /* renamed from: a  reason: collision with root package name */
        final l3.c<? super Long> f67155a;

        /* renamed from: b  reason: collision with root package name */
        volatile boolean f67156b;

        TimerSubscriber(l3.c<? super Long> cVar) {
            this.f67155a = cVar;
        }

        public void a(io.reactivex.disposables.b bVar) {
            DisposableHelper.trySet(this, bVar);
        }

        @Override // l3.d
        public void cancel() {
            DisposableHelper.dispose(this);
        }

        @Override // l3.d
        public void request(long j4) {
            if (SubscriptionHelper.validate(j4)) {
                this.f67156b = true;
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            if (get() != DisposableHelper.DISPOSED) {
                if (this.f67156b) {
                    this.f67155a.onNext(0L);
                    lazySet(EmptyDisposable.INSTANCE);
                    this.f67155a.onComplete();
                    return;
                }
                lazySet(EmptyDisposable.INSTANCE);
                this.f67155a.onError(new MissingBackpressureException("Can't deliver value due to lack of requests"));
            }
        }
    }

    public FlowableTimer(long j4, TimeUnit timeUnit, io.reactivex.h0 h0Var) {
        this.f67153c = j4;
        this.f67154d = timeUnit;
        this.f67152b = h0Var;
    }

    @Override // io.reactivex.j
    public void h6(l3.c<? super Long> cVar) {
        TimerSubscriber timerSubscriber = new TimerSubscriber(cVar);
        cVar.onSubscribe(timerSubscriber);
        timerSubscriber.a(this.f67152b.f(timerSubscriber, this.f67153c, this.f67154d));
    }
}
