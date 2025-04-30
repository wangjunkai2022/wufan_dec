package com.xinzhu.haunted.android.hardware.location;

import android.os.IBinder;
import android.os.IInterface;
import com.xinzhu.haunted.d;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: HtIContextHubService.java */
/* loaded from: classes3.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static final String f63298a = "a";

    /* renamed from: b  reason: collision with root package name */
    public static Class<?> f63299b = d.b("android.hardware.location.IContextHubService");

    /* compiled from: HtIContextHubService.java */
    /* renamed from: com.xinzhu.haunted.android.hardware.location.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0376a {

        /* renamed from: a  reason: collision with root package name */
        public static Class<?> f63300a = d.b("android.hardware.location.IContextHubService$Stub");

        /* renamed from: b  reason: collision with root package name */
        private static AtomicReference<Method> f63301b = new AtomicReference<>();

        /* renamed from: c  reason: collision with root package name */
        private static boolean f63302c = false;

        public static IInterface a(IBinder arg0) {
            if (b(arg0)) {
                try {
                    return (IInterface) f63301b.get().invoke(null, arg0);
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
            if (f63301b.get() == null) {
                if (f63302c) {
                    return false;
                }
                f63301b.compareAndSet(null, d.g(f63300a, "asInterface", IBinder.class));
                f63302c = true;
                return f63301b.get() != null;
            }
            return true;
        }
    }
}
