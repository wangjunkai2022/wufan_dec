package com.alipay.security.mobile.module.commonutils.crypto;

import java.lang.reflect.Method;
/* loaded from: classes2.dex */
public final class h {
    public static Object a(Object obj, Method method, Object[] objArr) {
        if (obj == null || method == null || objArr == null) {
            return null;
        }
        try {
            method.setAccessible(true);
            return method.invoke(obj, objArr);
        } catch (Exception e4) {
            method.getName();
            obj.toString();
            e4.toString();
            return null;
        }
    }

    public static Method b(String str, Class<?> cls, Class<?> cls2) {
        if (com.alipay.security.mobile.module.commonutils.a.b(str) || cls == null) {
            return null;
        }
        if (cls2 != null) {
            try {
            } catch (NoSuchMethodException unused) {
                return null;
            }
        }
        return cls.getMethod("set" + Character.toTitleCase(str.charAt(0)) + str.substring(1, str.length()), cls2);
    }
}
