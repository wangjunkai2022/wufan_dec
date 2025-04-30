package com.xinzhu.haunted.android.app.admin;

import android.os.IBinder;
import android.os.IInterface;
import com.xinzhu.haunted.d;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: HtIDevicePolicyManager.java */
/* loaded from: classes3.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static final String f62428a = "a";

    /* renamed from: b  reason: collision with root package name */
    public static Class<?> f62429b = d.b("android.app.admin.IDevicePolicyManager");

    /* compiled from: HtIDevicePolicyManager.java */
    /* renamed from: com.xinzhu.haunted.android.app.admin.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0369a {

        /* renamed from: a  reason: collision with root package name */
        public static Class<?> f62430a = d.b("android.app.admin.IDevicePolicyManager$Stub");

        /* renamed from: b  reason: collision with root package name */
        private static AtomicReference<Method> f62431b = new AtomicReference<>();

        /* renamed from: c  reason: collision with root package name */
        private static boolean f62432c = false;

        public static IInterface a(IBinder arg0) {
            if (b(arg0)) {
                try {
                    return (IInterface) f62431b.get().invoke(null, arg0);
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
            if (f62431b.get() == null) {
                if (f62432c) {
                    return false;
                }
                f62431b.compareAndSet(null, d.g(f62430a, "asInterface", IBinder.class));
                f62432c = true;
                return f62431b.get() != null;
            }
            return true;
        }
    }
}
