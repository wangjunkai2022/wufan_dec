package com.xinzhu.haunted.android.content.res;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: HtApkAssets.java */
/* loaded from: classes3.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static final String f63244a = "a";

    /* renamed from: b  reason: collision with root package name */
    public static Class<?> f63245b = com.xinzhu.haunted.d.b("android.content.res.ApkAssets");

    /* renamed from: c  reason: collision with root package name */
    private static AtomicReference<Method> f63246c = new AtomicReference<>();

    /* renamed from: d  reason: collision with root package name */
    private static boolean f63247d = false;

    /* renamed from: e  reason: collision with root package name */
    private static AtomicReference<Method> f63248e = new AtomicReference<>();

    /* renamed from: f  reason: collision with root package name */
    private static boolean f63249f = false;

    public static boolean a(String arg0, int arg1) {
        if (f63246c.get() == null) {
            if (f63247d) {
                return false;
            }
            f63246c.compareAndSet(null, com.xinzhu.haunted.d.g(f63245b, "loadFromPath", String.class, Integer.TYPE));
            f63247d = true;
            return f63246c.get() != null;
        }
        return true;
    }

    public static boolean b(String arg0, boolean arg1) {
        if (f63248e.get() == null) {
            if (f63249f) {
                return false;
            }
            f63248e.compareAndSet(null, com.xinzhu.haunted.d.g(f63245b, "loadFromPath", String.class, Boolean.TYPE));
            f63249f = true;
            return f63248e.get() != null;
        }
        return true;
    }

    public static Object c(String arg0, int arg1) {
        if (a(arg0, arg1)) {
            try {
                return f63246c.get().invoke(null, arg0, Integer.valueOf(arg1));
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

    public static Object d(String arg0, boolean arg1) {
        if (b(arg0, arg1)) {
            try {
                return f63248e.get().invoke(null, arg0, Boolean.valueOf(arg1));
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
