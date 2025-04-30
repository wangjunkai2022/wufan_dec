package com.xinzhu.haunted.android.os;

import android.content.pm.ApplicationInfo;
import android.os.StrictMode;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: HtStrictMode.java */
/* loaded from: classes.dex */
public final class r {

    /* renamed from: a  reason: collision with root package name */
    private static final String f63481a = "r";

    /* renamed from: b  reason: collision with root package name */
    public static Class<?> f63482b = com.xinzhu.haunted.d.a(StrictMode.class);

    /* renamed from: c  reason: collision with root package name */
    private static AtomicReference<Method> f63483c = new AtomicReference<>();

    /* renamed from: d  reason: collision with root package name */
    private static boolean f63484d = false;

    /* renamed from: e  reason: collision with root package name */
    private static AtomicReference<Method> f63485e = new AtomicReference<>();

    /* renamed from: f  reason: collision with root package name */
    private static boolean f63486f = false;

    public static boolean a() {
        if (f63485e.get() == null) {
            if (f63486f) {
                return false;
            }
            f63485e.compareAndSet(null, com.xinzhu.haunted.d.g(f63482b, "disableDeathOnFileUriExposure", new Object[0]));
            f63486f = true;
            return f63485e.get() != null;
        }
        return true;
    }

    public static boolean b(ApplicationInfo arg0) {
        if (f63483c.get() == null) {
            if (f63484d) {
                return false;
            }
            f63483c.compareAndSet(null, com.xinzhu.haunted.d.g(f63482b, "initThreadDefaults", ApplicationInfo.class));
            f63484d = true;
            return f63483c.get() != null;
        }
        return true;
    }

    public static void c() {
        if (a()) {
            try {
                f63485e.get().invoke(null, new Object[0]);
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
            } catch (InvocationTargetException e5) {
                e5.printStackTrace();
            }
        }
    }

    public static void d(ApplicationInfo arg0) {
        if (b(arg0)) {
            try {
                f63483c.get().invoke(null, arg0);
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
            } catch (InvocationTargetException e5) {
                e5.printStackTrace();
            }
        }
    }
}
