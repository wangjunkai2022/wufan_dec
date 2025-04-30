package io.reactivex.processors;

import io.reactivex.annotations.CheckReturnValue;
import io.reactivex.annotations.NonNull;
import io.reactivex.annotations.Nullable;
import io.reactivex.internal.subscriptions.BasicIntQueueSubscription;
import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.j;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import l3.c;
import l3.d;
/* loaded from: classes5.dex */
public final class UnicastProcessor<T> extends a<T> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.internal.queue.a<T> f70255b;

    /* renamed from: c  reason: collision with root package name */
    final AtomicReference<Runnable> f70256c;

    /* renamed from: d  reason: collision with root package name */
    final boolean f70257d;

    /* renamed from: e  reason: collision with root package name */
    volatile boolean f70258e;

    /* renamed from: f  reason: collision with root package name */
    Throwable f70259f;

    /* renamed from: g  reason: collision with root package name */
    final AtomicReference<c<? super T>> f70260g;

    /* renamed from: h  reason: collision with root package name */
    volatile boolean f70261h;

    /* renamed from: i  reason: collision with root package name */
    final AtomicBoolean f70262i;

    /* renamed from: j  reason: collision with root package name */
    final BasicIntQueueSubscription<T> f70263j;

    /* renamed from: k  reason: collision with root package name */
    final AtomicLong f70264k;

    /* renamed from: l  reason: collision with root package name */
    boolean f70265l;

    /* loaded from: classes5.dex */
    final class UnicastQueueSubscription extends BasicIntQueueSubscription<T> {
        private static final long serialVersionUID = -4896760517184205454L;

        UnicastQueueSubscription() {
        }

        @Override // l3.d
        public void cancel() {
            if (UnicastProcessor.this.f70261h) {
                return;
            }
            UnicastProcessor.this.f70261h = true;
            UnicastProcessor.this.U8();
            UnicastProcessor unicastProcessor = UnicastProcessor.this;
            if (unicastProcessor.f70265l || unicastProcessor.f70263j.getAndIncrement() != 0) {
                return;
            }
            UnicastProcessor.this.f70255b.clear();
            UnicastProcessor.this.f70260g.lazySet(null);
        }

        @Override // x2.o
        public void clear() {
            UnicastProcessor.this.f70255b.clear();
        }

        @Override // x2.o
        public boolean isEmpty() {
            return UnicastProcessor.this.f70255b.isEmpty();
        }

        @Override // x2.o
        @Nullable
        public T poll() {
            return UnicastProcessor.this.f70255b.poll();
        }

        @Override // l3.d
        public void request(long j4) {
            if (SubscriptionHelper.validate(j4)) {
                io.reactivex.internal.util.b.a(UnicastProcessor.this.f70264k, j4);
                UnicastProcessor.this.V8();
            }
        }

        @Override // x2.k
        public int requestFusion(int i2) {
            if ((i2 & 2) != 0) {
                UnicastProcessor.this.f70265l = true;
                return 2;
            }
            return 0;
        }
    }

    UnicastProcessor(int i2) {
        this(i2, null, true);
    }

    @CheckReturnValue
    @NonNull
    public static <T> UnicastProcessor<T> P8() {
        return new UnicastProcessor<>(j.V());
    }

    @CheckReturnValue
    @NonNull
    public static <T> UnicastProcessor<T> Q8(int i2) {
        return new UnicastProcessor<>(i2);
    }

    @CheckReturnValue
    @NonNull
    public static <T> UnicastProcessor<T> R8(int i2, Runnable runnable) {
        io.reactivex.internal.functions.a.g(runnable, "onTerminate");
        return new UnicastProcessor<>(i2, runnable);
    }

    @CheckReturnValue
    @NonNull
    public static <T> UnicastProcessor<T> S8(int i2, Runnable runnable, boolean z3) {
        io.reactivex.internal.functions.a.g(runnable, "onTerminate");
        return new UnicastProcessor<>(i2, runnable, z3);
    }

    @CheckReturnValue
    @NonNull
    public static <T> UnicastProcessor<T> T8(boolean z3) {
        return new UnicastProcessor<>(j.V(), null, z3);
    }

    @Override // io.reactivex.processors.a
    @Nullable
    public Throwable J8() {
        if (this.f70258e) {
            return this.f70259f;
        }
        return null;
    }

    @Override // io.reactivex.processors.a
    public boolean K8() {
        return this.f70258e && this.f70259f == null;
    }

    @Override // io.reactivex.processors.a
    public boolean L8() {
        return this.f70260g.get() != null;
    }

    @Override // io.reactivex.processors.a
    public boolean M8() {
        return this.f70258e && this.f70259f != null;
    }

    boolean O8(boolean z3, boolean z4, boolean z5, c<? super T> cVar, io.reactivex.internal.queue.a<T> aVar) {
        if (this.f70261h) {
            aVar.clear();
            this.f70260g.lazySet(null);
            return true;
        } else if (z4) {
            if (z3 && this.f70259f != null) {
                aVar.clear();
                this.f70260g.lazySet(null);
                cVar.onError(this.f70259f);
                return true;
            } else if (z5) {
                Throwable th = this.f70259f;
                this.f70260g.lazySet(null);
                if (th != null) {
                    cVar.onError(th);
                } else {
                    cVar.onComplete();
                }
                return true;
            } else {
                return false;
            }
        } else {
            return false;
        }
    }

    void U8() {
        Runnable andSet = this.f70256c.getAndSet(null);
        if (andSet != null) {
            andSet.run();
        }
    }

    void V8() {
        if (this.f70263j.getAndIncrement() != 0) {
            return;
        }
        int i2 = 1;
        c<? super T> cVar = this.f70260g.get();
        while (cVar == null) {
            i2 = this.f70263j.addAndGet(-i2);
            if (i2 == 0) {
                return;
            }
            cVar = this.f70260g.get();
        }
        if (this.f70265l) {
            W8(cVar);
        } else {
            X8(cVar);
        }
    }

    void W8(c<? super T> cVar) {
        io.reactivex.internal.queue.a<T> aVar = this.f70255b;
        int i2 = 1;
        boolean z3 = !this.f70257d;
        while (!this.f70261h) {
            boolean z4 = this.f70258e;
            if (z3 && z4 && this.f70259f != null) {
                aVar.clear();
                this.f70260g.lazySet(null);
                cVar.onError(this.f70259f);
                return;
            }
            cVar.onNext(null);
            if (z4) {
                this.f70260g.lazySet(null);
                Throwable th = this.f70259f;
                if (th != null) {
                    cVar.onError(th);
                    return;
                } else {
                    cVar.onComplete();
                    return;
                }
            }
            i2 = this.f70263j.addAndGet(-i2);
            if (i2 == 0) {
                return;
            }
        }
        aVar.clear();
        this.f70260g.lazySet(null);
    }

    void X8(c<? super T> cVar) {
        long j4;
        io.reactivex.internal.queue.a<T> aVar = this.f70255b;
        boolean z3 = !this.f70257d;
        int i2 = 1;
        do {
            long j5 = this.f70264k.get();
            long j6 = 0;
            while (true) {
                if (j5 == j6) {
                    j4 = j6;
                    break;
                }
                boolean z4 = this.f70258e;
                T poll = aVar.poll();
                boolean z5 = poll == null;
                j4 = j6;
                if (O8(z3, z4, z5, cVar, aVar)) {
                    return;
                }
                if (z5) {
                    break;
                }
                cVar.onNext(poll);
                j6 = 1 + j4;
            }
            if (j5 == j4 && O8(z3, this.f70258e, aVar.isEmpty(), cVar, aVar)) {
                return;
            }
            if (j4 != 0 && j5 != Long.MAX_VALUE) {
                this.f70264k.addAndGet(-j4);
            }
            i2 = this.f70263j.addAndGet(-i2);
        } while (i2 != 0);
    }

    @Override // io.reactivex.j
    protected void h6(c<? super T> cVar) {
        if (!this.f70262i.get() && this.f70262i.compareAndSet(false, true)) {
            cVar.onSubscribe(this.f70263j);
            this.f70260g.set(cVar);
            if (this.f70261h) {
                this.f70260g.lazySet(null);
                return;
            } else {
                V8();
                return;
            }
        }
        EmptySubscription.error(new IllegalStateException("This processor allows only a single Subscriber"), cVar);
    }

    @Override // l3.c
    public void onComplete() {
        if (this.f70258e || this.f70261h) {
            return;
        }
        this.f70258e = true;
        U8();
        V8();
    }

    @Override // l3.c
    public void onError(Throwable th) {
        io.reactivex.internal.functions.a.g(th, "onError called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (!this.f70258e && !this.f70261h) {
            this.f70259f = th;
            this.f70258e = true;
            U8();
            V8();
            return;
        }
        io.reactivex.plugins.a.Y(th);
    }

    @Override // l3.c
    public void onNext(T t3) {
        io.reactivex.internal.functions.a.g(t3, "onNext called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (this.f70258e || this.f70261h) {
            return;
        }
        this.f70255b.offer(t3);
        V8();
    }

    @Override // l3.c
    public void onSubscribe(d dVar) {
        if (!this.f70258e && !this.f70261h) {
            dVar.request(Long.MAX_VALUE);
        } else {
            dVar.cancel();
        }
    }

    UnicastProcessor(int i2, Runnable runnable) {
        this(i2, runnable, true);
    }

    UnicastProcessor(int i2, Runnable runnable, boolean z3) {
        this.f70255b = new io.reactivex.internal.queue.a<>(io.reactivex.internal.functions.a.h(i2, "capacityHint"));
        this.f70256c = new AtomicReference<>(runnable);
        this.f70257d = z3;
        this.f70260g = new AtomicReference<>();
        this.f70262i = new AtomicBoolean();
        this.f70263j = new UnicastQueueSubscription();
        this.f70264k = new AtomicLong();
    }
}
