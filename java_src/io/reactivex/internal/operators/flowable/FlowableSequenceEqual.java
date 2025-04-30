package io.reactivex.internal.operators.flowable;

import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.queue.SpscArrayQueue;
import io.reactivex.internal.subscriptions.DeferredScalarSubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.AtomicThrowable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class FlowableSequenceEqual<T> extends io.reactivex.j<Boolean> {

    /* renamed from: b  reason: collision with root package name */
    final l3.b<? extends T> f66948b;

    /* renamed from: c  reason: collision with root package name */
    final l3.b<? extends T> f66949c;

    /* renamed from: d  reason: collision with root package name */
    final w2.d<? super T, ? super T> f66950d;

    /* renamed from: e  reason: collision with root package name */
    final int f66951e;

    /* loaded from: classes5.dex */
    static final class EqualCoordinator<T> extends DeferredScalarSubscription<Boolean> implements a {
        private static final long serialVersionUID = -6178010334400373240L;

        /* renamed from: k  reason: collision with root package name */
        final w2.d<? super T, ? super T> f66952k;

        /* renamed from: l  reason: collision with root package name */
        final EqualSubscriber<T> f66953l;

        /* renamed from: m  reason: collision with root package name */
        final EqualSubscriber<T> f66954m;

        /* renamed from: n  reason: collision with root package name */
        final AtomicThrowable f66955n;

        /* renamed from: o  reason: collision with root package name */
        final AtomicInteger f66956o;

        /* renamed from: p  reason: collision with root package name */
        T f66957p;

        /* renamed from: q  reason: collision with root package name */
        T f66958q;

        EqualCoordinator(l3.c<? super Boolean> cVar, int i2, w2.d<? super T, ? super T> dVar) {
            super(cVar);
            this.f66952k = dVar;
            this.f66956o = new AtomicInteger();
            this.f66953l = new EqualSubscriber<>(this, i2);
            this.f66954m = new EqualSubscriber<>(this, i2);
            this.f66955n = new AtomicThrowable();
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableSequenceEqual.a
        public void a(Throwable th) {
            if (this.f66955n.a(th)) {
                b();
            } else {
                io.reactivex.plugins.a.Y(th);
            }
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableSequenceEqual.a
        public void b() {
            if (this.f66956o.getAndIncrement() != 0) {
                return;
            }
            int i2 = 1;
            do {
                x2.o<T> oVar = this.f66953l.f66963e;
                x2.o<T> oVar2 = this.f66954m.f66963e;
                if (oVar != null && oVar2 != null) {
                    while (!e()) {
                        if (this.f66955n.get() != null) {
                            g();
                            this.f70070a.onError(this.f66955n.c());
                            return;
                        }
                        boolean z3 = this.f66953l.f66964f;
                        T t3 = this.f66957p;
                        if (t3 == null) {
                            try {
                                t3 = oVar.poll();
                                this.f66957p = t3;
                            } catch (Throwable th) {
                                io.reactivex.exceptions.a.b(th);
                                g();
                                this.f66955n.a(th);
                                this.f70070a.onError(this.f66955n.c());
                                return;
                            }
                        }
                        boolean z4 = t3 == null;
                        boolean z5 = this.f66954m.f66964f;
                        T t4 = this.f66958q;
                        if (t4 == null) {
                            try {
                                t4 = oVar2.poll();
                                this.f66958q = t4;
                            } catch (Throwable th2) {
                                io.reactivex.exceptions.a.b(th2);
                                g();
                                this.f66955n.a(th2);
                                this.f70070a.onError(this.f66955n.c());
                                return;
                            }
                        }
                        boolean z6 = t4 == null;
                        if (z3 && z5 && z4 && z6) {
                            d(Boolean.TRUE);
                            return;
                        } else if (z3 && z5 && z4 != z6) {
                            g();
                            d(Boolean.FALSE);
                            return;
                        } else if (!z4 && !z6) {
                            try {
                                if (!this.f66952k.a(t3, t4)) {
                                    g();
                                    d(Boolean.FALSE);
                                    return;
                                }
                                this.f66957p = null;
                                this.f66958q = null;
                                this.f66953l.b();
                                this.f66954m.b();
                            } catch (Throwable th3) {
                                io.reactivex.exceptions.a.b(th3);
                                g();
                                this.f66955n.a(th3);
                                this.f70070a.onError(this.f66955n.c());
                                return;
                            }
                        }
                    }
                    this.f66953l.clear();
                    this.f66954m.clear();
                    return;
                } else if (e()) {
                    this.f66953l.clear();
                    this.f66954m.clear();
                    return;
                } else if (this.f66955n.get() != null) {
                    g();
                    this.f70070a.onError(this.f66955n.c());
                    return;
                }
                i2 = this.f66956o.addAndGet(-i2);
            } while (i2 != 0);
        }

        @Override // io.reactivex.internal.subscriptions.DeferredScalarSubscription, l3.d
        public void cancel() {
            super.cancel();
            this.f66953l.a();
            this.f66954m.a();
            if (this.f66956o.getAndIncrement() == 0) {
                this.f66953l.clear();
                this.f66954m.clear();
            }
        }

        void g() {
            this.f66953l.a();
            this.f66953l.clear();
            this.f66954m.a();
            this.f66954m.clear();
        }

        void h(l3.b<? extends T> bVar, l3.b<? extends T> bVar2) {
            bVar.c(this.f66953l);
            bVar2.c(this.f66954m);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class EqualSubscriber<T> extends AtomicReference<l3.d> implements io.reactivex.o<T> {
        private static final long serialVersionUID = 4804128302091633067L;

        /* renamed from: a  reason: collision with root package name */
        final a f66959a;

        /* renamed from: b  reason: collision with root package name */
        final int f66960b;

        /* renamed from: c  reason: collision with root package name */
        final int f66961c;

        /* renamed from: d  reason: collision with root package name */
        long f66962d;

        /* renamed from: e  reason: collision with root package name */
        volatile x2.o<T> f66963e;

        /* renamed from: f  reason: collision with root package name */
        volatile boolean f66964f;

        /* renamed from: g  reason: collision with root package name */
        int f66965g;

        /* JADX INFO: Access modifiers changed from: package-private */
        public EqualSubscriber(a aVar, int i2) {
            this.f66959a = aVar;
            this.f66961c = i2 - (i2 >> 2);
            this.f66960b = i2;
        }

        public void a() {
            SubscriptionHelper.cancel(this);
        }

        public void b() {
            if (this.f66965g != 1) {
                long j4 = this.f66962d + 1;
                if (j4 >= this.f66961c) {
                    this.f66962d = 0L;
                    get().request(j4);
                    return;
                }
                this.f66962d = j4;
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void clear() {
            x2.o<T> oVar = this.f66963e;
            if (oVar != null) {
                oVar.clear();
            }
        }

        @Override // l3.c
        public void onComplete() {
            this.f66964f = true;
            this.f66959a.b();
        }

        @Override // l3.c
        public void onError(Throwable th) {
            this.f66959a.a(th);
        }

        @Override // l3.c
        public void onNext(T t3) {
            if (this.f66965g == 0 && !this.f66963e.offer(t3)) {
                onError(new MissingBackpressureException());
            } else {
                this.f66959a.b();
            }
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            if (SubscriptionHelper.setOnce(this, dVar)) {
                if (dVar instanceof x2.l) {
                    x2.l lVar = (x2.l) dVar;
                    int requestFusion = lVar.requestFusion(3);
                    if (requestFusion == 1) {
                        this.f66965g = requestFusion;
                        this.f66963e = lVar;
                        this.f66964f = true;
                        this.f66959a.b();
                        return;
                    } else if (requestFusion == 2) {
                        this.f66965g = requestFusion;
                        this.f66963e = lVar;
                        dVar.request(this.f66960b);
                        return;
                    }
                }
                this.f66963e = new SpscArrayQueue(this.f66960b);
                dVar.request(this.f66960b);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public interface a {
        void a(Throwable th);

        void b();
    }

    public FlowableSequenceEqual(l3.b<? extends T> bVar, l3.b<? extends T> bVar2, w2.d<? super T, ? super T> dVar, int i2) {
        this.f66948b = bVar;
        this.f66949c = bVar2;
        this.f66950d = dVar;
        this.f66951e = i2;
    }

    @Override // io.reactivex.j
    public void h6(l3.c<? super Boolean> cVar) {
        EqualCoordinator equalCoordinator = new EqualCoordinator(cVar, this.f66951e, this.f66950d);
        cVar.onSubscribe(equalCoordinator);
        equalCoordinator.h(this.f66948b, this.f66949c);
    }
}
