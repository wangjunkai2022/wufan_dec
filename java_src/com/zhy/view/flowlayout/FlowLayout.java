package com.zhy.view.flowlayout;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class FlowLayout extends ViewGroup {

    /* renamed from: f  reason: collision with root package name */
    private static final String f64915f = "FlowLayout";

    /* renamed from: g  reason: collision with root package name */
    private static final int f64916g = -1;

    /* renamed from: h  reason: collision with root package name */
    private static final int f64917h = 0;

    /* renamed from: i  reason: collision with root package name */
    private static final int f64918i = 1;

    /* renamed from: a  reason: collision with root package name */
    protected List<List<View>> f64919a;

    /* renamed from: b  reason: collision with root package name */
    protected List<Integer> f64920b;

    /* renamed from: c  reason: collision with root package name */
    protected List<Integer> f64921c;

    /* renamed from: d  reason: collision with root package name */
    private int f64922d;

    /* renamed from: e  reason: collision with root package name */
    private List<View> f64923e;

    public FlowLayout(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f64919a = new ArrayList();
        this.f64920b = new ArrayList();
        this.f64921c = new ArrayList();
        this.f64923e = new ArrayList();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.TagFlowLayout);
        this.f64922d = obtainStyledAttributes.getInt(R.styleable.TagFlowLayout_gravity, -1);
        obtainStyledAttributes.recycle();
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new ViewGroup.MarginLayoutParams(-2, -2);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new ViewGroup.MarginLayoutParams(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z3, int i2, int i4, int i5, int i6) {
        int i7;
        int paddingLeft;
        this.f64919a.clear();
        this.f64920b.clear();
        this.f64921c.clear();
        this.f64923e.clear();
        int width = getWidth();
        int childCount = getChildCount();
        int i8 = 0;
        int i9 = 0;
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            if (childAt.getVisibility() != 8) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) childAt.getLayoutParams();
                int measuredWidth = childAt.getMeasuredWidth();
                int measuredHeight = childAt.getMeasuredHeight();
                if (measuredWidth + i9 + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin > (width - getPaddingLeft()) - getPaddingRight()) {
                    this.f64920b.add(Integer.valueOf(i8));
                    this.f64919a.add(this.f64923e);
                    this.f64921c.add(Integer.valueOf(i9));
                    i8 = marginLayoutParams.topMargin + measuredHeight + marginLayoutParams.bottomMargin;
                    this.f64923e = new ArrayList();
                    i9 = 0;
                }
                i9 += measuredWidth + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin;
                i8 = Math.max(i8, measuredHeight + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin);
                this.f64923e.add(childAt);
            }
        }
        this.f64920b.add(Integer.valueOf(i8));
        this.f64921c.add(Integer.valueOf(i9));
        this.f64919a.add(this.f64923e);
        int paddingLeft2 = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int size = this.f64919a.size();
        for (int i11 = 0; i11 < size; i11++) {
            this.f64923e = this.f64919a.get(i11);
            int intValue = this.f64920b.get(i11).intValue();
            int intValue2 = this.f64921c.get(i11).intValue();
            int i12 = this.f64922d;
            if (i12 != -1) {
                if (i12 == 0) {
                    i7 = (width - intValue2) / 2;
                    paddingLeft = getPaddingLeft();
                } else if (i12 == 1) {
                    i7 = width - intValue2;
                    paddingLeft = getPaddingLeft();
                }
                paddingLeft2 = i7 + paddingLeft;
            } else {
                paddingLeft2 = getPaddingLeft();
            }
            for (int i13 = 0; i13 < this.f64923e.size(); i13++) {
                View view = this.f64923e.get(i13);
                if (view.getVisibility() != 8) {
                    ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
                    int i14 = marginLayoutParams2.leftMargin + paddingLeft2;
                    int i15 = marginLayoutParams2.topMargin + paddingTop;
                    view.layout(i14, i15, view.getMeasuredWidth() + i14, view.getMeasuredHeight() + i15);
                    paddingLeft2 += view.getMeasuredWidth() + marginLayoutParams2.leftMargin + marginLayoutParams2.rightMargin;
                }
            }
            paddingTop += intValue;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.View
    public void onMeasure(int i2, int i4) {
        int i5;
        int size = View.MeasureSpec.getSize(i2);
        int mode = View.MeasureSpec.getMode(i2);
        int size2 = View.MeasureSpec.getSize(i4);
        int mode2 = View.MeasureSpec.getMode(i4);
        int childCount = getChildCount();
        int i6 = 0;
        int i7 = 0;
        int i8 = 0;
        int i9 = 0;
        int i10 = 0;
        while (i6 < childCount) {
            View childAt = getChildAt(i6);
            if (childAt.getVisibility() == 8) {
                if (i6 == childCount - 1) {
                    i7 = Math.max(i8, i7);
                    i10 += i9;
                }
                i5 = size2;
            } else {
                measureChild(childAt, i2, i4);
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) childAt.getLayoutParams();
                i5 = size2;
                int measuredWidth = childAt.getMeasuredWidth() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin;
                int measuredHeight = childAt.getMeasuredHeight() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
                int i11 = i8 + measuredWidth;
                if (i11 > (size - getPaddingLeft()) - getPaddingRight()) {
                    i7 = Math.max(i7, i8);
                    i10 += i9;
                } else {
                    measuredHeight = Math.max(i9, measuredHeight);
                    measuredWidth = i11;
                }
                if (i6 == childCount - 1) {
                    i7 = Math.max(measuredWidth, i7);
                    i10 += measuredHeight;
                }
                i9 = measuredHeight;
                i8 = measuredWidth;
            }
            i6++;
            size2 = i5;
        }
        int i12 = size2;
        if (mode != 1073741824) {
            size = getPaddingRight() + i7 + getPaddingLeft();
        }
        setMeasuredDimension(size, mode2 == 1073741824 ? i12 : i10 + getPaddingTop() + getPaddingBottom());
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new ViewGroup.MarginLayoutParams(layoutParams);
    }

    public FlowLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public FlowLayout(Context context) {
        this(context, null);
    }
}
