package io.reactivex.internal.operators.flowable;

import io.reactivex.annotations.Nullable;
import io.reactivex.internal.subscriptions.BasicQueueSubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
/* loaded from: classes5.dex */
public final class FlowableRangeLong extends io.reactivex.j<Long> {

    /* renamed from: b  reason: collision with root package name */
    final long f66805b;

    /* renamed from: c  reason: collision with root package name */
    final long f66806c;

    /* loaded from: classes5.dex */
    static abstract class BaseRangeSubscription extends BasicQueueSubscription<Long> {
        private static final long serialVersionUID = -2252972430506210021L;

        /* renamed from: a  reason: collision with root package name */
        final long f66807a;

        /* renamed from: b  reason: collision with root package name */
        long f66808b;

        /* renamed from: c  reason: collision with root package name */
        volatile boolean f66809c;

        BaseRangeSubscription(long j4, long j5) {
            this.f66808b = j4;
            this.f66807a = j5;
        }

        abstract void a();

        @Override // x2.o
        @Nullable
        /* renamed from: b */
        public final Long poll() {
            long j4 = this.f66808b;
            if (j4 == this.f66807a) {
                return null;
            }
            this.f66808b = 1 + j4;
            return Long.valueOf(j4);
        }

        abstract void c(long j4);

        @Override // l3.d
        public final void cancel() {
            this.f66809c = true;
        }

        @Override // x2.o
        public final void clear() {
            this.f66808b = this.f66807a;
        }

        @Override // x2.o
        public final boolean isEmpty() {
            return this.f66808b == this.f66807a;
        }

        @Override // l3.d
        public final void request(long j4) {
            if (SubscriptionHelper.validate(j4) && io.reactivex.internal.util.b.a(this, j4) == 0) {
                if (j4 == Long.MAX_VALUE) {
                    a();
                } else {
                    c(j4);
                }
            }
        }

        @Override // x2.k
        public final int requestFusion(int i2) {
            return i2 & 1;
        }
    }

    /* loaded from: classes5.dex */
    static final class RangeConditionalSubscription extends BaseRangeSubscription {
        private static final long serialVersionUID = 2587302975077663557L;

        /* renamed from: d  reason: collision with root package name */
        final x2.a<? super Long> f66810d;

        RangeConditionalSubscription(x2.a<? super Long> aVar, long j4, long j5) {
            super(j4, j5);
            this.f66810d = aVar;
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableRangeLong.BaseRangeSubscription
        void a() {
            long j4 = this.f66807a;
            x2.a<? super Long> aVar = this.f66810d;
            for (long j5 = this.f66808b; j5 != j4; j5++) {
                if (this.f66809c) {
                    return;
                }
                aVar.v0(Long.valueOf(j5));
            }
            if (this.f66809c) {
                return;
            }
            aVar.onComplete();
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableRangeLong.BaseRangeSubscription
        void c(long j4) {
            long j5 = this.f66807a;
            long j6 = this.f66808b;
            x2.a<? super Long> aVar = this.f66810d;
            do {
                long j7 = 0;
                while (true) {
                    if (j7 == j4 || j6 == j5) {
                        if (j6 == j5) {
                            if (this.f66809c) {
                                return;
                            }
                            aVar.onComplete();
                            return;
                        }
                        j4 = get();
                        if (j7 == j4) {
                            this.f66808b = j6;
                            j4 = addAndGet(-j7);
                        }
                    } else if (this.f66809c) {
                        return;
                    } else {
                        if (aVar.v0(Long.valueOf(j6))) {
                            j7++;
                        }
                        j6++;
                    }
                }
            } while (j4 != 0);
        }
    }

    /* loaded from: classes5.dex */
    static final class RangeSubscription extends BaseRangeSubscription {
        private static final long serialVersionUID = 2587302975077663557L;

        /* renamed from: d  reason: collision with root package name */
        final l3.c<? super Long> f66811d;

        RangeSubscription(l3.c<? super Long> cVar, long j4, long j5) {
            super(j4, j5);
            this.f66811d = cVar;
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableRangeLong.BaseRangeSubscription
        void a() {
            long j4 = this.f66807a;
            l3.c<? super Long> cVar = this.f66811d;
            for (long j5 = this.f66808b; j5 != j4; j5++) {
                if (this.f66809c) {
                    return;
                }
                cVar.onNext(Long.valueOf(j5));
            }
            if (this.f66809c) {
                return;
            }
            cVar.onComplete();
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableRangeLong.BaseRangeSubscription
        void c(long j4) {
            long j5 = this.f66807a;
            long j6 = this.f66808b;
            l3.c<? super Long> cVar = this.f66811d;
            do {
                long j7 = 0;
                while (true) {
                    if (j7 == j4 || j6 == j5) {
                        if (j6 == j5) {
                            if (this.f66809c) {
                                return;
                            }
                            cVar.onComplete();
                            return;
                        }
                        j4 = get();
                        if (j7 == j4) {
                            this.f66808b = j6;
                            j4 = addAndGet(-j7);
                        }
                    } else if (this.f66809c) {
                        return;
                    } else {
                        cVar.onNext(Long.valueOf(j6));
                        j7++;
                        j6++;
                    }
                }
            } while (j4 != 0);
        }
    }

    public FlowableRangeLong(long j4, long j5) {
        this.f66805b = j4;
        this.f66806c = j4 + j5;
    }

    @Override // io.reactivex.j
    public void h6(l3.c<? super Long> cVar) {
        if (cVar instanceof x2.a) {
            cVar.onSubscribe(new RangeConditionalSubscription((x2.a) cVar, this.f66805b, this.f66806c));
        } else {
            cVar.onSubscribe(new RangeSubscription(cVar, this.f66805b, this.f66806c));
        }
    }
}
