package com.join.mgps.customview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.RelativeLayout;
/* loaded from: classes3.dex */
public class MGRelativeLayout extends RelativeLayout {
    public MGRelativeLayout(Context context) {
        super(context);
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return true;
    }

    public MGRelativeLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public MGRelativeLayout(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
    }
}
