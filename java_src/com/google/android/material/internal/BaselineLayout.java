package com.google.android.material.internal;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
/* loaded from: classes2.dex */
public class BaselineLayout extends ViewGroup {

    /* renamed from: a  reason: collision with root package name */
    private int f15036a;

    public BaselineLayout(Context context) {
        super(context, null, 0);
        this.f15036a = -1;
    }

    @Override // android.view.View
    public int getBaseline() {
        return this.f15036a;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z3, int i2, int i4, int i5, int i6) {
        int childCount = getChildCount();
        int paddingLeft = getPaddingLeft();
        int paddingRight = ((i5 - i2) - getPaddingRight()) - paddingLeft;
        int paddingTop = getPaddingTop();
        for (int i7 = 0; i7 < childCount; i7++) {
            View childAt = getChildAt(i7);
            if (childAt.getVisibility() != 8) {
                int measuredWidth = childAt.getMeasuredWidth();
                int measuredHeight = childAt.getMeasuredHeight();
                int i8 = ((paddingRight - measuredWidth) / 2) + paddingLeft;
                int baseline = (this.f15036a == -1 || childAt.getBaseline() == -1) ? paddingTop : (this.f15036a + paddingTop) - childAt.getBaseline();
                childAt.layout(i8, baseline, measuredWidth + i8, measuredHeight + baseline);
            }
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i2, int i4) {
        int childCount = getChildCount();
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        int i8 = -1;
        int i9 = -1;
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            if (childAt.getVisibility() != 8) {
                measureChild(childAt, i2, i4);
                int baseline = childAt.getBaseline();
                if (baseline != -1) {
                    i8 = Math.max(i8, baseline);
                    i9 = Math.max(i9, childAt.getMeasuredHeight() - baseline);
                }
                i6 = Math.max(i6, childAt.getMeasuredWidth());
                i5 = Math.max(i5, childAt.getMeasuredHeight());
                i7 = View.combineMeasuredStates(i7, childAt.getMeasuredState());
            }
        }
        if (i8 != -1) {
            i5 = Math.max(i5, Math.max(i9, getPaddingBottom()) + i8);
            this.f15036a = i8;
        }
        setMeasuredDimension(View.resolveSizeAndState(Math.max(i6, getSuggestedMinimumWidth()), i2, i7), View.resolveSizeAndState(Math.max(i5, getSuggestedMinimumHeight()), i4, i7 << 16));
    }

    public BaselineLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f15036a = -1;
    }

    public BaselineLayout(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f15036a = -1;
    }
}
