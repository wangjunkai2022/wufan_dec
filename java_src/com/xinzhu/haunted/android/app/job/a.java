package com.xinzhu.haunted.android.app.job;

import android.os.IBinder;
import android.os.IInterface;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: HtIJobScheduler.java */
/* loaded from: classes3.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static final String f62636a = "a";

    /* renamed from: b  reason: collision with root package name */
    public static Class<?> f62637b = com.xinzhu.haunted.d.b("android.app.job.IJobScheduler");

    /* compiled from: HtIJobScheduler.java */
    /* renamed from: com.xinzhu.haunted.android.app.job.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0371a {

        /* renamed from: a  reason: collision with root package name */
        public static Class<?> f62638a = com.xinzhu.haunted.d.b("android.app.job.IJobScheduler$Stub");

        /* renamed from: b  reason: collision with root package name */
        private static AtomicReference<Method> f62639b = new AtomicReference<>();

        /* renamed from: c  reason: collision with root package name */
        private static boolean f62640c = false;

        public static IInterface a(IBinder arg0) {
            if (b(arg0)) {
                try {
                    return (IInterface) f62639b.get().invoke(null, arg0);
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
            if (f62639b.get() == null) {
                if (f62640c) {
                    return false;
                }
                f62639b.compareAndSet(null, com.xinzhu.haunted.d.g(f62638a, "asInterface", IBinder.class));
                f62640c = true;
                return f62639b.get() != null;
            }
            return true;
        }
    }
}
