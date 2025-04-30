package com.heepay.plugin.c;
/* loaded from: classes2.dex */
public class b {
    public static String a(Exception exc) {
        StackTraceElement[] stackTrace;
        String str = exc.getMessage() + ":\n";
        for (int i2 = 0; i2 < exc.getStackTrace().length; i2++) {
            str = str + stackTrace[i2].toString() + "\n";
        }
        return str;
    }

    public static void a(Exception exc, String str) {
        c.e("Exception", str + "产生了例外：" + a(exc));
    }
}
