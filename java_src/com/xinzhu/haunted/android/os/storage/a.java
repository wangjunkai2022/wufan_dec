package com.xinzhu.haunted.android.os.storage;

import android.os.IBinder;
import android.os.IInterface;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: HtIMountService.java */
/* loaded from: classes3.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static final String f63495a = "a";

    /* renamed from: b  reason: collision with root package name */
    public static Class<?> f63496b = com.xinzhu.haunted.d.b("android.os.storage.IMountService");

    /* compiled from: HtIMountService.java */
    /* renamed from: com.xinzhu.haunted.android.os.storage.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0382a {

        /* renamed from: a  reason: collision with root package name */
        public static Class<?> f63497a = com.xinzhu.haunted.d.b("android.os.storage.IMountService$Stub");

        /* renamed from: b  reason: collision with root package name */
        private static AtomicReference<Method> f63498b = new AtomicReference<>();

        /* renamed from: c  reason: collision with root package name */
        private static boolean f63499c = false;

        public static IInterface a(IBinder arg0) {
            if (b(arg0)) {
                try {
                    return (IInterface) f63498b.get().invoke(null, arg0);
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
            if (f63498b.get() == null) {
                if (f63499c) {
                    return false;
                }
                f63498b.compareAndSet(null, com.xinzhu.haunted.d.g(f63497a, "asInterface", IBinder.class));
                f63499c = true;
                return f63498b.get() != null;
            }
            return true;
        }
    }
}
