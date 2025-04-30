package com.join.mgps.customview;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.widget.ListView;
/* loaded from: classes3.dex */
public class WrapContentListView extends ListView {

    /* renamed from: a  reason: collision with root package name */
    private ViewGroup.LayoutParams f46526a;

    /* renamed from: b  reason: collision with root package name */
    private int f46527b;

    public WrapContentListView(Context context) {
        super(context);
        this.f46527b = 0;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        if (getCount() != this.f46527b) {
            if (getChildAt(0) != null) {
                this.f46527b = getCount();
            }
            int height = getChildAt(0).getHeight() + 1;
            int i2 = 0;
            for (int i4 = 0; i4 < this.f46527b; i4++) {
                try {
                    i2 += getChildAt(i4).getHeight() + 1;
                } catch (Exception e4) {
                    e4.printStackTrace();
                    i2 += height;
                }
            }
            ViewGroup.LayoutParams layoutParams = getLayoutParams();
            this.f46526a = layoutParams;
            layoutParams.height = i2;
            setLayoutParams(layoutParams);
        }
        super.onDraw(canvas);
    }

    public WrapContentListView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f46527b = 0;
    }

    public WrapContentListView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f46527b = 0;
    }
}
