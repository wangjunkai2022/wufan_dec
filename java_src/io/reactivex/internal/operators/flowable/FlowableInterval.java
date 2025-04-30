package io.reactivex.internal.operators.flowable;

import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.h0;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class FlowableInterval extends io.reactivex.j<Long> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.h0 f66590b;

    /* renamed from: c  reason: collision with root package name */
    final long f66591c;

    /* renamed from: d  reason: collision with root package name */
    final long f66592d;

    /* renamed from: e  reason: collision with root package name */
    final TimeUnit f66593e;

    /* loaded from: classes5.dex */
    static final class IntervalSubscriber extends AtomicLong implements l3.d, Runnable {
        private static final long serialVersionUID = -2809475196591179431L;

        /* renamed from: a  reason: collision with root package name */
        final l3.c<? super Long> f66594a;

        /* renamed from: b  reason: collision with root package name */
        long f66595b;

        /* renamed from: c  reason: collision with root package name */
        final AtomicReference<io.reactivex.disposables.b> f66596c = new AtomicReference<>();

        IntervalSubscriber(l3.c<? super Long> cVar) {
            this.f66594a = cVar;
        }

        public void a(io.reactivex.disposables.b bVar) {
            DisposableHelper.setOnce(this.f66596c, bVar);
        }

        @Override // l3.d
        public void cancel() {
            DisposableHelper.dispose(this.f66596c);
        }

        @Override // l3.d
        public void request(long j4) {
            if (SubscriptionHelper.validate(j4)) {
                io.reactivex.internal.util.b.a(this, j4);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f66596c.get() != DisposableHelper.DISPOSED) {
                if (get() != 0) {
                    l3.c<? super Long> cVar = this.f66594a;
                    long j4 = this.f66595b;
                    this.f66595b = j4 + 1;
                    cVar.onNext(Long.valueOf(j4));
                    io.reactivex.internal.util.b.e(this, 1L);
                    return;
                }
                l3.c<? super Long> cVar2 = this.f66594a;
                cVar2.onError(new MissingBackpressureException("Can't deliver value " + this.f66595b + " due to lack of requests"));
                DisposableHelper.dispose(this.f66596c);
            }
        }
    }

    public FlowableInterval(long j4, long j5, TimeUnit timeUnit, io.reactivex.h0 h0Var) {
        this.f66591c = j4;
        this.f66592d = j5;
        this.f66593e = timeUnit;
        this.f66590b = h0Var;
    }

    @Override // io.reactivex.j
    public void h6(l3.c<? super Long> cVar) {
        IntervalSubscriber intervalSubscriber = new IntervalSubscriber(cVar);
        cVar.onSubscribe(intervalSubscriber);
        io.reactivex.h0 h0Var = this.f66590b;
        if (h0Var instanceof io.reactivex.internal.schedulers.l) {
            h0.c c4 = h0Var.c();
            intervalSubscriber.a(c4);
            c4.d(intervalSubscriber, this.f66591c, this.f66592d, this.f66593e);
            return;
        }
        intervalSubscriber.a(h0Var.g(intervalSubscriber, this.f66591c, this.f66592d, this.f66593e));
    }
}
