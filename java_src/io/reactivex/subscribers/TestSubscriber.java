package io.reactivex.subscribers;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.ExceptionHelper;
import io.reactivex.o;
import io.reactivex.observers.BaseTestConsumer;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import w2.g;
import x2.l;
/* loaded from: classes5.dex */
public class TestSubscriber<T> extends BaseTestConsumer<T, TestSubscriber<T>> implements o<T>, l3.d, io.reactivex.disposables.b {

    /* renamed from: k  reason: collision with root package name */
    private final l3.c<? super T> f70388k;

    /* renamed from: l  reason: collision with root package name */
    private volatile boolean f70389l;

    /* renamed from: m  reason: collision with root package name */
    private final AtomicReference<l3.d> f70390m;

    /* renamed from: n  reason: collision with root package name */
    private final AtomicLong f70391n;

    /* renamed from: o  reason: collision with root package name */
    private l<T> f70392o;

    /* loaded from: classes5.dex */
    enum EmptySubscriber implements o<Object> {
        INSTANCE;

        @Override // l3.c
        public void onComplete() {
        }

        @Override // l3.c
        public void onError(Throwable th) {
        }

        @Override // l3.c
        public void onNext(Object obj) {
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
        }
    }

    public TestSubscriber() {
        this(EmptySubscriber.INSTANCE, Long.MAX_VALUE);
    }

    public static <T> TestSubscriber<T> h0() {
        return new TestSubscriber<>();
    }

    public static <T> TestSubscriber<T> i0(long j4) {
        return new TestSubscriber<>(j4);
    }

    public static <T> TestSubscriber<T> j0(l3.c<? super T> cVar) {
        return new TestSubscriber<>(cVar);
    }

    static String k0(int i2) {
        if (i2 != 0) {
            if (i2 != 1) {
                if (i2 != 2) {
                    return "Unknown(" + i2 + ")";
                }
                return "ASYNC";
            }
            return "SYNC";
        }
        return "NONE";
    }

    final TestSubscriber<T> b0() {
        if (this.f70392o != null) {
            return this;
        }
        throw new AssertionError("Upstream is not fuseable.");
    }

    final TestSubscriber<T> c0(int i2) {
        int i4 = this.f70119h;
        if (i4 != i2) {
            if (this.f70392o != null) {
                throw new AssertionError("Fusion mode different. Expected: " + k0(i2) + ", actual: " + k0(i4));
            }
            throw S("Upstream is not fuseable");
        }
        return this;
    }

    @Override // l3.d
    public final void cancel() {
        if (this.f70389l) {
            return;
        }
        this.f70389l = true;
        SubscriptionHelper.cancel(this.f70390m);
    }

    final TestSubscriber<T> d0() {
        if (this.f70392o == null) {
            return this;
        }
        throw new AssertionError("Upstream is fuseable.");
    }

    @Override // io.reactivex.disposables.b
    public final void dispose() {
        cancel();
    }

    @Override // io.reactivex.observers.BaseTestConsumer
    /* renamed from: e0 */
    public final TestSubscriber<T> p() {
        if (this.f70390m.get() == null) {
            if (this.f70114c.isEmpty()) {
                return this;
            }
            throw S("Not subscribed but errors found");
        }
        throw S("Subscribed!");
    }

    public final TestSubscriber<T> f0(g<? super TestSubscriber<T>> gVar) {
        try {
            gVar.accept(this);
            return this;
        } catch (Throwable th) {
            throw ExceptionHelper.e(th);
        }
    }

    @Override // io.reactivex.observers.BaseTestConsumer
    /* renamed from: g0 */
    public final TestSubscriber<T> s() {
        if (this.f70390m.get() != null) {
            return this;
        }
        throw S("Not subscribed!");
    }

    @Override // io.reactivex.disposables.b
    public final boolean isDisposed() {
        return this.f70389l;
    }

    public final boolean l0() {
        return this.f70390m.get() != null;
    }

    public final boolean m0() {
        return this.f70389l;
    }

    protected void n0() {
    }

    public final TestSubscriber<T> o0(long j4) {
        request(j4);
        return this;
    }

    @Override // l3.c
    public void onComplete() {
        if (!this.f70117f) {
            this.f70117f = true;
            if (this.f70390m.get() == null) {
                this.f70114c.add(new IllegalStateException("onSubscribe not called in proper order"));
            }
        }
        try {
            this.f70116e = Thread.currentThread();
            this.f70115d++;
            this.f70388k.onComplete();
        } finally {
            this.f70112a.countDown();
        }
    }

    @Override // l3.c
    public void onError(Throwable th) {
        if (!this.f70117f) {
            this.f70117f = true;
            if (this.f70390m.get() == null) {
                this.f70114c.add(new NullPointerException("onSubscribe not called in proper order"));
            }
        }
        try {
            this.f70116e = Thread.currentThread();
            this.f70114c.add(th);
            if (th == null) {
                this.f70114c.add(new IllegalStateException("onError received a null Throwable"));
            }
            this.f70388k.onError(th);
        } finally {
            this.f70112a.countDown();
        }
    }

    @Override // l3.c
    public void onNext(T t3) {
        if (!this.f70117f) {
            this.f70117f = true;
            if (this.f70390m.get() == null) {
                this.f70114c.add(new IllegalStateException("onSubscribe not called in proper order"));
            }
        }
        this.f70116e = Thread.currentThread();
        if (this.f70119h != 2) {
            this.f70113b.add(t3);
            if (t3 == null) {
                this.f70114c.add(new NullPointerException("onNext received a null value"));
            }
            this.f70388k.onNext(t3);
            return;
        }
        while (true) {
            try {
                T poll = this.f70392o.poll();
                if (poll == null) {
                    return;
                }
                this.f70113b.add(poll);
            } catch (Throwable th) {
                this.f70114c.add(th);
                this.f70392o.cancel();
                return;
            }
        }
    }

    @Override // io.reactivex.o, l3.c
    public void onSubscribe(l3.d dVar) {
        this.f70116e = Thread.currentThread();
        if (dVar == null) {
            this.f70114c.add(new NullPointerException("onSubscribe received a null Subscription"));
        } else if (!this.f70390m.compareAndSet(null, dVar)) {
            dVar.cancel();
            if (this.f70390m.get() != SubscriptionHelper.CANCELLED) {
                this.f70114c.add(new IllegalStateException("onSubscribe received multiple subscriptions: " + dVar));
            }
        } else {
            int i2 = this.f70118g;
            if (i2 != 0 && (dVar instanceof l)) {
                l<T> lVar = (l) dVar;
                this.f70392o = lVar;
                int requestFusion = lVar.requestFusion(i2);
                this.f70119h = requestFusion;
                if (requestFusion == 1) {
                    this.f70117f = true;
                    this.f70116e = Thread.currentThread();
                    while (true) {
                        try {
                            T poll = this.f70392o.poll();
                            if (poll != null) {
                                this.f70113b.add(poll);
                            } else {
                                this.f70115d++;
                                return;
                            }
                        } catch (Throwable th) {
                            this.f70114c.add(th);
                            return;
                        }
                    }
                }
            }
            this.f70388k.onSubscribe(dVar);
            long andSet = this.f70391n.getAndSet(0L);
            if (andSet != 0) {
                dVar.request(andSet);
            }
            n0();
        }
    }

    final TestSubscriber<T> p0(int i2) {
        this.f70118g = i2;
        return this;
    }

    @Override // l3.d
    public final void request(long j4) {
        SubscriptionHelper.deferredRequest(this.f70390m, this.f70391n, j4);
    }

    public TestSubscriber(long j4) {
        this(EmptySubscriber.INSTANCE, j4);
    }

    public TestSubscriber(l3.c<? super T> cVar) {
        this(cVar, Long.MAX_VALUE);
    }

    public TestSubscriber(l3.c<? super T> cVar, long j4) {
        if (j4 >= 0) {
            this.f70388k = cVar;
            this.f70390m = new AtomicReference<>();
            this.f70391n = new AtomicLong(j4);
            return;
        }
        throw new IllegalArgumentException("Negative initial request not allowed");
    }
}
