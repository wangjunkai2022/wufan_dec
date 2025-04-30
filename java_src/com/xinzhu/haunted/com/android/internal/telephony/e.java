package com.xinzhu.haunted.com.android.internal.telephony;

import android.os.IBinder;
import android.os.IInterface;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: HtITelephony.java */
/* loaded from: classes3.dex */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    private static final String f63855a = "e";

    /* renamed from: b  reason: collision with root package name */
    public static Class<?> f63856b = com.xinzhu.haunted.d.b("com.android.internal.telephony.ITelephony");

    /* compiled from: HtITelephony.java */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public static Class<?> f63857a = com.xinzhu.haunted.d.b("com.android.internal.telephony.ITelephony$Stub");

        /* renamed from: b  reason: collision with root package name */
        private static AtomicReference<Method> f63858b = new AtomicReference<>();

        /* renamed from: c  reason: collision with root package name */
        private static boolean f63859c = false;

        public static IInterface a(IBinder arg0) {
            if (b(arg0)) {
                try {
                    return (IInterface) f63858b.get().invoke(null, arg0);
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
            if (f63858b.get() == null) {
                if (f63859c) {
                    return false;
                }
                f63858b.compareAndSet(null, com.xinzhu.haunted.d.g(f63857a, "asInterface", IBinder.class));
                f63859c = true;
                return f63858b.get() != null;
            }
            return true;
        }
    }
}
