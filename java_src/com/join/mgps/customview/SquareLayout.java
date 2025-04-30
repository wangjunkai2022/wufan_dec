package com.join.mgps.customview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.RelativeLayout;
/* loaded from: classes3.dex */
public class SquareLayout extends RelativeLayout {
    public SquareLayout(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
    }

    @Override // android.widget.RelativeLayout, android.view.View
    protected void onMeasure(int i2, int i4) {
        setMeasuredDimension(RelativeLayout.getDefaultSize(0, i2), RelativeLayout.getDefaultSize(0, i4));
        int measuredWidth = getMeasuredWidth();
        getMeasuredHeight();
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(measuredWidth, 1073741824);
        super.onMeasure(makeMeasureSpec, makeMeasureSpec);
    }

    public SquareLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public SquareLayout(Context context) {
        super(context);
    }
}
