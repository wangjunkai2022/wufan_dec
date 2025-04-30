package com.google.android.material.internal;

import android.annotation.TargetApi;
import android.content.Context;
import android.os.Build;
import android.view.Window;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.graphics.ColorUtils;
import androidx.core.view.WindowCompat;
import androidx.core.view.WindowInsetsControllerCompat;
/* compiled from: EdgeToEdgeUtils.java */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes2.dex */
public class e {

    /* renamed from: a  reason: collision with root package name */
    private static final int f15145a = 128;

    private e() {
    }

    public static void a(@NonNull Window window, boolean z3) {
        b(window, z3, null, null);
    }

    public static void b(@NonNull Window window, boolean z3, @Nullable @ColorInt Integer num, @Nullable @ColorInt Integer num2) {
        if (Build.VERSION.SDK_INT < 21) {
            return;
        }
        boolean z4 = false;
        boolean z5 = num == null || num.intValue() == 0;
        z4 = (num2 == null || num2.intValue() == 0) ? true : true;
        if (z5 || z4) {
            int b4 = com.google.android.material.color.m.b(window.getContext(), 16842801, -16777216);
            if (z5) {
                num = Integer.valueOf(b4);
            }
            if (z4) {
                num2 = Integer.valueOf(b4);
            }
        }
        WindowCompat.setDecorFitsSystemWindows(window, !z3);
        int d4 = d(window.getContext(), z3);
        int c4 = c(window.getContext(), z3);
        window.setStatusBarColor(d4);
        window.setNavigationBarColor(c4);
        boolean e4 = e(d4, com.google.android.material.color.m.k(num.intValue()));
        boolean e5 = e(c4, com.google.android.material.color.m.k(num2.intValue()));
        WindowInsetsControllerCompat insetsController = WindowCompat.getInsetsController(window, window.getDecorView());
        if (insetsController != null) {
            insetsController.setAppearanceLightStatusBars(e4);
            insetsController.setAppearanceLightNavigationBars(e5);
        }
    }

    @TargetApi(21)
    private static int c(Context context, boolean z3) {
        if (!z3 || Build.VERSION.SDK_INT >= 27) {
            if (z3) {
                return 0;
            }
            return com.google.android.material.color.m.b(context, 16843858, -16777216);
        }
        return ColorUtils.setAlphaComponent(com.google.android.material.color.m.b(context, 16843858, -16777216), 128);
    }

    @TargetApi(21)
    private static int d(Context context, boolean z3) {
        if (!z3 || Build.VERSION.SDK_INT >= 23) {
            if (z3) {
                return 0;
            }
            return com.google.android.material.color.m.b(context, 16843857, -16777216);
        }
        return ColorUtils.setAlphaComponent(com.google.android.material.color.m.b(context, 16843857, -16777216), 128);
    }

    private static boolean e(int i2, boolean z3) {
        return com.google.android.material.color.m.k(i2) || (i2 == 0 && z3);
    }
}
