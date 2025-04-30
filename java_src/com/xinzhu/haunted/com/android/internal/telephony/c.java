package com.xinzhu.haunted.com.android.internal.telephony;

import android.os.IBinder;
import android.os.IInterface;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: HtISms.java */
/* loaded from: classes3.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    private static final String f63845a = "c";

    /* renamed from: b  reason: collision with root package name */
    public static Class<?> f63846b = com.xinzhu.haunted.d.b("com.android.internal.telephony.ISms");

    /* compiled from: HtISms.java */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public static Class<?> f63847a = com.xinzhu.haunted.d.b("com.android.internal.telephony.ISms$Stub");

        /* renamed from: b  reason: collision with root package name */
        private static AtomicReference<Method> f63848b = new AtomicReference<>();

        /* renamed from: c  reason: collision with root package name */
        private static boolean f63849c = false;

        public static IInterface a(IBinder arg0) {
            if (b(arg0)) {
                try {
                    return (IInterface) f63848b.get().invoke(null, arg0);
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
            if (f63848b.get() == null) {
                if (f63849c) {
                    return false;
                }
                f63848b.compareAndSet(null, com.xinzhu.haunted.d.g(f63847a, "asInterface", IBinder.class));
                f63849c = true;
                return f63848b.get() != null;
            }
            return true;
        }
    }
}
