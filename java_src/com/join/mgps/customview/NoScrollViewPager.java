package com.join.mgps.customview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import androidx.viewpager.widget.ViewPager;
/* loaded from: classes3.dex */
public class NoScrollViewPager extends ViewPager {

    /* renamed from: a  reason: collision with root package name */
    private boolean f45869a;

    public NoScrollViewPager(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f45869a = false;
    }

    @Override // androidx.viewpager.widget.ViewPager, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (this.f45869a) {
            return false;
        }
        return super.onInterceptTouchEvent(motionEvent);
    }

    @Override // androidx.viewpager.widget.ViewPager, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.f45869a) {
            return false;
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public void scrollTo(int i2, int i4) {
        super.scrollTo(i2, i4);
    }

    @Override // androidx.viewpager.widget.ViewPager
    public void setCurrentItem(int i2, boolean z3) {
        super.setCurrentItem(i2, z3);
    }

    public void setNoScroll(boolean z3) {
        this.f45869a = z3;
    }

    @Override // androidx.viewpager.widget.ViewPager
    public void setCurrentItem(int i2) {
        super.setCurrentItem(i2);
    }

    public NoScrollViewPager(Context context) {
        super(context);
        this.f45869a = false;
    }
}
