package com.xinzhu.haunted.com.android.internal.telecom;

import android.os.IBinder;
import android.os.IInterface;
import com.xinzhu.haunted.d;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: HtITelecomService.java */
/* loaded from: classes3.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static final String f63829a = "a";

    /* renamed from: b  reason: collision with root package name */
    public static Class<?> f63830b = d.b("com.android.internal.telecom.ITelecomService");

    /* compiled from: HtITelecomService.java */
    /* renamed from: com.xinzhu.haunted.com.android.internal.telecom.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0394a {

        /* renamed from: a  reason: collision with root package name */
        public static Class<?> f63831a = d.b("com.android.internal.telecom.ITelecomService$Stub");

        /* renamed from: b  reason: collision with root package name */
        private static AtomicReference<Method> f63832b = new AtomicReference<>();

        /* renamed from: c  reason: collision with root package name */
        private static boolean f63833c = false;

        public static IInterface a(IBinder arg0) {
            if (b(arg0)) {
                try {
                    return (IInterface) f63832b.get().invoke(null, arg0);
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
            if (f63832b.get() == null) {
                if (f63833c) {
                    return false;
                }
                f63832b.compareAndSet(null, d.g(f63831a, "asInterface", IBinder.class));
                f63833c = true;
                return f63832b.get() != null;
            }
            return true;
        }
    }
}
