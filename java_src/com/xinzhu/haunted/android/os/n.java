package com.xinzhu.haunted.android.os;

import android.os.IBinder;
import android.os.IInterface;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: HtIVibratorService.java */
/* loaded from: classes3.dex */
public final class n {

    /* renamed from: a  reason: collision with root package name */
    private static final String f63445a = "n";

    /* renamed from: b  reason: collision with root package name */
    public static Class<?> f63446b = com.xinzhu.haunted.d.b("android.os.IVibratorService");

    /* compiled from: HtIVibratorService.java */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public static Class<?> f63447a = com.xinzhu.haunted.d.b("android.os.IVibratorService$Stub");

        /* renamed from: b  reason: collision with root package name */
        private static AtomicReference<Method> f63448b = new AtomicReference<>();

        /* renamed from: c  reason: collision with root package name */
        private static boolean f63449c = false;

        public static IInterface a(IBinder arg0) {
            if (b(arg0)) {
                try {
                    return (IInterface) f63448b.get().invoke(null, arg0);
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
            if (f63448b.get() == null) {
                if (f63449c) {
                    return false;
                }
                f63448b.compareAndSet(null, com.xinzhu.haunted.d.g(f63447a, "asInterface", IBinder.class));
                f63449c = true;
                return f63448b.get() != null;
            }
            return true;
        }
    }
}
