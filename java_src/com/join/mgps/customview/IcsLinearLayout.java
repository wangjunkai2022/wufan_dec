package com.join.mgps.customview;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.LinearLayout;
/* loaded from: classes3.dex */
public class IcsLinearLayout extends LinearLayout {

    /* renamed from: f  reason: collision with root package name */
    private static final int[] f45662f = {16843049, 16843561, 16843562};

    /* renamed from: g  reason: collision with root package name */
    private static final int f45663g = 0;

    /* renamed from: h  reason: collision with root package name */
    private static final int f45664h = 1;

    /* renamed from: i  reason: collision with root package name */
    private static final int f45665i = 2;

    /* renamed from: a  reason: collision with root package name */
    private Drawable f45666a;

    /* renamed from: b  reason: collision with root package name */
    private int f45667b;

    /* renamed from: c  reason: collision with root package name */
    private int f45668c;

    /* renamed from: d  reason: collision with root package name */
    private int f45669d;

    /* renamed from: e  reason: collision with root package name */
    private int f45670e;

    public IcsLinearLayout(Context context, int i2) {
        super(context);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(null, f45662f, i2, 0);
        setDividerDrawable(obtainStyledAttributes.getDrawable(0));
        this.f45670e = obtainStyledAttributes.getDimensionPixelSize(2, 0);
        this.f45669d = obtainStyledAttributes.getInteger(1, 0);
        obtainStyledAttributes.recycle();
    }

    private void a(Canvas canvas) {
        int right;
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            if (childAt != null && childAt.getVisibility() != 8 && e(i2)) {
                d(canvas, childAt.getLeft() - ((LinearLayout.LayoutParams) childAt.getLayoutParams()).leftMargin);
            }
        }
        if (e(childCount)) {
            View childAt2 = getChildAt(childCount - 1);
            if (childAt2 == null) {
                right = (getWidth() - getPaddingRight()) - this.f45667b;
            } else {
                right = childAt2.getRight();
            }
            d(canvas, right);
        }
    }

    private void b(Canvas canvas) {
        int bottom;
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            if (childAt != null && childAt.getVisibility() != 8 && e(i2)) {
                c(canvas, childAt.getTop() - ((LinearLayout.LayoutParams) childAt.getLayoutParams()).topMargin);
            }
        }
        if (e(childCount)) {
            View childAt2 = getChildAt(childCount - 1);
            if (childAt2 == null) {
                bottom = (getHeight() - getPaddingBottom()) - this.f45668c;
            } else {
                bottom = childAt2.getBottom();
            }
            c(canvas, bottom);
        }
    }

    private void c(Canvas canvas, int i2) {
        this.f45666a.setBounds(getPaddingLeft() + this.f45670e, i2, (getWidth() - getPaddingRight()) - this.f45670e, this.f45668c + i2);
        this.f45666a.draw(canvas);
    }

    private void d(Canvas canvas, int i2) {
        this.f45666a.setBounds(i2, getPaddingTop() + this.f45670e, this.f45667b + i2, (getHeight() - getPaddingBottom()) - this.f45670e);
        this.f45666a.draw(canvas);
    }

    private boolean e(int i2) {
        if (i2 == 0 || i2 == getChildCount() || (this.f45669d & 2) == 0) {
            return false;
        }
        for (int i4 = i2 - 1; i4 >= 0; i4--) {
            if (getChildAt(i4).getVisibility() != 8) {
                return true;
            }
        }
        return false;
    }

    @Override // android.view.ViewGroup
    protected void measureChildWithMargins(View view, int i2, int i4, int i5, int i6) {
        int indexOfChild = indexOfChild(view);
        int orientation = getOrientation();
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) view.getLayoutParams();
        if (e(indexOfChild)) {
            if (orientation == 1) {
                layoutParams.topMargin = this.f45668c;
            } else {
                layoutParams.leftMargin = this.f45667b;
            }
        }
        int childCount = getChildCount();
        if (indexOfChild == childCount - 1 && e(childCount)) {
            if (orientation == 1) {
                layoutParams.bottomMargin = this.f45668c;
            } else {
                layoutParams.rightMargin = this.f45667b;
            }
        }
        super.measureChildWithMargins(view, i2, i4, i5, i6);
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.f45666a != null) {
            if (getOrientation() == 1) {
                b(canvas);
            } else {
                a(canvas);
            }
        }
        super.onDraw(canvas);
    }

    @Override // android.widget.LinearLayout
    public void setDividerDrawable(Drawable drawable) {
        if (drawable == this.f45666a) {
            return;
        }
        this.f45666a = drawable;
        if (drawable != null) {
            this.f45667b = drawable.getIntrinsicWidth();
            this.f45668c = drawable.getIntrinsicHeight();
        } else {
            this.f45667b = 0;
            this.f45668c = 0;
        }
        setWillNotDraw(drawable == null);
        requestLayout();
    }
}
