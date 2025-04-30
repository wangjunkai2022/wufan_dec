package com.xinzhu.haunted.android.app;

import android.os.IBinder;
import android.os.IInterface;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: HtIUriGrantsManager.java */
/* loaded from: classes3.dex */
public final class r {

    /* renamed from: a  reason: collision with root package name */
    private static final String f62746a = "r";

    /* renamed from: b  reason: collision with root package name */
    public static Class<?> f62747b = com.xinzhu.haunted.d.b("android.app.IUriGrantsManager");

    /* compiled from: HtIUriGrantsManager.java */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public static Class<?> f62748a = com.xinzhu.haunted.d.b("android.app.IUriGrantsManager$Stub");

        /* renamed from: b  reason: collision with root package name */
        private static AtomicReference<Method> f62749b = new AtomicReference<>();

        /* renamed from: c  reason: collision with root package name */
        private static boolean f62750c = false;

        public static IInterface a(IBinder arg0) {
            if (b(arg0)) {
                try {
                    return (IInterface) f62749b.get().invoke(null, arg0);
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
            if (f62749b.get() == null) {
                if (f62750c) {
                    return false;
                }
                f62749b.compareAndSet(null, com.xinzhu.haunted.d.g(f62748a, "asInterface", IBinder.class));
                f62750c = true;
                return f62749b.get() != null;
            }
            return true;
        }
    }
}
