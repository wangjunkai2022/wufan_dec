package com.xinzhu.haunted.android.app.usage;

import android.os.IBinder;
import android.os.IInterface;
import com.xinzhu.haunted.d;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: HtIUsageStatsManager.java */
/* loaded from: classes3.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static final String f62823a = "a";

    /* renamed from: b  reason: collision with root package name */
    public static Class<?> f62824b = d.b("android.app.usage.IUsageStatsManager");

    /* compiled from: HtIUsageStatsManager.java */
    /* renamed from: com.xinzhu.haunted.android.app.usage.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0375a {

        /* renamed from: a  reason: collision with root package name */
        public static Class<?> f62825a = d.b("android.app.usage.IUsageStatsManager$Stub");

        /* renamed from: b  reason: collision with root package name */
        private static AtomicReference<Method> f62826b = new AtomicReference<>();

        /* renamed from: c  reason: collision with root package name */
        private static boolean f62827c = false;

        public static IInterface a(IBinder arg0) {
            if (b(arg0)) {
                try {
                    return (IInterface) f62826b.get().invoke(null, arg0);
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
            if (f62826b.get() == null) {
                if (f62827c) {
                    return false;
                }
                f62826b.compareAndSet(null, d.g(f62825a, "asInterface", IBinder.class));
                f62827c = true;
                return f62826b.get() != null;
            }
            return true;
        }
    }
}
