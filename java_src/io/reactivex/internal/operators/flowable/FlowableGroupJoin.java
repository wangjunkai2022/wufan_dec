package io.reactivex.internal.operators.flowable;

import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.ExceptionHelper;
import io.reactivex.processors.UnicastProcessor;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class FlowableGroupJoin<TLeft, TRight, TLeftEnd, TRightEnd, R> extends io.reactivex.internal.operators.flowable.a<TLeft, R> {

    /* renamed from: c  reason: collision with root package name */
    final l3.b<? extends TRight> f66537c;

    /* renamed from: d  reason: collision with root package name */
    final w2.o<? super TLeft, ? extends l3.b<TLeftEnd>> f66538d;

    /* renamed from: e  reason: collision with root package name */
    final w2.o<? super TRight, ? extends l3.b<TRightEnd>> f66539e;

    /* renamed from: f  reason: collision with root package name */
    final w2.c<? super TLeft, ? super io.reactivex.j<TRight>, ? extends R> f66540f;

    /* loaded from: classes5.dex */
    static final class GroupJoinSubscription<TLeft, TRight, TLeftEnd, TRightEnd, R> extends AtomicInteger implements l3.d, a {

        /* renamed from: o  reason: collision with root package name */
        static final Integer f66541o = 1;

        /* renamed from: p  reason: collision with root package name */
        static final Integer f66542p = 2;

        /* renamed from: q  reason: collision with root package name */
        static final Integer f66543q = 3;

        /* renamed from: r  reason: collision with root package name */
        static final Integer f66544r = 4;
        private static final long serialVersionUID = -6071216598687999801L;

        /* renamed from: a  reason: collision with root package name */
        final l3.c<? super R> f66545a;

        /* renamed from: h  reason: collision with root package name */
        final w2.o<? super TLeft, ? extends l3.b<TLeftEnd>> f66552h;

        /* renamed from: i  reason: collision with root package name */
        final w2.o<? super TRight, ? extends l3.b<TRightEnd>> f66553i;

        /* renamed from: j  reason: collision with root package name */
        final w2.c<? super TLeft, ? super io.reactivex.j<TRight>, ? extends R> f66554j;

        /* renamed from: l  reason: collision with root package name */
        int f66556l;

        /* renamed from: m  reason: collision with root package name */
        int f66557m;

        /* renamed from: n  reason: collision with root package name */
        volatile boolean f66558n;

        /* renamed from: b  reason: collision with root package name */
        final AtomicLong f66546b = new AtomicLong();

        /* renamed from: d  reason: collision with root package name */
        final io.reactivex.disposables.a f66548d = new io.reactivex.disposables.a();

        /* renamed from: c  reason: collision with root package name */
        final io.reactivex.internal.queue.a<Object> f66547c = new io.reactivex.internal.queue.a<>(io.reactivex.j.V());

        /* renamed from: e  reason: collision with root package name */
        final Map<Integer, UnicastProcessor<TRight>> f66549e = new LinkedHashMap();

        /* renamed from: f  reason: collision with root package name */
        final Map<Integer, TRight> f66550f = new LinkedHashMap();

        /* renamed from: g  reason: collision with root package name */
        final AtomicReference<Throwable> f66551g = new AtomicReference<>();

        /* renamed from: k  reason: collision with root package name */
        final AtomicInteger f66555k = new AtomicInteger(2);

        GroupJoinSubscription(l3.c<? super R> cVar, w2.o<? super TLeft, ? extends l3.b<TLeftEnd>> oVar, w2.o<? super TRight, ? extends l3.b<TRightEnd>> oVar2, w2.c<? super TLeft, ? super io.reactivex.j<TRight>, ? extends R> cVar2) {
            this.f66545a = cVar;
            this.f66552h = oVar;
            this.f66553i = oVar2;
            this.f66554j = cVar2;
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableGroupJoin.a
        public void a(Throwable th) {
            if (ExceptionHelper.a(this.f66551g, th)) {
                this.f66555k.decrementAndGet();
                g();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableGroupJoin.a
        public void b(boolean z3, Object obj) {
            synchronized (this) {
                this.f66547c.offer(z3 ? f66541o : f66542p, obj);
            }
            g();
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableGroupJoin.a
        public void c(Throwable th) {
            if (ExceptionHelper.a(this.f66551g, th)) {
                g();
            } else {
                io.reactivex.plugins.a.Y(th);
            }
        }

        @Override // l3.d
        public void cancel() {
            if (this.f66558n) {
                return;
            }
            this.f66558n = true;
            f();
            if (getAndIncrement() == 0) {
                this.f66547c.clear();
            }
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableGroupJoin.a
        public void d(boolean z3, LeftRightEndSubscriber leftRightEndSubscriber) {
            synchronized (this) {
                this.f66547c.offer(z3 ? f66543q : f66544r, leftRightEndSubscriber);
            }
            g();
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableGroupJoin.a
        public void e(LeftRightSubscriber leftRightSubscriber) {
            this.f66548d.delete(leftRightSubscriber);
            this.f66555k.decrementAndGet();
            g();
        }

        void f() {
            this.f66548d.dispose();
        }

        /* JADX WARN: Multi-variable type inference failed */
        void g() {
            if (getAndIncrement() != 0) {
                return;
            }
            io.reactivex.internal.queue.a<Object> aVar = this.f66547c;
            l3.c<? super R> cVar = this.f66545a;
            int i2 = 1;
            while (!this.f66558n) {
                if (this.f66551g.get() != null) {
                    aVar.clear();
                    f();
                    h(cVar);
                    return;
                }
                boolean z3 = this.f66555k.get() == 0;
                Integer num = (Integer) aVar.poll();
                boolean z4 = num == null;
                if (z3 && z4) {
                    for (UnicastProcessor<TRight> unicastProcessor : this.f66549e.values()) {
                        unicastProcessor.onComplete();
                    }
                    this.f66549e.clear();
                    this.f66550f.clear();
                    this.f66548d.dispose();
                    cVar.onComplete();
                    return;
                } else if (z4) {
                    i2 = addAndGet(-i2);
                    if (i2 == 0) {
                        return;
                    }
                } else {
                    Object poll = aVar.poll();
                    if (num == f66541o) {
                        UnicastProcessor<TRight> P8 = UnicastProcessor.P8();
                        int i4 = this.f66556l;
                        this.f66556l = i4 + 1;
                        this.f66549e.put(Integer.valueOf(i4), P8);
                        try {
                            l3.b bVar = (l3.b) io.reactivex.internal.functions.a.g(this.f66552h.apply(poll), "The leftEnd returned a null Publisher");
                            LeftRightEndSubscriber leftRightEndSubscriber = new LeftRightEndSubscriber(this, true, i4);
                            this.f66548d.b(leftRightEndSubscriber);
                            bVar.c(leftRightEndSubscriber);
                            if (this.f66551g.get() != null) {
                                aVar.clear();
                                f();
                                h(cVar);
                                return;
                            }
                            try {
                                Object obj = (Object) io.reactivex.internal.functions.a.g(this.f66554j.apply(poll, P8), "The resultSelector returned a null value");
                                if (this.f66546b.get() != 0) {
                                    cVar.onNext(obj);
                                    io.reactivex.internal.util.b.e(this.f66546b, 1L);
                                    for (TRight tright : this.f66550f.values()) {
                                        P8.onNext(tright);
                                    }
                                } else {
                                    i(new MissingBackpressureException("Could not emit value due to lack of requests"), cVar, aVar);
                                    return;
                                }
                            } catch (Throwable th) {
                                i(th, cVar, aVar);
                                return;
                            }
                        } catch (Throwable th2) {
                            i(th2, cVar, aVar);
                            return;
                        }
                    } else if (num == f66542p) {
                        int i5 = this.f66557m;
                        this.f66557m = i5 + 1;
                        this.f66550f.put(Integer.valueOf(i5), poll);
                        try {
                            l3.b bVar2 = (l3.b) io.reactivex.internal.functions.a.g(this.f66553i.apply(poll), "The rightEnd returned a null Publisher");
                            LeftRightEndSubscriber leftRightEndSubscriber2 = new LeftRightEndSubscriber(this, false, i5);
                            this.f66548d.b(leftRightEndSubscriber2);
                            bVar2.c(leftRightEndSubscriber2);
                            if (this.f66551g.get() != null) {
                                aVar.clear();
                                f();
                                h(cVar);
                                return;
                            }
                            for (UnicastProcessor<TRight> unicastProcessor2 : this.f66549e.values()) {
                                unicastProcessor2.onNext(poll);
                            }
                        } catch (Throwable th3) {
                            i(th3, cVar, aVar);
                            return;
                        }
                    } else if (num == f66543q) {
                        LeftRightEndSubscriber leftRightEndSubscriber3 = (LeftRightEndSubscriber) poll;
                        UnicastProcessor<TRight> remove = this.f66549e.remove(Integer.valueOf(leftRightEndSubscriber3.f66561c));
                        this.f66548d.a(leftRightEndSubscriber3);
                        if (remove != null) {
                            remove.onComplete();
                        }
                    } else if (num == f66544r) {
                        LeftRightEndSubscriber leftRightEndSubscriber4 = (LeftRightEndSubscriber) poll;
                        this.f66550f.remove(Integer.valueOf(leftRightEndSubscriber4.f66561c));
                        this.f66548d.a(leftRightEndSubscriber4);
                    }
                }
            }
            aVar.clear();
        }

        void h(l3.c<?> cVar) {
            Throwable c4 = ExceptionHelper.c(this.f66551g);
            for (UnicastProcessor<TRight> unicastProcessor : this.f66549e.values()) {
                unicastProcessor.onError(c4);
            }
            this.f66549e.clear();
            this.f66550f.clear();
            cVar.onError(c4);
        }

        void i(Throwable th, l3.c<?> cVar, x2.o<?> oVar) {
            io.reactivex.exceptions.a.b(th);
            ExceptionHelper.a(this.f66551g, th);
            oVar.clear();
            f();
            h(cVar);
        }

        @Override // l3.d
        public void request(long j4) {
            if (SubscriptionHelper.validate(j4)) {
                io.reactivex.internal.util.b.a(this.f66546b, j4);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class LeftRightEndSubscriber extends AtomicReference<l3.d> implements io.reactivex.o<Object>, io.reactivex.disposables.b {
        private static final long serialVersionUID = 1883890389173668373L;

        /* renamed from: a  reason: collision with root package name */
        final a f66559a;

        /* renamed from: b  reason: collision with root package name */
        final boolean f66560b;

        /* renamed from: c  reason: collision with root package name */
        final int f66561c;

        /* JADX INFO: Access modifiers changed from: package-private */
        public LeftRightEndSubscriber(a aVar, boolean z3, int i2) {
            this.f66559a = aVar;
            this.f66560b = z3;
            this.f66561c = i2;
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            SubscriptionHelper.cancel(this);
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return SubscriptionHelper.isCancelled(get());
        }

        @Override // l3.c
        public void onComplete() {
            this.f66559a.d(this.f66560b, this);
        }

        @Override // l3.c
        public void onError(Throwable th) {
            this.f66559a.c(th);
        }

        @Override // l3.c
        public void onNext(Object obj) {
            if (SubscriptionHelper.cancel(this)) {
                this.f66559a.d(this.f66560b, this);
            }
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            SubscriptionHelper.setOnce(this, dVar, Long.MAX_VALUE);
        }
    }

    /* loaded from: classes5.dex */
    static final class LeftRightSubscriber extends AtomicReference<l3.d> implements io.reactivex.o<Object>, io.reactivex.disposables.b {
        private static final long serialVersionUID = 1883890389173668373L;

        /* renamed from: a  reason: collision with root package name */
        final a f66562a;

        /* renamed from: b  reason: collision with root package name */
        final boolean f66563b;

        /* JADX INFO: Access modifiers changed from: package-private */
        public LeftRightSubscriber(a aVar, boolean z3) {
            this.f66562a = aVar;
            this.f66563b = z3;
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            SubscriptionHelper.cancel(this);
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return SubscriptionHelper.isCancelled(get());
        }

        @Override // l3.c
        public void onComplete() {
            this.f66562a.e(this);
        }

        @Override // l3.c
        public void onError(Throwable th) {
            this.f66562a.a(th);
        }

        @Override // l3.c
        public void onNext(Object obj) {
            this.f66562a.b(this.f66563b, obj);
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            SubscriptionHelper.setOnce(this, dVar, Long.MAX_VALUE);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public interface a {
        void a(Throwable th);

        void b(boolean z3, Object obj);

        void c(Throwable th);

        void d(boolean z3, LeftRightEndSubscriber leftRightEndSubscriber);

        void e(LeftRightSubscriber leftRightSubscriber);
    }

    public FlowableGroupJoin(io.reactivex.j<TLeft> jVar, l3.b<? extends TRight> bVar, w2.o<? super TLeft, ? extends l3.b<TLeftEnd>> oVar, w2.o<? super TRight, ? extends l3.b<TRightEnd>> oVar2, w2.c<? super TLeft, ? super io.reactivex.j<TRight>, ? extends R> cVar) {
        super(jVar);
        this.f66537c = bVar;
        this.f66538d = oVar;
        this.f66539e = oVar2;
        this.f66540f = cVar;
    }

    @Override // io.reactivex.j
    protected void h6(l3.c<? super R> cVar) {
        GroupJoinSubscription groupJoinSubscription = new GroupJoinSubscription(cVar, this.f66538d, this.f66539e, this.f66540f);
        cVar.onSubscribe(groupJoinSubscription);
        LeftRightSubscriber leftRightSubscriber = new LeftRightSubscriber(groupJoinSubscription, true);
        groupJoinSubscription.f66548d.b(leftRightSubscriber);
        LeftRightSubscriber leftRightSubscriber2 = new LeftRightSubscriber(groupJoinSubscription, false);
        groupJoinSubscription.f66548d.b(leftRightSubscriber2);
        this.f67288b.g6(leftRightSubscriber);
        this.f66537c.c(leftRightSubscriber2);
    }
}
