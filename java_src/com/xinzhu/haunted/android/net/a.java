package com.xinzhu.haunted.android.net;

import android.os.IBinder;
import android.os.IInterface;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: HtIConnectivityManager.java */
/* loaded from: classes3.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static final String f63334a = "a";

    /* renamed from: b  reason: collision with root package name */
    public static Class<?> f63335b = com.xinzhu.haunted.d.b("android.net.IConnectivityManager");

    /* compiled from: HtIConnectivityManager.java */
    /* renamed from: com.xinzhu.haunted.android.net.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0380a {

        /* renamed from: a  reason: collision with root package name */
        public static Class<?> f63336a = com.xinzhu.haunted.d.b("android.net.IConnectivityManager$Stub");

        /* renamed from: b  reason: collision with root package name */
        private static AtomicReference<Method> f63337b = new AtomicReference<>();

        /* renamed from: c  reason: collision with root package name */
        private static boolean f63338c = false;

        public static IInterface a(IBinder arg0) {
            if (b(arg0)) {
                try {
                    return (IInterface) f63337b.get().invoke(null, arg0);
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
            if (f63337b.get() == null) {
                if (f63338c) {
                    return false;
                }
                f63337b.compareAndSet(null, com.xinzhu.haunted.d.g(f63336a, "asInterface", IBinder.class));
                f63338c = true;
                return f63337b.get() != null;
            }
            return true;
        }
    }
}
