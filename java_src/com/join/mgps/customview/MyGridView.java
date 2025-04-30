package com.join.mgps.customview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.GridView;
/* loaded from: classes3.dex */
public class MyGridView extends GridView {
    public MyGridView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.widget.GridView, android.widget.AbsListView, android.view.View
    public void onMeasure(int i2, int i4) {
        super.onMeasure(i2, View.MeasureSpec.makeMeasureSpec(536870911, Integer.MIN_VALUE));
    }

    public MyGridView(Context context) {
        super(context);
    }

    public MyGridView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
    }
}
