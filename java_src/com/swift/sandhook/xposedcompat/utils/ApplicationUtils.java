package com.swift.sandhook.xposedcompat.utils;

import android.app.Application;
import java.lang.reflect.Method;
/* loaded from: classes.dex */
public class ApplicationUtils {
    static Application application;
    private static Class classActivityThread;
    private static Method currentApplicationMethod;

    public static Application currentApplication() {
        Application application2 = application;
        if (application2 != null) {
            return application2;
        }
        if (currentApplicationMethod == null) {
            try {
                Class<?> cls = Class.forName("android.app.ActivityThread");
                classActivityThread = cls;
                currentApplicationMethod = cls.getDeclaredMethod("currentApplication", new Class[0]);
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
        Method method = currentApplicationMethod;
        if (method == null) {
            return null;
        }
        try {
            application = (Application) method.invoke(null, new Object[0]);
        } catch (Exception unused) {
        }
        return application;
    }
}
