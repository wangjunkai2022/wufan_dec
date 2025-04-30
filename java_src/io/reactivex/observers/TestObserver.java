package io.reactivex.observers;

import io.reactivex.g0;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.util.ExceptionHelper;
import io.reactivex.l0;
import io.reactivex.t;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public class TestObserver<T> extends BaseTestConsumer<T, TestObserver<T>> implements g0<T>, io.reactivex.disposables.b, t<T>, l0<T>, io.reactivex.d {

    /* renamed from: k  reason: collision with root package name */
    private final g0<? super T> f70122k;

    /* renamed from: l  reason: collision with root package name */
    private final AtomicReference<io.reactivex.disposables.b> f70123l;

    /* renamed from: m  reason: collision with root package name */
    private x2.j<T> f70124m;

    /* loaded from: classes5.dex */
    enum EmptyObserver implements g0<Object> {
        INSTANCE;

        @Override // io.reactivex.g0
        public void onComplete() {
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
        }

        @Override // io.reactivex.g0
        public void onNext(Object obj) {
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
        }
    }

    public TestObserver() {
        this(EmptyObserver.INSTANCE);
    }

    public static <T> TestObserver<T> h0() {
        return new TestObserver<>();
    }

    public static <T> TestObserver<T> i0(g0<? super T> g0Var) {
        return new TestObserver<>(g0Var);
    }

    static String j0(int i2) {
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

    final TestObserver<T> b0() {
        if (this.f70124m != null) {
            return this;
        }
        throw new AssertionError("Upstream is not fuseable.");
    }

    final TestObserver<T> c0(int i2) {
        int i4 = this.f70119h;
        if (i4 != i2) {
            if (this.f70124m != null) {
                throw new AssertionError("Fusion mode different. Expected: " + j0(i2) + ", actual: " + j0(i4));
            }
            throw S("Upstream is not fuseable");
        }
        return this;
    }

    public final void cancel() {
        dispose();
    }

    final TestObserver<T> d0() {
        if (this.f70124m == null) {
            return this;
        }
        throw new AssertionError("Upstream is fuseable.");
    }

    @Override // io.reactivex.disposables.b
    public final void dispose() {
        DisposableHelper.dispose(this.f70123l);
    }

    @Override // io.reactivex.observers.BaseTestConsumer
    /* renamed from: e0 */
    public final TestObserver<T> p() {
        if (this.f70123l.get() == null) {
            if (this.f70114c.isEmpty()) {
                return this;
            }
            throw S("Not subscribed but errors found");
        }
        throw S("Subscribed!");
    }

    public final TestObserver<T> f0(w2.g<? super TestObserver<T>> gVar) {
        try {
            gVar.accept(this);
            return this;
        } catch (Throwable th) {
            throw ExceptionHelper.e(th);
        }
    }

    @Override // io.reactivex.observers.BaseTestConsumer
    /* renamed from: g0 */
    public final TestObserver<T> s() {
        if (this.f70123l.get() != null) {
            return this;
        }
        throw S("Not subscribed!");
    }

    @Override // io.reactivex.disposables.b
    public final boolean isDisposed() {
        return DisposableHelper.isDisposed(this.f70123l.get());
    }

    public final boolean k0() {
        return this.f70123l.get() != null;
    }

    public final boolean l0() {
        return isDisposed();
    }

    final TestObserver<T> m0(int i2) {
        this.f70118g = i2;
        return this;
    }

    @Override // io.reactivex.g0
    public void onComplete() {
        if (!this.f70117f) {
            this.f70117f = true;
            if (this.f70123l.get() == null) {
                this.f70114c.add(new IllegalStateException("onSubscribe not called in proper order"));
            }
        }
        try {
            this.f70116e = Thread.currentThread();
            this.f70115d++;
            this.f70122k.onComplete();
        } finally {
            this.f70112a.countDown();
        }
    }

    @Override // io.reactivex.g0
    public void onError(Throwable th) {
        if (!this.f70117f) {
            this.f70117f = true;
            if (this.f70123l.get() == null) {
                this.f70114c.add(new IllegalStateException("onSubscribe not called in proper order"));
            }
        }
        try {
            this.f70116e = Thread.currentThread();
            if (th == null) {
                this.f70114c.add(new NullPointerException("onError received a null Throwable"));
            } else {
                this.f70114c.add(th);
            }
            this.f70122k.onError(th);
        } finally {
            this.f70112a.countDown();
        }
    }

    @Override // io.reactivex.g0
    public void onNext(T t3) {
        if (!this.f70117f) {
            this.f70117f = true;
            if (this.f70123l.get() == null) {
                this.f70114c.add(new IllegalStateException("onSubscribe not called in proper order"));
            }
        }
        this.f70116e = Thread.currentThread();
        if (this.f70119h != 2) {
            this.f70113b.add(t3);
            if (t3 == null) {
                this.f70114c.add(new NullPointerException("onNext received a null value"));
            }
            this.f70122k.onNext(t3);
            return;
        }
        while (true) {
            try {
                T poll = this.f70124m.poll();
                if (poll == null) {
                    return;
                }
                this.f70113b.add(poll);
            } catch (Throwable th) {
                this.f70114c.add(th);
                this.f70124m.dispose();
                return;
            }
        }
    }

    @Override // io.reactivex.g0
    public void onSubscribe(io.reactivex.disposables.b bVar) {
        this.f70116e = Thread.currentThread();
        if (bVar == null) {
            this.f70114c.add(new NullPointerException("onSubscribe received a null Subscription"));
        } else if (!this.f70123l.compareAndSet(null, bVar)) {
            bVar.dispose();
            if (this.f70123l.get() != DisposableHelper.DISPOSED) {
                this.f70114c.add(new IllegalStateException("onSubscribe received multiple subscriptions: " + bVar));
            }
        } else {
            int i2 = this.f70118g;
            if (i2 != 0 && (bVar instanceof x2.j)) {
                x2.j<T> jVar = (x2.j) bVar;
                this.f70124m = jVar;
                int requestFusion = jVar.requestFusion(i2);
                this.f70119h = requestFusion;
                if (requestFusion == 1) {
                    this.f70117f = true;
                    this.f70116e = Thread.currentThread();
                    while (true) {
                        try {
                            T poll = this.f70124m.poll();
                            if (poll != null) {
                                this.f70113b.add(poll);
                            } else {
                                this.f70115d++;
                                this.f70123l.lazySet(DisposableHelper.DISPOSED);
                                return;
                            }
                        } catch (Throwable th) {
                            this.f70114c.add(th);
                            return;
                        }
                    }
                }
            }
            this.f70122k.onSubscribe(bVar);
        }
    }

    @Override // io.reactivex.t
    public void onSuccess(T t3) {
        onNext(t3);
        onComplete();
    }

    public TestObserver(g0<? super T> g0Var) {
        this.f70123l = new AtomicReference<>();
        this.f70122k = g0Var;
    }
}
