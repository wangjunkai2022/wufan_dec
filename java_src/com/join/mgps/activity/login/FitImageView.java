package com.join.mgps.activity.login;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
@SuppressLint({"AppCompatCustomView"})
/* loaded from: classes3.dex */
public class FitImageView extends ImageView {
    public FitImageView(Context context) {
        super(context);
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onMeasure(int i2, int i4) {
        Drawable drawable = getDrawable();
        if (drawable != null) {
            int size = View.MeasureSpec.getSize(i2);
            setMeasuredDimension(size, (int) Math.ceil((size * drawable.getIntrinsicHeight()) / drawable.getIntrinsicWidth()));
            return;
        }
        super.onMeasure(i2, i4);
    }

    public FitImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}
