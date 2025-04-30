package com.join.mgps.customview;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.EditText;
/* loaded from: classes3.dex */
public class CopyTextView extends EditText {
    public CopyTextView(Context context) {
        super(context);
    }

    @Override // android.widget.EditText, android.widget.TextView
    protected boolean getDefaultEditable() {
        return false;
    }

    public CopyTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public CopyTextView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
    }
}
