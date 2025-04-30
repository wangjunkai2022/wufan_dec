package com.join.mgps.customview;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.TextView;
/* loaded from: classes3.dex */
public class HandyTextView extends TextView {
    public HandyTextView(Context context) {
        super(context);
    }

    @Override // android.widget.TextView
    public void setText(CharSequence charSequence, TextView.BufferType bufferType) {
        if (charSequence == null) {
            charSequence = "";
        }
        super.setText(charSequence, bufferType);
    }

    public HandyTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public HandyTextView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
    }
}
