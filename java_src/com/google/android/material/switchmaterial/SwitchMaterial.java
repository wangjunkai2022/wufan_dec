package com.google.android.material.switchmaterial;

import android.content.Context;
import android.content.res.ColorStateList;
import android.util.AttributeSet;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.SwitchCompat;
import com.google.android.material.R;
import com.google.android.material.color.m;
import com.google.android.material.elevation.a;
import com.google.android.material.internal.w;
/* loaded from: classes2.dex */
public class SwitchMaterial extends SwitchCompat {
    private static final int H0 = R.style.Widget_MaterialComponents_CompoundButton_Switch;
    private static final int[][] I0 = {new int[]{16842910, 16842912}, new int[]{16842910, -16842912}, new int[]{-16842910, 16842912}, new int[]{-16842910, -16842912}};
    @NonNull
    private final a D0;
    @Nullable
    private ColorStateList E0;
    @Nullable
    private ColorStateList F0;
    private boolean G0;

    public SwitchMaterial(@NonNull Context context) {
        this(context, null);
    }

    private ColorStateList getMaterialThemeColorsThumbTintList() {
        if (this.E0 == null) {
            int d4 = m.d(this, R.attr.colorSurface);
            int d5 = m.d(this, R.attr.colorControlActivated);
            float dimension = getResources().getDimension(R.dimen.mtrl_switch_thumb_elevation);
            if (this.D0.l()) {
                dimension += w.j(this);
            }
            int e4 = this.D0.e(d4, dimension);
            int[][] iArr = I0;
            int[] iArr2 = new int[iArr.length];
            iArr2[0] = m.m(d4, d5, 1.0f);
            iArr2[1] = e4;
            iArr2[2] = m.m(d4, d5, 0.38f);
            iArr2[3] = e4;
            this.E0 = new ColorStateList(iArr, iArr2);
        }
        return this.E0;
    }

    private ColorStateList getMaterialThemeColorsTrackTintList() {
        if (this.F0 == null) {
            int[][] iArr = I0;
            int[] iArr2 = new int[iArr.length];
            int d4 = m.d(this, R.attr.colorSurface);
            int d5 = m.d(this, R.attr.colorControlActivated);
            int d6 = m.d(this, R.attr.colorOnSurface);
            iArr2[0] = m.m(d4, d5, 0.54f);
            iArr2[1] = m.m(d4, d6, 0.32f);
            iArr2[2] = m.m(d4, d5, 0.12f);
            iArr2[3] = m.m(d4, d6, 0.12f);
            this.F0 = new ColorStateList(iArr, iArr2);
        }
        return this.F0;
    }

    @Override // android.widget.TextView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.G0 && getThumbTintList() == null) {
            setThumbTintList(getMaterialThemeColorsThumbTintList());
        }
        if (this.G0 && getTrackTintList() == null) {
            setTrackTintList(getMaterialThemeColorsTrackTintList());
        }
    }

    public boolean p() {
        return this.G0;
    }

    public void setUseMaterialThemeColors(boolean z3) {
        this.G0 = z3;
        if (z3) {
            setThumbTintList(getMaterialThemeColorsThumbTintList());
            setTrackTintList(getMaterialThemeColorsTrackTintList());
            return;
        }
        setThumbTintList(null);
        setTrackTintList(null);
    }

    public SwitchMaterial(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.switchStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public SwitchMaterial(@androidx.annotation.NonNull android.content.Context r7, @androidx.annotation.Nullable android.util.AttributeSet r8, int r9) {
        /*
            r6 = this;
            int r4 = com.google.android.material.switchmaterial.SwitchMaterial.H0
            android.content.Context r7 = com.google.android.material.theme.overlay.a.c(r7, r8, r9, r4)
            r6.<init>(r7, r8, r9)
            android.content.Context r0 = r6.getContext()
            com.google.android.material.elevation.a r7 = new com.google.android.material.elevation.a
            r7.<init>(r0)
            r6.D0 = r7
            int[] r2 = com.google.android.material.R.styleable.SwitchMaterial
            r7 = 0
            int[] r5 = new int[r7]
            r1 = r8
            r3 = r9
            android.content.res.TypedArray r8 = com.google.android.material.internal.o.j(r0, r1, r2, r3, r4, r5)
            int r9 = com.google.android.material.R.styleable.SwitchMaterial_useMaterialThemeColors
            boolean r7 = r8.getBoolean(r9, r7)
            r6.G0 = r7
            r8.recycle()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.switchmaterial.SwitchMaterial.<init>(android.content.Context, android.util.AttributeSet, int):void");
    }
}
