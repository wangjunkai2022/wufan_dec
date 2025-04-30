package com.xinzhu.haunted.android.content.pm;

import android.content.pm.ActivityInfo;
import android.content.res.TypedArray;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: HtActivityInfo.java */
/* loaded from: classes3.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static final String f63029a = "a";

    /* renamed from: b  reason: collision with root package name */
    public static Class<?> f63030b = com.xinzhu.haunted.d.a(ActivityInfo.class);

    /* renamed from: c  reason: collision with root package name */
    private static AtomicReference<Method> f63031c = new AtomicReference<>();

    /* renamed from: d  reason: collision with root package name */
    private static boolean f63032d = false;

    public static boolean a(TypedArray arg0) {
        if (f63031c.get() == null) {
            if (f63032d) {
                return false;
            }
            f63031c.compareAndSet(null, com.xinzhu.haunted.d.g(f63030b, "isTranslucentOrFloating", TypedArray.class));
            f63032d = true;
            return f63031c.get() != null;
        }
        return true;
    }

    public static boolean b(TypedArray arg0) {
        if (a(arg0)) {
            try {
                return ((Boolean) f63031c.get().invoke(null, arg0)).booleanValue();
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return false;
            } catch (InvocationTargetException e5) {
                e5.printStackTrace();
                return false;
            }
        }
        return false;
    }
}
