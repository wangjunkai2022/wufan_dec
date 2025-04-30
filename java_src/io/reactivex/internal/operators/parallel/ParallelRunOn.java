package io.reactivex.internal.operators.parallel;

import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.h0;
import io.reactivex.internal.queue.SpscArrayQueue;
import io.reactivex.internal.schedulers.i;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.o;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import org.reactivestreams.Subscriber;
/* loaded from: classes5.dex */
public final class ParallelRunOn<T> extends io.reactivex.parallel.a<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.parallel.a<? extends T> f69476a;

    /* renamed from: b  reason: collision with root package name */
    final h0 f69477b;

    /* renamed from: c  reason: collision with root package name */
    final int f69478c;

    /* loaded from: classes5.dex */
    static abstract class BaseRunOnSubscriber<T> extends AtomicInteger implements o<T>, l3.d, Runnable {
        private static final long serialVersionUID = 9222303586456402150L;

        /* renamed from: a  reason: collision with root package name */
        final int f69479a;

        /* renamed from: b  reason: collision with root package name */
        final int f69480b;

        /* renamed from: c  reason: collision with root package name */
        final SpscArrayQueue<T> f69481c;

        /* renamed from: d  reason: collision with root package name */
        final h0.c f69482d;

        /* renamed from: e  reason: collision with root package name */
        l3.d f69483e;

        /* renamed from: f  reason: collision with root package name */
        volatile boolean f69484f;

        /* renamed from: g  reason: collision with root package name */
        Throwable f69485g;

        /* renamed from: h  reason: collision with root package name */
        final AtomicLong f69486h = new AtomicLong();

        /* renamed from: i  reason: collision with root package name */
        volatile boolean f69487i;

        /* renamed from: j  reason: collision with root package name */
        int f69488j;

        BaseRunOnSubscriber(int i2, SpscArrayQueue<T> spscArrayQueue, h0.c cVar) {
            this.f69479a = i2;
            this.f69481c = spscArrayQueue;
            this.f69480b = i2 - (i2 >> 2);
            this.f69482d = cVar;
        }

        final void a() {
            if (getAndIncrement() == 0) {
                this.f69482d.b(this);
            }
        }

        @Override // l3.d
        public final void cancel() {
            if (this.f69487i) {
                return;
            }
            this.f69487i = true;
            this.f69483e.cancel();
            this.f69482d.dispose();
            if (getAndIncrement() == 0) {
                this.f69481c.clear();
            }
        }

        @Override // l3.c
        public final void onComplete() {
            if (this.f69484f) {
                return;
            }
            this.f69484f = true;
            a();
        }

        @Override // l3.c
        public final void onError(Throwable th) {
            if (this.f69484f) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f69485g = th;
            this.f69484f = true;
            a();
        }

        @Override // l3.c
        public final void onNext(T t3) {
            if (this.f69484f) {
                return;
            }
            if (!this.f69481c.offer(t3)) {
                this.f69483e.cancel();
                onError(new MissingBackpressureException("Queue is full?!"));
                return;
            }
            a();
        }

        @Override // l3.d
        public final void request(long j4) {
            if (SubscriptionHelper.validate(j4)) {
                io.reactivex.internal.util.b.a(this.f69486h, j4);
                a();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class RunOnConditionalSubscriber<T> extends BaseRunOnSubscriber<T> {
        private static final long serialVersionUID = 1075119423897941642L;

        /* renamed from: k  reason: collision with root package name */
        final x2.a<? super T> f69489k;

        RunOnConditionalSubscriber(x2.a<? super T> aVar, int i2, SpscArrayQueue<T> spscArrayQueue, h0.c cVar) {
            super(i2, spscArrayQueue, cVar);
            this.f69489k = aVar;
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            if (SubscriptionHelper.validate(this.f69483e, dVar)) {
                this.f69483e = dVar;
                this.f69489k.onSubscribe(this);
                dVar.request(this.f69479a);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2;
            Throwable th;
            int i4 = this.f69488j;
            SpscArrayQueue<T> spscArrayQueue = this.f69481c;
            x2.a<? super T> aVar = this.f69489k;
            int i5 = this.f69480b;
            int i6 = 1;
            while (true) {
                long j4 = this.f69486h.get();
                long j5 = 0;
                while (j5 != j4) {
                    if (this.f69487i) {
                        spscArrayQueue.clear();
                        return;
                    }
                    boolean z3 = this.f69484f;
                    if (z3 && (th = this.f69485g) != null) {
                        spscArrayQueue.clear();
                        aVar.onError(th);
                        this.f69482d.dispose();
                        return;
                    }
                    T poll = spscArrayQueue.poll();
                    boolean z4 = poll == null;
                    if (z3 && z4) {
                        aVar.onComplete();
                        this.f69482d.dispose();
                        return;
                    } else if (z4) {
                        break;
                    } else {
                        if (aVar.v0(poll)) {
                            j5++;
                        }
                        i4++;
                        if (i4 == i5) {
                            i2 = i6;
                            this.f69483e.request(i4);
                            i4 = 0;
                        } else {
                            i2 = i6;
                        }
                        i6 = i2;
                    }
                }
                int i7 = i6;
                if (j5 == j4) {
                    if (this.f69487i) {
                        spscArrayQueue.clear();
                        return;
                    } else if (this.f69484f) {
                        Throwable th2 = this.f69485g;
                        if (th2 != null) {
                            spscArrayQueue.clear();
                            aVar.onError(th2);
                            this.f69482d.dispose();
                            return;
                        } else if (spscArrayQueue.isEmpty()) {
                            aVar.onComplete();
                            this.f69482d.dispose();
                            return;
                        }
                    }
                }
                if (j5 != 0 && j4 != Long.MAX_VALUE) {
                    this.f69486h.addAndGet(-j5);
                }
                int i8 = get();
                if (i8 == i7) {
                    this.f69488j = i4;
                    i8 = addAndGet(-i7);
                    if (i8 == 0) {
                        return;
                    }
                }
                i6 = i8;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class RunOnSubscriber<T> extends BaseRunOnSubscriber<T> {
        private static final long serialVersionUID = 1075119423897941642L;

        /* renamed from: k  reason: collision with root package name */
        final l3.c<? super T> f69490k;

        RunOnSubscriber(l3.c<? super T> cVar, int i2, SpscArrayQueue<T> spscArrayQueue, h0.c cVar2) {
            super(i2, spscArrayQueue, cVar2);
            this.f69490k = cVar;
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            if (SubscriptionHelper.validate(this.f69483e, dVar)) {
                this.f69483e = dVar;
                this.f69490k.onSubscribe(this);
                dVar.request(this.f69479a);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2;
            Throwable th;
            int i4 = this.f69488j;
            SpscArrayQueue<T> spscArrayQueue = this.f69481c;
            l3.c<? super T> cVar = this.f69490k;
            int i5 = this.f69480b;
            int i6 = 1;
            while (true) {
                long j4 = this.f69486h.get();
                long j5 = 0;
                while (j5 != j4) {
                    if (this.f69487i) {
                        spscArrayQueue.clear();
                        return;
                    }
                    boolean z3 = this.f69484f;
                    if (z3 && (th = this.f69485g) != null) {
                        spscArrayQueue.clear();
                        cVar.onError(th);
                        this.f69482d.dispose();
                        return;
                    }
                    T poll = spscArrayQueue.poll();
                    boolean z4 = poll == null;
                    if (z3 && z4) {
                        cVar.onComplete();
                        this.f69482d.dispose();
                        return;
                    } else if (z4) {
                        break;
                    } else {
                        cVar.onNext(poll);
                        j5++;
                        i4++;
                        if (i4 == i5) {
                            i2 = i6;
                            this.f69483e.request(i4);
                            i4 = 0;
                        } else {
                            i2 = i6;
                        }
                        i6 = i2;
                    }
                }
                int i7 = i6;
                if (j5 == j4) {
                    if (this.f69487i) {
                        spscArrayQueue.clear();
                        return;
                    } else if (this.f69484f) {
                        Throwable th2 = this.f69485g;
                        if (th2 != null) {
                            spscArrayQueue.clear();
                            cVar.onError(th2);
                            this.f69482d.dispose();
                            return;
                        } else if (spscArrayQueue.isEmpty()) {
                            cVar.onComplete();
                            this.f69482d.dispose();
                            return;
                        }
                    }
                }
                if (j5 != 0 && j4 != Long.MAX_VALUE) {
                    this.f69486h.addAndGet(-j5);
                }
                int i8 = get();
                if (i8 == i7) {
                    this.f69488j = i4;
                    i8 = addAndGet(-i7);
                    if (i8 == 0) {
                        return;
                    }
                }
                i6 = i8;
            }
        }
    }

    /* loaded from: classes5.dex */
    final class a implements i.a {

        /* renamed from: a  reason: collision with root package name */
        final Subscriber<? super T>[] f69491a;

        /* renamed from: b  reason: collision with root package name */
        final Subscriber<T>[] f69492b;

        a(Subscriber<? super T>[] subscriberArr, Subscriber<T>[] subscriberArr2) {
            this.f69491a = subscriberArr;
            this.f69492b = subscriberArr2;
        }

        @Override // io.reactivex.internal.schedulers.i.a
        public void a(int i2, h0.c cVar) {
            ParallelRunOn.this.V(i2, this.f69491a, this.f69492b, cVar);
        }
    }

    public ParallelRunOn(io.reactivex.parallel.a<? extends T> aVar, h0 h0Var, int i2) {
        this.f69476a = aVar;
        this.f69477b = h0Var;
        this.f69478c = i2;
    }

    @Override // io.reactivex.parallel.a
    public int F() {
        return this.f69476a.F();
    }

    @Override // io.reactivex.parallel.a
    public void Q(Subscriber<? super T>[] subscriberArr) {
        if (U(subscriberArr)) {
            int length = subscriberArr.length;
            l3.c[] cVarArr = new l3.c[length];
            h0 h0Var = this.f69477b;
            if (h0Var instanceof io.reactivex.internal.schedulers.i) {
                ((io.reactivex.internal.schedulers.i) h0Var).a(length, new a(subscriberArr, cVarArr));
            } else {
                for (int i2 = 0; i2 < length; i2++) {
                    V(i2, subscriberArr, cVarArr, this.f69477b.c());
                }
            }
            this.f69476a.Q(cVarArr);
        }
    }

    void V(int i2, Subscriber<? super T>[] subscriberArr, Subscriber<T>[] subscriberArr2, h0.c cVar) {
        Subscriber<? super T> subscriber = subscriberArr[i2];
        SpscArrayQueue spscArrayQueue = new SpscArrayQueue(this.f69478c);
        if (subscriber instanceof x2.a) {
            subscriberArr2[i2] = new RunOnConditionalSubscriber((x2.a) subscriber, this.f69478c, spscArrayQueue, cVar);
        } else {
            subscriberArr2[i2] = new RunOnSubscriber(subscriber, this.f69478c, spscArrayQueue, cVar);
        }
    }
}
