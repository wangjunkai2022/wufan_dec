package com.netease.nis.basesdk;

import com.join.mgps.Util.g0;
/* loaded from: classes4.dex */
public class Logger {

    /* renamed from: a  reason: collision with root package name */
    private static String f54051a = "BASE_SDK_LOG";

    /* renamed from: b  reason: collision with root package name */
    private static boolean f54052b;

    private static String a() {
        Thread currentThread;
        StackTraceElement[] stackTrace;
        for (StackTraceElement stackTraceElement : Thread.currentThread().getStackTrace()) {
            if (!stackTraceElement.getClassName().equals(Thread.class.getName()) && !stackTraceElement.getClassName().equals(Logger.class.getName())) {
                return "[Thread:" + currentThread.getName() + ", Class:" + stackTraceElement.getClassName() + ", Function:" + stackTraceElement.getMethodName() + "]";
            }
        }
        return null;
    }

    public static String buildLog(String str) {
        return str + "---->" + a();
    }

    public static void d(String str) {
        d(f54051a, str);
    }

    public static void e(String str) {
        e(f54051a, str);
    }

    public static void enableLog(boolean z3) {
        f54052b = z3;
    }

    public static void i(String str) {
        i(f54051a, str);
    }

    public static void setTag(String str) {
        f54051a = str;
    }

    public static void w(String str) {
        w(f54051a, str);
    }

    public static void d(String str, String str2) {
        if (!f54052b || f54051a.equals(str)) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(f54051a);
        sb.append(g0.f27568a);
        sb.append(str);
    }

    public static void e(String str, String str2) {
        if (!f54052b || f54051a.equals(str)) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(f54051a);
        sb.append(g0.f27568a);
        sb.append(str);
    }

    public static void i(String str, String str2) {
        if (f54052b) {
            if (!f54051a.equals(str)) {
                StringBuilder sb = new StringBuilder();
                sb.append(f54051a);
                sb.append(g0.f27568a);
                sb.append(str);
            }
            buildLog(str2);
        }
    }

    public static void w(String str, String str2) {
        if (!f54052b || f54051a.equals(str)) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(f54051a);
        sb.append(g0.f27568a);
        sb.append(str);
    }
}
