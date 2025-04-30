package com.xinzhu.haunted.android.os;

import android.os.Environment;
import java.io.File;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: HtEnvironment.java */
/* loaded from: classes3.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    private static final String f63369a = "c";

    /* renamed from: b  reason: collision with root package name */
    public static Class<?> f63370b = com.xinzhu.haunted.d.a(Environment.class);

    /* renamed from: c  reason: collision with root package name */
    private static AtomicReference<Method> f63371c = new AtomicReference<>();

    /* renamed from: d  reason: collision with root package name */
    private static boolean f63372d = false;

    /* renamed from: e  reason: collision with root package name */
    private static AtomicReference<Method> f63373e = new AtomicReference<>();

    /* renamed from: f  reason: collision with root package name */
    private static boolean f63374f = false;

    /* renamed from: g  reason: collision with root package name */
    private static AtomicReference<Method> f63375g = new AtomicReference<>();

    /* renamed from: h  reason: collision with root package name */
    private static boolean f63376h = false;

    /* renamed from: i  reason: collision with root package name */
    private static AtomicReference<Method> f63377i = new AtomicReference<>();

    /* renamed from: j  reason: collision with root package name */
    private static boolean f63378j = false;

    /* renamed from: k  reason: collision with root package name */
    private static AtomicReference<Method> f63379k = new AtomicReference<>();

    /* renamed from: l  reason: collision with root package name */
    private static boolean f63380l = false;

    public static boolean a(String arg0) {
        if (f63371c.get() == null) {
            if (f63372d) {
                return false;
            }
            f63371c.compareAndSet(null, com.xinzhu.haunted.d.g(f63370b, "getDataAppDirectory", String.class));
            f63372d = true;
            return f63371c.get() != null;
        }
        return true;
    }

    public static boolean b(int arg0) {
        if (f63375g.get() == null) {
            if (f63376h) {
                return false;
            }
            f63375g.compareAndSet(null, com.xinzhu.haunted.d.g(f63370b, "getDataSystemCeDirectory", Integer.TYPE));
            f63376h = true;
            return f63375g.get() != null;
        }
        return true;
    }

    public static boolean c(int arg0) {
        if (f63373e.get() == null) {
            if (f63374f) {
                return false;
            }
            f63373e.compareAndSet(null, com.xinzhu.haunted.d.g(f63370b, "getDataSystemDeDirectory", Integer.TYPE));
            f63374f = true;
            return f63373e.get() != null;
        }
        return true;
    }

    public static boolean d() {
        if (f63377i.get() == null) {
            if (f63378j) {
                return false;
            }
            f63377i.compareAndSet(null, com.xinzhu.haunted.d.g(f63370b, "getDataSystemDirectory", new Object[0]));
            f63378j = true;
            return f63377i.get() != null;
        }
        return true;
    }

    public static boolean e(int arg0) {
        if (f63379k.get() == null) {
            if (f63380l) {
                return false;
            }
            f63379k.compareAndSet(null, com.xinzhu.haunted.d.g(f63370b, "getUserSystemDirectory", Integer.TYPE));
            f63380l = true;
            return f63379k.get() != null;
        }
        return true;
    }

    public static File f(String arg0) {
        if (a(arg0)) {
            try {
                return (File) f63371c.get().invoke(null, arg0);
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

    public static File g(int arg0) {
        if (b(arg0)) {
            try {
                return (File) f63375g.get().invoke(null, Integer.valueOf(arg0));
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

    public static File h(int arg0) {
        if (c(arg0)) {
            try {
                return (File) f63373e.get().invoke(null, Integer.valueOf(arg0));
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

    public static File i() {
        if (d()) {
            try {
                return (File) f63377i.get().invoke(null, new Object[0]);
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

    public static File j(int arg0) {
        if (e(arg0)) {
            try {
                return (File) f63379k.get().invoke(null, Integer.valueOf(arg0));
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
}
