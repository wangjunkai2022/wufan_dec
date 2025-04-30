package com.join.mgps.recycler;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.RelativeLayout;
import com.join.android.app.mgsim.wufun.R;
/* loaded from: classes4.dex */
public class SampleFooter extends RelativeLayout {
    public SampleFooter(Context context) {
        super(context);
        a(context);
    }

    public void a(Context context) {
        RelativeLayout.inflate(context, R.layout.sample_footer, this);
    }

    public SampleFooter(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(context);
    }

    public SampleFooter(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        a(context);
    }
}
