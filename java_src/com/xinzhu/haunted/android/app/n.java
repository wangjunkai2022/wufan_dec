package com.xinzhu.haunted.android.app;

import android.os.IBinder;
import android.os.IInterface;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: HtIAlarmManager.java */
/* loaded from: classes3.dex */
public final class n {

    /* renamed from: a  reason: collision with root package name */
    private static final String f62713a = "n";

    /* renamed from: b  reason: collision with root package name */
    public static Class<?> f62714b = com.xinzhu.haunted.d.b("android.app.IAlarmManager");

    /* compiled from: HtIAlarmManager.java */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public static Class<?> f62715a = com.xinzhu.haunted.d.b("android.app.IAlarmManager$Stub");

        /* renamed from: b  reason: collision with root package name */
        private static AtomicReference<Method> f62716b = new AtomicReference<>();

        /* renamed from: c  reason: collision with root package name */
        private static boolean f62717c = false;

        public static IInterface a(IBinder arg0) {
            if (b(arg0)) {
                try {
                    return (IInterface) f62716b.get().invoke(null, arg0);
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
            if (f62716b.get() == null) {
                if (f62717c) {
                    return false;
                }
                f62716b.compareAndSet(null, com.xinzhu.haunted.d.g(f62715a, "asInterface", IBinder.class));
                f62717c = true;
                return f62716b.get() != null;
            }
            return true;
        }
    }
}
