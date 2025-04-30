package com.xinzhu.haunted.android.security.net.config;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: HtApplicationConfig.java */
/* loaded from: classes.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static final String f63603a = "a";

    /* renamed from: b  reason: collision with root package name */
    public static Class<?> f63604b = com.xinzhu.haunted.d.b("android.security.net.config.ApplicationConfig");

    /* renamed from: c  reason: collision with root package name */
    private static AtomicReference<Method> f63605c = new AtomicReference<>();

    /* renamed from: d  reason: collision with root package name */
    private static boolean f63606d = false;

    public static boolean a(Object arg0) {
        if (f63605c.get() == null) {
            if (f63606d) {
                return false;
            }
            f63605c.compareAndSet(null, com.xinzhu.haunted.d.g(f63604b, "setDefaultInstance", "android.security.net.config.ApplicationConfig"));
            f63606d = true;
            return f63605c.get() != null;
        }
        return true;
    }

    public static void b(Object arg0) {
        if (a(arg0)) {
            try {
                f63605c.get().invoke(null, arg0);
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
            } catch (InvocationTargetException e5) {
                e5.printStackTrace();
            }
        }
    }
}
