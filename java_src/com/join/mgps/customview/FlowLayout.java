package com.join.mgps.customview;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.List;
@SuppressLint({"DrawAllocation"})
/* loaded from: classes3.dex */
public class FlowLayout extends ViewGroup {

    /* renamed from: f  reason: collision with root package name */
    private static final String f45459f = "FlowLayout";

    /* renamed from: a  reason: collision with root package name */
    private int f45460a;

    /* renamed from: b  reason: collision with root package name */
    private int f45461b;

    /* renamed from: c  reason: collision with root package name */
    private List<List<View>> f45462c;

    /* renamed from: d  reason: collision with root package name */
    private List<Integer> f45463d;

    /* renamed from: e  reason: collision with root package name */
    private int f45464e;

    public FlowLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f45460a = 0;
        this.f45461b = 0;
        this.f45462c = new ArrayList();
        this.f45463d = new ArrayList();
        this.f45464e = 100;
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new ViewGroup.MarginLayoutParams(-1, -1);
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new ViewGroup.MarginLayoutParams(layoutParams);
    }

    public int getHorizontalDivider() {
        return this.f45460a;
    }

    public int getVerticalDivider() {
        return this.f45461b;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z3, int i2, int i4, int i5, int i6) {
        this.f45462c.clear();
        this.f45463d.clear();
        int width = getWidth();
        ArrayList arrayList = new ArrayList();
        int childCount = getChildCount();
        int i7 = 1;
        int i8 = 0;
        int i9 = 0;
        int i10 = 0;
        while (i8 < childCount) {
            View childAt = getChildAt(i8);
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) childAt.getLayoutParams();
            int measuredWidth = childAt.getMeasuredWidth();
            int measuredHeight = childAt.getMeasuredHeight();
            int i11 = childCount + (-1) == i8 ? 0 : this.f45461b;
            int i12 = this.f45460a;
            if (marginLayoutParams.leftMargin + measuredWidth + marginLayoutParams.rightMargin + i9 > (width - getPaddingLeft()) - getPaddingRight()) {
                i7++;
                if (i7 > this.f45464e) {
                    break;
                }
                this.f45463d.add(Integer.valueOf(i10));
                this.f45462c.add(arrayList);
                arrayList = new ArrayList();
                i9 = 0;
            }
            i9 += measuredWidth + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i12;
            i10 = Math.max(i10, measuredHeight + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + i11);
            arrayList.add(childAt);
            i8++;
        }
        this.f45463d.add(Integer.valueOf(i10));
        this.f45462c.add(arrayList);
        int paddingTop = getPaddingTop() + 0;
        int paddingLeft = getPaddingLeft() + 0;
        int size = this.f45462c.size();
        for (int i13 = 0; i13 < size; i13++) {
            List<View> list = this.f45462c.get(i13);
            int intValue = this.f45463d.get(i13).intValue();
            for (int i14 = 0; i14 < list.size(); i14++) {
                View view = list.get(i14);
                if (view.getVisibility() != 8) {
                    ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
                    int i15 = marginLayoutParams2.leftMargin + paddingLeft;
                    int i16 = marginLayoutParams2.topMargin + paddingTop;
                    view.layout(i15, i16, view.getMeasuredWidth() + i15, view.getMeasuredHeight() + i16);
                    paddingLeft += view.getMeasuredWidth() + marginLayoutParams2.rightMargin + marginLayoutParams2.leftMargin + this.f45460a;
                }
            }
            paddingLeft = getPaddingLeft();
            paddingTop += intValue;
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i2, int i4) {
        super.onMeasure(i2, i4);
        int size = View.MeasureSpec.getSize(i2);
        int size2 = View.MeasureSpec.getSize(i4);
        int mode = View.MeasureSpec.getMode(i2);
        int mode2 = View.MeasureSpec.getMode(i4);
        StringBuilder sb = new StringBuilder();
        sb.append("onMeasure");
        sb.append(size);
        sb.append(",");
        sb.append(size2);
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int i5 = 0;
        int paddingTop = getPaddingTop() + getPaddingBottom() + 0;
        int childCount = getChildCount();
        int i6 = 0;
        int i7 = 0;
        int i8 = 0;
        while (i5 < childCount) {
            View childAt = getChildAt(i5);
            measureChild(childAt, i2, i4);
            int i9 = size2;
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) childAt.getLayoutParams();
            int i10 = i7;
            int measuredWidth = childAt.getMeasuredWidth() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin;
            int measuredHeight = childAt.getMeasuredHeight() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
            int i11 = this.f45461b;
            int i12 = paddingLeft;
            if (i6 + measuredWidth > size - (paddingLeft + paddingRight)) {
                int max = Math.max(i6, measuredWidth);
                paddingTop += i8;
                i6 = measuredWidth + this.f45460a;
                i8 = measuredHeight + i11;
                i7 = max;
            } else {
                i6 += measuredWidth + this.f45460a;
                i8 = Math.max(i8, measuredHeight);
                i7 = i10;
            }
            if (i5 == childCount - 1) {
                paddingTop += i8;
                i7 = Math.max(i7, i6);
            }
            i5++;
            size2 = i9;
            paddingLeft = i12;
        }
        int i13 = size2;
        int i14 = i7;
        if (mode != 1073741824) {
            size = i14;
        }
        setMeasuredDimension(size, mode2 == 1073741824 ? i13 : paddingTop);
    }

    public void setHorizontalDivider(int i2) {
        this.f45460a = i2;
    }

    public void setNumberRows(int i2) {
        this.f45464e = i2;
    }

    public void setVerticalDivider(int i2) {
        this.f45461b = i2;
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new ViewGroup.MarginLayoutParams(getContext(), attributeSet);
    }
}
