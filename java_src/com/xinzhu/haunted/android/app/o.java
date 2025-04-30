package com.xinzhu.haunted.android.app;

import android.os.IBinder;
import android.os.IInterface;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: HtIAppTask.java */
/* loaded from: classes3.dex */
public final class o {

    /* renamed from: a  reason: collision with root package name */
    private static final String f62719a = "o";

    /* renamed from: b  reason: collision with root package name */
    public static Class<?> f62720b = com.xinzhu.haunted.d.b("android.app.IAppTask");

    /* compiled from: HtIAppTask.java */
    /* loaded from: classes3.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public static Class<?> f62721a = com.xinzhu.haunted.d.b("android.app.IAppTask$Stub");

        /* renamed from: b  reason: collision with root package name */
        private static AtomicReference<Method> f62722b = new AtomicReference<>();

        /* renamed from: c  reason: collision with root package name */
        private static boolean f62723c = false;

        public static IInterface a(IBinder arg0) {
            if (b(arg0)) {
                try {
                    return (IInterface) f62722b.get().invoke(null, arg0);
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
            if (f62722b.get() == null) {
                if (f62723c) {
                    return false;
                }
                f62722b.compareAndSet(null, com.xinzhu.haunted.d.g(f62721a, "asInterface", IBinder.class));
                f62723c = true;
                return f62722b.get() != null;
            }
            return true;
        }
    }
}
