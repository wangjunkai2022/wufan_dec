package com.join.android.app.common.utils;

import android.app.ActivityManager;
import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.os.Process;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.lang.reflect.Method;
import java.util.List;
/* compiled from: ProcessUtil.java */
/* loaded from: classes.dex */
public class i {

    /* renamed from: a  reason: collision with root package name */
    private static String f17248a;

    @Nullable
    public static String a(@NonNull Context context) {
        if (!TextUtils.isEmpty(f17248a)) {
            return f17248a;
        }
        String d4 = d();
        f17248a = d4;
        if (!TextUtils.isEmpty(d4)) {
            return f17248a;
        }
        String c4 = c();
        f17248a = c4;
        if (!TextUtils.isEmpty(c4)) {
            return f17248a;
        }
        String b4 = b(context);
        f17248a = b4;
        return b4;
    }

    public static String b(@NonNull Context context) {
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses;
        if (context == null) {
            return null;
        }
        int myPid = Process.myPid();
        ActivityManager activityManager = (ActivityManager) context.getSystemService(TTDownloadField.TT_ACTIVITY);
        if (activityManager != null && (runningAppProcesses = activityManager.getRunningAppProcesses()) != null) {
            for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                if (runningAppProcessInfo.pid == myPid) {
                    return runningAppProcessInfo.processName;
                }
            }
        }
        return null;
    }

    public static String c() {
        try {
            Method declaredMethod = Class.forName("android.app.ActivityThread", false, Application.class.getClassLoader()).getDeclaredMethod("currentProcessName", new Class[0]);
            declaredMethod.setAccessible(true);
            Object invoke = declaredMethod.invoke(null, new Object[0]);
            if (invoke instanceof String) {
                return (String) invoke;
            }
            return null;
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    public static String d() {
        if (Build.VERSION.SDK_INT >= 28) {
            return Application.getProcessName();
        }
        return null;
    }

    public static String e(int i2) {
        BufferedReader bufferedReader;
        try {
            bufferedReader = new BufferedReader(new FileReader("/proc/" + i2 + "/cmdline"));
            try {
                String readLine = bufferedReader.readLine();
                if (!TextUtils.isEmpty(readLine)) {
                    readLine = readLine.trim();
                }
                try {
                    bufferedReader.close();
                } catch (IOException e4) {
                    e4.printStackTrace();
                }
                return readLine;
            } catch (Throwable th) {
                th = th;
                try {
                    th.printStackTrace();
                    return null;
                } finally {
                    if (bufferedReader != null) {
                        try {
                            bufferedReader.close();
                        } catch (IOException e5) {
                            e5.printStackTrace();
                        }
                    }
                }
            }
        } catch (Throwable th2) {
            th = th2;
            bufferedReader = null;
        }
    }
}
