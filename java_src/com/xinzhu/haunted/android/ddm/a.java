package com.xinzhu.haunted.android.ddm;

import com.xinzhu.haunted.d;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: HtDdmHandleAppName.java */
/* loaded from: classes3.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static final String f63285a = "a";

    /* renamed from: b  reason: collision with root package name */
    public static Class<?> f63286b = d.b("android.ddm.DdmHandleAppName");

    /* renamed from: c  reason: collision with root package name */
    private static AtomicReference<Method> f63287c = new AtomicReference<>();

    /* renamed from: d  reason: collision with root package name */
    private static boolean f63288d = false;

    public static boolean a(String arg0, int arg1) {
        if (f63287c.get() == null) {
            if (f63288d) {
                return false;
            }
            f63287c.compareAndSet(null, d.g(f63286b, "setAppName", String.class, Integer.TYPE));
            f63288d = true;
            return f63287c.get() != null;
        }
        return true;
    }

    public static void b(String arg0, int arg1) {
        if (a(arg0, arg1)) {
            try {
                f63287c.get().invoke(null, arg0, Integer.valueOf(arg1));
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
            } catch (InvocationTargetException e5) {
                e5.printStackTrace();
            }
        }
    }
}
