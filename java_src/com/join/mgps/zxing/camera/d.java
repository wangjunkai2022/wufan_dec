package com.join.mgps.zxing.camera;

import android.os.IBinder;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* compiled from: FlashlightManager.java */
/* loaded from: classes4.dex */
final class d {

    /* renamed from: a  reason: collision with root package name */
    private static final String f52469a = "d";

    /* renamed from: b  reason: collision with root package name */
    private static final Object f52470b;

    /* renamed from: c  reason: collision with root package name */
    private static final Method f52471c;

    static {
        Object c4 = c();
        f52470b = c4;
        f52471c = d(c4);
    }

    private d() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a() {
        h(false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void b() {
        h(false);
    }

    private static Object c() {
        Method g4;
        Object e4;
        Class<?> f4;
        Method g5;
        Class<?> f5 = f("android.os.ServiceManager");
        if (f5 == null || (g4 = g(f5, "getService", String.class)) == null || (e4 = e(g4, null, "hardware")) == null || (f4 = f("android.os.IHardwareService$Stub")) == null || (g5 = g(f4, "asInterface", IBinder.class)) == null) {
            return null;
        }
        return e(g5, null, e4);
    }

    private static Method d(Object obj) {
        if (obj == null) {
            return null;
        }
        return g(obj.getClass(), "setFlashlightEnabled", Boolean.TYPE);
    }

    private static Object e(Method method, Object obj, Object... objArr) {
        try {
            return method.invoke(obj, objArr);
        } catch (IllegalAccessException unused) {
            StringBuilder sb = new StringBuilder();
            sb.append("Unexpected error while invoking ");
            sb.append(method);
            return null;
        } catch (RuntimeException unused2) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Unexpected error while invoking ");
            sb2.append(method);
            return null;
        } catch (InvocationTargetException e4) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append("Unexpected error while invoking ");
            sb3.append(method);
            e4.getCause();
            return null;
        }
    }

    private static Class<?> f(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException unused) {
            return null;
        } catch (RuntimeException unused2) {
            StringBuilder sb = new StringBuilder();
            sb.append("Unexpected error while finding class ");
            sb.append(str);
            return null;
        }
    }

    private static Method g(Class<?> cls, String str, Class<?>... clsArr) {
        try {
            return cls.getMethod(str, clsArr);
        } catch (NoSuchMethodException unused) {
            return null;
        } catch (RuntimeException unused2) {
            StringBuilder sb = new StringBuilder();
            sb.append("Unexpected error while finding method ");
            sb.append(str);
            return null;
        }
    }

    private static void h(boolean z3) {
        Object obj = f52470b;
        if (obj != null) {
            e(f52471c, obj, Boolean.valueOf(z3));
        }
    }
}
