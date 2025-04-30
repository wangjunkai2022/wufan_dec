package com.xinzhu.haunted.meizu.security;

import android.os.IBinder;
import android.os.IInterface;
import com.xinzhu.haunted.d;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: HtIFlymePermissionService.java */
/* loaded from: classes.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static final String f63929a = "a";

    /* renamed from: b  reason: collision with root package name */
    public static Class<?> f63930b = d.b("meizu.security.IFlymePermissionService");

    /* compiled from: HtIFlymePermissionService.java */
    /* renamed from: com.xinzhu.haunted.meizu.security.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0399a {

        /* renamed from: a  reason: collision with root package name */
        public static Class<?> f63931a = d.b("meizu.security.IFlymePermissionService$Stub");

        /* renamed from: b  reason: collision with root package name */
        private static AtomicReference<Method> f63932b = new AtomicReference<>();

        /* renamed from: c  reason: collision with root package name */
        private static boolean f63933c = false;

        public static IInterface a(IBinder arg0) {
            if (b(arg0)) {
                try {
                    return (IInterface) f63932b.get().invoke(null, arg0);
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
            if (f63932b.get() == null) {
                if (f63933c) {
                    return false;
                }
                f63932b.compareAndSet(null, d.g(f63931a, "asInterface", IBinder.class));
                f63933c = true;
                return f63932b.get() != null;
            }
            return true;
        }
    }
}
