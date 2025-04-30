package com.xinzhu.haunted.android.os;

import android.os.IBinder;
import android.os.IInterface;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: HtIUserManager.java */
/* loaded from: classes3.dex */
public final class l {

    /* renamed from: a  reason: collision with root package name */
    private static final String f63435a = "l";

    /* renamed from: b  reason: collision with root package name */
    public static Class<?> f63436b = com.xinzhu.haunted.d.b("android.os.IUserManager");

    /* compiled from: HtIUserManager.java */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public static Class<?> f63437a = com.xinzhu.haunted.d.b("android.os.IUserManager$Stub");

        /* renamed from: b  reason: collision with root package name */
        private static AtomicReference<Method> f63438b = new AtomicReference<>();

        /* renamed from: c  reason: collision with root package name */
        private static boolean f63439c = false;

        public static IInterface a(IBinder arg0) {
            if (b(arg0)) {
                try {
                    return (IInterface) f63438b.get().invoke(null, arg0);
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
            if (f63438b.get() == null) {
                if (f63439c) {
                    return false;
                }
                f63438b.compareAndSet(null, com.xinzhu.haunted.d.g(f63437a, "asInterface", IBinder.class));
                f63439c = true;
                return f63438b.get() != null;
            }
            return true;
        }
    }
}
