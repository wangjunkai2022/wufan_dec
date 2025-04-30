package com.xinzhu.haunted.com.android.internal.app;

import android.os.IBinder;
import android.os.IInterface;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: HtIBatteryStats.java */
/* loaded from: classes3.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private static final String f63758a = "b";

    /* renamed from: b  reason: collision with root package name */
    public static Class<?> f63759b = com.xinzhu.haunted.d.b("com.android.internal.app.IBatteryStats");

    /* compiled from: HtIBatteryStats.java */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public static Class<?> f63760a = com.xinzhu.haunted.d.b("com.android.internal.app.IBatteryStats$Stub");

        /* renamed from: b  reason: collision with root package name */
        private static AtomicReference<Method> f63761b = new AtomicReference<>();

        /* renamed from: c  reason: collision with root package name */
        private static boolean f63762c = false;

        public static IInterface a(IBinder arg0) {
            if (b(arg0)) {
                try {
                    return (IInterface) f63761b.get().invoke(null, arg0);
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
            if (f63761b.get() == null) {
                if (f63762c) {
                    return false;
                }
                f63761b.compareAndSet(null, com.xinzhu.haunted.d.g(f63760a, "asInterface", IBinder.class));
                f63762c = true;
                return f63761b.get() != null;
            }
            return true;
        }
    }
}
