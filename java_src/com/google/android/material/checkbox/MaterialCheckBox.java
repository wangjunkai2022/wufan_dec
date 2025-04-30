package com.google.android.material.checkbox;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatCheckBox;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.widget.CompoundButtonCompat;
import com.google.android.material.R;
import com.google.android.material.color.m;
import com.google.android.material.internal.w;
/* loaded from: classes2.dex */
public class MaterialCheckBox extends AppCompatCheckBox {

    /* renamed from: h  reason: collision with root package name */
    private static final int f14384h = R.style.Widget_MaterialComponents_CompoundButton_CheckBox;

    /* renamed from: i  reason: collision with root package name */
    private static final int[][] f14385i = {new int[]{16842910, 16842912}, new int[]{16842910, -16842912}, new int[]{-16842910, 16842912}, new int[]{-16842910, -16842912}};
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private ColorStateList f14386e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f14387f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f14388g;

    public MaterialCheckBox(Context context) {
        this(context, null);
    }

    private ColorStateList getMaterialThemeColorsTintList() {
        if (this.f14386e == null) {
            int[][] iArr = f14385i;
            int[] iArr2 = new int[iArr.length];
            int d4 = m.d(this, R.attr.colorControlActivated);
            int d5 = m.d(this, R.attr.colorSurface);
            int d6 = m.d(this, R.attr.colorOnSurface);
            iArr2[0] = m.m(d5, d4, 1.0f);
            iArr2[1] = m.m(d5, d6, 0.54f);
            iArr2[2] = m.m(d5, d6, 0.38f);
            iArr2[3] = m.m(d5, d6, 0.38f);
            this.f14386e = new ColorStateList(iArr, iArr2);
        }
        return this.f14386e;
    }

    public boolean b() {
        return this.f14388g;
    }

    public boolean c() {
        return this.f14387f;
    }

    @Override // android.widget.TextView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f14387f && CompoundButtonCompat.getButtonTintList(this) == null) {
            setUseMaterialThemeColors(true);
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        Drawable buttonDrawable;
        if (this.f14388g && TextUtils.isEmpty(getText()) && (buttonDrawable = CompoundButtonCompat.getButtonDrawable(this)) != null) {
            int width = ((getWidth() - buttonDrawable.getIntrinsicWidth()) / 2) * (w.k(this) ? -1 : 1);
            int save = canvas.save();
            canvas.translate(width, 0.0f);
            super.onDraw(canvas);
            canvas.restoreToCount(save);
            if (getBackground() != null) {
                Rect bounds = buttonDrawable.getBounds();
                DrawableCompat.setHotspotBounds(getBackground(), bounds.left + width, bounds.top, bounds.right + width, bounds.bottom);
                return;
            }
            return;
        }
        super.onDraw(canvas);
    }

    public void setCenterIfNoTextEnabled(boolean z3) {
        this.f14388g = z3;
    }

    public void setUseMaterialThemeColors(boolean z3) {
        this.f14387f = z3;
        if (z3) {
            CompoundButtonCompat.setButtonTintList(this, getMaterialThemeColorsTintList());
        } else {
            CompoundButtonCompat.setButtonTintList(this, null);
        }
    }

    public MaterialCheckBox(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.checkboxStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public MaterialCheckBox(android.content.Context r8, @androidx.annotation.Nullable android.util.AttributeSet r9, int r10) {
        /*
            r7 = this;
            int r4 = com.google.android.material.checkbox.MaterialCheckBox.f14384h
            android.content.Context r8 = com.google.android.material.theme.overlay.a.c(r8, r9, r10, r4)
            r7.<init>(r8, r9, r10)
            android.content.Context r8 = r7.getContext()
            int[] r2 = com.google.android.material.R.styleable.MaterialCheckBox
            r6 = 0
            int[] r5 = new int[r6]
            r0 = r8
            r1 = r9
            r3 = r10
            android.content.res.TypedArray r9 = com.google.android.material.internal.o.j(r0, r1, r2, r3, r4, r5)
            int r10 = com.google.android.material.R.styleable.MaterialCheckBox_buttonTint
            boolean r0 = r9.hasValue(r10)
            if (r0 == 0) goto L28
            android.content.res.ColorStateList r8 = com.google.android.material.resources.c.a(r8, r9, r10)
            androidx.core.widget.CompoundButtonCompat.setButtonTintList(r7, r8)
        L28:
            int r8 = com.google.android.material.R.styleable.MaterialCheckBox_useMaterialThemeColors
            boolean r8 = r9.getBoolean(r8, r6)
            r7.f14387f = r8
            int r8 = com.google.android.material.R.styleable.MaterialCheckBox_centerIfNoTextEnabled
            r10 = 1
            boolean r8 = r9.getBoolean(r8, r10)
            r7.f14388g = r8
            r9.recycle()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.checkbox.MaterialCheckBox.<init>(android.content.Context, android.util.AttributeSet, int):void");
    }
}
