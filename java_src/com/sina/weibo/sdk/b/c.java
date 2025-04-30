package com.sina.weibo.sdk.b;
/* loaded from: classes4.dex */
public final class c {
    private static boolean ai;

    public static void a(String str, String str2) {
        if (ai) {
            StackTraceElement stackTraceElement = Thread.currentThread().getStackTrace()[3];
            StringBuilder sb = new StringBuilder();
            sb.append(stackTraceElement.getFileName() + "(" + stackTraceElement.getLineNumber() + ") " + stackTraceElement.getMethodName());
            sb.append(": ");
            sb.append(str2);
        }
    }

    public static void b(String str, String str2) {
        if (ai) {
            StackTraceElement stackTraceElement = Thread.currentThread().getStackTrace()[3];
            StringBuilder sb = new StringBuilder();
            sb.append(stackTraceElement.getFileName() + "(" + stackTraceElement.getLineNumber() + ") " + stackTraceElement.getMethodName());
            sb.append(": ");
            sb.append(str2);
        }
    }

    public static void setLoggerEnable(boolean z3) {
        ai = z3;
    }
}
