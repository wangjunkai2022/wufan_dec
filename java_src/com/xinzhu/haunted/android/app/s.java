package com.xinzhu.haunted.android.app;

import android.os.IBinder;
import android.os.IInterface;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: HtIWallpaperManager.java */
/* loaded from: classes3.dex */
public final class s {

    /* renamed from: a  reason: collision with root package name */
    private static final String f62759a = "s";

    /* renamed from: b  reason: collision with root package name */
    public static Class<?> f62760b = com.xinzhu.haunted.d.b("android.app.IWallpaperManager");

    /* compiled from: HtIWallpaperManager.java */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public static Class<?> f62761a = com.xinzhu.haunted.d.b("android.app.IWallpaperManager$Stub");

        /* renamed from: b  reason: collision with root package name */
        private static AtomicReference<Method> f62762b = new AtomicReference<>();

        /* renamed from: c  reason: collision with root package name */
        private static boolean f62763c = false;

        public static IInterface a(IBinder arg0) {
            if (b(arg0)) {
                try {
                    return (IInterface) f62762b.get().invoke(null, arg0);
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
            if (f62762b.get() == null) {
                if (f62763c) {
                    return false;
                }
                f62762b.compareAndSet(null, com.xinzhu.haunted.d.g(f62761a, "asInterface", IBinder.class));
                f62763c = true;
                return f62762b.get() != null;
            }
            return true;
        }
    }
}
