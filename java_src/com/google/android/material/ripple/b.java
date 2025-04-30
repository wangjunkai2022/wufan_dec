package com.google.android.material.ripple;

import android.annotation.TargetApi;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.os.Build;
import android.util.StateSet;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.core.graphics.ColorUtils;
/* compiled from: RippleUtils.java */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes2.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    public static final boolean f15517a;

    /* renamed from: b  reason: collision with root package name */
    private static final int[] f15518b;

    /* renamed from: c  reason: collision with root package name */
    private static final int[] f15519c;

    /* renamed from: d  reason: collision with root package name */
    private static final int[] f15520d;

    /* renamed from: e  reason: collision with root package name */
    private static final int[] f15521e;

    /* renamed from: f  reason: collision with root package name */
    private static final int[] f15522f;

    /* renamed from: g  reason: collision with root package name */
    private static final int[] f15523g;

    /* renamed from: h  reason: collision with root package name */
    private static final int[] f15524h;

    /* renamed from: i  reason: collision with root package name */
    private static final int[] f15525i;

    /* renamed from: j  reason: collision with root package name */
    private static final int[] f15526j;

    /* renamed from: k  reason: collision with root package name */
    private static final int[] f15527k;
    @VisibleForTesting

    /* renamed from: l  reason: collision with root package name */
    static final String f15528l;
    @VisibleForTesting

    /* renamed from: m  reason: collision with root package name */
    static final String f15529m = "Use a non-transparent color for the default color as it will be used to finish ripple animations.";

    static {
        f15517a = Build.VERSION.SDK_INT >= 21;
        f15518b = new int[]{16842919};
        f15519c = new int[]{16843623, 16842908};
        f15520d = new int[]{16842908};
        f15521e = new int[]{16843623};
        f15522f = new int[]{16842913, 16842919};
        f15523g = new int[]{16842913, 16843623, 16842908};
        f15524h = new int[]{16842913, 16842908};
        f15525i = new int[]{16842913, 16843623};
        f15526j = new int[]{16842913};
        f15527k = new int[]{16842910, 16842919};
        f15528l = b.class.getSimpleName();
    }

    private b() {
    }

    @NonNull
    public static ColorStateList a(@Nullable ColorStateList colorStateList) {
        if (f15517a) {
            return new ColorStateList(new int[][]{f15526j, StateSet.NOTHING}, new int[]{c(colorStateList, f15522f), c(colorStateList, f15518b)});
        }
        int[] iArr = f15522f;
        int[] iArr2 = f15523g;
        int[] iArr3 = f15524h;
        int[] iArr4 = f15525i;
        int[] iArr5 = f15518b;
        int[] iArr6 = f15519c;
        int[] iArr7 = f15520d;
        int[] iArr8 = f15521e;
        return new ColorStateList(new int[][]{iArr, iArr2, iArr3, iArr4, f15526j, iArr5, iArr6, iArr7, iArr8, StateSet.NOTHING}, new int[]{c(colorStateList, iArr), c(colorStateList, iArr2), c(colorStateList, iArr3), c(colorStateList, iArr4), 0, c(colorStateList, iArr5), c(colorStateList, iArr6), c(colorStateList, iArr7), c(colorStateList, iArr8), 0});
    }

    @ColorInt
    @TargetApi(21)
    private static int b(@ColorInt int i2) {
        return ColorUtils.setAlphaComponent(i2, Math.min(Color.alpha(i2) * 2, 255));
    }

    @ColorInt
    private static int c(@Nullable ColorStateList colorStateList, int[] iArr) {
        int colorForState = colorStateList != null ? colorStateList.getColorForState(iArr, colorStateList.getDefaultColor()) : 0;
        return f15517a ? b(colorForState) : colorForState;
    }

    @NonNull
    public static ColorStateList d(@Nullable ColorStateList colorStateList) {
        if (colorStateList != null) {
            int i2 = Build.VERSION.SDK_INT;
            if (i2 >= 22 && i2 <= 27 && Color.alpha(colorStateList.getDefaultColor()) == 0) {
                Color.alpha(colorStateList.getColorForState(f15527k, 0));
            }
            return colorStateList;
        }
        return ColorStateList.valueOf(0);
    }

    public static boolean e(@NonNull int[] iArr) {
        boolean z3 = false;
        boolean z4 = false;
        for (int i2 : iArr) {
            if (i2 == 16842910) {
                z3 = true;
            } else if (i2 == 16842908 || i2 == 16842919 || i2 == 16843623) {
                z4 = true;
            }
        }
        return z3 && z4;
    }
}
