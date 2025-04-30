package com.xinzhu.haunted.dalvik.system;

import com.xinzhu.haunted.d;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: HtVMRuntime.java */
/* loaded from: classes.dex */
public final class a {

    /* renamed from: b  reason: collision with root package name */
    private static final String f63907b = "a";

    /* renamed from: c  reason: collision with root package name */
    public static Class<?> f63908c = d.b("dalvik.system.VMRuntime");

    /* renamed from: d  reason: collision with root package name */
    private static AtomicReference<Method> f63909d = new AtomicReference<>();

    /* renamed from: e  reason: collision with root package name */
    private static boolean f63910e = false;

    /* renamed from: f  reason: collision with root package name */
    private static AtomicReference<Method> f63911f = new AtomicReference<>();

    /* renamed from: g  reason: collision with root package name */
    private static boolean f63912g = false;

    /* renamed from: h  reason: collision with root package name */
    private static AtomicReference<Method> f63913h = new AtomicReference<>();

    /* renamed from: i  reason: collision with root package name */
    private static boolean f63914i = false;

    /* renamed from: j  reason: collision with root package name */
    private static AtomicReference<Method> f63915j = new AtomicReference<>();

    /* renamed from: k  reason: collision with root package name */
    private static boolean f63916k = false;

    /* renamed from: a  reason: collision with root package name */
    public Object f63917a;

    public a(Object egoInstance) {
        this.f63917a = egoInstance;
    }

    public static boolean a() {
        if (f63909d.get() == null) {
            if (f63910e) {
                return false;
            }
            f63909d.compareAndSet(null, d.g(f63908c, "getRuntime", new Object[0]));
            f63910e = true;
            return f63909d.get() != null;
        }
        return true;
    }

    public static a e() {
        if (a()) {
            try {
                return new a(f63909d.get().invoke(null, new Object[0]));
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

    public boolean b() {
        if (f63913h.get() == null) {
            if (f63914i) {
                return false;
            }
            f63913h.compareAndSet(null, d.g(f63908c, "is64Bit", new Object[0]));
            f63914i = true;
            return f63913h.get() != null;
        }
        return true;
    }

    public boolean c() {
        if (f63915j.get() == null) {
            if (f63916k) {
                return false;
            }
            f63915j.compareAndSet(null, d.g(f63908c, "isJavaDebuggable", new Object[0]));
            f63916k = true;
            return f63915j.get() != null;
        }
        return true;
    }

    public boolean d(int arg0) {
        if (f63911f.get() == null) {
            if (f63912g) {
                return false;
            }
            f63911f.compareAndSet(null, d.g(f63908c, "setTargetSdkVersion", Integer.TYPE));
            f63912g = true;
            return f63911f.get() != null;
        }
        return true;
    }

    public Boolean f() {
        if (!b()) {
            return Boolean.FALSE;
        }
        try {
            return (Boolean) f63913h.get().invoke(this.f63917a, new Object[0]);
        } catch (IllegalAccessException e4) {
            e4.printStackTrace();
            return Boolean.FALSE;
        } catch (InvocationTargetException e5) {
            e5.printStackTrace();
            return Boolean.FALSE;
        }
    }

    public Boolean g() {
        if (!c()) {
            return Boolean.FALSE;
        }
        try {
            return (Boolean) f63915j.get().invoke(this.f63917a, new Object[0]);
        } catch (IllegalAccessException e4) {
            e4.printStackTrace();
            return Boolean.FALSE;
        } catch (InvocationTargetException e5) {
            e5.printStackTrace();
            return Boolean.FALSE;
        }
    }

    public void h(int arg0) {
        if (d(arg0)) {
            try {
                f63911f.get().invoke(this.f63917a, Integer.valueOf(arg0));
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
            } catch (InvocationTargetException e5) {
                e5.printStackTrace();
            }
        }
    }

    private a() {
    }
}
