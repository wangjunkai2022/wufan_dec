package com.xinzhu.haunted.com.android.internal.telephony;

import android.os.IBinder;
import android.os.IInterface;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: HtIHwTelephony.java */
/* loaded from: classes3.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static final String f63835a = "a";

    /* renamed from: b  reason: collision with root package name */
    public static Class<?> f63836b = com.xinzhu.haunted.d.b("com.android.internal.telephony.IHwTelephony");

    /* compiled from: HtIHwTelephony.java */
    /* renamed from: com.xinzhu.haunted.com.android.internal.telephony.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0395a {

        /* renamed from: a  reason: collision with root package name */
        public static Class<?> f63837a = com.xinzhu.haunted.d.b("com.android.internal.telephony.IHwTelephony$Stub");

        /* renamed from: b  reason: collision with root package name */
        private static AtomicReference<Method> f63838b = new AtomicReference<>();

        /* renamed from: c  reason: collision with root package name */
        private static boolean f63839c = false;

        public static IInterface a(IBinder arg0) {
            if (b(arg0)) {
                try {
                    return (IInterface) f63838b.get().invoke(null, arg0);
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
            if (f63838b.get() == null) {
                if (f63839c) {
                    return false;
                }
                f63838b.compareAndSet(null, com.xinzhu.haunted.d.g(f63837a, "asInterface", IBinder.class));
                f63839c = true;
                return f63838b.get() != null;
            }
            return true;
        }
    }
}
