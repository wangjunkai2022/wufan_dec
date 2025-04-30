package com.facebook.fresco.animation.drawable.animator;

import android.animation.ValueAnimator;
import android.graphics.drawable.Drawable;
import android.os.Build;
import javax.annotation.Nullable;
/* compiled from: AnimatedDrawableValueAnimatorHelper.java */
/* loaded from: classes.dex */
public class b {
    private b() {
    }

    @Nullable
    public static ValueAnimator.AnimatorUpdateListener a(Drawable drawable) {
        if (Build.VERSION.SDK_INT >= 11 && (drawable instanceof com.facebook.fresco.animation.drawable.a)) {
            return a.a((com.facebook.fresco.animation.drawable.a) drawable);
        }
        return null;
    }

    @Nullable
    public static ValueAnimator b(Drawable drawable) {
        if (Build.VERSION.SDK_INT >= 11 && (drawable instanceof com.facebook.fresco.animation.drawable.a)) {
            return a.b((com.facebook.fresco.animation.drawable.a) drawable);
        }
        return null;
    }

    @Nullable
    public static ValueAnimator c(Drawable drawable, int i2) {
        if (Build.VERSION.SDK_INT >= 11 && (drawable instanceof com.facebook.fresco.animation.drawable.a)) {
            return a.c((com.facebook.fresco.animation.drawable.a) drawable, i2);
        }
        return null;
    }
}
