package com.xinzhu.haunted.android.os;

import android.os.IBinder;
import android.os.IInterface;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: HtIVibratorManagerService.java */
/* loaded from: classes3.dex */
public final class m {

    /* renamed from: a  reason: collision with root package name */
    private static final String f63440a = "m";

    /* renamed from: b  reason: collision with root package name */
    public static Class<?> f63441b = com.xinzhu.haunted.d.b("android.os.IVibratorManagerService");

    /* compiled from: HtIVibratorManagerService.java */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public static Class<?> f63442a = com.xinzhu.haunted.d.b("android.os.IVibratorManagerService$Stub");

        /* renamed from: b  reason: collision with root package name */
        private static AtomicReference<Method> f63443b = new AtomicReference<>();

        /* renamed from: c  reason: collision with root package name */
        private static boolean f63444c = false;

        public static IInterface a(IBinder arg0) {
            if (b(arg0)) {
                try {
                    return (IInterface) f63443b.get().invoke(null, arg0);
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
            if (f63443b.get() == null) {
                if (f63444c) {
                    return false;
                }
                f63443b.compareAndSet(null, com.xinzhu.haunted.d.g(f63442a, "asInterface", IBinder.class));
                f63444c = true;
                return f63443b.get() != null;
            }
            return true;
        }
    }
}
