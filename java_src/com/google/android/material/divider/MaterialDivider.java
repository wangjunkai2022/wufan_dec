package com.google.android.material.divider;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.DimenRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.core.content.ContextCompat;
import androidx.core.view.ViewCompat;
import com.google.android.material.R;
import com.google.android.material.shape.MaterialShapeDrawable;
/* loaded from: classes2.dex */
public class MaterialDivider extends View {

    /* renamed from: f  reason: collision with root package name */
    private static final int f14846f = R.style.Widget_MaterialComponents_MaterialDivider;
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final MaterialShapeDrawable f14847a;

    /* renamed from: b  reason: collision with root package name */
    private int f14848b;
    @ColorInt

    /* renamed from: c  reason: collision with root package name */
    private int f14849c;

    /* renamed from: d  reason: collision with root package name */
    private int f14850d;

    /* renamed from: e  reason: collision with root package name */
    private int f14851e;

    public MaterialDivider(@NonNull Context context) {
        this(context, null);
    }

    public int getDividerColor() {
        return this.f14849c;
    }

    @Px
    public int getDividerInsetEnd() {
        return this.f14851e;
    }

    @Px
    public int getDividerInsetStart() {
        return this.f14850d;
    }

    public int getDividerThickness() {
        return this.f14848b;
    }

    @Override // android.view.View
    protected void onDraw(@NonNull Canvas canvas) {
        int width;
        int i2;
        super.onDraw(canvas);
        boolean z3 = ViewCompat.getLayoutDirection(this) == 1;
        int i4 = z3 ? this.f14851e : this.f14850d;
        if (z3) {
            width = getWidth();
            i2 = this.f14850d;
        } else {
            width = getWidth();
            i2 = this.f14851e;
        }
        this.f14847a.setBounds(i4, 0, width - i2, getBottom() - getTop());
        this.f14847a.draw(canvas);
    }

    @Override // android.view.View
    protected void onMeasure(int i2, int i4) {
        super.onMeasure(i2, i4);
        int mode = View.MeasureSpec.getMode(i4);
        int measuredHeight = getMeasuredHeight();
        if (mode == Integer.MIN_VALUE || mode == 0) {
            int i5 = this.f14848b;
            if (i5 > 0 && measuredHeight != i5) {
                measuredHeight = i5;
            }
            setMeasuredDimension(getMeasuredWidth(), measuredHeight);
        }
    }

    public void setDividerColor(@ColorInt int i2) {
        if (this.f14849c != i2) {
            this.f14849c = i2;
            this.f14847a.o0(ColorStateList.valueOf(i2));
            invalidate();
        }
    }

    public void setDividerColorResource(@ColorRes int i2) {
        setDividerColor(ContextCompat.getColor(getContext(), i2));
    }

    public void setDividerInsetEnd(@Px int i2) {
        this.f14851e = i2;
    }

    public void setDividerInsetEndResource(@DimenRes int i2) {
        setDividerInsetEnd(getContext().getResources().getDimensionPixelOffset(i2));
    }

    public void setDividerInsetStart(@Px int i2) {
        this.f14850d = i2;
    }

    public void setDividerInsetStartResource(@DimenRes int i2) {
        setDividerInsetStart(getContext().getResources().getDimensionPixelOffset(i2));
    }

    public void setDividerThickness(@Px int i2) {
        if (this.f14848b != i2) {
            this.f14848b = i2;
            requestLayout();
        }
    }

    public void setDividerThicknessResource(@DimenRes int i2) {
        setDividerThickness(getContext().getResources().getDimensionPixelSize(i2));
    }

    public MaterialDivider(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.materialDividerStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public MaterialDivider(@androidx.annotation.NonNull android.content.Context r8, @androidx.annotation.Nullable android.util.AttributeSet r9, int r10) {
        /*
            r7 = this;
            int r4 = com.google.android.material.divider.MaterialDivider.f14846f
            android.content.Context r8 = com.google.android.material.theme.overlay.a.c(r8, r9, r10, r4)
            r7.<init>(r8, r9, r10)
            android.content.Context r8 = r7.getContext()
            com.google.android.material.shape.MaterialShapeDrawable r0 = new com.google.android.material.shape.MaterialShapeDrawable
            r0.<init>()
            r7.f14847a = r0
            int[] r2 = com.google.android.material.R.styleable.MaterialDivider
            r6 = 0
            int[] r5 = new int[r6]
            r0 = r8
            r1 = r9
            r3 = r10
            android.content.res.TypedArray r9 = com.google.android.material.internal.o.j(r0, r1, r2, r3, r4, r5)
            int r10 = com.google.android.material.R.styleable.MaterialDivider_dividerThickness
            android.content.res.Resources r0 = r7.getResources()
            int r1 = com.google.android.material.R.dimen.material_divider_thickness
            int r0 = r0.getDimensionPixelSize(r1)
            int r10 = r9.getDimensionPixelSize(r10, r0)
            r7.f14848b = r10
            int r10 = com.google.android.material.R.styleable.MaterialDivider_dividerInsetStart
            int r10 = r9.getDimensionPixelOffset(r10, r6)
            r7.f14850d = r10
            int r10 = com.google.android.material.R.styleable.MaterialDivider_dividerInsetEnd
            int r10 = r9.getDimensionPixelOffset(r10, r6)
            r7.f14851e = r10
            int r10 = com.google.android.material.R.styleable.MaterialDivider_dividerColor
            android.content.res.ColorStateList r8 = com.google.android.material.resources.c.a(r8, r9, r10)
            int r8 = r8.getDefaultColor()
            r7.setDividerColor(r8)
            r9.recycle()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.divider.MaterialDivider.<init>(android.content.Context, android.util.AttributeSet, int):void");
    }
}
