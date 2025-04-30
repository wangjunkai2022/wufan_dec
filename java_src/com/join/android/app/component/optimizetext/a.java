package com.join.android.app.component.optimizetext;

import android.app.Activity;
import android.content.Context;
import android.graphics.Rect;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.View;
/* compiled from: DisplayUtils.java */
/* loaded from: classes.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static DisplayMetrics f17493a = null;

    /* renamed from: b  reason: collision with root package name */
    private static final int f17494b = 320;

    /* renamed from: c  reason: collision with root package name */
    private static final int f17495c = 640;

    /* renamed from: d  reason: collision with root package name */
    private static int f17496d;

    /* renamed from: e  reason: collision with root package name */
    private static int f17497e;

    /* renamed from: f  reason: collision with root package name */
    private static int f17498f;

    /* renamed from: g  reason: collision with root package name */
    private static float f17499g;

    /* renamed from: h  reason: collision with root package name */
    private static int f17500h;

    public static int a(float f4) {
        return (int) ((f17493a.density * f4) + 0.5f);
    }

    public static int b() {
        return f17498f;
    }

    public static float c() {
        return f17499g;
    }

    public static int d() {
        return f17497e;
    }

    public static float e() {
        return f17493a.density;
    }

    public static int f() {
        return f17493a.heightPixels;
    }

    public static int g() {
        return f17493a.widthPixels;
    }

    public static int h() {
        return f17493a.densityDpi;
    }

    public static int i() {
        return f17500h;
    }

    public static int j(View view) {
        return view.getRootView().getHeight();
    }

    public static int k() {
        return f17496d;
    }

    public static int l(View view) {
        Rect rect = new Rect();
        view.getWindowVisibleDisplayFrame(rect);
        return rect.bottom - rect.top;
    }

    public static void m(Context context) {
        f17493a = context.getResources().getDisplayMetrics();
        int a4 = a(320.0f);
        f17496d = a4;
        if (a4 > f17495c) {
            f17496d = f17495c;
        }
    }

    public static int n(int i2) {
        return (int) ((i2 / f17493a.density) + 0.5f);
    }

    public static void o(Activity activity) {
        if (f17500h == 0) {
            View decorView = activity.getWindow().getDecorView();
            f17497e = decorView.getWidth();
            int height = decorView.getHeight();
            f17498f = height;
            f17499g = f17497e / height;
            f17500h = height - l(decorView);
        }
    }

    public static void p(int i2) {
        f17498f = i2;
    }

    public static void q(float f4) {
        f17499g = f4;
    }

    public static void r(int i2) {
        f17497e = i2;
    }

    public static int s(int i2) {
        return (int) TypedValue.applyDimension(2, i2, f17493a);
    }
}
