package com.xinzhu.haunted.libcore.io;

import com.umeng.analytics.pro.ai;
import com.xinzhu.haunted.d;
import java.lang.reflect.Field;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: HtLibcore.java */
/* loaded from: classes.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static final String f63924a = "a";

    /* renamed from: b  reason: collision with root package name */
    public static Class<?> f63925b = d.b("libcore.io.Libcore");

    /* renamed from: c  reason: collision with root package name */
    private static AtomicReference<Field> f63926c = new AtomicReference<>();

    /* renamed from: d  reason: collision with root package name */
    private static boolean f63927d = false;

    public static boolean a() {
        if (f63926c.get() == null) {
            if (f63927d) {
                return false;
            }
            f63926c.compareAndSet(null, d.f(f63925b, ai.f60424x));
            f63927d = true;
            return f63926c.get() != null;
        }
        return true;
    }

    public static Object b() {
        if (a()) {
            try {
                return f63926c.get().get(null);
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return null;
            }
        }
        return null;
    }

    public static boolean c(Object value) {
        if (a()) {
            try {
                f63926c.get().set(null, value);
                return true;
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return false;
            }
        }
        return false;
    }
}
