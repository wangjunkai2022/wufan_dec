package com.join.mgps.customview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* loaded from: classes3.dex */
public class ForumBaseHeaderView extends LinearLayout implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    protected View.OnClickListener f45465a;

    /* renamed from: b  reason: collision with root package name */
    a f45466b;

    /* loaded from: classes3.dex */
    public interface a {
        void g(int i2);
    }

    public ForumBaseHeaderView(@NonNull Context context) {
        super(context);
        this.f45465a = null;
        a(context);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(Context context) {
        setOrientation(1);
    }

    public a getmOnMeasureHeight() {
        return this.f45466b;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        View.OnClickListener onClickListener = this.f45465a;
        if (onClickListener != null) {
            onClickListener.onClick(view);
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
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
        for (int i8 = 0; i8 < childCount; i8++) {
            View childAt = getChildAt(i8);
            if (childAt.getVisibility() != 8) {
                measureChild(childAt, i2, i4);
                ViewGroup.LayoutParams layoutParams = getLayoutParams();
                if (layoutParams instanceof FrameLayout.LayoutParams) {
                    FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) layoutParams;
                    int i9 = layoutParams2.leftMargin;
                    i6 = layoutParams2.topMargin;
                    i5 = layoutParams2.bottomMargin;
                } else if (layoutParams instanceof LinearLayout.LayoutParams) {
                    LinearLayout.LayoutParams layoutParams3 = (LinearLayout.LayoutParams) layoutParams;
                    int i10 = layoutParams3.leftMargin;
                    i6 = layoutParams3.topMargin;
                    i5 = layoutParams3.bottomMargin;
                } else if (layoutParams instanceof RelativeLayout.LayoutParams) {
                    RelativeLayout.LayoutParams layoutParams4 = (RelativeLayout.LayoutParams) layoutParams;
                    int i11 = layoutParams4.leftMargin;
                    i6 = layoutParams4.topMargin;
                    i5 = layoutParams4.bottomMargin;
                } else {
                    i5 = 0;
                    i6 = 0;
                }
                childAt.getMeasuredWidth();
                i7 += childAt.getMeasuredHeight() + i6 + i5;
            }
        }
        if (this.f45466b != null) {
            this.f45466b.g((getLayoutParams() instanceof RelativeLayout.LayoutParams ? ((RelativeLayout.LayoutParams) getLayoutParams()).bottomMargin : 0) + i7);
        }
        if (mode != 1073741824) {
            size = 0;
        }
        if (mode2 != 1073741824) {
            size2 = i7;
        }
        setMeasuredDimension(size, size2);
    }

    public void setHeaderClickListener(View.OnClickListener onClickListener) {
        this.f45465a = onClickListener;
    }

    public void setmOnMeasureHeight(a aVar) {
        this.f45466b = aVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public LinearLayout.LayoutParams generateDefaultLayoutParams() {
        if (getOrientation() == 0) {
            return new LinearLayout.LayoutParams(-2, -2);
        }
        if (getOrientation() == 1) {
            return new LinearLayout.LayoutParams(-1, -2);
        }
        return super.generateDefaultLayoutParams();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public LinearLayout.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (getOrientation() == 0) {
            return new LinearLayout.LayoutParams(-2, -2);
        }
        if (getOrientation() == 1) {
            return new LinearLayout.LayoutParams(-1, -2);
        }
        return super.generateLayoutParams(layoutParams);
    }

    public ForumBaseHeaderView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f45465a = null;
        a(context);
    }

    public ForumBaseHeaderView(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i2) {
        super(context, attributeSet, i2);
        this.f45465a = null;
        a(context);
    }
}
