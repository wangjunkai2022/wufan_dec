package com.join.mgps.customview;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ProgressBar;
/* loaded from: classes3.dex */
public class DownloadProgressBar extends ProgressBar {
    public DownloadProgressBar(Context context) {
        super(context);
    }

    public void update(String str) {
        update(str, 0);
    }

    public void update(String str, int i2) {
    }

    public DownloadProgressBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public DownloadProgressBar(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
    }
}
