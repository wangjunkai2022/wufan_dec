package io.reactivex.internal.operators.flowable;

import io.reactivex.annotations.Nullable;
import io.reactivex.internal.subscriptions.BasicQueueSubscription;
import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.Iterator;
/* loaded from: classes5.dex */
public final class FlowableFromIterable<T> extends io.reactivex.j<T> {

    /* renamed from: b  reason: collision with root package name */
    final Iterable<? extends T> f66485b;

    /* loaded from: classes5.dex */
    static abstract class BaseRangeSubscription<T> extends BasicQueueSubscription<T> {
        private static final long serialVersionUID = -2252972430506210021L;

        /* renamed from: a  reason: collision with root package name */
        Iterator<? extends T> f66486a;

        /* renamed from: b  reason: collision with root package name */
        volatile boolean f66487b;

        /* renamed from: c  reason: collision with root package name */
        boolean f66488c;

        BaseRangeSubscription(Iterator<? extends T> it2) {
            this.f66486a = it2;
        }

        abstract void a();

        abstract void b(long j4);

        @Override // l3.d
        public final void cancel() {
            this.f66487b = true;
        }

        @Override // x2.o
        public final void clear() {
            this.f66486a = null;
        }

        @Override // x2.o
        public final boolean isEmpty() {
            Iterator<? extends T> it2 = this.f66486a;
            return it2 == null || !it2.hasNext();
        }

        @Override // x2.o
        @Nullable
        public final T poll() {
            Iterator<? extends T> it2 = this.f66486a;
            if (it2 == null) {
                return null;
            }
            if (!this.f66488c) {
                this.f66488c = true;
            } else if (!it2.hasNext()) {
                return null;
            }
            return (T) io.reactivex.internal.functions.a.g(this.f66486a.next(), "Iterator.next() returned a null value");
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

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class IteratorConditionalSubscription<T> extends BaseRangeSubscription<T> {
        private static final long serialVersionUID = -6022804456014692607L;

        /* renamed from: d  reason: collision with root package name */
        final x2.a<? super T> f66489d;

        IteratorConditionalSubscription(x2.a<? super T> aVar, Iterator<? extends T> it2) {
            super(it2);
            this.f66489d = aVar;
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableFromIterable.BaseRangeSubscription
        void a() {
            Iterator<? extends T> it2 = this.f66486a;
            x2.a<? super T> aVar = this.f66489d;
            while (!this.f66487b) {
                try {
                    Object obj = (T) it2.next();
                    if (this.f66487b) {
                        return;
                    }
                    if (obj == null) {
                        aVar.onError(new NullPointerException("Iterator.next() returned a null value"));
                        return;
                    }
                    aVar.v0(obj);
                    if (this.f66487b) {
                        return;
                    }
                    try {
                        if (!it2.hasNext()) {
                            if (this.f66487b) {
                                return;
                            }
                            aVar.onComplete();
                            return;
                        }
                    } catch (Throwable th) {
                        io.reactivex.exceptions.a.b(th);
                        aVar.onError(th);
                        return;
                    }
                } catch (Throwable th2) {
                    io.reactivex.exceptions.a.b(th2);
                    aVar.onError(th2);
                    return;
                }
            }
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableFromIterable.BaseRangeSubscription
        void b(long j4) {
            Iterator<? extends T> it2 = this.f66486a;
            x2.a<? super T> aVar = this.f66489d;
            do {
                long j5 = 0;
                while (true) {
                    if (j5 != j4) {
                        if (this.f66487b) {
                            return;
                        }
                        try {
                            Object obj = (T) it2.next();
                            if (this.f66487b) {
                                return;
                            }
                            if (obj == null) {
                                aVar.onError(new NullPointerException("Iterator.next() returned a null value"));
                                return;
                            }
                            boolean v02 = aVar.v0(obj);
                            if (this.f66487b) {
                                return;
                            }
                            try {
                                if (!it2.hasNext()) {
                                    if (this.f66487b) {
                                        return;
                                    }
                                    aVar.onComplete();
                                    return;
                                } else if (v02) {
                                    j5++;
                                }
                            } catch (Throwable th) {
                                io.reactivex.exceptions.a.b(th);
                                aVar.onError(th);
                                return;
                            }
                        } catch (Throwable th2) {
                            io.reactivex.exceptions.a.b(th2);
                            aVar.onError(th2);
                            return;
                        }
                    } else {
                        j4 = get();
                        if (j5 == j4) {
                            j4 = addAndGet(-j5);
                        }
                    }
                }
            } while (j4 != 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class IteratorSubscription<T> extends BaseRangeSubscription<T> {
        private static final long serialVersionUID = -6022804456014692607L;

        /* renamed from: d  reason: collision with root package name */
        final l3.c<? super T> f66490d;

        IteratorSubscription(l3.c<? super T> cVar, Iterator<? extends T> it2) {
            super(it2);
            this.f66490d = cVar;
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableFromIterable.BaseRangeSubscription
        void a() {
            Iterator<? extends T> it2 = this.f66486a;
            l3.c<? super T> cVar = this.f66490d;
            while (!this.f66487b) {
                try {
                    Object obj = (T) it2.next();
                    if (this.f66487b) {
                        return;
                    }
                    if (obj == null) {
                        cVar.onError(new NullPointerException("Iterator.next() returned a null value"));
                        return;
                    }
                    cVar.onNext(obj);
                    if (this.f66487b) {
                        return;
                    }
                    try {
                        if (!it2.hasNext()) {
                            if (this.f66487b) {
                                return;
                            }
                            cVar.onComplete();
                            return;
                        }
                    } catch (Throwable th) {
                        io.reactivex.exceptions.a.b(th);
                        cVar.onError(th);
                        return;
                    }
                } catch (Throwable th2) {
                    io.reactivex.exceptions.a.b(th2);
                    cVar.onError(th2);
                    return;
                }
            }
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableFromIterable.BaseRangeSubscription
        void b(long j4) {
            Iterator<? extends T> it2 = this.f66486a;
            l3.c<? super T> cVar = this.f66490d;
            do {
                long j5 = 0;
                while (true) {
                    if (j5 != j4) {
                        if (this.f66487b) {
                            return;
                        }
                        try {
                            Object obj = (T) it2.next();
                            if (this.f66487b) {
                                return;
                            }
                            if (obj == null) {
                                cVar.onError(new NullPointerException("Iterator.next() returned a null value"));
                                return;
                            }
                            cVar.onNext(obj);
                            if (this.f66487b) {
                                return;
                            }
                            try {
                                if (!it2.hasNext()) {
                                    if (this.f66487b) {
                                        return;
                                    }
                                    cVar.onComplete();
                                    return;
                                }
                                j5++;
                            } catch (Throwable th) {
                                io.reactivex.exceptions.a.b(th);
                                cVar.onError(th);
                                return;
                            }
                        } catch (Throwable th2) {
                            io.reactivex.exceptions.a.b(th2);
                            cVar.onError(th2);
                            return;
                        }
                    } else {
                        j4 = get();
                        if (j5 == j4) {
                            j4 = addAndGet(-j5);
                        }
                    }
                }
            } while (j4 != 0);
        }
    }

    public FlowableFromIterable(Iterable<? extends T> iterable) {
        this.f66485b = iterable;
    }

    public static <T> void J8(l3.c<? super T> cVar, Iterator<? extends T> it2) {
        try {
            if (!it2.hasNext()) {
                EmptySubscription.complete(cVar);
            } else if (cVar instanceof x2.a) {
                cVar.onSubscribe(new IteratorConditionalSubscription((x2.a) cVar, it2));
            } else {
                cVar.onSubscribe(new IteratorSubscription(cVar, it2));
            }
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            EmptySubscription.error(th, cVar);
        }
    }

    @Override // io.reactivex.j
    public void h6(l3.c<? super T> cVar) {
        try {
            J8(cVar, this.f66485b.iterator());
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            EmptySubscription.error(th, cVar);
        }
    }
}
