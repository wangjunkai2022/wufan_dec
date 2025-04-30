package com.xinzhu.haunted.android.content.pm;

import android.os.IBinder;
import android.os.IInterface;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: HtICrossProfileApps.java */
/* loaded from: classes3.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    private static final String f63061a = "c";

    /* renamed from: b  reason: collision with root package name */
    public static Class<?> f63062b = com.xinzhu.haunted.d.b("android.content.pm.ICrossProfileApps");

    /* compiled from: HtICrossProfileApps.java */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public static Class<?> f63063a = com.xinzhu.haunted.d.b("android.content.pm.ICrossProfileApps$Stub");

        /* renamed from: b  reason: collision with root package name */
        private static AtomicReference<Method> f63064b = new AtomicReference<>();

        /* renamed from: c  reason: collision with root package name */
        private static boolean f63065c = false;

        public static IInterface a(IBinder arg0) {
            if (b(arg0)) {
                try {
                    return (IInterface) f63064b.get().invoke(null, arg0);
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
            if (f63064b.get() == null) {
                if (f63065c) {
                    return false;
                }
                f63064b.compareAndSet(null, com.xinzhu.haunted.d.g(f63063a, "asInterface", IBinder.class));
                f63065c = true;
                return f63064b.get() != null;
            }
            return true;
        }
    }
}
