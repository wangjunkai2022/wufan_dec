package io.reactivex.internal.operators.flowable;

import io.reactivex.annotations.Nullable;
import io.reactivex.internal.subscriptions.BasicQueueSubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
/* loaded from: classes5.dex */
public final class FlowableRange extends io.reactivex.j<Integer> {

    /* renamed from: b  reason: collision with root package name */
    final int f66798b;

    /* renamed from: c  reason: collision with root package name */
    final int f66799c;

    /* loaded from: classes5.dex */
    static abstract class BaseRangeSubscription extends BasicQueueSubscription<Integer> {
        private static final long serialVersionUID = -2252972430506210021L;

        /* renamed from: a  reason: collision with root package name */
        final int f66800a;

        /* renamed from: b  reason: collision with root package name */
        int f66801b;

        /* renamed from: c  reason: collision with root package name */
        volatile boolean f66802c;

        BaseRangeSubscription(int i2, int i4) {
            this.f66801b = i2;
            this.f66800a = i4;
        }

        abstract void a();

        @Override // x2.o
        @Nullable
        /* renamed from: b */
        public final Integer poll() {
            int i2 = this.f66801b;
            if (i2 == this.f66800a) {
                return null;
            }
            this.f66801b = i2 + 1;
            return Integer.valueOf(i2);
        }

        abstract void c(long j4);

        @Override // l3.d
        public final void cancel() {
            this.f66802c = true;
        }

        @Override // x2.o
        public final void clear() {
            this.f66801b = this.f66800a;
        }

        @Override // x2.o
        public final boolean isEmpty() {
            return this.f66801b == this.f66800a;
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
        final x2.a<? super Integer> f66803d;

        RangeConditionalSubscription(x2.a<? super Integer> aVar, int i2, int i4) {
            super(i2, i4);
            this.f66803d = aVar;
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableRange.BaseRangeSubscription
        void a() {
            int i2 = this.f66800a;
            x2.a<? super Integer> aVar = this.f66803d;
            for (int i4 = this.f66801b; i4 != i2; i4++) {
                if (this.f66802c) {
                    return;
                }
                aVar.v0(Integer.valueOf(i4));
            }
            if (this.f66802c) {
                return;
            }
            aVar.onComplete();
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableRange.BaseRangeSubscription
        void c(long j4) {
            int i2 = this.f66800a;
            int i4 = this.f66801b;
            x2.a<? super Integer> aVar = this.f66803d;
            do {
                long j5 = 0;
                while (true) {
                    if (j5 == j4 || i4 == i2) {
                        if (i4 == i2) {
                            if (this.f66802c) {
                                return;
                            }
                            aVar.onComplete();
                            return;
                        }
                        j4 = get();
                        if (j5 == j4) {
                            this.f66801b = i4;
                            j4 = addAndGet(-j5);
                        }
                    } else if (this.f66802c) {
                        return;
                    } else {
                        if (aVar.v0(Integer.valueOf(i4))) {
                            j5++;
                        }
                        i4++;
                    }
                }
            } while (j4 != 0);
        }
    }

    /* loaded from: classes5.dex */
    static final class RangeSubscription extends BaseRangeSubscription {
        private static final long serialVersionUID = 2587302975077663557L;

        /* renamed from: d  reason: collision with root package name */
        final l3.c<? super Integer> f66804d;

        RangeSubscription(l3.c<? super Integer> cVar, int i2, int i4) {
            super(i2, i4);
            this.f66804d = cVar;
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableRange.BaseRangeSubscription
        void a() {
            int i2 = this.f66800a;
            l3.c<? super Integer> cVar = this.f66804d;
            for (int i4 = this.f66801b; i4 != i2; i4++) {
                if (this.f66802c) {
                    return;
                }
                cVar.onNext(Integer.valueOf(i4));
            }
            if (this.f66802c) {
                return;
            }
            cVar.onComplete();
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableRange.BaseRangeSubscription
        void c(long j4) {
            int i2 = this.f66800a;
            int i4 = this.f66801b;
            l3.c<? super Integer> cVar = this.f66804d;
            do {
                long j5 = 0;
                while (true) {
                    if (j5 == j4 || i4 == i2) {
                        if (i4 == i2) {
                            if (this.f66802c) {
                                return;
                            }
                            cVar.onComplete();
                            return;
                        }
                        j4 = get();
                        if (j5 == j4) {
                            this.f66801b = i4;
                            j4 = addAndGet(-j5);
                        }
                    } else if (this.f66802c) {
                        return;
                    } else {
                        cVar.onNext(Integer.valueOf(i4));
                        j5++;
                        i4++;
                    }
                }
            } while (j4 != 0);
        }
    }

    public FlowableRange(int i2, int i4) {
        this.f66798b = i2;
        this.f66799c = i2 + i4;
    }

    @Override // io.reactivex.j
    public void h6(l3.c<? super Integer> cVar) {
        if (cVar instanceof x2.a) {
            cVar.onSubscribe(new RangeConditionalSubscription((x2.a) cVar, this.f66798b, this.f66799c));
        } else {
            cVar.onSubscribe(new RangeSubscription(cVar, this.f66798b, this.f66799c));
        }
    }
}
