package com.join.mgps.customview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import androidx.viewpager.widget.ViewPager;
/* loaded from: classes3.dex */
public class MViewpagerV4 extends ViewPager {

    /* renamed from: a  reason: collision with root package name */
    private boolean f45789a;

    public MViewpagerV4(Context context) {
        super(context);
        this.f45789a = true;
    }

    @Override // androidx.viewpager.widget.ViewPager, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean z3 = this.f45789a;
        return !z3 ? super.onInterceptTouchEvent(motionEvent) : z3;
    }

    public void setIntercept(boolean z3) {
        this.f45789a = z3;
    }

    public MViewpagerV4(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f45789a = true;
    }
}
