package com.join.mgps.ptr.util;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.WindowManager;
/* compiled from: PtrLocalDisplay.java */
/* loaded from: classes4.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    public static int f51366a;

    /* renamed from: b  reason: collision with root package name */
    public static int f51367b;

    /* renamed from: c  reason: collision with root package name */
    public static float f51368c;

    /* renamed from: d  reason: collision with root package name */
    public static int f51369d;

    /* renamed from: e  reason: collision with root package name */
    public static int f51370e;

    public static int a(float f4) {
        int i2 = f51369d;
        if (i2 != 320) {
            f4 = (f4 * i2) / 320.0f;
        }
        return b(f4);
    }

    public static int b(float f4) {
        return (int) ((f4 * f51368c) + 0.5f);
    }

    public static void c(Context context) {
        if (context == null) {
            return;
        }
        DisplayMetrics displayMetrics = new DisplayMetrics();
        ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
        int i2 = displayMetrics.widthPixels;
        f51366a = i2;
        int i4 = displayMetrics.heightPixels;
        f51367b = i4;
        float f4 = displayMetrics.density;
        f51368c = f4;
        f51369d = (int) (i2 / f4);
        f51370e = (int) (i4 / f4);
    }

    public static void d(View view, float f4, float f5, float f6, float f7) {
        view.setPadding(a(f4), b(f5), a(f6), b(f7));
    }
}
