package com.join.mgps.customview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.RelativeLayout;
/* loaded from: classes3.dex */
public class KeyboardListenLayout extends RelativeLayout {

    /* renamed from: a  reason: collision with root package name */
    private a f45688a;

    /* loaded from: classes3.dex */
    public interface a {
        void onHidden();

        void onShown();
    }

    public KeyboardListenLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.widget.RelativeLayout, android.view.View
    protected void onMeasure(int i2, int i4) {
        if (this.f45688a != null) {
            if (getMeasuredHeight() > View.MeasureSpec.getSize(i4)) {
                this.f45688a.onShown();
            } else {
                this.f45688a.onHidden();
            }
        }
        super.onMeasure(i2, i4);
    }

    public final void setOnSoftKeyboardListener(a aVar) {
        this.f45688a = aVar;
    }

    public KeyboardListenLayout(Context context) {
        super(context);
    }
}
