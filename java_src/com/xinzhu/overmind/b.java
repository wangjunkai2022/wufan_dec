package com.xinzhu.overmind;

import android.util.Log;
/* compiled from: OLog.java */
/* loaded from: classes.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private static boolean f63951a = false;

    /* renamed from: b  reason: collision with root package name */
    public static final int f63952b = 2;

    /* renamed from: c  reason: collision with root package name */
    public static final int f63953c = 3;

    /* renamed from: d  reason: collision with root package name */
    public static final int f63954d = 4;

    /* renamed from: e  reason: collision with root package name */
    public static final int f63955e = 5;

    /* renamed from: f  reason: collision with root package name */
    public static final int f63956f = 6;

    /* renamed from: g  reason: collision with root package name */
    public static final int f63957g = 7;

    private b() {
    }

    public static int a(String tag, String msg) {
        if (f63951a) {
            return Log.d(tag, msg);
        }
        return 0;
    }

    public static int b(String tag, String msg, Throwable tr) {
        if (f63951a) {
            return Log.d(tag, msg, tr);
        }
        return 0;
    }

    public static int c(String tag, String msg) {
        if (f63951a) {
            return Log.e(tag, msg);
        }
        return 0;
    }

    public static int d(String tag, String msg, Throwable tr) {
        if (f63951a) {
            return Log.e(tag, msg, tr);
        }
        return 0;
    }

    public static String e(Throwable tr) {
        return Log.getStackTraceString(tr);
    }

    public static int f(String tag, String msg) {
        if (f63951a) {
            return Log.i(tag, msg);
        }
        return 0;
    }

    public static int g(String tag, String msg, Throwable tr) {
        if (f63951a) {
            return Log.i(tag, msg, tr);
        }
        return 0;
    }

    public static boolean h(String tag, int level) {
        return false;
    }

    public static int i(int priority, String tag, String msg) {
        if (f63951a) {
            return Log.println(priority, tag, msg);
        }
        return 0;
    }

    public static int j(String tag, String msg) {
        if (f63951a) {
            return Log.v(tag, msg);
        }
        return 0;
    }

    public static int k(String tag, String msg, Throwable tr) {
        if (f63951a) {
            return Log.v(tag, msg, tr);
        }
        return 0;
    }

    public static int l(String tag, String msg) {
        if (f63951a) {
            return Log.w(tag, msg);
        }
        return 0;
    }

    public static int m(String tag, String msg, Throwable tr) {
        if (f63951a) {
            return Log.w(tag, msg, tr);
        }
        return 0;
    }

    public static int n(String tag, Throwable tr) {
        if (f63951a) {
            return Log.w(tag, tr);
        }
        return 0;
    }

    public static int o(String tag, String msg) {
        if (f63951a) {
            return Log.wtf(tag, msg);
        }
        return 0;
    }

    public static int p(String tag, String msg, Throwable tr) {
        if (f63951a) {
            return Log.wtf(tag, msg, tr);
        }
        return 0;
    }

    public static int q(String tag, Throwable tr) {
        if (f63951a) {
            return Log.wtf(tag, tr);
        }
        return 0;
    }
}
