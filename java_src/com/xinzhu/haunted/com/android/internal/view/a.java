package com.xinzhu.haunted.com.android.internal.view;

import android.os.IBinder;
import android.os.IInterface;
import com.xinzhu.haunted.d;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: HtIInputMethodManager.java */
/* loaded from: classes3.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static final String f63877a = "a";

    /* renamed from: b  reason: collision with root package name */
    public static Class<?> f63878b = d.b("com.android.internal.view.IInputMethodManager");

    /* compiled from: HtIInputMethodManager.java */
    /* renamed from: com.xinzhu.haunted.com.android.internal.view.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0397a {

        /* renamed from: a  reason: collision with root package name */
        public static Class<?> f63879a = d.b("com.android.internal.view.IInputMethodManager$Stub");

        /* renamed from: b  reason: collision with root package name */
        private static AtomicReference<Method> f63880b = new AtomicReference<>();

        /* renamed from: c  reason: collision with root package name */
        private static boolean f63881c = false;

        public static IInterface a(IBinder arg0) {
            if (b(arg0)) {
                try {
                    return (IInterface) f63880b.get().invoke(null, arg0);
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
            if (f63880b.get() == null) {
                if (f63881c) {
                    return false;
                }
                f63880b.compareAndSet(null, d.g(f63879a, "asInterface", IBinder.class));
                f63881c = true;
                return f63880b.get() != null;
            }
            return true;
        }
    }
}
