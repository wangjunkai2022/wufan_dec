package com.google.android.material.internal;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.view.MarginLayoutParamsCompat;
import androidx.core.view.ViewCompat;
import com.google.android.material.R;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes2.dex */
public class FlowLayout extends ViewGroup {

    /* renamed from: a  reason: collision with root package name */
    private int f15043a;

    /* renamed from: b  reason: collision with root package name */
    private int f15044b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f15045c;

    /* renamed from: d  reason: collision with root package name */
    private int f15046d;

    public FlowLayout(@NonNull Context context) {
        this(context, null);
    }

    private static int a(int i2, int i4, int i5) {
        if (i4 != Integer.MIN_VALUE) {
            return i4 != 1073741824 ? i5 : i2;
        }
        return Math.min(i5, i2);
    }

    private void d(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, R.styleable.FlowLayout, 0, 0);
        this.f15043a = obtainStyledAttributes.getDimensionPixelSize(R.styleable.FlowLayout_lineSpacing, 0);
        this.f15044b = obtainStyledAttributes.getDimensionPixelSize(R.styleable.FlowLayout_itemSpacing, 0);
        obtainStyledAttributes.recycle();
    }

    public int b(@NonNull View view) {
        Object tag = view.getTag(R.id.row_index_key);
        if (tag instanceof Integer) {
            return ((Integer) tag).intValue();
        }
        return -1;
    }

    public boolean c() {
        return this.f15045c;
    }

    protected int getItemSpacing() {
        return this.f15044b;
    }

    protected int getLineSpacing() {
        return this.f15043a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int getRowCount() {
        return this.f15046d;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z3, int i2, int i4, int i5, int i6) {
        int i7;
        int i8;
        if (getChildCount() == 0) {
            this.f15046d = 0;
            return;
        }
        this.f15046d = 1;
        boolean z4 = ViewCompat.getLayoutDirection(this) == 1;
        int paddingRight = z4 ? getPaddingRight() : getPaddingLeft();
        int paddingLeft = z4 ? getPaddingLeft() : getPaddingRight();
        int paddingTop = getPaddingTop();
        int i9 = (i5 - i2) - paddingLeft;
        int i10 = paddingRight;
        int i11 = paddingTop;
        for (int i12 = 0; i12 < getChildCount(); i12++) {
            View childAt = getChildAt(i12);
            if (childAt.getVisibility() == 8) {
                childAt.setTag(R.id.row_index_key, -1);
            } else {
                ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
                if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                    ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                    i8 = MarginLayoutParamsCompat.getMarginStart(marginLayoutParams);
                    i7 = MarginLayoutParamsCompat.getMarginEnd(marginLayoutParams);
                } else {
                    i7 = 0;
                    i8 = 0;
                }
                int measuredWidth = i10 + i8 + childAt.getMeasuredWidth();
                if (!this.f15045c && measuredWidth > i9) {
                    i11 = this.f15043a + paddingTop;
                    this.f15046d++;
                    i10 = paddingRight;
                }
                childAt.setTag(R.id.row_index_key, Integer.valueOf(this.f15046d - 1));
                int i13 = i10 + i8;
                int measuredWidth2 = childAt.getMeasuredWidth() + i13;
                int measuredHeight = childAt.getMeasuredHeight() + i11;
                if (z4) {
                    childAt.layout(i9 - measuredWidth2, i11, (i9 - i10) - i8, measuredHeight);
                } else {
                    childAt.layout(i13, i11, measuredWidth2, measuredHeight);
                }
                i10 += i8 + i7 + childAt.getMeasuredWidth() + this.f15044b;
                paddingTop = measuredHeight;
            }
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i2, int i4) {
        int i5;
        int i6;
        int i7;
        int size = View.MeasureSpec.getSize(i2);
        int mode = View.MeasureSpec.getMode(i2);
        int size2 = View.MeasureSpec.getSize(i4);
        int mode2 = View.MeasureSpec.getMode(i4);
        int i8 = (mode == Integer.MIN_VALUE || mode == 1073741824) ? size : Integer.MAX_VALUE;
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingRight = i8 - getPaddingRight();
        int i9 = paddingTop;
        int i10 = 0;
        for (int i11 = 0; i11 < getChildCount(); i11++) {
            View childAt = getChildAt(i11);
            if (childAt.getVisibility() != 8) {
                measureChild(childAt, i2, i4);
                ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
                if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                    ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                    i5 = marginLayoutParams.leftMargin + 0;
                    i6 = marginLayoutParams.rightMargin + 0;
                } else {
                    i5 = 0;
                    i6 = 0;
                }
                int i12 = paddingLeft;
                if (paddingLeft + i5 + childAt.getMeasuredWidth() <= paddingRight || c()) {
                    i7 = i12;
                } else {
                    i7 = getPaddingLeft();
                    i9 = this.f15043a + paddingTop;
                }
                int measuredWidth = i7 + i5 + childAt.getMeasuredWidth();
                int measuredHeight = i9 + childAt.getMeasuredHeight();
                if (measuredWidth > i10) {
                    i10 = measuredWidth;
                }
                paddingLeft = i7 + i5 + i6 + childAt.getMeasuredWidth() + this.f15044b;
                if (i11 == getChildCount() - 1) {
                    i10 += i6;
                }
                paddingTop = measuredHeight;
            }
        }
        setMeasuredDimension(a(size, mode, i10 + getPaddingRight()), a(size2, mode2, paddingTop + getPaddingBottom()));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setItemSpacing(int i2) {
        this.f15044b = i2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setLineSpacing(int i2) {
        this.f15043a = i2;
    }

    public void setSingleLine(boolean z3) {
        this.f15045c = z3;
    }

    public FlowLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public FlowLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f15045c = false;
        d(context, attributeSet);
    }

    @TargetApi(21)
    public FlowLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i2, int i4) {
        super(context, attributeSet, i2, i4);
        this.f15045c = false;
        d(context, attributeSet);
    }
}
