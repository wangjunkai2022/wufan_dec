package com.swift.sandhook.utils;

import java.lang.reflect.Method;
/* loaded from: classes.dex */
public class ReflectionUtils {
    static Method addWhiteListMethod;
    public static Method forNameMethod;
    public static Method getMethodMethod;
    static Object vmRuntime;
    static Class vmRuntimeClass;

    static {
        try {
            getMethodMethod = Class.class.getDeclaredMethod("getDeclaredMethod", String.class, Class[].class);
            Method declaredMethod = Class.class.getDeclaredMethod("forName", String.class);
            forNameMethod = declaredMethod;
            Class cls = (Class) declaredMethod.invoke(null, "dalvik.system.VMRuntime");
            vmRuntimeClass = cls;
            addWhiteListMethod = (Method) getMethodMethod.invoke(cls, "setHiddenApiExemptions", new Class[]{String[].class});
            vmRuntime = ((Method) getMethodMethod.invoke(vmRuntimeClass, "getRuntime", null)).invoke(null, new Object[0]);
        } catch (Exception unused) {
        }
    }

    public static void addReflectionWhiteList(String... memberSigs) throws Throwable {
        addWhiteListMethod.invoke(vmRuntime, memberSigs);
    }

    public static boolean passApiCheck() {
        try {
            addReflectionWhiteList("Landroid/", "Lcom/android/", "Ljava/lang/", "Ldalvik/system/", "Llibcore/io/");
            return true;
        } catch (Throwable th) {
            th.printStackTrace();
            return false;
        }
    }
}
