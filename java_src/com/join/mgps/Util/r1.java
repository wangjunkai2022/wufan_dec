package com.join.mgps.Util;

import android.text.TextUtils;
/* compiled from: SafeMethods.java */
/* loaded from: classes3.dex */
public final class r1 {
    public static void a(Thread thread, int i2) {
        if (thread == null || i2 < 0) {
            return;
        }
        try {
            thread.join(i2);
        } catch (InterruptedException unused) {
        }
    }

    public static void b(int i2) {
        try {
            Thread.sleep(i2);
        } catch (InterruptedException unused) {
        }
    }

    public static boolean c(String str, boolean z3) {
        if (TextUtils.isEmpty(str)) {
            return z3;
        }
        try {
            return Boolean.parseBoolean(str);
        } catch (NumberFormatException unused) {
            return z3;
        }
    }
}
