package io.reactivex.internal.operators.flowable;

import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.operators.flowable.FlowableGroupJoin;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.ExceptionHelper;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class FlowableJoin<TLeft, TRight, TLeftEnd, TRightEnd, R> extends a<TLeft, R> {

    /* renamed from: c  reason: collision with root package name */
    final l3.b<? extends TRight> f66607c;

    /* renamed from: d  reason: collision with root package name */
    final w2.o<? super TLeft, ? extends l3.b<TLeftEnd>> f66608d;

    /* renamed from: e  reason: collision with root package name */
    final w2.o<? super TRight, ? extends l3.b<TRightEnd>> f66609e;

    /* renamed from: f  reason: collision with root package name */
    final w2.c<? super TLeft, ? super TRight, ? extends R> f66610f;

    /* loaded from: classes5.dex */
    static final class JoinSubscription<TLeft, TRight, TLeftEnd, TRightEnd, R> extends AtomicInteger implements l3.d, FlowableGroupJoin.a {

        /* renamed from: o  reason: collision with root package name */
        static final Integer f66611o = 1;

        /* renamed from: p  reason: collision with root package name */
        static final Integer f66612p = 2;

        /* renamed from: q  reason: collision with root package name */
        static final Integer f66613q = 3;

        /* renamed from: r  reason: collision with root package name */
        static final Integer f66614r = 4;
        private static final long serialVersionUID = -6071216598687999801L;

        /* renamed from: a  reason: collision with root package name */
        final l3.c<? super R> f66615a;

        /* renamed from: h  reason: collision with root package name */
        final w2.o<? super TLeft, ? extends l3.b<TLeftEnd>> f66622h;

        /* renamed from: i  reason: collision with root package name */
        final w2.o<? super TRight, ? extends l3.b<TRightEnd>> f66623i;

        /* renamed from: j  reason: collision with root package name */
        final w2.c<? super TLeft, ? super TRight, ? extends R> f66624j;

        /* renamed from: l  reason: collision with root package name */
        int f66626l;

        /* renamed from: m  reason: collision with root package name */
        int f66627m;

        /* renamed from: n  reason: collision with root package name */
        volatile boolean f66628n;

        /* renamed from: b  reason: collision with root package name */
        final AtomicLong f66616b = new AtomicLong();

        /* renamed from: d  reason: collision with root package name */
        final io.reactivex.disposables.a f66618d = new io.reactivex.disposables.a();

        /* renamed from: c  reason: collision with root package name */
        final io.reactivex.internal.queue.a<Object> f66617c = new io.reactivex.internal.queue.a<>(io.reactivex.j.V());

        /* renamed from: e  reason: collision with root package name */
        final Map<Integer, TLeft> f66619e = new LinkedHashMap();

        /* renamed from: f  reason: collision with root package name */
        final Map<Integer, TRight> f66620f = new LinkedHashMap();

        /* renamed from: g  reason: collision with root package name */
        final AtomicReference<Throwable> f66621g = new AtomicReference<>();

        /* renamed from: k  reason: collision with root package name */
        final AtomicInteger f66625k = new AtomicInteger(2);

        JoinSubscription(l3.c<? super R> cVar, w2.o<? super TLeft, ? extends l3.b<TLeftEnd>> oVar, w2.o<? super TRight, ? extends l3.b<TRightEnd>> oVar2, w2.c<? super TLeft, ? super TRight, ? extends R> cVar2) {
            this.f66615a = cVar;
            this.f66622h = oVar;
            this.f66623i = oVar2;
            this.f66624j = cVar2;
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableGroupJoin.a
        public void a(Throwable th) {
            if (ExceptionHelper.a(this.f66621g, th)) {
                this.f66625k.decrementAndGet();
                g();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableGroupJoin.a
        public void b(boolean z3, Object obj) {
            synchronized (this) {
                this.f66617c.offer(z3 ? f66611o : f66612p, obj);
            }
            g();
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableGroupJoin.a
        public void c(Throwable th) {
            if (ExceptionHelper.a(this.f66621g, th)) {
                g();
            } else {
                io.reactivex.plugins.a.Y(th);
            }
        }

        @Override // l3.d
        public void cancel() {
            if (this.f66628n) {
                return;
            }
            this.f66628n = true;
            f();
            if (getAndIncrement() == 0) {
                this.f66617c.clear();
            }
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableGroupJoin.a
        public void d(boolean z3, FlowableGroupJoin.LeftRightEndSubscriber leftRightEndSubscriber) {
            synchronized (this) {
                this.f66617c.offer(z3 ? f66613q : f66614r, leftRightEndSubscriber);
            }
            g();
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableGroupJoin.a
        public void e(FlowableGroupJoin.LeftRightSubscriber leftRightSubscriber) {
            this.f66618d.delete(leftRightSubscriber);
            this.f66625k.decrementAndGet();
            g();
        }

        void f() {
            this.f66618d.dispose();
        }

        /* JADX WARN: Multi-variable type inference failed */
        void g() {
            if (getAndIncrement() != 0) {
                return;
            }
            io.reactivex.internal.queue.a<Object> aVar = this.f66617c;
            l3.c<? super R> cVar = this.f66615a;
            boolean z3 = true;
            int i2 = 1;
            while (!this.f66628n) {
                if (this.f66621g.get() != null) {
                    aVar.clear();
                    f();
                    h(cVar);
                    return;
                }
                boolean z4 = this.f66625k.get() == 0;
                Integer num = (Integer) aVar.poll();
                boolean z5 = num == null;
                if (z4 && z5) {
                    this.f66619e.clear();
                    this.f66620f.clear();
                    this.f66618d.dispose();
                    cVar.onComplete();
                    return;
                } else if (z5) {
                    i2 = addAndGet(-i2);
                    if (i2 == 0) {
                        return;
                    }
                } else {
                    Object poll = aVar.poll();
                    if (num == f66611o) {
                        int i4 = this.f66626l;
                        this.f66626l = i4 + 1;
                        this.f66619e.put(Integer.valueOf(i4), poll);
                        try {
                            l3.b bVar = (l3.b) io.reactivex.internal.functions.a.g(this.f66622h.apply(poll), "The leftEnd returned a null Publisher");
                            FlowableGroupJoin.LeftRightEndSubscriber leftRightEndSubscriber = new FlowableGroupJoin.LeftRightEndSubscriber(this, z3, i4);
                            this.f66618d.b(leftRightEndSubscriber);
                            bVar.c(leftRightEndSubscriber);
                            if (this.f66621g.get() != null) {
                                aVar.clear();
                                f();
                                h(cVar);
                                return;
                            }
                            long j4 = this.f66616b.get();
                            long j5 = 0;
                            for (TRight tright : this.f66620f.values()) {
                                try {
                                    Object obj = (Object) io.reactivex.internal.functions.a.g(this.f66624j.apply(poll, tright), "The resultSelector returned a null value");
                                    if (j5 != j4) {
                                        cVar.onNext(obj);
                                        j5++;
                                    } else {
                                        ExceptionHelper.a(this.f66621g, new MissingBackpressureException("Could not emit value due to lack of requests"));
                                        aVar.clear();
                                        f();
                                        h(cVar);
                                        return;
                                    }
                                } catch (Throwable th) {
                                    i(th, cVar, aVar);
                                    return;
                                }
                            }
                            if (j5 != 0) {
                                io.reactivex.internal.util.b.e(this.f66616b, j5);
                            }
                        } catch (Throwable th2) {
                            i(th2, cVar, aVar);
                            return;
                        }
                    } else if (num == f66612p) {
                        int i5 = this.f66627m;
                        this.f66627m = i5 + 1;
                        this.f66620f.put(Integer.valueOf(i5), poll);
                        try {
                            l3.b bVar2 = (l3.b) io.reactivex.internal.functions.a.g(this.f66623i.apply(poll), "The rightEnd returned a null Publisher");
                            FlowableGroupJoin.LeftRightEndSubscriber leftRightEndSubscriber2 = new FlowableGroupJoin.LeftRightEndSubscriber(this, false, i5);
                            this.f66618d.b(leftRightEndSubscriber2);
                            bVar2.c(leftRightEndSubscriber2);
                            if (this.f66621g.get() != null) {
                                aVar.clear();
                                f();
                                h(cVar);
                                return;
                            }
                            long j6 = this.f66616b.get();
                            long j7 = 0;
                            for (TLeft tleft : this.f66619e.values()) {
                                try {
                                    Object obj2 = (Object) io.reactivex.internal.functions.a.g(this.f66624j.apply(tleft, poll), "The resultSelector returned a null value");
                                    if (j7 != j6) {
                                        cVar.onNext(obj2);
                                        j7++;
                                    } else {
                                        ExceptionHelper.a(this.f66621g, new MissingBackpressureException("Could not emit value due to lack of requests"));
                                        aVar.clear();
                                        f();
                                        h(cVar);
                                        return;
                                    }
                                } catch (Throwable th3) {
                                    i(th3, cVar, aVar);
                                    return;
                                }
                            }
                            if (j7 != 0) {
                                io.reactivex.internal.util.b.e(this.f66616b, j7);
                            }
                        } catch (Throwable th4) {
                            i(th4, cVar, aVar);
                            return;
                        }
                    } else if (num == f66613q) {
                        FlowableGroupJoin.LeftRightEndSubscriber leftRightEndSubscriber3 = (FlowableGroupJoin.LeftRightEndSubscriber) poll;
                        this.f66619e.remove(Integer.valueOf(leftRightEndSubscriber3.f66561c));
                        this.f66618d.a(leftRightEndSubscriber3);
                    } else if (num == f66614r) {
                        FlowableGroupJoin.LeftRightEndSubscriber leftRightEndSubscriber4 = (FlowableGroupJoin.LeftRightEndSubscriber) poll;
                        this.f66620f.remove(Integer.valueOf(leftRightEndSubscriber4.f66561c));
                        this.f66618d.a(leftRightEndSubscriber4);
                    }
                    z3 = true;
                }
            }
            aVar.clear();
        }

        void h(l3.c<?> cVar) {
            Throwable c4 = ExceptionHelper.c(this.f66621g);
            this.f66619e.clear();
            this.f66620f.clear();
            cVar.onError(c4);
        }

        void i(Throwable th, l3.c<?> cVar, x2.o<?> oVar) {
            io.reactivex.exceptions.a.b(th);
            ExceptionHelper.a(this.f66621g, th);
            oVar.clear();
            f();
            h(cVar);
        }

        @Override // l3.d
        public void request(long j4) {
            if (SubscriptionHelper.validate(j4)) {
                io.reactivex.internal.util.b.a(this.f66616b, j4);
            }
        }
    }

    public FlowableJoin(io.reactivex.j<TLeft> jVar, l3.b<? extends TRight> bVar, w2.o<? super TLeft, ? extends l3.b<TLeftEnd>> oVar, w2.o<? super TRight, ? extends l3.b<TRightEnd>> oVar2, w2.c<? super TLeft, ? super TRight, ? extends R> cVar) {
        super(jVar);
        this.f66607c = bVar;
        this.f66608d = oVar;
        this.f66609e = oVar2;
        this.f66610f = cVar;
    }

    @Override // io.reactivex.j
    protected void h6(l3.c<? super R> cVar) {
        JoinSubscription joinSubscription = new JoinSubscription(cVar, this.f66608d, this.f66609e, this.f66610f);
        cVar.onSubscribe(joinSubscription);
        FlowableGroupJoin.LeftRightSubscriber leftRightSubscriber = new FlowableGroupJoin.LeftRightSubscriber(joinSubscription, true);
        joinSubscription.f66618d.b(leftRightSubscriber);
        FlowableGroupJoin.LeftRightSubscriber leftRightSubscriber2 = new FlowableGroupJoin.LeftRightSubscriber(joinSubscription, false);
        joinSubscription.f66618d.b(leftRightSubscriber2);
        this.f67288b.g6(leftRightSubscriber);
        this.f66607c.c(leftRightSubscriber2);
    }
}
