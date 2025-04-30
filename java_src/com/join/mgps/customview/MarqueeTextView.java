package com.join.mgps.customview;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.widget.TextView;
/* loaded from: classes3.dex */
public class MarqueeTextView extends TextView {
    public MarqueeTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.view.View
    public boolean isFocused() {
        return true;
    }

    @Override // android.widget.TextView, android.view.View
    protected void onFocusChanged(boolean z3, int i2, Rect rect) {
        if (z3) {
            super.onFocusChanged(z3, i2, rect);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void onWindowFocusChanged(boolean z3) {
        if (z3) {
            super.onWindowFocusChanged(z3);
        }
    }
}
