package com.swift.sandhook.utils;

import com.swift.sandhook.SandHookConfig;
import java.lang.reflect.Field;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
/* loaded from: classes.dex */
public class ClassStatusUtils {
    static Field fieldStatusOfClass;

    static {
        try {
            Field declaredField = Class.class.getDeclaredField("status");
            fieldStatusOfClass = declaredField;
            declaredField.setAccessible(true);
        } catch (NoSuchFieldException unused) {
        }
    }

    public static int getClassStatus(Class clazz, boolean isUnsigned) {
        int i2 = 0;
        if (clazz == null) {
            return 0;
        }
        try {
            i2 = fieldStatusOfClass.getInt(clazz);
        } catch (Throwable unused) {
        }
        return isUnsigned ? (int) (toUnsignedLong(i2) >> 28) : i2;
    }

    public static boolean isInitialized(Class clazz) {
        if (fieldStatusOfClass == null) {
            return true;
        }
        return SandHookConfig.SDK_INT >= 30 ? getClassStatus(clazz, true) >= 14 : SandHookConfig.SDK_INT >= 28 ? getClassStatus(clazz, true) == 14 : SandHookConfig.SDK_INT == 27 ? getClassStatus(clazz, false) == 11 : getClassStatus(clazz, false) == 10;
    }

    public static boolean isStaticAndNoInited(Member hookMethod) {
        if (hookMethod instanceof Method) {
            return Modifier.isStatic(hookMethod.getModifiers()) && !isInitialized(hookMethod.getDeclaringClass());
        }
        return false;
    }

    public static long toUnsignedLong(int x3) {
        return x3 & 4294967295L;
    }
}
