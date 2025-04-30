package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
/* loaded from: classes5.dex */
public final class FlowableSkipLastTimed<T> extends a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final long f66987c;

    /* renamed from: d  reason: collision with root package name */
    final TimeUnit f66988d;

    /* renamed from: e  reason: collision with root package name */
    final io.reactivex.h0 f66989e;

    /* renamed from: f  reason: collision with root package name */
    final int f66990f;

    /* renamed from: g  reason: collision with root package name */
    final boolean f66991g;

    /* loaded from: classes5.dex */
    static final class SkipLastTimedSubscriber<T> extends AtomicInteger implements io.reactivex.o<T>, l3.d {
        private static final long serialVersionUID = -5677354903406201275L;

        /* renamed from: a  reason: collision with root package name */
        final l3.c<? super T> f66992a;

        /* renamed from: b  reason: collision with root package name */
        final long f66993b;

        /* renamed from: c  reason: collision with root package name */
        final TimeUnit f66994c;

        /* renamed from: d  reason: collision with root package name */
        final io.reactivex.h0 f66995d;

        /* renamed from: e  reason: collision with root package name */
        final io.reactivex.internal.queue.a<Object> f66996e;

        /* renamed from: f  reason: collision with root package name */
        final boolean f66997f;

        /* renamed from: g  reason: collision with root package name */
        l3.d f66998g;

        /* renamed from: h  reason: collision with root package name */
        final AtomicLong f66999h = new AtomicLong();

        /* renamed from: i  reason: collision with root package name */
        volatile boolean f67000i;

        /* renamed from: j  reason: collision with root package name */
        volatile boolean f67001j;

        /* renamed from: k  reason: collision with root package name */
        Throwable f67002k;

        SkipLastTimedSubscriber(l3.c<? super T> cVar, long j4, TimeUnit timeUnit, io.reactivex.h0 h0Var, int i2, boolean z3) {
            this.f66992a = cVar;
            this.f66993b = j4;
            this.f66994c = timeUnit;
            this.f66995d = h0Var;
            this.f66996e = new io.reactivex.internal.queue.a<>(i2);
            this.f66997f = z3;
        }

        boolean a(boolean z3, boolean z4, l3.c<? super T> cVar, boolean z5) {
            if (this.f67000i) {
                this.f66996e.clear();
                return true;
            } else if (z3) {
                if (z5) {
                    if (z4) {
                        Throwable th = this.f67002k;
                        if (th != null) {
                            cVar.onError(th);
                        } else {
                            cVar.onComplete();
                        }
                        return true;
                    }
                    return false;
                }
                Throwable th2 = this.f67002k;
                if (th2 != null) {
                    this.f66996e.clear();
                    cVar.onError(th2);
                    return true;
                } else if (z4) {
                    cVar.onComplete();
                    return true;
                } else {
                    return false;
                }
            } else {
                return false;
            }
        }

        void b() {
            if (getAndIncrement() != 0) {
                return;
            }
            l3.c<? super T> cVar = this.f66992a;
            io.reactivex.internal.queue.a<Object> aVar = this.f66996e;
            boolean z3 = this.f66997f;
            TimeUnit timeUnit = this.f66994c;
            io.reactivex.h0 h0Var = this.f66995d;
            long j4 = this.f66993b;
            int i2 = 1;
            do {
                long j5 = this.f66999h.get();
                long j6 = 0;
                while (j6 != j5) {
                    boolean z4 = this.f67001j;
                    Long l4 = (Long) aVar.peek();
                    boolean z5 = l4 == null;
                    boolean z6 = (z5 || l4.longValue() <= h0Var.d(timeUnit) - j4) ? z5 : true;
                    if (a(z4, z6, cVar, z3)) {
                        return;
                    }
                    if (z6) {
                        break;
                    }
                    aVar.poll();
                    cVar.onNext(aVar.poll());
                    j6++;
                }
                if (j6 != 0) {
                    io.reactivex.internal.util.b.e(this.f66999h, j6);
                }
                i2 = addAndGet(-i2);
            } while (i2 != 0);
        }

        @Override // l3.d
        public void cancel() {
            if (this.f67000i) {
                return;
            }
            this.f67000i = true;
            this.f66998g.cancel();
            if (getAndIncrement() == 0) {
                this.f66996e.clear();
            }
        }

        @Override // l3.c
        public void onComplete() {
            this.f67001j = true;
            b();
        }

        @Override // l3.c
        public void onError(Throwable th) {
            this.f67002k = th;
            this.f67001j = true;
            b();
        }

        @Override // l3.c
        public void onNext(T t3) {
            this.f66996e.offer(Long.valueOf(this.f66995d.d(this.f66994c)), t3);
            b();
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            if (SubscriptionHelper.validate(this.f66998g, dVar)) {
                this.f66998g = dVar;
                this.f66992a.onSubscribe(this);
                dVar.request(Long.MAX_VALUE);
            }
        }

        @Override // l3.d
        public void request(long j4) {
            if (SubscriptionHelper.validate(j4)) {
                io.reactivex.internal.util.b.a(this.f66999h, j4);
                b();
            }
        }
    }

    public FlowableSkipLastTimed(io.reactivex.j<T> jVar, long j4, TimeUnit timeUnit, io.reactivex.h0 h0Var, int i2, boolean z3) {
        super(jVar);
        this.f66987c = j4;
        this.f66988d = timeUnit;
        this.f66989e = h0Var;
        this.f66990f = i2;
        this.f66991g = z3;
    }

    @Override // io.reactivex.j
    protected void h6(l3.c<? super T> cVar) {
        this.f67288b.g6(new SkipLastTimedSubscriber(cVar, this.f66987c, this.f66988d, this.f66989e, this.f66990f, this.f66991g));
    }
}
