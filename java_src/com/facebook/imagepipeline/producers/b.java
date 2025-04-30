package com.facebook.imagepipeline.producers;

import javax.annotation.Nullable;
import javax.annotation.concurrent.ThreadSafe;
/* compiled from: BaseConsumer.java */
@ThreadSafe
/* loaded from: classes.dex */
public abstract class b<T> implements Consumer<T> {

    /* renamed from: g  reason: collision with root package name */
    private boolean f12989g = false;

    public static boolean d(int i2) {
        return (i2 & 1) == 1;
    }

    public static boolean e(int i2) {
        return !d(i2);
    }

    public static int k(boolean z3) {
        return z3 ? 1 : 0;
    }

    public static boolean l(int i2, int i4) {
        return (i2 & i4) != 0;
    }

    public static boolean m(int i2, int i4) {
        return (i2 & i4) == i4;
    }

    public static int n(int i2, int i4) {
        return i2 & (i4 ^ (-1));
    }

    public static int o(int i2, int i4) {
        return i2 | i4;
    }

    @Override // com.facebook.imagepipeline.producers.Consumer
    public synchronized void a() {
        if (this.f12989g) {
            return;
        }
        this.f12989g = true;
        try {
            f();
        } catch (Exception e4) {
            j(e4);
        }
    }

    @Override // com.facebook.imagepipeline.producers.Consumer
    public synchronized void b(@Nullable T t3, int i2) {
        if (this.f12989g) {
            return;
        }
        this.f12989g = d(i2);
        try {
            h(t3, i2);
        } catch (Exception e4) {
            j(e4);
        }
    }

    @Override // com.facebook.imagepipeline.producers.Consumer
    public synchronized void c(float f4) {
        if (this.f12989g) {
            return;
        }
        try {
            i(f4);
        } catch (Exception e4) {
            j(e4);
        }
    }

    protected abstract void f();

    protected abstract void g(Throwable th);

    protected abstract void h(T t3, int i2);

    protected void i(float f4) {
    }

    protected void j(Exception exc) {
        com.facebook.common.logging.a.t0(getClass(), "unhandled exception", exc);
    }

    @Override // com.facebook.imagepipeline.producers.Consumer
    public synchronized void onFailure(Throwable th) {
        if (this.f12989g) {
            return;
        }
        this.f12989g = true;
        try {
            g(th);
        } catch (Exception e4) {
            j(e4);
        }
    }
}
