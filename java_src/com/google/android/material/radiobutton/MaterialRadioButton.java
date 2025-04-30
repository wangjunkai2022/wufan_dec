package com.google.android.material.radiobutton;

import android.content.Context;
import android.content.res.ColorStateList;
import android.util.AttributeSet;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatRadioButton;
import androidx.core.widget.CompoundButtonCompat;
import com.google.android.material.R;
import com.google.android.material.color.m;
/* loaded from: classes2.dex */
public class MaterialRadioButton extends AppCompatRadioButton {

    /* renamed from: g  reason: collision with root package name */
    private static final int f15477g = R.style.Widget_MaterialComponents_CompoundButton_RadioButton;

    /* renamed from: h  reason: collision with root package name */
    private static final int[][] f15478h = {new int[]{16842910, 16842912}, new int[]{16842910, -16842912}, new int[]{-16842910, 16842912}, new int[]{-16842910, -16842912}};
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private ColorStateList f15479e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f15480f;

    public MaterialRadioButton(@NonNull Context context) {
        this(context, null);
    }

    private ColorStateList getMaterialThemeColorsTintList() {
        if (this.f15479e == null) {
            int d4 = m.d(this, R.attr.colorControlActivated);
            int d5 = m.d(this, R.attr.colorOnSurface);
            int d6 = m.d(this, R.attr.colorSurface);
            int[][] iArr = f15478h;
            int[] iArr2 = new int[iArr.length];
            iArr2[0] = m.m(d6, d4, 1.0f);
            iArr2[1] = m.m(d6, d5, 0.54f);
            iArr2[2] = m.m(d6, d5, 0.38f);
            iArr2[3] = m.m(d6, d5, 0.38f);
            this.f15479e = new ColorStateList(iArr, iArr2);
        }
        return this.f15479e;
    }

    public boolean a() {
        return this.f15480f;
    }

    @Override // android.widget.TextView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f15480f && CompoundButtonCompat.getButtonTintList(this) == null) {
            setUseMaterialThemeColors(true);
        }
    }

    public void setUseMaterialThemeColors(boolean z3) {
        this.f15480f = z3;
        if (z3) {
            CompoundButtonCompat.setButtonTintList(this, getMaterialThemeColorsTintList());
        } else {
            CompoundButtonCompat.setButtonTintList(this, null);
        }
    }

    public MaterialRadioButton(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.radioButtonStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public MaterialRadioButton(@androidx.annotation.NonNull android.content.Context r8, @androidx.annotation.Nullable android.util.AttributeSet r9, int r10) {
        /*
            r7 = this;
            int r4 = com.google.android.material.radiobutton.MaterialRadioButton.f15477g
            android.content.Context r8 = com.google.android.material.theme.overlay.a.c(r8, r9, r10, r4)
            r7.<init>(r8, r9, r10)
            android.content.Context r8 = r7.getContext()
            int[] r2 = com.google.android.material.R.styleable.MaterialRadioButton
            r6 = 0
            int[] r5 = new int[r6]
            r0 = r8
            r1 = r9
            r3 = r10
            android.content.res.TypedArray r9 = com.google.android.material.internal.o.j(r0, r1, r2, r3, r4, r5)
            int r10 = com.google.android.material.R.styleable.MaterialRadioButton_buttonTint
            boolean r0 = r9.hasValue(r10)
            if (r0 == 0) goto L28
            android.content.res.ColorStateList r8 = com.google.android.material.resources.c.a(r8, r9, r10)
            androidx.core.widget.CompoundButtonCompat.setButtonTintList(r7, r8)
        L28:
            int r8 = com.google.android.material.R.styleable.MaterialRadioButton_useMaterialThemeColors
            boolean r8 = r9.getBoolean(r8, r6)
            r7.f15480f = r8
            r9.recycle()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.radiobutton.MaterialRadioButton.<init>(android.content.Context, android.util.AttributeSet, int):void");
    }
}
