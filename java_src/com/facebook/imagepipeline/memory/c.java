package com.facebook.imagepipeline.memory;

import com.facebook.infer.annotation.ThreadSafe;
/* compiled from: BitmapCounterProvider.java */
/* loaded from: classes2.dex */
public class c {

    /* renamed from: b  reason: collision with root package name */
    private static final long f12811b = 1024;

    /* renamed from: c  reason: collision with root package name */
    private static final long f12812c = 1048576;

    /* renamed from: f  reason: collision with root package name */
    private static volatile a f12815f;

    /* renamed from: a  reason: collision with root package name */
    private static final Class<?> f12810a = c.class;

    /* renamed from: d  reason: collision with root package name */
    public static final int f12813d = b();

    /* renamed from: e  reason: collision with root package name */
    private static int f12814e = 384;

    @ThreadSafe
    public static a a() {
        if (f12815f == null) {
            synchronized (c.class) {
                if (f12815f == null) {
                    f12815f = new a(f12814e, f12813d);
                }
            }
        }
        return f12815f;
    }

    private static int b() {
        int min = (int) Math.min(Runtime.getRuntime().maxMemory(), 2147483647L);
        if (min > 16777216) {
            return (min / 4) * 3;
        }
        return min / 2;
    }

    public static void c(b bVar) {
        if (f12815f == null) {
            f12814e = bVar.a();
            return;
        }
        throw new IllegalStateException("BitmapCounter has already been created! `BitmapCounterProvider.initialize(...)` should only be called before `BitmapCounterProvider.get()` or not at all!");
    }
}
