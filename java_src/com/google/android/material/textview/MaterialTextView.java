package com.google.android.material.textview;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StyleableRes;
import androidx.appcompat.widget.AppCompatTextView;
import com.google.android.material.R;
import com.google.android.material.resources.b;
import com.google.android.material.resources.c;
import com.google.android.material.theme.overlay.a;
/* loaded from: classes2.dex */
public class MaterialTextView extends AppCompatTextView {
    public MaterialTextView(@NonNull Context context) {
        this(context, null);
    }

    private void a(@NonNull Resources.Theme theme, int i2) {
        TypedArray obtainStyledAttributes = theme.obtainStyledAttributes(i2, R.styleable.MaterialTextAppearance);
        int d4 = d(getContext(), obtainStyledAttributes, R.styleable.MaterialTextAppearance_android_lineHeight, R.styleable.MaterialTextAppearance_lineHeight);
        obtainStyledAttributes.recycle();
        if (d4 >= 0) {
            setLineHeight(d4);
        }
    }

    private static boolean b(Context context) {
        return b.b(context, R.attr.textAppearanceLineHeightEnabled, true);
    }

    private static int c(@NonNull Resources.Theme theme, @Nullable AttributeSet attributeSet, int i2, int i4) {
        TypedArray obtainStyledAttributes = theme.obtainStyledAttributes(attributeSet, R.styleable.MaterialTextView, i2, i4);
        int resourceId = obtainStyledAttributes.getResourceId(R.styleable.MaterialTextView_android_textAppearance, -1);
        obtainStyledAttributes.recycle();
        return resourceId;
    }

    private static int d(@NonNull Context context, @NonNull TypedArray typedArray, @NonNull @StyleableRes int... iArr) {
        int i2 = -1;
        for (int i4 = 0; i4 < iArr.length && i2 < 0; i4++) {
            i2 = c.d(context, typedArray, iArr[i4], -1);
        }
        return i2;
    }

    private static boolean e(@NonNull Context context, @NonNull Resources.Theme theme, @Nullable AttributeSet attributeSet, int i2, int i4) {
        TypedArray obtainStyledAttributes = theme.obtainStyledAttributes(attributeSet, R.styleable.MaterialTextView, i2, i4);
        int d4 = d(context, obtainStyledAttributes, R.styleable.MaterialTextView_android_lineHeight, R.styleable.MaterialTextView_lineHeight);
        obtainStyledAttributes.recycle();
        return d4 != -1;
    }

    @Override // androidx.appcompat.widget.AppCompatTextView, android.widget.TextView
    public void setTextAppearance(@NonNull Context context, int i2) {
        super.setTextAppearance(context, i2);
        if (b(context)) {
            a(context.getTheme(), i2);
        }
    }

    public MaterialTextView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 16842884);
    }

    public MaterialTextView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i2) {
        this(context, attributeSet, i2, 0);
    }

    public MaterialTextView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i2, int i4) {
        super(a.c(context, attributeSet, i2, i4), attributeSet, i2);
        int c4;
        Context context2 = getContext();
        if (b(context2)) {
            Resources.Theme theme = context2.getTheme();
            if (e(context2, theme, attributeSet, i2, i4) || (c4 = c(theme, attributeSet, i2, i4)) == -1) {
                return;
            }
            a(theme, c4);
        }
    }
}
