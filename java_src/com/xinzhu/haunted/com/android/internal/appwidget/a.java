package com.xinzhu.haunted.com.android.internal.appwidget;

import android.os.IBinder;
import android.os.IInterface;
import com.xinzhu.haunted.d;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: HtIAppWidgetService.java */
/* loaded from: classes3.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static final String f63765a = "a";

    /* renamed from: b  reason: collision with root package name */
    public static Class<?> f63766b = d.b("com.android.internal.appwidget.IAppWidgetService");

    /* compiled from: HtIAppWidgetService.java */
    /* renamed from: com.xinzhu.haunted.com.android.internal.appwidget.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0391a {

        /* renamed from: a  reason: collision with root package name */
        public static Class<?> f63767a = d.b("com.android.internal.appwidget.IAppWidgetService$Stub");

        /* renamed from: b  reason: collision with root package name */
        private static AtomicReference<Method> f63768b = new AtomicReference<>();

        /* renamed from: c  reason: collision with root package name */
        private static boolean f63769c = false;

        public static IInterface a(IBinder arg0) {
            if (b(arg0)) {
                try {
                    return (IInterface) f63768b.get().invoke(null, arg0);
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
            if (f63768b.get() == null) {
                if (f63769c) {
                    return false;
                }
                f63768b.compareAndSet(null, d.g(f63767a, "asInterface", IBinder.class));
                f63769c = true;
                return f63768b.get() != null;
            }
            return true;
        }
    }
}
