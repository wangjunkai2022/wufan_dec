package com.xinzhu.haunted.android.content.pm;

import android.os.IBinder;
import android.os.IInterface;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: HtILauncherApps.java */
/* loaded from: classes3.dex */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    private static final String f63066a = "d";

    /* renamed from: b  reason: collision with root package name */
    public static Class<?> f63067b = com.xinzhu.haunted.d.b("android.content.pm.ILauncherApps");

    /* compiled from: HtILauncherApps.java */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public static Class<?> f63068a = com.xinzhu.haunted.d.b("android.content.pm.ILauncherApps$Stub");

        /* renamed from: b  reason: collision with root package name */
        private static AtomicReference<Method> f63069b = new AtomicReference<>();

        /* renamed from: c  reason: collision with root package name */
        private static boolean f63070c = false;

        public static IInterface a(IBinder arg0) {
            if (b(arg0)) {
                try {
                    return (IInterface) f63069b.get().invoke(null, arg0);
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
            if (f63069b.get() == null) {
                if (f63070c) {
                    return false;
                }
                f63069b.compareAndSet(null, com.xinzhu.haunted.d.g(f63068a, "asInterface", IBinder.class));
                f63070c = true;
                return f63069b.get() != null;
            }
            return true;
        }
    }
}
