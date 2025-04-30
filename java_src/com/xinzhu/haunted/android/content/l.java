package com.xinzhu.haunted.android.content;

import android.os.IBinder;
import android.os.IInterface;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: HtIRestrictionsManager.java */
/* loaded from: classes3.dex */
public final class l {

    /* renamed from: a  reason: collision with root package name */
    private static final String f62976a = "l";

    /* renamed from: b  reason: collision with root package name */
    public static Class<?> f62977b = com.xinzhu.haunted.d.b("android.content.IRestrictionsManager");

    /* compiled from: HtIRestrictionsManager.java */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public static Class<?> f62978a = com.xinzhu.haunted.d.b("android.content.IRestrictionsManager$Stub");

        /* renamed from: b  reason: collision with root package name */
        private static AtomicReference<Method> f62979b = new AtomicReference<>();

        /* renamed from: c  reason: collision with root package name */
        private static boolean f62980c = false;

        public static IInterface a(IBinder arg0) {
            if (b(arg0)) {
                try {
                    return (IInterface) f62979b.get().invoke(null, arg0);
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
            if (f62979b.get() == null) {
                if (f62980c) {
                    return false;
                }
                f62979b.compareAndSet(null, com.xinzhu.haunted.d.g(f62978a, "asInterface", IBinder.class));
                f62980c = true;
                return f62979b.get() != null;
            }
            return true;
        }
    }
}
