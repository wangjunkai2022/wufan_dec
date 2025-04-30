package com.xinzhu.haunted.android.app;

import android.os.IBinder;
import android.os.IInterface;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: HtApplicationThreadNative.java */
/* loaded from: classes3.dex */
public final class j {

    /* renamed from: a  reason: collision with root package name */
    private static final String f62629a = "j";

    /* renamed from: b  reason: collision with root package name */
    public static Class<?> f62630b = com.xinzhu.haunted.d.b("android.app.ApplicationThreadNative");

    /* renamed from: c  reason: collision with root package name */
    private static AtomicReference<Method> f62631c = new AtomicReference<>();

    /* renamed from: d  reason: collision with root package name */
    private static boolean f62632d = false;

    public static IInterface a(IBinder arg0) {
        if (b(arg0)) {
            try {
                return (IInterface) f62631c.get().invoke(null, arg0);
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
        if (f62631c.get() == null) {
            if (f62632d) {
                return false;
            }
            f62631c.compareAndSet(null, com.xinzhu.haunted.d.g(f62630b, "asInterface", IBinder.class));
            f62632d = true;
            return f62631c.get() != null;
        }
        return true;
    }
}
