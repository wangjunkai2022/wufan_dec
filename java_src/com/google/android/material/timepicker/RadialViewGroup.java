package com.google.android.material.timepicker;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.ColorInt;
import androidx.annotation.Dimension;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.ConstraintSet;
import androidx.core.view.ViewCompat;
import com.google.android.material.R;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.k;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class RadialViewGroup extends ConstraintLayout {
    private static final String J = "skip";
    private final Runnable G;
    private int H;
    private MaterialShapeDrawable I;

    /* loaded from: classes2.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            RadialViewGroup.this.y();
        }
    }

    public RadialViewGroup(@NonNull Context context) {
        this(context, null);
    }

    private Drawable u() {
        MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable();
        this.I = materialShapeDrawable;
        materialShapeDrawable.l0(new k(0.5f));
        this.I.o0(ColorStateList.valueOf(-1));
        return this.I;
    }

    private static boolean x(View view) {
        return J.equals(view.getTag());
    }

    private void z() {
        Handler handler = getHandler();
        if (handler != null) {
            handler.removeCallbacks(this.G);
            handler.post(this.G);
        }
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i2, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i2, layoutParams);
        if (view.getId() == -1) {
            view.setId(ViewCompat.generateViewId());
        }
        z();
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        y();
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup
    public void onViewRemoved(View view) {
        super.onViewRemoved(view);
        z();
    }

    @Override // android.view.View
    public void setBackgroundColor(@ColorInt int i2) {
        this.I.o0(ColorStateList.valueOf(i2));
    }

    @Dimension
    public int v() {
        return this.H;
    }

    public void w(@Dimension int i2) {
        this.H = i2;
        y();
    }

    protected void y() {
        int childCount = getChildCount();
        int i2 = 1;
        for (int i4 = 0; i4 < childCount; i4++) {
            if (x(getChildAt(i4))) {
                i2++;
            }
        }
        ConstraintSet constraintSet = new ConstraintSet();
        constraintSet.clone(this);
        float f4 = 0.0f;
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            int id = childAt.getId();
            int i6 = R.id.circle_center;
            if (id != i6 && !x(childAt)) {
                constraintSet.constrainCircle(childAt.getId(), i6, this.H, f4);
                f4 += 360.0f / (childCount - i2);
            }
        }
        constraintSet.applyTo(this);
    }

    public RadialViewGroup(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public RadialViewGroup(@NonNull Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        LayoutInflater.from(context).inflate(R.layout.material_radial_view_group, this);
        ViewCompat.setBackground(this, u());
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.RadialViewGroup, i2, 0);
        this.H = obtainStyledAttributes.getDimensionPixelSize(R.styleable.RadialViewGroup_materialCircleRadius, 0);
        this.G = new a();
        obtainStyledAttributes.recycle();
    }
}
