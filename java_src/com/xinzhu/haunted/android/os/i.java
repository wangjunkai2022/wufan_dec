package com.xinzhu.haunted.android.os;

import android.os.IBinder;
import android.os.IInterface;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: HtIPowerManager.java */
/* loaded from: classes3.dex */
public final class i {

    /* renamed from: a  reason: collision with root package name */
    private static final String f63417a = "i";

    /* renamed from: b  reason: collision with root package name */
    public static Class<?> f63418b = com.xinzhu.haunted.d.b("android.os.IPowerManager");

    /* compiled from: HtIPowerManager.java */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public static Class<?> f63419a = com.xinzhu.haunted.d.b("android.os.IPowerManager$Stub");

        /* renamed from: b  reason: collision with root package name */
        private static AtomicReference<Method> f63420b = new AtomicReference<>();

        /* renamed from: c  reason: collision with root package name */
        private static boolean f63421c = false;

        public static IInterface a(IBinder arg0) {
            if (b(arg0)) {
                try {
                    return (IInterface) f63420b.get().invoke(null, arg0);
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
            if (f63420b.get() == null) {
                if (f63421c) {
                    return false;
                }
                f63420b.compareAndSet(null, com.xinzhu.haunted.d.g(f63419a, "asInterface", IBinder.class));
                f63421c = true;
                return f63420b.get() != null;
            }
            return true;
        }
    }
}
