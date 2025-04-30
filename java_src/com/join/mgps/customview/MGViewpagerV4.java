package com.join.mgps.customview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import androidx.viewpager.widget.ViewPager;
/* loaded from: classes3.dex */
public class MGViewpagerV4 extends ViewPager {

    /* renamed from: a  reason: collision with root package name */
    private boolean f45779a;

    public MGViewpagerV4(Context context) {
        super(context);
        this.f45779a = true;
    }

    @Override // androidx.viewpager.widget.ViewPager, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean z3 = this.f45779a;
        return !z3 ? super.onInterceptTouchEvent(motionEvent) : z3;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.viewpager.widget.ViewPager, android.view.View
    public void onMeasure(int i2, int i4) {
        int i5 = 0;
        for (int i6 = 0; i6 < getChildCount(); i6++) {
            View childAt = getChildAt(i6);
            if (childAt != null) {
                childAt.measure(i2, View.MeasureSpec.makeMeasureSpec(0, 0));
                int measuredHeight = childAt.getMeasuredHeight();
                if (measuredHeight > i5) {
                    i5 = measuredHeight;
                }
            }
        }
        super.onMeasure(i2, View.MeasureSpec.makeMeasureSpec(i5, 1073741824));
    }

    public void setIntercept(boolean z3) {
        this.f45779a = z3;
    }

    public MGViewpagerV4(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f45779a = true;
    }
}
