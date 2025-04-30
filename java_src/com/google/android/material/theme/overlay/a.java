package com.google.android.material.theme.overlay;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StyleRes;
import androidx.appcompat.view.ContextThemeWrapper;
import com.google.android.material.R;
/* compiled from: MaterialThemeOverlay.java */
/* loaded from: classes2.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static final int[] f16158a = {16842752, R.attr.theme};

    /* renamed from: b  reason: collision with root package name */
    private static final int[] f16159b = {R.attr.materialThemeOverlay};

    private a() {
    }

    @StyleRes
    private static int a(@NonNull Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f16158a);
        int resourceId = obtainStyledAttributes.getResourceId(0, 0);
        int resourceId2 = obtainStyledAttributes.getResourceId(1, 0);
        obtainStyledAttributes.recycle();
        return resourceId != 0 ? resourceId : resourceId2;
    }

    @StyleRes
    private static int b(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i2, @StyleRes int i4) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f16159b, i2, i4);
        int resourceId = obtainStyledAttributes.getResourceId(0, 0);
        obtainStyledAttributes.recycle();
        return resourceId;
    }

    @NonNull
    public static Context c(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i2, @StyleRes int i4) {
        int b4 = b(context, attributeSet, i2, i4);
        boolean z3 = (context instanceof ContextThemeWrapper) && ((ContextThemeWrapper) context).getThemeResId() == b4;
        if (b4 == 0 || z3) {
            return context;
        }
        ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(context, b4);
        int a4 = a(context, attributeSet);
        if (a4 != 0) {
            contextThemeWrapper.getTheme().applyStyle(a4, true);
        }
        return contextThemeWrapper;
    }
}
