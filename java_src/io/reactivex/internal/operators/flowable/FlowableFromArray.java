package io.reactivex.internal.operators.flowable;

import io.reactivex.annotations.Nullable;
import io.reactivex.internal.subscriptions.BasicQueueSubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
/* loaded from: classes5.dex */
public final class FlowableFromArray<T> extends io.reactivex.j<T> {

    /* renamed from: b  reason: collision with root package name */
    final T[] f66479b;

    /* loaded from: classes5.dex */
    static final class ArrayConditionalSubscription<T> extends BaseArraySubscription<T> {
        private static final long serialVersionUID = 2587302975077663557L;

        /* renamed from: d  reason: collision with root package name */
        final x2.a<? super T> f66480d;

        ArrayConditionalSubscription(x2.a<? super T> aVar, T[] tArr) {
            super(tArr);
            this.f66480d = aVar;
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableFromArray.BaseArraySubscription
        void a() {
            T[] tArr = this.f66482a;
            int length = tArr.length;
            x2.a<? super T> aVar = this.f66480d;
            for (int i2 = this.f66483b; i2 != length; i2++) {
                if (this.f66484c) {
                    return;
                }
                T t3 = tArr[i2];
                if (t3 == null) {
                    aVar.onError(new NullPointerException("array element is null"));
                    return;
                }
                aVar.v0(t3);
            }
            if (this.f66484c) {
                return;
            }
            aVar.onComplete();
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableFromArray.BaseArraySubscription
        void b(long j4) {
            T[] tArr = this.f66482a;
            int length = tArr.length;
            int i2 = this.f66483b;
            x2.a<? super T> aVar = this.f66480d;
            do {
                long j5 = 0;
                while (true) {
                    if (j5 == j4 || i2 == length) {
                        if (i2 == length) {
                            if (this.f66484c) {
                                return;
                            }
                            aVar.onComplete();
                            return;
                        }
                        j4 = get();
                        if (j5 == j4) {
                            this.f66483b = i2;
                            j4 = addAndGet(-j5);
                        }
                    } else if (this.f66484c) {
                        return;
                    } else {
                        T t3 = tArr[i2];
                        if (t3 == null) {
                            aVar.onError(new NullPointerException("array element is null"));
                            return;
                        }
                        if (aVar.v0(t3)) {
                            j5++;
                        }
                        i2++;
                    }
                }
            } while (j4 != 0);
        }
    }

    /* loaded from: classes5.dex */
    static final class ArraySubscription<T> extends BaseArraySubscription<T> {
        private static final long serialVersionUID = 2587302975077663557L;

        /* renamed from: d  reason: collision with root package name */
        final l3.c<? super T> f66481d;

        ArraySubscription(l3.c<? super T> cVar, T[] tArr) {
            super(tArr);
            this.f66481d = cVar;
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableFromArray.BaseArraySubscription
        void a() {
            T[] tArr = this.f66482a;
            int length = tArr.length;
            l3.c<? super T> cVar = this.f66481d;
            for (int i2 = this.f66483b; i2 != length; i2++) {
                if (this.f66484c) {
                    return;
                }
                T t3 = tArr[i2];
                if (t3 == null) {
                    cVar.onError(new NullPointerException("array element is null"));
                    return;
                }
                cVar.onNext(t3);
            }
            if (this.f66484c) {
                return;
            }
            cVar.onComplete();
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableFromArray.BaseArraySubscription
        void b(long j4) {
            T[] tArr = this.f66482a;
            int length = tArr.length;
            int i2 = this.f66483b;
            l3.c<? super T> cVar = this.f66481d;
            do {
                long j5 = 0;
                while (true) {
                    if (j5 == j4 || i2 == length) {
                        if (i2 == length) {
                            if (this.f66484c) {
                                return;
                            }
                            cVar.onComplete();
                            return;
                        }
                        j4 = get();
                        if (j5 == j4) {
                            this.f66483b = i2;
                            j4 = addAndGet(-j5);
                        }
                    } else if (this.f66484c) {
                        return;
                    } else {
                        T t3 = tArr[i2];
                        if (t3 == null) {
                            cVar.onError(new NullPointerException("array element is null"));
                            return;
                        }
                        cVar.onNext(t3);
                        j5++;
                        i2++;
                    }
                }
            } while (j4 != 0);
        }
    }

    /* loaded from: classes5.dex */
    static abstract class BaseArraySubscription<T> extends BasicQueueSubscription<T> {
        private static final long serialVersionUID = -2252972430506210021L;

        /* renamed from: a  reason: collision with root package name */
        final T[] f66482a;

        /* renamed from: b  reason: collision with root package name */
        int f66483b;

        /* renamed from: c  reason: collision with root package name */
        volatile boolean f66484c;

        BaseArraySubscription(T[] tArr) {
            this.f66482a = tArr;
        }

        abstract void a();

        abstract void b(long j4);

        @Override // l3.d
        public final void cancel() {
            this.f66484c = true;
        }

        @Override // x2.o
        public final void clear() {
            this.f66483b = this.f66482a.length;
        }

        @Override // x2.o
        public final boolean isEmpty() {
            return this.f66483b == this.f66482a.length;
        }

        @Override // x2.o
        @Nullable
        public final T poll() {
            int i2 = this.f66483b;
            T[] tArr = this.f66482a;
            if (i2 == tArr.length) {
                return null;
            }
            this.f66483b = i2 + 1;
            return (T) io.reactivex.internal.functions.a.g(tArr[i2], "array element is null");
        }

        @Override // l3.d
        public final void request(long j4) {
            if (SubscriptionHelper.validate(j4) && io.reactivex.internal.util.b.a(this, j4) == 0) {
                if (j4 == Long.MAX_VALUE) {
                    a();
                } else {
                    b(j4);
                }
            }
        }

        @Override // x2.k
        public final int requestFusion(int i2) {
            return i2 & 1;
        }
    }

    public FlowableFromArray(T[] tArr) {
        this.f66479b = tArr;
    }

    @Override // io.reactivex.j
    public void h6(l3.c<? super T> cVar) {
        if (cVar instanceof x2.a) {
            cVar.onSubscribe(new ArrayConditionalSubscription((x2.a) cVar, this.f66479b));
        } else {
            cVar.onSubscribe(new ArraySubscription(cVar, this.f66479b));
        }
    }
}
