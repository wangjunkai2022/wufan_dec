package io.reactivex.internal.observers;

import io.reactivex.annotations.Nullable;
import io.reactivex.g0;
/* loaded from: classes5.dex */
public class DeferredScalarDisposable<T> extends BasicIntQueueDisposable<T> {

    /* renamed from: c  reason: collision with root package name */
    static final int f65871c = 2;

    /* renamed from: d  reason: collision with root package name */
    static final int f65872d = 4;

    /* renamed from: e  reason: collision with root package name */
    static final int f65873e = 8;

    /* renamed from: f  reason: collision with root package name */
    static final int f65874f = 16;

    /* renamed from: g  reason: collision with root package name */
    static final int f65875g = 32;
    private static final long serialVersionUID = -5502432239815349361L;

    /* renamed from: a  reason: collision with root package name */
    protected final g0<? super T> f65876a;

    /* renamed from: b  reason: collision with root package name */
    protected T f65877b;

    public DeferredScalarDisposable(g0<? super T> g0Var) {
        this.f65876a = g0Var;
    }

    public final void a() {
        if ((get() & 54) != 0) {
            return;
        }
        lazySet(2);
        this.f65876a.onComplete();
    }

    public final void b(T t3) {
        int i2 = get();
        if ((i2 & 54) != 0) {
            return;
        }
        g0<? super T> g0Var = this.f65876a;
        if (i2 == 8) {
            this.f65877b = t3;
            lazySet(16);
            g0Var.onNext(null);
        } else {
            lazySet(2);
            g0Var.onNext(t3);
        }
        if (get() != 4) {
            g0Var.onComplete();
        }
    }

    public final void c(Throwable th) {
        if ((get() & 54) != 0) {
            io.reactivex.plugins.a.Y(th);
            return;
        }
        lazySet(2);
        this.f65876a.onError(th);
    }

    @Override // x2.o
    public final void clear() {
        lazySet(32);
        this.f65877b = null;
    }

    public final boolean d() {
        return getAndSet(4) != 4;
    }

    @Override // io.reactivex.disposables.b
    public void dispose() {
        set(4);
        this.f65877b = null;
    }

    @Override // io.reactivex.disposables.b
    public final boolean isDisposed() {
        return get() == 4;
    }

    @Override // x2.o
    public final boolean isEmpty() {
        return get() != 16;
    }

    @Override // x2.o
    @Nullable
    public final T poll() throws Exception {
        if (get() == 16) {
            T t3 = this.f65877b;
            this.f65877b = null;
            lazySet(32);
            return t3;
        }
        return null;
    }

    @Override // x2.k
    public final int requestFusion(int i2) {
        if ((i2 & 2) != 0) {
            lazySet(8);
            return 2;
        }
        return 0;
    }
}
