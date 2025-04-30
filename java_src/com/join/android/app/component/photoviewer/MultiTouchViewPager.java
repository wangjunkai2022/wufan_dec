package com.join.android.app.component.photoviewer;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import androidx.annotation.NonNull;
import androidx.viewpager.widget.ViewPager;
/* loaded from: classes.dex */
public class MultiTouchViewPager extends ViewPager {

    /* renamed from: a  reason: collision with root package name */
    private boolean f17530a;

    public MultiTouchViewPager(Context context) {
        super(context);
        this.f17530a = false;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(@NonNull MotionEvent motionEvent) {
        if (motionEvent.getPointerCount() > 1 && this.f17530a) {
            requestDisallowInterceptTouchEvent(false);
            boolean dispatchTouchEvent = super.dispatchTouchEvent(motionEvent);
            requestDisallowInterceptTouchEvent(true);
            return dispatchTouchEvent;
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z3) {
        this.f17530a = z3;
        super.requestDisallowInterceptTouchEvent(z3);
    }

    public MultiTouchViewPager(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f17530a = false;
    }
}
