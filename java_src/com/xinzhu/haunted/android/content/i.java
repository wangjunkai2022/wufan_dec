package com.xinzhu.haunted.android.content;

import android.os.IBinder;
import android.os.IInterface;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: HtIClipboard.java */
/* loaded from: classes3.dex */
public final class i {

    /* renamed from: a  reason: collision with root package name */
    private static final String f62958a = "i";

    /* renamed from: b  reason: collision with root package name */
    public static Class<?> f62959b = com.xinzhu.haunted.d.b("android.content.IClipboard");

    /* compiled from: HtIClipboard.java */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public static Class<?> f62960a = com.xinzhu.haunted.d.b("android.content.IClipboard$Stub");

        /* renamed from: b  reason: collision with root package name */
        private static AtomicReference<Method> f62961b = new AtomicReference<>();

        /* renamed from: c  reason: collision with root package name */
        private static boolean f62962c = false;

        public static IInterface a(IBinder arg0) {
            if (b(arg0)) {
                try {
                    return (IInterface) f62961b.get().invoke(null, arg0);
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
            if (f62961b.get() == null) {
                if (f62962c) {
                    return false;
                }
                f62961b.compareAndSet(null, com.xinzhu.haunted.d.g(f62960a, "asInterface", IBinder.class));
                f62962c = true;
                return f62961b.get() != null;
            }
            return true;
        }
    }
}
