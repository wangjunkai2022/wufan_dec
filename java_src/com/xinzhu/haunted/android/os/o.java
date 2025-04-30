package com.xinzhu.haunted.android.os;

import android.os.Process;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: HtProcess.java */
/* loaded from: classes3.dex */
public final class o {

    /* renamed from: a  reason: collision with root package name */
    private static final String f63455a = "o";

    /* renamed from: b  reason: collision with root package name */
    public static Class<?> f63456b = com.xinzhu.haunted.d.a(Process.class);

    /* renamed from: c  reason: collision with root package name */
    private static AtomicReference<Method> f63457c = new AtomicReference<>();

    /* renamed from: d  reason: collision with root package name */
    private static boolean f63458d = false;

    public static boolean a(String arg0) {
        if (f63457c.get() == null) {
            if (f63458d) {
                return false;
            }
            f63457c.compareAndSet(null, com.xinzhu.haunted.d.g(f63456b, "setArgV0", String.class));
            f63458d = true;
            return f63457c.get() != null;
        }
        return true;
    }

    public static void b(String arg0) {
        if (a(arg0)) {
            try {
                f63457c.get().invoke(null, arg0);
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
            } catch (InvocationTargetException e5) {
                e5.printStackTrace();
            }
        }
    }
}
