package com.xinzhu.haunted.android.content.pm;

import android.os.IBinder;
import android.os.IInterface;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: HtIShortcutService.java */
/* loaded from: classes3.dex */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    private static final String f63080a = "f";

    /* renamed from: b  reason: collision with root package name */
    public static Class<?> f63081b = com.xinzhu.haunted.d.b("android.content.pm.IShortcutService");

    /* compiled from: HtIShortcutService.java */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public static Class<?> f63082a = com.xinzhu.haunted.d.b("android.content.pm.IShortcutService$Stub");

        /* renamed from: b  reason: collision with root package name */
        private static AtomicReference<Method> f63083b = new AtomicReference<>();

        /* renamed from: c  reason: collision with root package name */
        private static boolean f63084c = false;

        public static IInterface a(IBinder arg0) {
            if (b(arg0)) {
                try {
                    return (IInterface) f63083b.get().invoke(null, arg0);
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
            if (f63083b.get() == null) {
                if (f63084c) {
                    return false;
                }
                f63083b.compareAndSet(null, com.xinzhu.haunted.d.g(f63082a, "asInterface", IBinder.class));
                f63084c = true;
                return f63083b.get() != null;
            }
            return true;
        }
    }
}
