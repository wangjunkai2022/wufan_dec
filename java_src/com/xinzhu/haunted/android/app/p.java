package com.xinzhu.haunted.android.app;

import android.os.IBinder;
import android.os.IInterface;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: HtIApplicationThreadOreo.java */
/* loaded from: classes3.dex */
public final class p {

    /* renamed from: a  reason: collision with root package name */
    private static final String f62725a = "p";

    /* renamed from: b  reason: collision with root package name */
    public static Class<?> f62726b = com.xinzhu.haunted.d.b("android.app.IApplicationThread");

    /* compiled from: HtIApplicationThreadOreo.java */
    /* loaded from: classes3.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public static Class<?> f62727a = com.xinzhu.haunted.d.b("android.app.IApplicationThread$Stub");

        /* renamed from: b  reason: collision with root package name */
        private static AtomicReference<Method> f62728b = new AtomicReference<>();

        /* renamed from: c  reason: collision with root package name */
        private static boolean f62729c = false;

        public static IInterface a(IBinder arg0) {
            if (b(arg0)) {
                try {
                    return (IInterface) f62728b.get().invoke(null, arg0);
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
            if (f62728b.get() == null) {
                if (f62729c) {
                    return false;
                }
                f62728b.compareAndSet(null, com.xinzhu.haunted.d.g(f62727a, "asInterface", IBinder.class));
                f62729c = true;
                return f62728b.get() != null;
            }
            return true;
        }
    }
}
