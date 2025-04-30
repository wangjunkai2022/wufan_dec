package com.google.android.material.progressindicator;

import android.content.ContentResolver;
import android.os.Build;
import android.provider.Settings;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
/* compiled from: AnimatorDurationScaleProvider.java */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes2.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static float f15381a = 1.0f;

    @VisibleForTesting
    public static void b(float f4) {
        f15381a = f4;
    }

    public float a(@NonNull ContentResolver contentResolver) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 17) {
            return Settings.Global.getFloat(contentResolver, "animator_duration_scale", 1.0f);
        }
        if (i2 == 16) {
            return Settings.System.getFloat(contentResolver, "animator_duration_scale", 1.0f);
        }
        return f15381a;
    }
}
