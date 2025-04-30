package com.join.mgps.customview;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatTextView;
/* loaded from: classes3.dex */
public class DrawableTextView extends AppCompatTextView {
    public DrawableTextView(Context context) {
        this(context, null);
    }

    @Override // android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        Drawable drawable = getCompoundDrawables()[0];
        if (drawable != null) {
            int intrinsicWidth = drawable.getIntrinsicWidth() + getCompoundDrawablePadding();
            canvas.save();
            canvas.translate((getWidth() - (intrinsicWidth + ((int) getPaint().measureText(getText().toString().trim())))) / 2, 0.0f);
        }
        super.onDraw(canvas);
    }

    public DrawableTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public DrawableTextView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
    }
}
