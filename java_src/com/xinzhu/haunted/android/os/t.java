package com.xinzhu.haunted.android.os;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: HtSystemProperties.java */
/* loaded from: classes3.dex */
public final class t {

    /* renamed from: a  reason: collision with root package name */
    private static final String f63528a = "t";

    /* renamed from: b  reason: collision with root package name */
    public static Class<?> f63529b = com.xinzhu.haunted.d.b("android.os.SystemProperties");

    /* renamed from: c  reason: collision with root package name */
    private static AtomicReference<Method> f63530c = new AtomicReference<>();

    /* renamed from: d  reason: collision with root package name */
    private static boolean f63531d = false;

    /* renamed from: e  reason: collision with root package name */
    private static AtomicReference<Method> f63532e = new AtomicReference<>();

    /* renamed from: f  reason: collision with root package name */
    private static boolean f63533f = false;

    /* renamed from: g  reason: collision with root package name */
    private static AtomicReference<Method> f63534g = new AtomicReference<>();

    /* renamed from: h  reason: collision with root package name */
    private static boolean f63535h = false;

    /* renamed from: i  reason: collision with root package name */
    private static AtomicReference<Method> f63536i = new AtomicReference<>();

    /* renamed from: j  reason: collision with root package name */
    private static boolean f63537j = false;

    /* renamed from: k  reason: collision with root package name */
    private static AtomicReference<Method> f63538k = new AtomicReference<>();

    /* renamed from: l  reason: collision with root package name */
    private static boolean f63539l = false;

    public static boolean a(String arg0) {
        if (f63532e.get() == null) {
            if (f63533f) {
                return false;
            }
            f63532e.compareAndSet(null, com.xinzhu.haunted.d.g(f63529b, "get", String.class));
            f63533f = true;
            return f63532e.get() != null;
        }
        return true;
    }

    public static boolean b(String arg0, String arg1) {
        if (f63530c.get() == null) {
            if (f63531d) {
                return false;
            }
            f63530c.compareAndSet(null, com.xinzhu.haunted.d.g(f63529b, "get", String.class, String.class));
            f63531d = true;
            return f63530c.get() != null;
        }
        return true;
    }

    public static boolean c(String arg0, int arg1) {
        if (f63534g.get() == null) {
            if (f63535h) {
                return false;
            }
            f63534g.compareAndSet(null, com.xinzhu.haunted.d.g(f63529b, "getInt", String.class, Integer.TYPE));
            f63535h = true;
            return f63534g.get() != null;
        }
        return true;
    }

    public static boolean d(String arg0, long arg1) {
        if (f63536i.get() == null) {
            if (f63537j) {
                return false;
            }
            f63536i.compareAndSet(null, com.xinzhu.haunted.d.g(f63529b, "getLong", String.class, Long.TYPE));
            f63537j = true;
            return f63536i.get() != null;
        }
        return true;
    }

    public static boolean e(String arg0) {
        if (f63538k.get() == null) {
            if (f63539l) {
                return false;
            }
            f63538k.compareAndSet(null, com.xinzhu.haunted.d.g(f63529b, "isExist", String.class));
            f63539l = true;
            return f63538k.get() != null;
        }
        return true;
    }

    public static String f(String arg0) {
        if (a(arg0)) {
            try {
                return (String) f63532e.get().invoke(null, arg0);
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

    public static String g(String arg0, String arg1) {
        if (b(arg0, arg1)) {
            try {
                return (String) f63530c.get().invoke(null, arg0, arg1);
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

    public static int h(String arg0, int arg1) {
        if (c(arg0, arg1)) {
            try {
                return ((Integer) f63534g.get().invoke(null, arg0, Integer.valueOf(arg1))).intValue();
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

    public static long i(String arg0, long arg1) {
        if (d(arg0, arg1)) {
            try {
                return ((Long) f63536i.get().invoke(null, arg0, Long.valueOf(arg1))).longValue();
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return 0L;
            } catch (InvocationTargetException e5) {
                e5.printStackTrace();
                return 0L;
            }
        }
        return 0L;
    }

    public static boolean j(String arg0) {
        if (e(arg0)) {
            try {
                return ((Boolean) f63538k.get().invoke(null, arg0)).booleanValue();
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return false;
            } catch (InvocationTargetException e5) {
                e5.printStackTrace();
                return false;
            }
        }
        return false;
    }
}
