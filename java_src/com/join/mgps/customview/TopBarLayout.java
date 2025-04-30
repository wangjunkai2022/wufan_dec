package com.join.mgps.customview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
/* loaded from: classes3.dex */
public class TopBarLayout extends FrameLayout {
    public TopBarLayout(Context context) {
        super(context);
    }

    private int getStatusBarHeight() {
        return getContext().getResources().getDimensionPixelSize(getContext().getResources().getIdentifier("status_bar_height", "dimen", q.a.f73954a));
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i2, int i4) {
        super.onMeasure(i2, i4);
        super.onMeasure(i2, View.MeasureSpec.makeMeasureSpec(getMeasuredHeight() + getStatusBarHeight(), 1073741824));
    }

    public TopBarLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public TopBarLayout(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
    }
}
