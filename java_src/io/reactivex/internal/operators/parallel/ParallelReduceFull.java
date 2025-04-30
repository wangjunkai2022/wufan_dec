package io.reactivex.internal.operators.parallel;

import io.reactivex.internal.subscriptions.DeferredScalarSubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.j;
import io.reactivex.o;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class ParallelReduceFull<T> extends j<T> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.parallel.a<? extends T> f69462b;

    /* renamed from: c  reason: collision with root package name */
    final w2.c<T, T, T> f69463c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class ParallelReduceFullInnerSubscriber<T> extends AtomicReference<l3.d> implements o<T> {
        private static final long serialVersionUID = -7954444275102466525L;

        /* renamed from: a  reason: collision with root package name */
        final ParallelReduceFullMainSubscriber<T> f69464a;

        /* renamed from: b  reason: collision with root package name */
        final w2.c<T, T, T> f69465b;

        /* renamed from: c  reason: collision with root package name */
        T f69466c;

        /* renamed from: d  reason: collision with root package name */
        boolean f69467d;

        ParallelReduceFullInnerSubscriber(ParallelReduceFullMainSubscriber<T> parallelReduceFullMainSubscriber, w2.c<T, T, T> cVar) {
            this.f69464a = parallelReduceFullMainSubscriber;
            this.f69465b = cVar;
        }

        void a() {
            SubscriptionHelper.cancel(this);
        }

        @Override // l3.c
        public void onComplete() {
            if (this.f69467d) {
                return;
            }
            this.f69467d = true;
            this.f69464a.h(this.f69466c);
        }

        @Override // l3.c
        public void onError(Throwable th) {
            if (this.f69467d) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f69467d = true;
            this.f69464a.a(th);
        }

        @Override // l3.c
        public void onNext(T t3) {
            if (this.f69467d) {
                return;
            }
            T t4 = this.f69466c;
            if (t4 == null) {
                this.f69466c = t3;
                return;
            }
            try {
                this.f69466c = (T) io.reactivex.internal.functions.a.g(this.f69465b.apply(t4, t3), "The reducer returned a null value");
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                get().cancel();
                onError(th);
            }
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            SubscriptionHelper.setOnce(this, dVar, Long.MAX_VALUE);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class ParallelReduceFullMainSubscriber<T> extends DeferredScalarSubscription<T> {
        private static final long serialVersionUID = -5370107872170712765L;

        /* renamed from: k  reason: collision with root package name */
        final ParallelReduceFullInnerSubscriber<T>[] f69468k;

        /* renamed from: l  reason: collision with root package name */
        final w2.c<T, T, T> f69469l;

        /* renamed from: m  reason: collision with root package name */
        final AtomicReference<SlotPair<T>> f69470m;

        /* renamed from: n  reason: collision with root package name */
        final AtomicInteger f69471n;

        /* renamed from: o  reason: collision with root package name */
        final AtomicReference<Throwable> f69472o;

        ParallelReduceFullMainSubscriber(l3.c<? super T> cVar, int i2, w2.c<T, T, T> cVar2) {
            super(cVar);
            this.f69470m = new AtomicReference<>();
            this.f69471n = new AtomicInteger();
            this.f69472o = new AtomicReference<>();
            ParallelReduceFullInnerSubscriber<T>[] parallelReduceFullInnerSubscriberArr = new ParallelReduceFullInnerSubscriber[i2];
            for (int i4 = 0; i4 < i2; i4++) {
                parallelReduceFullInnerSubscriberArr[i4] = new ParallelReduceFullInnerSubscriber<>(this, cVar2);
            }
            this.f69468k = parallelReduceFullInnerSubscriberArr;
            this.f69469l = cVar2;
            this.f69471n.lazySet(i2);
        }

        void a(Throwable th) {
            if (this.f69472o.compareAndSet(null, th)) {
                cancel();
                this.f70070a.onError(th);
            } else if (th != this.f69472o.get()) {
                io.reactivex.plugins.a.Y(th);
            }
        }

        @Override // io.reactivex.internal.subscriptions.DeferredScalarSubscription, l3.d
        public void cancel() {
            for (ParallelReduceFullInnerSubscriber<T> parallelReduceFullInnerSubscriber : this.f69468k) {
                parallelReduceFullInnerSubscriber.a();
            }
        }

        SlotPair<T> g(T t3) {
            SlotPair<T> slotPair;
            int b4;
            while (true) {
                slotPair = this.f69470m.get();
                if (slotPair == null) {
                    slotPair = new SlotPair<>();
                    if (!this.f69470m.compareAndSet(null, slotPair)) {
                        continue;
                    }
                }
                b4 = slotPair.b();
                if (b4 >= 0) {
                    break;
                }
                this.f69470m.compareAndSet(slotPair, null);
            }
            if (b4 == 0) {
                slotPair.f69473a = t3;
            } else {
                slotPair.f69474b = t3;
            }
            if (slotPair.a()) {
                this.f69470m.compareAndSet(slotPair, null);
                return slotPair;
            }
            return null;
        }

        void h(T t3) {
            if (t3 != null) {
                while (true) {
                    SlotPair<T> g4 = g(t3);
                    if (g4 == null) {
                        break;
                    }
                    try {
                        t3 = (T) io.reactivex.internal.functions.a.g(this.f69469l.apply(g4.f69473a, g4.f69474b), "The reducer returned a null value");
                    } catch (Throwable th) {
                        io.reactivex.exceptions.a.b(th);
                        a(th);
                        return;
                    }
                }
            }
            if (this.f69471n.decrementAndGet() == 0) {
                SlotPair<T> slotPair = this.f69470m.get();
                this.f69470m.lazySet(null);
                if (slotPair != null) {
                    d(slotPair.f69473a);
                } else {
                    this.f70070a.onComplete();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class SlotPair<T> extends AtomicInteger {
        private static final long serialVersionUID = 473971317683868662L;

        /* renamed from: a  reason: collision with root package name */
        T f69473a;

        /* renamed from: b  reason: collision with root package name */
        T f69474b;

        /* renamed from: c  reason: collision with root package name */
        final AtomicInteger f69475c = new AtomicInteger();

        SlotPair() {
        }

        boolean a() {
            return this.f69475c.incrementAndGet() == 2;
        }

        int b() {
            int i2;
            do {
                i2 = get();
                if (i2 >= 2) {
                    return -1;
                }
            } while (!compareAndSet(i2, i2 + 1));
            return i2;
        }
    }

    public ParallelReduceFull(io.reactivex.parallel.a<? extends T> aVar, w2.c<T, T, T> cVar) {
        this.f69462b = aVar;
        this.f69463c = cVar;
    }

    @Override // io.reactivex.j
    protected void h6(l3.c<? super T> cVar) {
        ParallelReduceFullMainSubscriber parallelReduceFullMainSubscriber = new ParallelReduceFullMainSubscriber(cVar, this.f69462b.F(), this.f69463c);
        cVar.onSubscribe(parallelReduceFullMainSubscriber);
        this.f69462b.Q(parallelReduceFullMainSubscriber.f69468k);
    }
}
