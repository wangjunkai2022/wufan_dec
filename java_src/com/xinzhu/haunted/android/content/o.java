package com.xinzhu.haunted.android.content;

import android.app.job.JobParameters;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: HtJobParameters.java */
/* loaded from: classes3.dex */
public final class o {

    /* renamed from: b  reason: collision with root package name */
    private static final String f63009b = "o";

    /* renamed from: c  reason: collision with root package name */
    public static Class<?> f63010c = com.xinzhu.haunted.d.a(JobParameters.class);

    /* renamed from: d  reason: collision with root package name */
    private static AtomicReference<Field> f63011d = new AtomicReference<>();

    /* renamed from: e  reason: collision with root package name */
    private static boolean f63012e = false;

    /* renamed from: f  reason: collision with root package name */
    private static AtomicReference<Field> f63013f = new AtomicReference<>();

    /* renamed from: g  reason: collision with root package name */
    private static boolean f63014g = false;

    /* renamed from: h  reason: collision with root package name */
    private static AtomicReference<Method> f63015h = new AtomicReference<>();

    /* renamed from: i  reason: collision with root package name */
    private static boolean f63016i = false;

    /* renamed from: j  reason: collision with root package name */
    private static AtomicReference<Method> f63017j = new AtomicReference<>();

    /* renamed from: k  reason: collision with root package name */
    private static boolean f63018k = false;

    /* renamed from: a  reason: collision with root package name */
    public Object f63019a;

    public o(Object egoInstance) {
        this.f63019a = egoInstance;
    }

    public static boolean a() {
        if (f63013f.get() == null) {
            if (f63014g) {
                return false;
            }
            f63013f.compareAndSet(null, com.xinzhu.haunted.d.f(f63010c, "REASON_CANCELED"));
            f63014g = true;
            return f63013f.get() != null;
        }
        return true;
    }

    public static boolean b() {
        if (f63011d.get() == null) {
            if (f63012e) {
                return false;
            }
            f63011d.compareAndSet(null, com.xinzhu.haunted.d.f(f63010c, "REASON_TIMEOUT"));
            f63012e = true;
            return f63011d.get() != null;
        }
        return true;
    }

    public static int g() {
        if (a()) {
            try {
                return ((Integer) f63013f.get().get(null)).intValue();
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return 0;
            }
        }
        return 0;
    }

    public static int h() {
        if (b()) {
            try {
                return ((Integer) f63011d.get().get(null)).intValue();
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return 0;
            }
        }
        return 0;
    }

    public static boolean i(int value) {
        if (a()) {
            try {
                f63013f.get().set(null, Integer.valueOf(value));
                return true;
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return false;
            }
        }
        return false;
    }

    public static boolean j(int value) {
        if (b()) {
            try {
                f63011d.get().set(null, Integer.valueOf(value));
                return true;
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return false;
            }
        }
        return false;
    }

    public boolean c() {
        if (f63017j.get() == null) {
            if (f63018k) {
                return false;
            }
            f63017j.compareAndSet(null, com.xinzhu.haunted.d.g(f63010c, "getDebugStopReason", new Object[0]));
            f63018k = true;
            return f63017j.get() != null;
        }
        return true;
    }

    public boolean d() {
        if (f63015h.get() == null) {
            if (f63016i) {
                return false;
            }
            f63015h.compareAndSet(null, com.xinzhu.haunted.d.g(f63010c, "getStopReason", new Object[0]));
            f63016i = true;
            return f63015h.get() != null;
        }
        return true;
    }

    public String e() {
        if (c()) {
            try {
                return (String) f63017j.get().invoke(this.f63019a, new Object[0]);
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return null;
            } catch (InvocationTargetException e5) {
                e5.printStackTrace();
                return null;
            }
        }
        return null;
    }

    public int f() {
        if (d()) {
            try {
                return ((Integer) f63015h.get().invoke(this.f63019a, new Object[0])).intValue();
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return 0;
            } catch (InvocationTargetException e5) {
                e5.printStackTrace();
                return 0;
            }
        }
        return 0;
    }

    private o() {
    }
}
