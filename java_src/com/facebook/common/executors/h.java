package com.facebook.common.executors;

import java.util.concurrent.atomic.AtomicInteger;
/* compiled from: StatefulRunnable.java */
/* loaded from: classes2.dex */
public abstract class h<T> implements Runnable {

    /* renamed from: b  reason: collision with root package name */
    protected static final int f11682b = 0;

    /* renamed from: c  reason: collision with root package name */
    protected static final int f11683c = 1;

    /* renamed from: d  reason: collision with root package name */
    protected static final int f11684d = 2;

    /* renamed from: e  reason: collision with root package name */
    protected static final int f11685e = 3;

    /* renamed from: f  reason: collision with root package name */
    protected static final int f11686f = 4;

    /* renamed from: a  reason: collision with root package name */
    protected final AtomicInteger f11687a = new AtomicInteger(0);

    public void a() {
        if (this.f11687a.compareAndSet(0, 2)) {
            d();
        }
    }

    protected void b(T t3) {
    }

    protected abstract T c() throws Exception;

    protected void d() {
    }

    protected void e(Exception exc) {
    }

    protected void f(T t3) {
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f11687a.compareAndSet(0, 1)) {
            try {
                T c4 = c();
                this.f11687a.set(3);
                try {
                    f(c4);
                } finally {
                    b(c4);
                }
            } catch (Exception e4) {
                this.f11687a.set(4);
                e(e4);
            }
        }
    }
}
