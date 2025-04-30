package com.xinzhu.haunted.android.content;

import android.os.IBinder;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: HtContentProviderNative.java */
/* loaded from: classes.dex */
public final class g {

    /* renamed from: a  reason: collision with root package name */
    private static final String f62918a = "g";

    /* renamed from: b  reason: collision with root package name */
    public static Class<?> f62919b = com.xinzhu.haunted.d.b("android.content.ContentProviderNative");

    /* renamed from: c  reason: collision with root package name */
    private static AtomicReference<Method> f62920c = new AtomicReference<>();

    /* renamed from: d  reason: collision with root package name */
    private static boolean f62921d = false;

    public static Object a(IBinder arg0) {
        if (b(arg0)) {
            try {
                return f62920c.get().invoke(null, arg0);
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

    public static boolean b(IBinder arg0) {
        if (f62920c.get() == null) {
            if (f62921d) {
                return false;
            }
            f62920c.compareAndSet(null, com.xinzhu.haunted.d.g(f62919b, "asInterface", IBinder.class));
            f62921d = true;
            return f62920c.get() != null;
        }
        return true;
    }
}
