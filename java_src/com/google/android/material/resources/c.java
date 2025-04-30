package com.google.android.material.resources;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.TypedValue;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.annotation.StyleableRes;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.widget.TintTypedArray;
import com.google.android.material.R;
/* compiled from: MaterialResources.java */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes2.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private static final float f15484a = 1.3f;

    /* renamed from: b  reason: collision with root package name */
    private static final float f15485b = 2.0f;

    private c() {
    }

    @Nullable
    public static ColorStateList a(@NonNull Context context, @NonNull TypedArray typedArray, @StyleableRes int i2) {
        int color;
        int resourceId;
        ColorStateList colorStateList;
        if (!typedArray.hasValue(i2) || (resourceId = typedArray.getResourceId(i2, 0)) == 0 || (colorStateList = AppCompatResources.getColorStateList(context, resourceId)) == null) {
            if (Build.VERSION.SDK_INT <= 15 && (color = typedArray.getColor(i2, -1)) != -1) {
                return ColorStateList.valueOf(color);
            }
            return typedArray.getColorStateList(i2);
        }
        return colorStateList;
    }

    @Nullable
    public static ColorStateList b(@NonNull Context context, @NonNull TintTypedArray tintTypedArray, @StyleableRes int i2) {
        int color;
        int resourceId;
        ColorStateList colorStateList;
        if (!tintTypedArray.hasValue(i2) || (resourceId = tintTypedArray.getResourceId(i2, 0)) == 0 || (colorStateList = AppCompatResources.getColorStateList(context, resourceId)) == null) {
            if (Build.VERSION.SDK_INT <= 15 && (color = tintTypedArray.getColor(i2, -1)) != -1) {
                return ColorStateList.valueOf(color);
            }
            return tintTypedArray.getColorStateList(i2);
        }
        return colorStateList;
    }

    private static int c(TypedValue typedValue) {
        if (Build.VERSION.SDK_INT >= 22) {
            return typedValue.getComplexUnit();
        }
        return (typedValue.data >> 0) & 15;
    }

    public static int d(@NonNull Context context, @NonNull TypedArray typedArray, @StyleableRes int i2, int i4) {
        TypedValue typedValue = new TypedValue();
        if (typedArray.getValue(i2, typedValue) && typedValue.type == 2) {
            TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(new int[]{typedValue.data});
            int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(0, i4);
            obtainStyledAttributes.recycle();
            return dimensionPixelSize;
        }
        return typedArray.getDimensionPixelSize(i2, i4);
    }

    @Nullable
    public static Drawable e(@NonNull Context context, @NonNull TypedArray typedArray, @StyleableRes int i2) {
        int resourceId;
        Drawable drawable;
        return (!typedArray.hasValue(i2) || (resourceId = typedArray.getResourceId(i2, 0)) == 0 || (drawable = AppCompatResources.getDrawable(context, resourceId)) == null) ? typedArray.getDrawable(i2) : drawable;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @StyleableRes
    public static int f(@NonNull TypedArray typedArray, @StyleableRes int i2, @StyleableRes int i4) {
        return typedArray.hasValue(i2) ? i2 : i4;
    }

    @Nullable
    public static d g(@NonNull Context context, @NonNull TypedArray typedArray, @StyleableRes int i2) {
        int resourceId;
        if (!typedArray.hasValue(i2) || (resourceId = typedArray.getResourceId(i2, 0)) == 0) {
            return null;
        }
        return new d(context, resourceId);
    }

    public static int h(@NonNull Context context, @StyleRes int i2, int i4) {
        if (i2 == 0) {
            return i4;
        }
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(i2, R.styleable.TextAppearance);
        TypedValue typedValue = new TypedValue();
        boolean value = obtainStyledAttributes.getValue(R.styleable.TextAppearance_android_textSize, typedValue);
        obtainStyledAttributes.recycle();
        if (value) {
            if (c(typedValue) == 2) {
                return Math.round(TypedValue.complexToFloat(typedValue.data) * context.getResources().getDisplayMetrics().density);
            }
            return TypedValue.complexToDimensionPixelSize(typedValue.data, context.getResources().getDisplayMetrics());
        }
        return i4;
    }

    public static boolean i(@NonNull Context context) {
        return context.getResources().getConfiguration().fontScale >= f15484a;
    }

    public static boolean j(@NonNull Context context) {
        return context.getResources().getConfiguration().fontScale >= f15485b;
    }
}
