package com.join.mgps.customview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.LinearLayout;
/* loaded from: classes3.dex */
public class LeftGalleryLayout extends LinearLayout {
    public LeftGalleryLayout(Context context) {
        super(context);
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return true;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return false;
    }

    public LeftGalleryLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}
