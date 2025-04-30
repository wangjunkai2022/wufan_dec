package com.switfpass.pay.activity.zxing.camera;

import android.os.IBinder;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* loaded from: classes4.dex */
final class e {

    /* renamed from: a  reason: collision with root package name */
    private static final String f58755a = "e";

    /* renamed from: b  reason: collision with root package name */
    private static final Object f58756b;

    /* renamed from: c  reason: collision with root package name */
    private static final Method f58757c;

    static {
        Method b4;
        Object a4;
        Class c4;
        Method b5;
        Class c5 = c("android.os.ServiceManager");
        Object a5 = (c5 == null || (b4 = b(c5, "getService", String.class)) == null || (a4 = a(b4, null, "hardware")) == null || (c4 = c("android.os.IHardwareService$Stub")) == null || (b5 = b(c4, "asInterface", IBinder.class)) == null) ? null : a(b5, null, a4);
        f58756b = a5;
        f58757c = a5 != null ? b(a5.getClass(), "setFlashlightEnabled", Boolean.TYPE) : null;
    }

    private e() {
    }

    private static Object a(Method method, Object obj, Object... objArr) {
        try {
            return method.invoke(obj, objArr);
        } catch (IllegalAccessException unused) {
            new StringBuilder("Unexpected error while invoking ").append(method);
            return null;
        } catch (RuntimeException unused2) {
            new StringBuilder("Unexpected error while invoking ").append(method);
            return null;
        } catch (InvocationTargetException e4) {
            new StringBuilder("Unexpected error while invoking ").append(method);
            e4.getCause();
            return null;
        }
    }

    private static Method b(Class cls, String str, Class... clsArr) {
        try {
            return cls.getMethod(str, clsArr);
        } catch (NoSuchMethodException unused) {
            return null;
        } catch (RuntimeException unused2) {
            new StringBuilder("Unexpected error while finding method ").append(str);
            return null;
        }
    }

    private static Class c(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException unused) {
            return null;
        } catch (RuntimeException unused2) {
            new StringBuilder("Unexpected error while finding class ").append(str);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void d() {
        Object obj = f58756b;
        if (obj != null) {
            a(f58757c, obj, Boolean.FALSE);
        }
    }
}
