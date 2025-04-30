package com.papa.gsyvideoplayer.utils;

import android.app.Activity;
import android.text.TextUtils;
import android.widget.Toast;
/* compiled from: Debuger.java */
/* loaded from: classes4.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    static final String f55114a = "GSYVideoPlayer";

    /* renamed from: b  reason: collision with root package name */
    static boolean f55115b;

    public static void a(Activity activity, String str) {
        if (!f55115b || TextUtils.isEmpty(str)) {
            return;
        }
        Toast.makeText(activity, str, 0).show();
    }

    public static void b() {
        f55115b = false;
    }

    public static void c() {
        f55115b = true;
    }

    public static boolean d() {
        return f55115b;
    }

    public static void e(String str) {
        if (f55115b) {
            TextUtils.isEmpty(str);
        }
    }

    public static void f(String str, Exception exc) {
        if (f55115b) {
            TextUtils.isEmpty(str);
            exc.printStackTrace();
        }
    }

    public static void g(String str, String str2) {
        if (f55115b) {
            TextUtils.isEmpty(str2);
        }
    }

    public static void h(String str) {
        i(f55114a, str);
    }

    public static void i(String str, String str2) {
        if (!f55115b || str2 == null) {
            return;
        }
        TextUtils.isEmpty(str2);
    }

    public static void j(String str) {
        k(f55114a, str);
    }

    public static void k(String str, String str2) {
        if (!f55115b || str2 == null) {
            return;
        }
        TextUtils.isEmpty(str2);
    }
}
