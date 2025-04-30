package com.xinzhu.haunted.android.os;

import android.os.FileUtils;
import java.io.File;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: HtFileUtils.java */
/* loaded from: classes3.dex */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    private static final String f63382a = "d";

    /* renamed from: b  reason: collision with root package name */
    public static Class<?> f63383b = com.xinzhu.haunted.d.a(FileUtils.class);

    /* renamed from: c  reason: collision with root package name */
    private static AtomicReference<Method> f63384c = new AtomicReference<>();

    /* renamed from: d  reason: collision with root package name */
    private static boolean f63385d = false;

    public static boolean a(File arg0, int arg1, long arg2) {
        if (f63384c.get() == null) {
            if (f63385d) {
                return false;
            }
            f63384c.compareAndSet(null, com.xinzhu.haunted.d.g(f63383b, "deleteOlderFiles", File.class, Integer.TYPE, Long.TYPE));
            f63385d = true;
            return f63384c.get() != null;
        }
        return true;
    }

    public static boolean b(File arg0, int arg1, long arg2) {
        if (a(arg0, arg1, arg2)) {
            try {
                return ((Boolean) f63384c.get().invoke(null, arg0, Integer.valueOf(arg1), Long.valueOf(arg2))).booleanValue();
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
