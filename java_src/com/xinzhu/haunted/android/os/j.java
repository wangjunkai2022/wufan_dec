package com.xinzhu.haunted.android.os;

import android.os.IBinder;
import android.os.IInterface;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: HtIStatsManagerService.java */
/* loaded from: classes3.dex */
public final class j {

    /* renamed from: a  reason: collision with root package name */
    private static final String f63423a = "j";

    /* renamed from: b  reason: collision with root package name */
    public static Class<?> f63424b = com.xinzhu.haunted.d.b("android.os.IStatsManagerService");

    /* compiled from: HtIStatsManagerService.java */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public static Class<?> f63425a = com.xinzhu.haunted.d.b("android.os.IStatsManagerService$Stub");

        /* renamed from: b  reason: collision with root package name */
        private static AtomicReference<Method> f63426b = new AtomicReference<>();

        /* renamed from: c  reason: collision with root package name */
        private static boolean f63427c = false;

        public static IInterface a(IBinder arg0) {
            if (b(arg0)) {
                try {
                    return (IInterface) f63426b.get().invoke(null, arg0);
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
            if (f63426b.get() == null) {
                if (f63427c) {
                    return false;
                }
                f63426b.compareAndSet(null, com.xinzhu.haunted.d.g(f63425a, "asInterface", IBinder.class));
                f63427c = true;
                return f63426b.get() != null;
            }
            return true;
        }
    }
}
