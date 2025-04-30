package com.xinzhu.haunted.com.android.internal.telephony;

import android.os.IBinder;
import android.os.IInterface;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: HtIPhoneSubInfo.java */
/* loaded from: classes3.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private static final String f63840a = "b";

    /* renamed from: b  reason: collision with root package name */
    public static Class<?> f63841b = com.xinzhu.haunted.d.b("com.android.internal.telephony.IPhoneSubInfo");

    /* compiled from: HtIPhoneSubInfo.java */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public static Class<?> f63842a = com.xinzhu.haunted.d.b("com.android.internal.telephony.IPhoneSubInfo$Stub");

        /* renamed from: b  reason: collision with root package name */
        private static AtomicReference<Method> f63843b = new AtomicReference<>();

        /* renamed from: c  reason: collision with root package name */
        private static boolean f63844c = false;

        public static IInterface a(IBinder arg0) {
            if (b(arg0)) {
                try {
                    return (IInterface) f63843b.get().invoke(null, arg0);
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
            if (f63843b.get() == null) {
                if (f63844c) {
                    return false;
                }
                f63843b.compareAndSet(null, com.xinzhu.haunted.d.g(f63842a, "asInterface", IBinder.class));
                f63844c = true;
                return f63843b.get() != null;
            }
            return true;
        }
    }
}
