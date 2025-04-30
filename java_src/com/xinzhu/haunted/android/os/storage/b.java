package com.xinzhu.haunted.android.os.storage;

import android.os.IBinder;
import android.os.IInterface;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: HtIStorageManager.java */
/* loaded from: classes3.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private static final String f63500a = "b";

    /* renamed from: b  reason: collision with root package name */
    public static Class<?> f63501b = com.xinzhu.haunted.d.b("android.os.storage.IStorageManager");

    /* compiled from: HtIStorageManager.java */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public static Class<?> f63502a = com.xinzhu.haunted.d.b("android.os.storage.IStorageManager$Stub");

        /* renamed from: b  reason: collision with root package name */
        private static AtomicReference<Method> f63503b = new AtomicReference<>();

        /* renamed from: c  reason: collision with root package name */
        private static boolean f63504c = false;

        public static IInterface a(IBinder arg0) {
            if (b(arg0)) {
                try {
                    return (IInterface) f63503b.get().invoke(null, arg0);
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
            if (f63503b.get() == null) {
                if (f63504c) {
                    return false;
                }
                f63503b.compareAndSet(null, com.xinzhu.haunted.d.g(f63502a, "asInterface", IBinder.class));
                f63504c = true;
                return f63503b.get() != null;
            }
            return true;
        }
    }
}
