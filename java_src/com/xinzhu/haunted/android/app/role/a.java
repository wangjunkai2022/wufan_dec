package com.xinzhu.haunted.android.app.role;

import android.os.IBinder;
import android.os.IInterface;
import com.xinzhu.haunted.d;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: HtIRoleManager.java */
/* loaded from: classes3.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static final String f62753a = "a";

    /* renamed from: b  reason: collision with root package name */
    public static Class<?> f62754b = d.b("android.app.role.IRoleManager");

    /* compiled from: HtIRoleManager.java */
    /* renamed from: com.xinzhu.haunted.android.app.role.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0373a {

        /* renamed from: a  reason: collision with root package name */
        public static Class<?> f62755a = d.b("android.app.role.IRoleManager$Stub");

        /* renamed from: b  reason: collision with root package name */
        private static AtomicReference<Method> f62756b = new AtomicReference<>();

        /* renamed from: c  reason: collision with root package name */
        private static boolean f62757c = false;

        public static IInterface a(IBinder arg0) {
            if (b(arg0)) {
                try {
                    return (IInterface) f62756b.get().invoke(null, arg0);
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
            if (f62756b.get() == null) {
                if (f62757c) {
                    return false;
                }
                f62756b.compareAndSet(null, d.g(f62755a, "asInterface", IBinder.class));
                f62757c = true;
                return f62756b.get() != null;
            }
            return true;
        }
    }
}
