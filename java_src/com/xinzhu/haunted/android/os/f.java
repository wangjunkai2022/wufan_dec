package com.xinzhu.haunted.android.os;

import android.os.IBinder;
import android.os.IInterface;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: HtIDeviceIdentifiersPolicyService.java */
/* loaded from: classes3.dex */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    private static final String f63393a = "f";

    /* renamed from: b  reason: collision with root package name */
    public static Class<?> f63394b = com.xinzhu.haunted.d.b("android.os.IDeviceIdentifiersPolicyService");

    /* compiled from: HtIDeviceIdentifiersPolicyService.java */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public static Class<?> f63395a = com.xinzhu.haunted.d.b("android.os.IDeviceIdentifiersPolicyService$Stub");

        /* renamed from: b  reason: collision with root package name */
        private static AtomicReference<Method> f63396b = new AtomicReference<>();

        /* renamed from: c  reason: collision with root package name */
        private static boolean f63397c = false;

        public static IInterface a(IBinder arg0) {
            if (b(arg0)) {
                try {
                    return (IInterface) f63396b.get().invoke(null, arg0);
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
            if (f63396b.get() == null) {
                if (f63397c) {
                    return false;
                }
                f63396b.compareAndSet(null, com.xinzhu.haunted.d.g(f63395a, "asInterface", IBinder.class));
                f63397c = true;
                return f63396b.get() != null;
            }
            return true;
        }
    }
}
