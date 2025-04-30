package com.join.mgps.customview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.GridView;
/* loaded from: classes3.dex */
public class WrapContentGridView extends GridView {
    public WrapContentGridView(Context context) {
        super(context);
    }

    @Override // android.widget.GridView, android.widget.AbsListView, android.view.View
    protected void onMeasure(int i2, int i4) {
        if (getLayoutParams().height == -2) {
            i4 = View.MeasureSpec.makeMeasureSpec(536870911, Integer.MIN_VALUE);
        }
        super.onMeasure(i2, i4);
    }

    public WrapContentGridView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public WrapContentGridView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
    }
}
