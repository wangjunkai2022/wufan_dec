package org.repackage.com.miui.deviceid;

import android.content.Context;
import java.lang.reflect.Method;
/* compiled from: IdentifierManager.java */
/* loaded from: classes5.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private static final String f73890a = "IdentifierManager";

    /* renamed from: b  reason: collision with root package name */
    private static Object f73891b;

    /* renamed from: c  reason: collision with root package name */
    private static Class<?> f73892c;

    /* renamed from: d  reason: collision with root package name */
    private static Method f73893d;

    /* renamed from: e  reason: collision with root package name */
    private static Method f73894e;

    /* renamed from: f  reason: collision with root package name */
    private static Method f73895f;

    /* renamed from: g  reason: collision with root package name */
    private static Method f73896g;

    static {
        try {
            Class<?> cls = Class.forName("com.android.id.impl.IdProviderImpl");
            f73892c = cls;
            f73891b = cls.newInstance();
            f73893d = f73892c.getMethod("getUDID", Context.class);
            f73894e = f73892c.getMethod("getOAID", Context.class);
            f73895f = f73892c.getMethod("getVAID", Context.class);
            f73896g = f73892c.getMethod("getAAID", Context.class);
        } catch (Exception unused) {
        }
    }

    public static String a(Context context) {
        return b(context, f73893d);
    }

    private static String b(Context context, Method method) {
        Object obj = f73891b;
        if (obj == null || method == null) {
            return null;
        }
        try {
            Object invoke = method.invoke(obj, context);
            if (invoke != null) {
                return (String) invoke;
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    public static boolean c() {
        return (f73892c == null || f73891b == null) ? false : true;
    }

    public static String d(Context context) {
        return b(context, f73894e);
    }

    public static String e(Context context) {
        return b(context, f73895f);
    }

    public static String f(Context context) {
        return b(context, f73896g);
    }
}
