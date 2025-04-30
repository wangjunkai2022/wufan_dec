package com.google.android.material.appbar;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Pair;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.appcompat.widget.Toolbar;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.ViewCompat;
import com.google.android.material.R;
import com.google.android.material.internal.p;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.i;
/* loaded from: classes2.dex */
public class MaterialToolbar extends Toolbar {
    private static final int DEF_STYLE_RES = R.style.Widget_MaterialComponents_Toolbar;
    private static final ImageView.ScaleType[] LOGO_SCALE_TYPE_ARRAY = {ImageView.ScaleType.MATRIX, ImageView.ScaleType.FIT_XY, ImageView.ScaleType.FIT_START, ImageView.ScaleType.FIT_CENTER, ImageView.ScaleType.FIT_END, ImageView.ScaleType.CENTER, ImageView.ScaleType.CENTER_CROP, ImageView.ScaleType.CENTER_INSIDE};
    @Nullable
    private Boolean logoAdjustViewBounds;
    @Nullable
    private ImageView.ScaleType logoScaleType;
    @Nullable
    private Integer navigationIconTint;
    private boolean subtitleCentered;
    private boolean titleCentered;

    public MaterialToolbar(@NonNull Context context) {
        this(context, null);
    }

    private Pair<Integer, Integer> calculateTitleBoundLimits(@Nullable TextView textView, @Nullable TextView textView2) {
        int measuredWidth = getMeasuredWidth();
        int i2 = measuredWidth / 2;
        int paddingLeft = getPaddingLeft();
        int paddingRight = measuredWidth - getPaddingRight();
        for (int i4 = 0; i4 < getChildCount(); i4++) {
            View childAt = getChildAt(i4);
            if (childAt.getVisibility() != 8 && childAt != textView && childAt != textView2) {
                if (childAt.getRight() < i2 && childAt.getRight() > paddingLeft) {
                    paddingLeft = childAt.getRight();
                }
                if (childAt.getLeft() > i2 && childAt.getLeft() < paddingRight) {
                    paddingRight = childAt.getLeft();
                }
            }
        }
        return new Pair<>(Integer.valueOf(paddingLeft), Integer.valueOf(paddingRight));
    }

    private void initBackground(Context context) {
        Drawable background = getBackground();
        if (background == null || (background instanceof ColorDrawable)) {
            MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable();
            materialShapeDrawable.o0(ColorStateList.valueOf(background != null ? ((ColorDrawable) background).getColor() : 0));
            materialShapeDrawable.Z(context);
            materialShapeDrawable.n0(ViewCompat.getElevation(this));
            ViewCompat.setBackground(this, materialShapeDrawable);
        }
    }

    private void layoutTitleCenteredHorizontally(View view, Pair<Integer, Integer> pair) {
        int measuredWidth = getMeasuredWidth();
        int measuredWidth2 = view.getMeasuredWidth();
        int i2 = (measuredWidth / 2) - (measuredWidth2 / 2);
        int i4 = measuredWidth2 + i2;
        int max = Math.max(Math.max(((Integer) pair.first).intValue() - i2, 0), Math.max(i4 - ((Integer) pair.second).intValue(), 0));
        if (max > 0) {
            i2 += max;
            i4 -= max;
            view.measure(View.MeasureSpec.makeMeasureSpec(i4 - i2, 1073741824), view.getMeasuredHeightAndState());
        }
        view.layout(i2, view.getTop(), i4, view.getBottom());
    }

    private void maybeCenterTitleViews() {
        if (this.titleCentered || this.subtitleCentered) {
            TextView i2 = p.i(this);
            TextView g4 = p.g(this);
            if (i2 == null && g4 == null) {
                return;
            }
            Pair<Integer, Integer> calculateTitleBoundLimits = calculateTitleBoundLimits(i2, g4);
            if (this.titleCentered && i2 != null) {
                layoutTitleCenteredHorizontally(i2, calculateTitleBoundLimits);
            }
            if (!this.subtitleCentered || g4 == null) {
                return;
            }
            layoutTitleCenteredHorizontally(g4, calculateTitleBoundLimits);
        }
    }

    @Nullable
    private Drawable maybeTintNavigationIcon(@Nullable Drawable drawable) {
        if (drawable == null || this.navigationIconTint == null) {
            return drawable;
        }
        Drawable wrap = DrawableCompat.wrap(drawable.mutate());
        DrawableCompat.setTint(wrap, this.navigationIconTint.intValue());
        return wrap;
    }

    private void updateLogoImageView() {
        ImageView d4 = p.d(this);
        if (d4 != null) {
            Boolean bool = this.logoAdjustViewBounds;
            if (bool != null) {
                d4.setAdjustViewBounds(bool.booleanValue());
            }
            ImageView.ScaleType scaleType = this.logoScaleType;
            if (scaleType != null) {
                d4.setScaleType(scaleType);
            }
        }
    }

    @Nullable
    public ImageView.ScaleType getLogoScaleType() {
        return this.logoScaleType;
    }

    @Nullable
    @ColorInt
    public Integer getNavigationIconTint() {
        return this.navigationIconTint;
    }

    public boolean isLogoAdjustViewBounds() {
        Boolean bool = this.logoAdjustViewBounds;
        return bool != null && bool.booleanValue();
    }

    public boolean isSubtitleCentered() {
        return this.subtitleCentered;
    }

    public boolean isTitleCentered() {
        return this.titleCentered;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        i.e(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.widget.Toolbar, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z3, int i2, int i4, int i5, int i6) {
        super.onLayout(z3, i2, i4, i5, i6);
        maybeCenterTitleViews();
        updateLogoImageView();
    }

    @Override // android.view.View
    @RequiresApi(21)
    public void setElevation(float f4) {
        super.setElevation(f4);
        i.d(this, f4);
    }

    public void setLogoAdjustViewBounds(boolean z3) {
        Boolean bool = this.logoAdjustViewBounds;
        if (bool == null || bool.booleanValue() != z3) {
            this.logoAdjustViewBounds = Boolean.valueOf(z3);
            requestLayout();
        }
    }

    public void setLogoScaleType(@NonNull ImageView.ScaleType scaleType) {
        if (this.logoScaleType != scaleType) {
            this.logoScaleType = scaleType;
            requestLayout();
        }
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setNavigationIcon(@Nullable Drawable drawable) {
        super.setNavigationIcon(maybeTintNavigationIcon(drawable));
    }

    public void setNavigationIconTint(@ColorInt int i2) {
        this.navigationIconTint = Integer.valueOf(i2);
        Drawable navigationIcon = getNavigationIcon();
        if (navigationIcon != null) {
            setNavigationIcon(navigationIcon);
        }
    }

    public void setSubtitleCentered(boolean z3) {
        if (this.subtitleCentered != z3) {
            this.subtitleCentered = z3;
            requestLayout();
        }
    }

    public void setTitleCentered(boolean z3) {
        if (this.titleCentered != z3) {
            this.titleCentered = z3;
            requestLayout();
        }
    }

    public MaterialToolbar(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.toolbarStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public MaterialToolbar(@androidx.annotation.NonNull android.content.Context r8, @androidx.annotation.Nullable android.util.AttributeSet r9, int r10) {
        /*
            r7 = this;
            int r4 = com.google.android.material.appbar.MaterialToolbar.DEF_STYLE_RES
            android.content.Context r8 = com.google.android.material.theme.overlay.a.c(r8, r9, r10, r4)
            r7.<init>(r8, r9, r10)
            android.content.Context r8 = r7.getContext()
            int[] r2 = com.google.android.material.R.styleable.MaterialToolbar
            r6 = 0
            int[] r5 = new int[r6]
            r0 = r8
            r1 = r9
            r3 = r10
            android.content.res.TypedArray r9 = com.google.android.material.internal.o.j(r0, r1, r2, r3, r4, r5)
            int r10 = com.google.android.material.R.styleable.MaterialToolbar_navigationIconTint
            boolean r0 = r9.hasValue(r10)
            r1 = -1
            if (r0 == 0) goto L29
            int r10 = r9.getColor(r10, r1)
            r7.setNavigationIconTint(r10)
        L29:
            int r10 = com.google.android.material.R.styleable.MaterialToolbar_titleCentered
            boolean r10 = r9.getBoolean(r10, r6)
            r7.titleCentered = r10
            int r10 = com.google.android.material.R.styleable.MaterialToolbar_subtitleCentered
            boolean r10 = r9.getBoolean(r10, r6)
            r7.subtitleCentered = r10
            int r10 = com.google.android.material.R.styleable.MaterialToolbar_logoScaleType
            int r10 = r9.getInt(r10, r1)
            if (r10 < 0) goto L4a
            android.widget.ImageView$ScaleType[] r0 = com.google.android.material.appbar.MaterialToolbar.LOGO_SCALE_TYPE_ARRAY
            int r1 = r0.length
            if (r10 >= r1) goto L4a
            r10 = r0[r10]
            r7.logoScaleType = r10
        L4a:
            int r10 = com.google.android.material.R.styleable.MaterialToolbar_logoAdjustViewBounds
            boolean r0 = r9.hasValue(r10)
            if (r0 == 0) goto L5c
            boolean r10 = r9.getBoolean(r10, r6)
            java.lang.Boolean r10 = java.lang.Boolean.valueOf(r10)
            r7.logoAdjustViewBounds = r10
        L5c:
            r9.recycle()
            r7.initBackground(r8)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.appbar.MaterialToolbar.<init>(android.content.Context, android.util.AttributeSet, int):void");
    }
}
