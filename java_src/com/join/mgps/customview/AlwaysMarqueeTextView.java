package com.join.mgps.customview;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.TextView;
/* loaded from: classes3.dex */
public class AlwaysMarqueeTextView extends TextView {
    public AlwaysMarqueeTextView(Context context) {
        super(context);
    }

    @Override // android.view.View
    public boolean isFocused() {
        return true;
    }

    public AlwaysMarqueeTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public AlwaysMarqueeTextView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
    }
}
