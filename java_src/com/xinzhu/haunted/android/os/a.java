package com.xinzhu.haunted.android.os;

import android.os.Bundle;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: HtBundle.java */
/* loaded from: classes3.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static final String f63358a = "a";

    /* renamed from: b  reason: collision with root package name */
    public static Class<?> f63359b = com.xinzhu.haunted.d.a(Bundle.class);

    /* renamed from: c  reason: collision with root package name */
    private static AtomicReference<Method> f63360c = new AtomicReference<>();

    /* renamed from: d  reason: collision with root package name */
    private static boolean f63361d = false;

    public static boolean a(Bundle arg0, boolean arg1) {
        if (f63360c.get() == null) {
            if (f63361d) {
                return false;
            }
            f63360c.compareAndSet(null, com.xinzhu.haunted.d.g(f63359b, "setDefusable", Bundle.class, Boolean.TYPE));
            f63361d = true;
            return f63360c.get() != null;
        }
        return true;
    }

    public static Bundle b(Bundle arg0, boolean arg1) {
        if (a(arg0, arg1)) {
            try {
                return (Bundle) f63360c.get().invoke(null, arg0, Boolean.valueOf(arg1));
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
}
