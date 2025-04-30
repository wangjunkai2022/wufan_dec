package com.xinzhu.haunted.android.app;

import android.app.NotificationManager;
import android.os.IInterface;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: HtNotificationManager.java */
/* loaded from: classes.dex */
public final class u {

    /* renamed from: a  reason: collision with root package name */
    private static final String f62817a = "u";

    /* renamed from: b  reason: collision with root package name */
    public static Class<?> f62818b = com.xinzhu.haunted.d.a(NotificationManager.class);

    /* renamed from: c  reason: collision with root package name */
    private static AtomicReference<Field> f62819c = new AtomicReference<>();

    /* renamed from: d  reason: collision with root package name */
    private static boolean f62820d = false;

    /* renamed from: e  reason: collision with root package name */
    private static AtomicReference<Method> f62821e = new AtomicReference<>();

    /* renamed from: f  reason: collision with root package name */
    private static boolean f62822f = false;

    public static boolean a() {
        if (f62819c.get() == null) {
            if (f62820d) {
                return false;
            }
            f62819c.compareAndSet(null, com.xinzhu.haunted.d.f(f62818b, "sService"));
            f62820d = true;
            return f62819c.get() != null;
        }
        return true;
    }

    public static boolean b() {
        if (f62821e.get() == null) {
            if (f62822f) {
                return false;
            }
            f62821e.compareAndSet(null, com.xinzhu.haunted.d.g(f62818b, "getService", new Object[0]));
            f62822f = true;
            return f62821e.get() != null;
        }
        return true;
    }

    public static IInterface c() {
        if (b()) {
            try {
                return (IInterface) f62821e.get().invoke(null, new Object[0]);
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

    public static IInterface d() {
        if (a()) {
            try {
                return (IInterface) f62819c.get().get(null);
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return null;
            }
        }
        return null;
    }

    public static boolean e(IInterface value) {
        if (a()) {
            try {
                f62819c.get().set(null, value);
                return true;
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return false;
            }
        }
        return false;
    }
}
