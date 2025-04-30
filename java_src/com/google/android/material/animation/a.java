package com.google.android.material.animation;

import android.animation.TimeInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;
import androidx.annotation.FloatRange;
import androidx.annotation.RestrictTo;
import androidx.interpolator.view.animation.FastOutLinearInInterpolator;
import androidx.interpolator.view.animation.FastOutSlowInInterpolator;
import androidx.interpolator.view.animation.LinearOutSlowInInterpolator;
/* compiled from: AnimationUtils.java */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes2.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    public static final TimeInterpolator f14004a = new LinearInterpolator();

    /* renamed from: b  reason: collision with root package name */
    public static final TimeInterpolator f14005b = new FastOutSlowInInterpolator();

    /* renamed from: c  reason: collision with root package name */
    public static final TimeInterpolator f14006c = new FastOutLinearInInterpolator();

    /* renamed from: d  reason: collision with root package name */
    public static final TimeInterpolator f14007d = new LinearOutSlowInInterpolator();

    /* renamed from: e  reason: collision with root package name */
    public static final TimeInterpolator f14008e = new DecelerateInterpolator();

    public static float a(float f4, float f5, float f6) {
        return f4 + (f6 * (f5 - f4));
    }

    public static float b(float f4, float f5, @FloatRange(from = 0.0d, to = 1.0d) float f6, @FloatRange(from = 0.0d, to = 1.0d) float f7, @FloatRange(from = 0.0d, to = 1.0d) float f8) {
        return f8 < f6 ? f4 : f8 > f7 ? f5 : a(f4, f5, (f8 - f6) / (f7 - f6));
    }

    public static int c(int i2, int i4, float f4) {
        return i2 + Math.round(f4 * (i4 - i2));
    }
}
