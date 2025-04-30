package com.xinzhu.haunted.android.os;

import android.os.IBinder;
import android.os.IInterface;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: HtServiceManager.java */
/* loaded from: classes.dex */
public final class q {

    /* renamed from: a  reason: collision with root package name */
    private static final String f63466a = "q";

    /* renamed from: b  reason: collision with root package name */
    public static Class<?> f63467b = com.xinzhu.haunted.d.b("android.os.ServiceManager");

    /* renamed from: c  reason: collision with root package name */
    private static AtomicReference<Field> f63468c = new AtomicReference<>();

    /* renamed from: d  reason: collision with root package name */
    private static boolean f63469d = false;

    /* renamed from: e  reason: collision with root package name */
    private static AtomicReference<Field> f63470e = new AtomicReference<>();

    /* renamed from: f  reason: collision with root package name */
    private static boolean f63471f = false;

    /* renamed from: g  reason: collision with root package name */
    private static AtomicReference<Method> f63472g = new AtomicReference<>();

    /* renamed from: h  reason: collision with root package name */
    private static boolean f63473h = false;

    /* renamed from: i  reason: collision with root package name */
    private static AtomicReference<Method> f63474i = new AtomicReference<>();

    /* renamed from: j  reason: collision with root package name */
    private static boolean f63475j = false;

    /* renamed from: k  reason: collision with root package name */
    private static AtomicReference<Method> f63476k = new AtomicReference<>();

    /* renamed from: l  reason: collision with root package name */
    private static boolean f63477l = false;

    public static IBinder a() {
        if (d()) {
            try {
                return (IBinder) f63472g.get().invoke(null, new Object[0]);
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

    public static boolean b() {
        if (f63468c.get() == null) {
            if (f63469d) {
                return false;
            }
            f63468c.compareAndSet(null, com.xinzhu.haunted.d.f(f63467b, "sCache"));
            f63469d = true;
            return f63468c.get() != null;
        }
        return true;
    }

    public static boolean c() {
        if (f63470e.get() == null) {
            if (f63471f) {
                return false;
            }
            f63470e.compareAndSet(null, com.xinzhu.haunted.d.f(f63467b, "sServiceManager"));
            f63471f = true;
            return f63470e.get() != null;
        }
        return true;
    }

    public static boolean d() {
        if (f63472g.get() == null) {
            if (f63473h) {
                return false;
            }
            f63472g.compareAndSet(null, com.xinzhu.haunted.d.g(f63467b, "checkService", new Object[0]));
            f63473h = true;
            return f63472g.get() != null;
        }
        return true;
    }

    public static boolean e() {
        if (f63474i.get() == null) {
            if (f63475j) {
                return false;
            }
            f63474i.compareAndSet(null, com.xinzhu.haunted.d.g(f63467b, "getIServiceManager", new Object[0]));
            f63475j = true;
            return f63474i.get() != null;
        }
        return true;
    }

    public static boolean f(String arg0) {
        if (f63476k.get() == null) {
            if (f63477l) {
                return false;
            }
            f63476k.compareAndSet(null, com.xinzhu.haunted.d.g(f63467b, "getService", String.class));
            f63477l = true;
            return f63476k.get() != null;
        }
        return true;
    }

    public static IInterface g() {
        if (e()) {
            try {
                return (IInterface) f63474i.get().invoke(null, new Object[0]);
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

    public static IBinder h(String arg0) {
        if (f(arg0)) {
            try {
                return (IBinder) f63476k.get().invoke(null, arg0);
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

    public static Map<String, IBinder> i() {
        if (b()) {
            try {
                return (Map) f63468c.get().get(null);
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return null;
            }
        }
        return null;
    }

    public static IInterface j() {
        if (c()) {
            try {
                return (IInterface) f63470e.get().get(null);
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return null;
            }
        }
        return null;
    }

    public static boolean k(Map<String, IBinder> value) {
        if (b()) {
            try {
                f63468c.get().set(null, value);
                return true;
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return false;
            }
        }
        return false;
    }

    public static boolean l(IInterface value) {
        if (c()) {
            try {
                f63470e.get().set(null, value);
                return true;
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return false;
            }
        }
        return false;
    }
}
