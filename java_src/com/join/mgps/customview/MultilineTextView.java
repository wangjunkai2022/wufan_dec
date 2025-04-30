package com.join.mgps.customview;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatTextView;
/* loaded from: classes3.dex */
public class MultilineTextView extends AppCompatTextView {

    /* renamed from: a  reason: collision with root package name */
    private boolean f45804a;

    public MultilineTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f45804a = false;
    }

    private void a() {
        setLines(getMeasuredHeight() / getLineHeight());
    }

    @Override // android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        if (!this.f45804a) {
            a();
            this.f45804a = true;
        }
        super.onDraw(canvas);
    }
}
