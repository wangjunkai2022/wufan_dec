package com.xinzhu.haunted.android.os;

import android.os.IBinder;
import android.os.IInterface;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: HtINetworkManagementService.java */
/* loaded from: classes3.dex */
public final class h {

    /* renamed from: a  reason: collision with root package name */
    private static final String f63405a = "h";

    /* renamed from: b  reason: collision with root package name */
    public static Class<?> f63406b = com.xinzhu.haunted.d.b("android.os.INetworkManagementService");

    /* compiled from: HtINetworkManagementService.java */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public static Class<?> f63407a = com.xinzhu.haunted.d.b("android.os.INetworkManagementService$Stub");

        /* renamed from: b  reason: collision with root package name */
        private static AtomicReference<Method> f63408b = new AtomicReference<>();

        /* renamed from: c  reason: collision with root package name */
        private static boolean f63409c = false;

        public static IInterface a(IBinder arg0) {
            if (b(arg0)) {
                try {
                    return (IInterface) f63408b.get().invoke(null, arg0);
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
            if (f63408b.get() == null) {
                if (f63409c) {
                    return false;
                }
                f63408b.compareAndSet(null, com.xinzhu.haunted.d.g(f63407a, "asInterface", IBinder.class));
                f63409c = true;
                return f63408b.get() != null;
            }
            return true;
        }
    }
}
