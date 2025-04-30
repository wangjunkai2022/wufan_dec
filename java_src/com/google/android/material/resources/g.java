package com.google.android.material.resources;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Typeface;
import android.os.Build;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.math.MathUtils;
/* compiled from: TypefaceUtils.java */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes2.dex */
public class g {
    private g() {
    }

    @Nullable
    public static Typeface a(@NonNull Context context, @NonNull Typeface typeface) {
        return b(context.getResources().getConfiguration(), typeface);
    }

    @Nullable
    public static Typeface b(@NonNull Configuration configuration, @NonNull Typeface typeface) {
        int i2;
        if (Build.VERSION.SDK_INT < 31 || (i2 = configuration.fontWeightAdjustment) == Integer.MAX_VALUE || i2 == 0) {
            return null;
        }
        return Typeface.create(typeface, MathUtils.clamp(typeface.getWeight() + configuration.fontWeightAdjustment, 1, 1000), typeface.isItalic());
    }
}
