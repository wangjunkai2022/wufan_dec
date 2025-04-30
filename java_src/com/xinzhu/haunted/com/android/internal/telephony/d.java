package com.xinzhu.haunted.com.android.internal.telephony;

import android.os.IBinder;
import android.os.IInterface;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: HtISub.java */
/* loaded from: classes3.dex */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    private static final String f63850a = "d";

    /* renamed from: b  reason: collision with root package name */
    public static Class<?> f63851b = com.xinzhu.haunted.d.b("com.android.internal.telephony.ISub");

    /* compiled from: HtISub.java */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public static Class<?> f63852a = com.xinzhu.haunted.d.b("com.android.internal.telephony.ISub$Stub");

        /* renamed from: b  reason: collision with root package name */
        private static AtomicReference<Method> f63853b = new AtomicReference<>();

        /* renamed from: c  reason: collision with root package name */
        private static boolean f63854c = false;

        public static IInterface a(IBinder arg0) {
            if (b(arg0)) {
                try {
                    return (IInterface) f63853b.get().invoke(null, arg0);
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
            if (f63853b.get() == null) {
                if (f63854c) {
                    return false;
                }
                f63853b.compareAndSet(null, com.xinzhu.haunted.d.g(f63852a, "asInterface", IBinder.class));
                f63854c = true;
                return f63853b.get() != null;
            }
            return true;
        }
    }
}
