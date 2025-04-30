package com.umeng.analytics.pro;

import java.lang.reflect.InvocationTargetException;
/* compiled from: TEnumHelper.java */
/* loaded from: classes4.dex */
public class aw {
    public static av a(Class<? extends av> cls, int i2) {
        try {
            return (av) cls.getMethod("findByValue", Integer.TYPE).invoke(null, Integer.valueOf(i2));
        } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
            return null;
        }
    }
}
