package com.google.android.material.color;

import android.content.Context;
import android.graphics.Color;
import android.util.TypedValue;
import android.view.View;
import androidx.annotation.AttrRes;
import androidx.annotation.ColorInt;
import androidx.annotation.FloatRange;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.core.graphics.ColorUtils;
import com.google.android.material.R;
/* compiled from: MaterialColors.java */
/* loaded from: classes2.dex */
public class m {

    /* renamed from: a  reason: collision with root package name */
    public static final float f14616a = 1.0f;

    /* renamed from: b  reason: collision with root package name */
    public static final float f14617b = 0.54f;

    /* renamed from: c  reason: collision with root package name */
    public static final float f14618c = 0.38f;

    /* renamed from: d  reason: collision with root package name */
    public static final float f14619d = 0.32f;

    /* renamed from: e  reason: collision with root package name */
    public static final float f14620e = 0.12f;

    /* renamed from: f  reason: collision with root package name */
    private static final int f14621f = 40;

    /* renamed from: g  reason: collision with root package name */
    private static final int f14622g = 100;

    /* renamed from: h  reason: collision with root package name */
    private static final int f14623h = 90;

    /* renamed from: i  reason: collision with root package name */
    private static final int f14624i = 10;

    /* renamed from: j  reason: collision with root package name */
    private static final int f14625j = 80;

    /* renamed from: k  reason: collision with root package name */
    private static final int f14626k = 20;

    /* renamed from: l  reason: collision with root package name */
    private static final int f14627l = 30;

    /* renamed from: m  reason: collision with root package name */
    private static final int f14628m = 90;

    private m() {
    }

    @ColorInt
    public static int a(@ColorInt int i2, @IntRange(from = 0, to = 255) int i4) {
        return ColorUtils.setAlphaComponent(i2, (Color.alpha(i2) * i4) / 255);
    }

    @ColorInt
    public static int b(@NonNull Context context, @AttrRes int i2, @ColorInt int i4) {
        TypedValue a4 = com.google.android.material.resources.b.a(context, i2);
        return a4 != null ? a4.data : i4;
    }

    @ColorInt
    public static int c(Context context, @AttrRes int i2, String str) {
        return com.google.android.material.resources.b.g(context, i2, str);
    }

    @ColorInt
    public static int d(@NonNull View view, @AttrRes int i2) {
        return com.google.android.material.resources.b.h(view, i2);
    }

    @ColorInt
    public static int e(@NonNull View view, @AttrRes int i2, @ColorInt int i4) {
        return b(view.getContext(), i2, i4);
    }

    @ColorInt
    private static int f(@ColorInt int i2, @IntRange(from = 0, to = 100) int i4) {
        l c4 = l.c(i2);
        c4.l(i4);
        return c4.m();
    }

    @NonNull
    public static e g(@ColorInt int i2, boolean z3) {
        if (z3) {
            return new e(f(i2, 40), f(i2, 100), f(i2, 90), f(i2, 10));
        }
        return new e(f(i2, 80), f(i2, 20), f(i2, 30), f(i2, 90));
    }

    @NonNull
    public static e h(@NonNull Context context, @ColorInt int i2) {
        return g(i2, com.google.android.material.resources.b.b(context, R.attr.isLightTheme, true));
    }

    @ColorInt
    public static int i(@ColorInt int i2, @ColorInt int i4) {
        return a.c(i2, i4);
    }

    @ColorInt
    public static int j(@NonNull Context context, @ColorInt int i2) {
        return i(i2, c(context, R.attr.colorPrimary, m.class.getCanonicalName()));
    }

    public static boolean k(@ColorInt int i2) {
        return i2 != 0 && ColorUtils.calculateLuminance(i2) > 0.5d;
    }

    @ColorInt
    public static int l(@ColorInt int i2, @ColorInt int i4) {
        return ColorUtils.compositeColors(i4, i2);
    }

    @ColorInt
    public static int m(@ColorInt int i2, @ColorInt int i4, @FloatRange(from = 0.0d, to = 1.0d) float f4) {
        return l(i2, ColorUtils.setAlphaComponent(i4, Math.round(Color.alpha(i4) * f4)));
    }

    @ColorInt
    public static int n(@NonNull View view, @AttrRes int i2, @AttrRes int i4) {
        return o(view, i2, i4, 1.0f);
    }

    @ColorInt
    public static int o(@NonNull View view, @AttrRes int i2, @AttrRes int i4, @FloatRange(from = 0.0d, to = 1.0d) float f4) {
        return m(d(view, i2), d(view, i4), f4);
    }
}
