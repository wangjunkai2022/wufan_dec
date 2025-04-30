package com.join.mgps.ptr.util;

import android.util.Log;
/* compiled from: PtrCLog.java */
/* loaded from: classes4.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    public static final int f51359a = 0;

    /* renamed from: b  reason: collision with root package name */
    public static final int f51360b = 1;

    /* renamed from: c  reason: collision with root package name */
    public static final int f51361c = 2;

    /* renamed from: d  reason: collision with root package name */
    public static final int f51362d = 3;

    /* renamed from: e  reason: collision with root package name */
    public static final int f51363e = 4;

    /* renamed from: f  reason: collision with root package name */
    public static final int f51364f = 5;

    /* renamed from: g  reason: collision with root package name */
    private static int f51365g;

    public static void a(String str, String str2) {
    }

    public static void b(String str, String str2, Throwable th) {
    }

    public static void c(String str, String str2, Object... objArr) {
        if (f51365g <= 1 && objArr.length > 0) {
            String.format(str2, objArr);
        }
    }

    public static void d(String str, String str2) {
    }

    public static void e(String str, String str2, Throwable th) {
    }

    public static void f(String str, String str2, Object... objArr) {
        if (f51365g <= 4 && objArr.length > 0) {
            String.format(str2, objArr);
        }
    }

    public static void g(String str, String str2) {
        if (f51365g > 5) {
            return;
        }
        Log.wtf(str, str2);
    }

    public static void h(String str, String str2, Throwable th) {
        if (f51365g > 5) {
            return;
        }
        Log.wtf(str, str2, th);
    }

    public static void i(String str, String str2, Object... objArr) {
        if (f51365g > 5) {
            return;
        }
        if (objArr.length > 0) {
            str2 = String.format(str2, objArr);
        }
        Log.wtf(str, str2);
    }

    public static void j(String str, String str2) {
    }

    public static void k(String str, String str2, Throwable th) {
    }

    public static void l(String str, String str2, Object... objArr) {
        if (f51365g <= 2 && objArr.length > 0) {
            String.format(str2, objArr);
        }
    }

    public static void m(int i2) {
        f51365g = i2;
    }

    public static void n(String str, String str2) {
    }

    public static void o(String str, String str2, Throwable th) {
    }

    public static void p(String str, String str2, Object... objArr) {
        if (f51365g <= 0 && objArr.length > 0) {
            String.format(str2, objArr);
        }
    }

    public static void q(String str, String str2) {
    }

    public static void r(String str, String str2, Throwable th) {
    }

    public static void s(String str, String str2, Object... objArr) {
        if (f51365g <= 3 && objArr.length > 0) {
            String.format(str2, objArr);
        }
    }
}
