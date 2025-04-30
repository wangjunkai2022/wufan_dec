package com.efs.sdk.launch;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* loaded from: classes2.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    private static String f11440a = "";

    public static String a(Context context) {
        Class<?> cls;
        Method method;
        if (context == null) {
            return null;
        }
        try {
            cls = Class.forName("com.umeng.commonsdk.UMConfigure");
        } catch (ClassNotFoundException unused) {
            cls = null;
        }
        if (cls != null) {
            try {
                method = cls.getMethod("getUMIDString", Context.class);
            } catch (NoSuchMethodException unused2) {
                method = null;
            }
            if (method != null) {
                try {
                    Object invoke = method.invoke(null, context);
                    if (invoke != null) {
                        return invoke.toString();
                    }
                    return null;
                } catch (IllegalAccessException | InvocationTargetException unused3) {
                    return null;
                }
            }
            return null;
        }
        return null;
    }

    public static void a(Context context, String str) {
        SharedPreferences sharedPreferences;
        SharedPreferences.Editor edit;
        if (context == null || str == null || TextUtils.isEmpty(str) || (sharedPreferences = context.getApplicationContext().getSharedPreferences("efs_launch", 0)) == null || (edit = sharedPreferences.edit()) == null) {
            return;
        }
        edit.putString("first_launch_cache", str);
        edit.commit();
    }

    public static String b(Context context) {
        SharedPreferences sharedPreferences;
        if (context == null || (sharedPreferences = context.getApplicationContext().getSharedPreferences("efs_launch", 0)) == null) {
            return null;
        }
        return sharedPreferences.getString("first_launch_cache", null);
    }

    public static void c(Context context) {
        SharedPreferences sharedPreferences;
        SharedPreferences.Editor edit;
        if (context == null || (sharedPreferences = context.getApplicationContext().getSharedPreferences("efs_launch", 0)) == null || (edit = sharedPreferences.edit()) == null) {
            return;
        }
        edit.putString("first_launch_cache", null);
        edit.commit();
    }

    public static boolean d(Context context) {
        SharedPreferences sharedPreferences;
        SharedPreferences.Editor edit;
        SharedPreferences sharedPreferences2;
        if ((context == null || (sharedPreferences2 = context.getApplicationContext().getSharedPreferences("efs_launch", 0)) == null) ? false : sharedPreferences2.getBoolean("is_install", false)) {
            return false;
        }
        if (context != null && (sharedPreferences = context.getApplicationContext().getSharedPreferences("efs_launch", 0)) != null && (edit = sharedPreferences.edit()) != null) {
            edit.putBoolean("is_install", true);
            edit.commit();
        }
        return true;
    }

    public static boolean e(Context context) {
        try {
            String f4 = f(context);
            String packageName = context.getApplicationContext().getPackageName();
            if (TextUtils.isEmpty(f4) || TextUtils.isEmpty(packageName)) {
                return false;
            }
            return f4.equals(packageName);
        } catch (Exception e4) {
            e4.printStackTrace();
            return false;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0036, code lost:
        com.efs.sdk.launch.c.f11440a = r1.processName;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.String f(android.content.Context r3) {
        /*
            java.lang.String r0 = com.efs.sdk.launch.c.f11440a
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 == 0) goto L3a
            int r0 = android.os.Process.myPid()     // Catch: java.lang.Throwable -> L3a
            java.lang.String r1 = "activity"
            java.lang.Object r3 = r3.getSystemService(r1)     // Catch: java.lang.Throwable -> L3a
            android.app.ActivityManager r3 = (android.app.ActivityManager) r3     // Catch: java.lang.Throwable -> L3a
            if (r3 == 0) goto L3a
            java.util.List r3 = r3.getRunningAppProcesses()     // Catch: java.lang.Throwable -> L3a
            if (r3 == 0) goto L3a
            int r1 = r3.size()     // Catch: java.lang.Throwable -> L3a
            if (r1 <= 0) goto L3a
            java.util.Iterator r3 = r3.iterator()     // Catch: java.lang.Throwable -> L3a
        L26:
            boolean r1 = r3.hasNext()     // Catch: java.lang.Throwable -> L3a
            if (r1 == 0) goto L3a
            java.lang.Object r1 = r3.next()     // Catch: java.lang.Throwable -> L3a
            android.app.ActivityManager$RunningAppProcessInfo r1 = (android.app.ActivityManager.RunningAppProcessInfo) r1     // Catch: java.lang.Throwable -> L3a
            int r2 = r1.pid     // Catch: java.lang.Throwable -> L3a
            if (r2 != r0) goto L26
            java.lang.String r3 = r1.processName     // Catch: java.lang.Throwable -> L3a
            com.efs.sdk.launch.c.f11440a = r3     // Catch: java.lang.Throwable -> L3a
        L3a:
            java.lang.String r3 = com.efs.sdk.launch.c.f11440a
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.efs.sdk.launch.c.f(android.content.Context):java.lang.String");
    }
}
