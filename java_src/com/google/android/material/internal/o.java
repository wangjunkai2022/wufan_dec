package com.google.android.material.internal;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.TypedValue;
import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.annotation.StyleableRes;
import androidx.appcompat.widget.TintTypedArray;
import com.google.android.material.R;
/* compiled from: ThemeEnforcement.java */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes2.dex */
public final class o {

    /* renamed from: b  reason: collision with root package name */
    private static final String f15209b = "Theme.AppCompat";

    /* renamed from: d  reason: collision with root package name */
    private static final String f15211d = "Theme.MaterialComponents";

    /* renamed from: a  reason: collision with root package name */
    private static final int[] f15208a = {R.attr.colorPrimary};

    /* renamed from: c  reason: collision with root package name */
    private static final int[] f15210c = {R.attr.colorPrimaryVariant};

    private o() {
    }

    public static void a(@NonNull Context context) {
        e(context, f15208a, f15209b);
    }

    private static void b(@NonNull Context context, AttributeSet attributeSet, @AttrRes int i2, @StyleRes int i4) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ThemeEnforcement, i2, i4);
        boolean z3 = obtainStyledAttributes.getBoolean(R.styleable.ThemeEnforcement_enforceMaterialTheme, false);
        obtainStyledAttributes.recycle();
        if (z3) {
            TypedValue typedValue = new TypedValue();
            if (!context.getTheme().resolveAttribute(R.attr.isMaterialTheme, typedValue, true) || (typedValue.type == 18 && typedValue.data == 0)) {
                c(context);
            }
        }
        a(context);
    }

    public static void c(@NonNull Context context) {
        e(context, f15210c, f15211d);
    }

    private static void d(@NonNull Context context, AttributeSet attributeSet, @NonNull @StyleableRes int[] iArr, @AttrRes int i2, @StyleRes int i4, @Nullable @StyleableRes int... iArr2) {
        boolean z3;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ThemeEnforcement, i2, i4);
        if (!obtainStyledAttributes.getBoolean(R.styleable.ThemeEnforcement_enforceTextAppearance, false)) {
            obtainStyledAttributes.recycle();
            return;
        }
        if (iArr2 != null && iArr2.length != 0) {
            z3 = g(context, attributeSet, iArr, i2, i4, iArr2);
        } else {
            z3 = obtainStyledAttributes.getResourceId(R.styleable.ThemeEnforcement_android_textAppearance, -1) != -1;
        }
        obtainStyledAttributes.recycle();
        if (!z3) {
            throw new IllegalArgumentException("This component requires that you specify a valid TextAppearance attribute. Update your app theme to inherit from Theme.MaterialComponents (or a descendant).");
        }
    }

    private static void e(@NonNull Context context, @NonNull int[] iArr, String str) {
        if (i(context, iArr)) {
            return;
        }
        throw new IllegalArgumentException("The style on this component requires your app theme to be " + str + " (or a descendant).");
    }

    public static boolean f(@NonNull Context context) {
        return i(context, f15208a);
    }

    private static boolean g(@NonNull Context context, AttributeSet attributeSet, @NonNull @StyleableRes int[] iArr, @AttrRes int i2, @StyleRes int i4, @NonNull @StyleableRes int... iArr2) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, i2, i4);
        for (int i5 : iArr2) {
            if (obtainStyledAttributes.getResourceId(i5, -1) == -1) {
                obtainStyledAttributes.recycle();
                return false;
            }
        }
        obtainStyledAttributes.recycle();
        return true;
    }

    public static boolean h(@NonNull Context context) {
        return i(context, f15210c);
    }

    private static boolean i(@NonNull Context context, @NonNull int[] iArr) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(iArr);
        for (int i2 = 0; i2 < iArr.length; i2++) {
            if (!obtainStyledAttributes.hasValue(i2)) {
                obtainStyledAttributes.recycle();
                return false;
            }
        }
        obtainStyledAttributes.recycle();
        return true;
    }

    @NonNull
    public static TypedArray j(@NonNull Context context, AttributeSet attributeSet, @NonNull @StyleableRes int[] iArr, @AttrRes int i2, @StyleRes int i4, @StyleableRes int... iArr2) {
        b(context, attributeSet, i2, i4);
        d(context, attributeSet, iArr, i2, i4, iArr2);
        return context.obtainStyledAttributes(attributeSet, iArr, i2, i4);
    }

    public static TintTypedArray k(@NonNull Context context, AttributeSet attributeSet, @NonNull @StyleableRes int[] iArr, @AttrRes int i2, @StyleRes int i4, @StyleableRes int... iArr2) {
        b(context, attributeSet, i2, i4);
        d(context, attributeSet, iArr, i2, i4, iArr2);
        return TintTypedArray.obtainStyledAttributes(context, attributeSet, iArr, i2, i4);
    }
}
