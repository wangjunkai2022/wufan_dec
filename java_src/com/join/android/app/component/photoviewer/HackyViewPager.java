package com.join.android.app.component.photoviewer;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import androidx.viewpager.widget.ViewPager;
/* loaded from: classes.dex */
public class HackyViewPager extends ViewPager {

    /* renamed from: a  reason: collision with root package name */
    private static final String f17506a = "HackyViewPager";

    public HackyViewPager(Context context) {
        super(context);
    }

    @Override // androidx.viewpager.widget.ViewPager, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        try {
            return super.onInterceptTouchEvent(motionEvent);
        } catch (ArrayIndexOutOfBoundsException | IllegalArgumentException unused) {
            return false;
        }
    }

    public HackyViewPager(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}
