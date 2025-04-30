package com.join.mgps.customview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class MyFlowLayout extends ViewGroup {

    /* renamed from: a  reason: collision with root package name */
    private List<List<View>> f45805a;

    /* renamed from: b  reason: collision with root package name */
    private List<Integer> f45806b;

    public MyFlowLayout(Context context) {
        this(context, null);
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return super.generateDefaultLayoutParams();
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new ViewGroup.MarginLayoutParams(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z3, int i2, int i4, int i5, int i6) {
        this.f45805a.clear();
        this.f45806b.clear();
        int width = getWidth();
        ArrayList arrayList = new ArrayList();
        int childCount = getChildCount();
        int i7 = 0;
        int i8 = 0;
        for (int i9 = 0; i9 < childCount; i9++) {
            View childAt = getChildAt(i9);
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) childAt.getLayoutParams();
            int measuredWidth = childAt.getMeasuredWidth() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin;
            int measuredHeight = childAt.getMeasuredHeight() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
            if (measuredWidth + i8 > width - (getPaddingLeft() + getPaddingRight())) {
                this.f45806b.add(Integer.valueOf(i7));
                this.f45805a.add(arrayList);
                arrayList = new ArrayList();
                i7 = measuredHeight;
                i8 = 0;
            }
            i8 += measuredWidth;
            i7 = Math.max(i7, measuredHeight);
            arrayList.add(childAt);
        }
        this.f45806b.add(Integer.valueOf(i7));
        this.f45805a.add(arrayList);
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int size = this.f45805a.size();
        for (int i10 = 0; i10 < size; i10++) {
            List<View> list = this.f45805a.get(i10);
            int intValue = this.f45806b.get(i10).intValue();
            for (int i11 = 0; i11 < list.size(); i11++) {
                View view = list.get(i11);
                if (view.getVisibility() != 8) {
                    ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
                    int i12 = marginLayoutParams2.leftMargin + paddingLeft;
                    int i13 = marginLayoutParams2.topMargin + paddingTop;
                    view.layout(i12, i13, view.getMeasuredWidth() + i12, view.getMeasuredHeight() + i13);
                    paddingLeft += view.getMeasuredWidth() + marginLayoutParams2.leftMargin + marginLayoutParams2.rightMargin;
                }
            }
            paddingLeft = getPaddingLeft();
            paddingTop += intValue;
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i2, int i4) {
        int i5;
        int i6;
        super.onMeasure(i2, i4);
        int size = View.MeasureSpec.getSize(i2);
        int mode = View.MeasureSpec.getMode(i2);
        int size2 = View.MeasureSpec.getSize(i4);
        int mode2 = View.MeasureSpec.getMode(i4);
        int childCount = getChildCount();
        int i7 = 0;
        int i8 = 0;
        int i9 = 0;
        int i10 = 0;
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = getChildAt(i11);
            measureChild(childAt, i2, i4);
            if (childAt.getLayoutParams() instanceof ViewGroup.MarginLayoutParams) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) childAt.getLayoutParams();
                i6 = childAt.getMeasuredWidth() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin;
                i5 = childAt.getMeasuredHeight() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
            } else {
                i5 = 0;
                i6 = 0;
            }
            int i12 = i9 + i6;
            if (i12 > size - (getPaddingLeft() + getPaddingRight())) {
                i7 = Math.max(i7, i9);
                i8 += i10;
                i10 = i5;
                i9 = i6;
            } else {
                i10 = Math.max(i10, i5);
                i9 = i12;
            }
            if (i11 == childCount - 1) {
                i8 += i10;
                i7 = Math.max(i7, i9);
            }
        }
        int paddingLeft = i7 + getPaddingLeft() + getPaddingRight();
        int paddingTop = i8 + getPaddingTop() + getPaddingBottom();
        if (mode != 1073741824) {
            size = paddingLeft;
        }
        if (mode2 != 1073741824) {
            size2 = paddingTop;
        }
        setMeasuredDimension(size, size2);
    }

    public MyFlowLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public MyFlowLayout(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f45805a = new ArrayList();
        this.f45806b = new ArrayList();
    }
}
