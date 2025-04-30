package com.join.mgps.customview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import androidx.viewpager.widget.ViewPager;
/* loaded from: classes3.dex */
public class ViewPagerSlide extends ViewPager {

    /* renamed from: a  reason: collision with root package name */
    private boolean f46461a;

    public ViewPagerSlide(Context context) {
        super(context);
        this.f46461a = false;
    }

    @Override // androidx.viewpager.widget.ViewPager, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean z3 = this.f46461a;
        return z3 ? super.onInterceptTouchEvent(motionEvent) : z3;
    }

    public void setSlide(boolean z3) {
        this.f46461a = z3;
    }

    public ViewPagerSlide(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f46461a = false;
    }
}
