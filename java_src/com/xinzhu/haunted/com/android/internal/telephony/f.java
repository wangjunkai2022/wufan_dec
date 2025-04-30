package com.xinzhu.haunted.com.android.internal.telephony;

import android.os.IBinder;
import android.os.IInterface;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: HtITelephonyRegistry.java */
/* loaded from: classes3.dex */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    private static final String f63860a = "f";

    /* renamed from: b  reason: collision with root package name */
    public static Class<?> f63861b = com.xinzhu.haunted.d.b("com.android.internal.telephony.ITelephonyRegistry");

    /* compiled from: HtITelephonyRegistry.java */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public static Class<?> f63862a = com.xinzhu.haunted.d.b("com.android.internal.telephony.ITelephonyRegistry$Stub");

        /* renamed from: b  reason: collision with root package name */
        private static AtomicReference<Method> f63863b = new AtomicReference<>();

        /* renamed from: c  reason: collision with root package name */
        private static boolean f63864c = false;

        public static IInterface a(IBinder arg0) {
            if (b(arg0)) {
                try {
                    return (IInterface) f63863b.get().invoke(null, arg0);
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
            if (f63863b.get() == null) {
                if (f63864c) {
                    return false;
                }
                f63863b.compareAndSet(null, com.xinzhu.haunted.d.g(f63862a, "asInterface", IBinder.class));
                f63864c = true;
                return f63863b.get() != null;
            }
            return true;
        }
    }
}
