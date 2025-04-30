package com.join.mgps.Util;

import java.util.MissingFormatArgumentException;
/* compiled from: Logger.java */
/* loaded from: classes.dex */
public class u0 {

    /* renamed from: a  reason: collision with root package name */
    private static final String f27862a = "WF";

    /* renamed from: b  reason: collision with root package name */
    private static boolean f27863b;

    public static void a(String str, Object... objArr) {
        try {
            if (f27863b) {
                String.format(str, objArr);
            }
        } catch (MissingFormatArgumentException unused) {
        }
    }

    public static void b(String str, Throwable th) {
    }

    public static void c(String str, Object... objArr) {
        try {
            if (f27863b) {
                String.format(str, objArr);
            }
        } catch (MissingFormatArgumentException unused) {
        }
    }

    public static void d(String str, Object... objArr) {
        try {
            if (f27863b) {
                String.format(str, objArr);
            }
        } catch (MissingFormatArgumentException unused) {
        }
    }

    public static void e(String... strArr) {
        if (f27863b) {
            String str = "";
            for (int i2 = 0; i2 < strArr.length; i2++) {
                str = str + " " + strArr[i2];
            }
        }
    }

    public static void f(String str, Object... objArr) {
        try {
            if (f27863b) {
                String.format(str, objArr);
            }
        } catch (MissingFormatArgumentException unused) {
        }
    }
}
