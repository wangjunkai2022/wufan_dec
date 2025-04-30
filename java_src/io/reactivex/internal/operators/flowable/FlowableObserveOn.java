package io.reactivex.internal.operators.flowable;

import io.reactivex.annotations.Nullable;
import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.h0;
import io.reactivex.internal.queue.SpscArrayQueue;
import io.reactivex.internal.subscriptions.BasicIntQueueSubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicLong;
/* loaded from: classes5.dex */
public final class FlowableObserveOn<T> extends a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final io.reactivex.h0 f66684c;

    /* renamed from: d  reason: collision with root package name */
    final boolean f66685d;

    /* renamed from: e  reason: collision with root package name */
    final int f66686e;

    /* loaded from: classes5.dex */
    static abstract class BaseObserveOnSubscriber<T> extends BasicIntQueueSubscription<T> implements io.reactivex.o<T>, Runnable {
        private static final long serialVersionUID = -8241002408341274697L;

        /* renamed from: a  reason: collision with root package name */
        final h0.c f66687a;

        /* renamed from: b  reason: collision with root package name */
        final boolean f66688b;

        /* renamed from: c  reason: collision with root package name */
        final int f66689c;

        /* renamed from: d  reason: collision with root package name */
        final int f66690d;

        /* renamed from: e  reason: collision with root package name */
        final AtomicLong f66691e = new AtomicLong();

        /* renamed from: f  reason: collision with root package name */
        l3.d f66692f;

        /* renamed from: g  reason: collision with root package name */
        x2.o<T> f66693g;

        /* renamed from: h  reason: collision with root package name */
        volatile boolean f66694h;

        /* renamed from: i  reason: collision with root package name */
        volatile boolean f66695i;

        /* renamed from: j  reason: collision with root package name */
        Throwable f66696j;

        /* renamed from: k  reason: collision with root package name */
        int f66697k;

        /* renamed from: l  reason: collision with root package name */
        long f66698l;

        /* renamed from: m  reason: collision with root package name */
        boolean f66699m;

        BaseObserveOnSubscriber(h0.c cVar, boolean z3, int i2) {
            this.f66687a = cVar;
            this.f66688b = z3;
            this.f66689c = i2;
            this.f66690d = i2 - (i2 >> 2);
        }

        @Override // l3.d
        public final void cancel() {
            if (this.f66694h) {
                return;
            }
            this.f66694h = true;
            this.f66692f.cancel();
            this.f66687a.dispose();
            if (getAndIncrement() == 0) {
                this.f66693g.clear();
            }
        }

        @Override // x2.o
        public final void clear() {
            this.f66693g.clear();
        }

        final boolean d(boolean z3, boolean z4, l3.c<?> cVar) {
            if (this.f66694h) {
                clear();
                return true;
            } else if (z3) {
                if (this.f66688b) {
                    if (z4) {
                        this.f66694h = true;
                        Throwable th = this.f66696j;
                        if (th != null) {
                            cVar.onError(th);
                        } else {
                            cVar.onComplete();
                        }
                        this.f66687a.dispose();
                        return true;
                    }
                    return false;
                }
                Throwable th2 = this.f66696j;
                if (th2 != null) {
                    this.f66694h = true;
                    clear();
                    cVar.onError(th2);
                    this.f66687a.dispose();
                    return true;
                } else if (z4) {
                    this.f66694h = true;
                    cVar.onComplete();
                    this.f66687a.dispose();
                    return true;
                } else {
                    return false;
                }
            } else {
                return false;
            }
        }

        abstract void e();

        abstract void f();

        abstract void g();

        final void h() {
            if (getAndIncrement() != 0) {
                return;
            }
            this.f66687a.b(this);
        }

        @Override // x2.o
        public final boolean isEmpty() {
            return this.f66693g.isEmpty();
        }

        @Override // l3.c
        public final void onComplete() {
            if (this.f66695i) {
                return;
            }
            this.f66695i = true;
            h();
        }

        @Override // l3.c
        public final void onError(Throwable th) {
            if (this.f66695i) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f66696j = th;
            this.f66695i = true;
            h();
        }

        @Override // l3.c
        public final void onNext(T t3) {
            if (this.f66695i) {
                return;
            }
            if (this.f66697k == 2) {
                h();
                return;
            }
            if (!this.f66693g.offer(t3)) {
                this.f66692f.cancel();
                this.f66696j = new MissingBackpressureException("Queue is full?!");
                this.f66695i = true;
            }
            h();
        }

        @Override // l3.d
        public final void request(long j4) {
            if (SubscriptionHelper.validate(j4)) {
                io.reactivex.internal.util.b.a(this.f66691e, j4);
                h();
            }
        }

        @Override // x2.k
        public final int requestFusion(int i2) {
            if ((i2 & 2) != 0) {
                this.f66699m = true;
                return 2;
            }
            return 0;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (this.f66699m) {
                f();
            } else if (this.f66697k == 1) {
                g();
            } else {
                e();
            }
        }
    }

    /* loaded from: classes5.dex */
    static final class ObserveOnConditionalSubscriber<T> extends BaseObserveOnSubscriber<T> {
        private static final long serialVersionUID = 644624475404284533L;

        /* renamed from: n  reason: collision with root package name */
        final x2.a<? super T> f66700n;

        /* renamed from: o  reason: collision with root package name */
        long f66701o;

        ObserveOnConditionalSubscriber(x2.a<? super T> aVar, h0.c cVar, boolean z3, int i2) {
            super(cVar, z3, i2);
            this.f66700n = aVar;
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableObserveOn.BaseObserveOnSubscriber
        void e() {
            x2.a<? super T> aVar = this.f66700n;
            x2.o<T> oVar = this.f66693g;
            long j4 = this.f66698l;
            long j5 = this.f66701o;
            int i2 = 1;
            while (true) {
                long j6 = this.f66691e.get();
                while (j4 != j6) {
                    boolean z3 = this.f66695i;
                    try {
                        Object obj = (T) oVar.poll();
                        boolean z4 = obj == null;
                        if (d(z3, z4, aVar)) {
                            return;
                        }
                        if (z4) {
                            break;
                        }
                        if (aVar.v0(obj)) {
                            j4++;
                        }
                        j5++;
                        if (j5 == this.f66690d) {
                            this.f66692f.request(j5);
                            j5 = 0;
                        }
                    } catch (Throwable th) {
                        io.reactivex.exceptions.a.b(th);
                        this.f66694h = true;
                        this.f66692f.cancel();
                        oVar.clear();
                        aVar.onError(th);
                        this.f66687a.dispose();
                        return;
                    }
                }
                if (j4 == j6 && d(this.f66695i, oVar.isEmpty(), aVar)) {
                    return;
                }
                int i4 = get();
                if (i2 == i4) {
                    this.f66698l = j4;
                    this.f66701o = j5;
                    i2 = addAndGet(-i2);
                    if (i2 == 0) {
                        return;
                    }
                } else {
                    i2 = i4;
                }
            }
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableObserveOn.BaseObserveOnSubscriber
        void f() {
            int i2 = 1;
            while (!this.f66694h) {
                boolean z3 = this.f66695i;
                this.f66700n.onNext(null);
                if (z3) {
                    this.f66694h = true;
                    Throwable th = this.f66696j;
                    if (th != null) {
                        this.f66700n.onError(th);
                    } else {
                        this.f66700n.onComplete();
                    }
                    this.f66687a.dispose();
                    return;
                }
                i2 = addAndGet(-i2);
                if (i2 == 0) {
                    return;
                }
            }
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableObserveOn.BaseObserveOnSubscriber
        void g() {
            x2.a<? super T> aVar = this.f66700n;
            x2.o<T> oVar = this.f66693g;
            long j4 = this.f66698l;
            int i2 = 1;
            while (true) {
                long j5 = this.f66691e.get();
                while (j4 != j5) {
                    try {
                        Object obj = (T) oVar.poll();
                        if (this.f66694h) {
                            return;
                        }
                        if (obj == null) {
                            this.f66694h = true;
                            aVar.onComplete();
                            this.f66687a.dispose();
                            return;
                        } else if (aVar.v0(obj)) {
                            j4++;
                        }
                    } catch (Throwable th) {
                        io.reactivex.exceptions.a.b(th);
                        this.f66694h = true;
                        this.f66692f.cancel();
                        aVar.onError(th);
                        this.f66687a.dispose();
                        return;
                    }
                }
                if (this.f66694h) {
                    return;
                }
                if (oVar.isEmpty()) {
                    this.f66694h = true;
                    aVar.onComplete();
                    this.f66687a.dispose();
                    return;
                }
                int i4 = get();
                if (i2 == i4) {
                    this.f66698l = j4;
                    i2 = addAndGet(-i2);
                    if (i2 == 0) {
                        return;
                    }
                } else {
                    i2 = i4;
                }
            }
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            if (SubscriptionHelper.validate(this.f66692f, dVar)) {
                this.f66692f = dVar;
                if (dVar instanceof x2.l) {
                    x2.l lVar = (x2.l) dVar;
                    int requestFusion = lVar.requestFusion(7);
                    if (requestFusion == 1) {
                        this.f66697k = 1;
                        this.f66693g = lVar;
                        this.f66695i = true;
                        this.f66700n.onSubscribe(this);
                        return;
                    } else if (requestFusion == 2) {
                        this.f66697k = 2;
                        this.f66693g = lVar;
                        this.f66700n.onSubscribe(this);
                        dVar.request(this.f66689c);
                        return;
                    }
                }
                this.f66693g = new SpscArrayQueue(this.f66689c);
                this.f66700n.onSubscribe(this);
                dVar.request(this.f66689c);
            }
        }

        @Override // x2.o
        @Nullable
        public T poll() throws Exception {
            T poll = this.f66693g.poll();
            if (poll != null && this.f66697k != 1) {
                long j4 = this.f66701o + 1;
                if (j4 == this.f66690d) {
                    this.f66701o = 0L;
                    this.f66692f.request(j4);
                } else {
                    this.f66701o = j4;
                }
            }
            return poll;
        }
    }

    /* loaded from: classes5.dex */
    static final class ObserveOnSubscriber<T> extends BaseObserveOnSubscriber<T> implements io.reactivex.o<T> {
        private static final long serialVersionUID = -4547113800637756442L;

        /* renamed from: n  reason: collision with root package name */
        final l3.c<? super T> f66702n;

        ObserveOnSubscriber(l3.c<? super T> cVar, h0.c cVar2, boolean z3, int i2) {
            super(cVar2, z3, i2);
            this.f66702n = cVar;
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableObserveOn.BaseObserveOnSubscriber
        void e() {
            l3.c<? super T> cVar = this.f66702n;
            x2.o<T> oVar = this.f66693g;
            long j4 = this.f66698l;
            int i2 = 1;
            while (true) {
                long j5 = this.f66691e.get();
                while (j4 != j5) {
                    boolean z3 = this.f66695i;
                    try {
                        Object obj = (T) oVar.poll();
                        boolean z4 = obj == null;
                        if (d(z3, z4, cVar)) {
                            return;
                        }
                        if (z4) {
                            break;
                        }
                        cVar.onNext(obj);
                        j4++;
                        if (j4 == this.f66690d) {
                            if (j5 != Long.MAX_VALUE) {
                                j5 = this.f66691e.addAndGet(-j4);
                            }
                            this.f66692f.request(j4);
                            j4 = 0;
                        }
                    } catch (Throwable th) {
                        io.reactivex.exceptions.a.b(th);
                        this.f66694h = true;
                        this.f66692f.cancel();
                        oVar.clear();
                        cVar.onError(th);
                        this.f66687a.dispose();
                        return;
                    }
                }
                if (j4 == j5 && d(this.f66695i, oVar.isEmpty(), cVar)) {
                    return;
                }
                int i4 = get();
                if (i2 == i4) {
                    this.f66698l = j4;
                    i2 = addAndGet(-i2);
                    if (i2 == 0) {
                        return;
                    }
                } else {
                    i2 = i4;
                }
            }
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableObserveOn.BaseObserveOnSubscriber
        void f() {
            int i2 = 1;
            while (!this.f66694h) {
                boolean z3 = this.f66695i;
                this.f66702n.onNext(null);
                if (z3) {
                    this.f66694h = true;
                    Throwable th = this.f66696j;
                    if (th != null) {
                        this.f66702n.onError(th);
                    } else {
                        this.f66702n.onComplete();
                    }
                    this.f66687a.dispose();
                    return;
                }
                i2 = addAndGet(-i2);
                if (i2 == 0) {
                    return;
                }
            }
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableObserveOn.BaseObserveOnSubscriber
        void g() {
            l3.c<? super T> cVar = this.f66702n;
            x2.o<T> oVar = this.f66693g;
            long j4 = this.f66698l;
            int i2 = 1;
            while (true) {
                long j5 = this.f66691e.get();
                while (j4 != j5) {
                    try {
                        Object obj = (T) oVar.poll();
                        if (this.f66694h) {
                            return;
                        }
                        if (obj == null) {
                            this.f66694h = true;
                            cVar.onComplete();
                            this.f66687a.dispose();
                            return;
                        }
                        cVar.onNext(obj);
                        j4++;
                    } catch (Throwable th) {
                        io.reactivex.exceptions.a.b(th);
                        this.f66694h = true;
                        this.f66692f.cancel();
                        cVar.onError(th);
                        this.f66687a.dispose();
                        return;
                    }
                }
                if (this.f66694h) {
                    return;
                }
                if (oVar.isEmpty()) {
                    this.f66694h = true;
                    cVar.onComplete();
                    this.f66687a.dispose();
                    return;
                }
                int i4 = get();
                if (i2 == i4) {
                    this.f66698l = j4;
                    i2 = addAndGet(-i2);
                    if (i2 == 0) {
                        return;
                    }
                } else {
                    i2 = i4;
                }
            }
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            if (SubscriptionHelper.validate(this.f66692f, dVar)) {
                this.f66692f = dVar;
                if (dVar instanceof x2.l) {
                    x2.l lVar = (x2.l) dVar;
                    int requestFusion = lVar.requestFusion(7);
                    if (requestFusion == 1) {
                        this.f66697k = 1;
                        this.f66693g = lVar;
                        this.f66695i = true;
                        this.f66702n.onSubscribe(this);
                        return;
                    } else if (requestFusion == 2) {
                        this.f66697k = 2;
                        this.f66693g = lVar;
                        this.f66702n.onSubscribe(this);
                        dVar.request(this.f66689c);
                        return;
                    }
                }
                this.f66693g = new SpscArrayQueue(this.f66689c);
                this.f66702n.onSubscribe(this);
                dVar.request(this.f66689c);
            }
        }

        @Override // x2.o
        @Nullable
        public T poll() throws Exception {
            T poll = this.f66693g.poll();
            if (poll != null && this.f66697k != 1) {
                long j4 = this.f66698l + 1;
                if (j4 == this.f66690d) {
                    this.f66698l = 0L;
                    this.f66692f.request(j4);
                } else {
                    this.f66698l = j4;
                }
            }
            return poll;
        }
    }

    public FlowableObserveOn(io.reactivex.j<T> jVar, io.reactivex.h0 h0Var, boolean z3, int i2) {
        super(jVar);
        this.f66684c = h0Var;
        this.f66685d = z3;
        this.f66686e = i2;
    }

    @Override // io.reactivex.j
    public void h6(l3.c<? super T> cVar) {
        h0.c c4 = this.f66684c.c();
        if (cVar instanceof x2.a) {
            this.f67288b.g6(new ObserveOnConditionalSubscriber((x2.a) cVar, c4, this.f66685d, this.f66686e));
        } else {
            this.f67288b.g6(new ObserveOnSubscriber(cVar, c4, this.f66685d, this.f66686e));
        }
    }
}
