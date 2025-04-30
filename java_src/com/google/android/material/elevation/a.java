package com.google.android.material.elevation;

import android.content.Context;
import android.graphics.Color;
import android.view.View;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.core.graphics.ColorUtils;
import com.google.android.material.R;
import com.google.android.material.color.m;
import com.google.android.material.internal.w;
import com.google.android.material.resources.b;
/* compiled from: ElevationOverlayProvider.java */
/* loaded from: classes2.dex */
public class a {

    /* renamed from: f  reason: collision with root package name */
    private static final float f14863f = 4.5f;

    /* renamed from: g  reason: collision with root package name */
    private static final float f14864g = 2.0f;

    /* renamed from: h  reason: collision with root package name */
    private static final int f14865h = (int) Math.round(5.1000000000000005d);

    /* renamed from: a  reason: collision with root package name */
    private final boolean f14866a;

    /* renamed from: b  reason: collision with root package name */
    private final int f14867b;

    /* renamed from: c  reason: collision with root package name */
    private final int f14868c;

    /* renamed from: d  reason: collision with root package name */
    private final int f14869d;

    /* renamed from: e  reason: collision with root package name */
    private final float f14870e;

    public a(@NonNull Context context) {
        this(b.b(context, R.attr.elevationOverlayEnabled, false), m.b(context, R.attr.elevationOverlayColor, 0), m.b(context, R.attr.elevationOverlayAccentColor, 0), m.b(context, R.attr.colorSurface, 0), context.getResources().getDisplayMetrics().density);
    }

    private boolean m(@ColorInt int i2) {
        return ColorUtils.setAlphaComponent(i2, 255) == this.f14869d;
    }

    public int a(float f4) {
        return Math.round(b(f4) * 255.0f);
    }

    public float b(float f4) {
        float f5 = this.f14870e;
        if (f5 <= 0.0f || f4 <= 0.0f) {
            return 0.0f;
        }
        return Math.min(((((float) Math.log1p(f4 / f5)) * f14863f) + f14864g) / 100.0f, 1.0f);
    }

    @ColorInt
    public int c(@ColorInt int i2, float f4) {
        int i4;
        float b4 = b(f4);
        int alpha = Color.alpha(i2);
        int m4 = m.m(ColorUtils.setAlphaComponent(i2, 255), this.f14867b, b4);
        if (b4 > 0.0f && (i4 = this.f14868c) != 0) {
            m4 = m.l(m4, ColorUtils.setAlphaComponent(i4, f14865h));
        }
        return ColorUtils.setAlphaComponent(m4, alpha);
    }

    @ColorInt
    public int d(@ColorInt int i2, float f4, @NonNull View view) {
        return c(i2, f4 + i(view));
    }

    @ColorInt
    public int e(@ColorInt int i2, float f4) {
        return (this.f14866a && m(i2)) ? c(i2, f4) : i2;
    }

    @ColorInt
    public int f(@ColorInt int i2, float f4, @NonNull View view) {
        return e(i2, f4 + i(view));
    }

    @ColorInt
    public int g(float f4) {
        return e(this.f14869d, f4);
    }

    @ColorInt
    public int h(float f4, @NonNull View view) {
        return g(f4 + i(view));
    }

    public float i(@NonNull View view) {
        return w.j(view);
    }

    @ColorInt
    public int j() {
        return this.f14867b;
    }

    @ColorInt
    public int k() {
        return this.f14869d;
    }

    public boolean l() {
        return this.f14866a;
    }

    public a(boolean z3, @ColorInt int i2, @ColorInt int i4, @ColorInt int i5, float f4) {
        this.f14866a = z3;
        this.f14867b = i2;
        this.f14868c = i4;
        this.f14869d = i5;
        this.f14870e = f4;
    }
}
