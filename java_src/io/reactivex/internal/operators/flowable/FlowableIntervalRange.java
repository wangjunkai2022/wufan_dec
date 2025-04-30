package io.reactivex.internal.operators.flowable;

import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.h0;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class FlowableIntervalRange extends io.reactivex.j<Long> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.h0 f66597b;

    /* renamed from: c  reason: collision with root package name */
    final long f66598c;

    /* renamed from: d  reason: collision with root package name */
    final long f66599d;

    /* renamed from: e  reason: collision with root package name */
    final long f66600e;

    /* renamed from: f  reason: collision with root package name */
    final long f66601f;

    /* renamed from: g  reason: collision with root package name */
    final TimeUnit f66602g;

    /* loaded from: classes5.dex */
    static final class IntervalRangeSubscriber extends AtomicLong implements l3.d, Runnable {
        private static final long serialVersionUID = -2809475196591179431L;

        /* renamed from: a  reason: collision with root package name */
        final l3.c<? super Long> f66603a;

        /* renamed from: b  reason: collision with root package name */
        final long f66604b;

        /* renamed from: c  reason: collision with root package name */
        long f66605c;

        /* renamed from: d  reason: collision with root package name */
        final AtomicReference<io.reactivex.disposables.b> f66606d = new AtomicReference<>();

        IntervalRangeSubscriber(l3.c<? super Long> cVar, long j4, long j5) {
            this.f66603a = cVar;
            this.f66605c = j4;
            this.f66604b = j5;
        }

        public void a(io.reactivex.disposables.b bVar) {
            DisposableHelper.setOnce(this.f66606d, bVar);
        }

        @Override // l3.d
        public void cancel() {
            DisposableHelper.dispose(this.f66606d);
        }

        @Override // l3.d
        public void request(long j4) {
            if (SubscriptionHelper.validate(j4)) {
                io.reactivex.internal.util.b.a(this, j4);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            io.reactivex.disposables.b bVar = this.f66606d.get();
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (bVar != disposableHelper) {
                long j4 = get();
                if (j4 != 0) {
                    long j5 = this.f66605c;
                    this.f66603a.onNext(Long.valueOf(j5));
                    if (j5 == this.f66604b) {
                        if (this.f66606d.get() != disposableHelper) {
                            this.f66603a.onComplete();
                        }
                        DisposableHelper.dispose(this.f66606d);
                        return;
                    }
                    this.f66605c = j5 + 1;
                    if (j4 != Long.MAX_VALUE) {
                        decrementAndGet();
                        return;
                    }
                    return;
                }
                l3.c<? super Long> cVar = this.f66603a;
                cVar.onError(new MissingBackpressureException("Can't deliver value " + this.f66605c + " due to lack of requests"));
                DisposableHelper.dispose(this.f66606d);
            }
        }
    }

    public FlowableIntervalRange(long j4, long j5, long j6, long j7, TimeUnit timeUnit, io.reactivex.h0 h0Var) {
        this.f66600e = j6;
        this.f66601f = j7;
        this.f66602g = timeUnit;
        this.f66597b = h0Var;
        this.f66598c = j4;
        this.f66599d = j5;
    }

    @Override // io.reactivex.j
    public void h6(l3.c<? super Long> cVar) {
        IntervalRangeSubscriber intervalRangeSubscriber = new IntervalRangeSubscriber(cVar, this.f66598c, this.f66599d);
        cVar.onSubscribe(intervalRangeSubscriber);
        io.reactivex.h0 h0Var = this.f66597b;
        if (h0Var instanceof io.reactivex.internal.schedulers.l) {
            h0.c c4 = h0Var.c();
            intervalRangeSubscriber.a(c4);
            c4.d(intervalRangeSubscriber, this.f66600e, this.f66601f, this.f66602g);
            return;
        }
        intervalRangeSubscriber.a(h0Var.g(intervalRangeSubscriber, this.f66600e, this.f66601f, this.f66602g));
    }
}
