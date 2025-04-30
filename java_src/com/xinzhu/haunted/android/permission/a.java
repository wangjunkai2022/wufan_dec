package com.xinzhu.haunted.android.permission;

import android.os.IBinder;
import android.os.IInterface;
import com.xinzhu.haunted.d;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: HtIPermissionManager.java */
/* loaded from: classes3.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static final String f63564a = "a";

    /* renamed from: b  reason: collision with root package name */
    public static Class<?> f63565b = d.b("android.permission.IPermissionManager");

    /* compiled from: HtIPermissionManager.java */
    /* renamed from: com.xinzhu.haunted.android.permission.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0383a {

        /* renamed from: a  reason: collision with root package name */
        public static Class<?> f63566a = d.b("android.permission.IPermissionManager$Stub");

        /* renamed from: b  reason: collision with root package name */
        private static AtomicReference<Method> f63567b = new AtomicReference<>();

        /* renamed from: c  reason: collision with root package name */
        private static boolean f63568c = false;

        public static IInterface a(IBinder arg0) {
            if (b(arg0)) {
                try {
                    return (IInterface) f63567b.get().invoke(null, arg0);
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
            if (f63567b.get() == null) {
                if (f63568c) {
                    return false;
                }
                f63567b.compareAndSet(null, d.g(f63566a, "asInterface", IBinder.class));
                f63568c = true;
                return f63567b.get() != null;
            }
            return true;
        }
    }
}
