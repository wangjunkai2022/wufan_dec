package com.join.mgps.customview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.webkit.WebView;
/* loaded from: classes3.dex */
public class TouchWebView extends WebView {

    /* renamed from: a  reason: collision with root package name */
    String f46460a;

    public TouchWebView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f46460a = getClass().getSimpleName();
        setLayerType(1, null);
    }

    @Override // android.webkit.WebView, android.widget.AbsoluteLayout, android.view.View
    protected void onMeasure(int i2, int i4) {
        super.onMeasure(i2, View.MeasureSpec.makeMeasureSpec(536870911, Integer.MIN_VALUE));
    }

    public TouchWebView(Context context) {
        super(context);
        this.f46460a = getClass().getSimpleName();
        setLayerType(1, null);
    }
}
