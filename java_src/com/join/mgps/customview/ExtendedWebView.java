package com.join.mgps.customview;

import android.content.Context;
import android.util.AttributeSet;
import android.webkit.WebView;
/* loaded from: classes3.dex */
public class ExtendedWebView extends WebView {
    public ExtendedWebView(Context context) {
        super(context);
    }

    public boolean a(int i2) {
        int computeVerticalScrollOffset = computeVerticalScrollOffset();
        int computeVerticalScrollRange = computeVerticalScrollRange() - computeVerticalScrollExtent();
        if (computeVerticalScrollRange == 0) {
            return false;
        }
        if (i2 < 0) {
            if (computeVerticalScrollOffset <= 0) {
                return false;
            }
        } else if (computeVerticalScrollOffset >= computeVerticalScrollRange - 1) {
            return false;
        }
        return true;
    }

    public ExtendedWebView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}
