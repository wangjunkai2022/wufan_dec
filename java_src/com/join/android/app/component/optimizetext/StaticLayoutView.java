package com.join.android.app.component.optimizetext;

import android.content.Context;
import android.graphics.Canvas;
import android.text.Layout;
import android.util.AttributeSet;
import android.view.View;
/* loaded from: classes.dex */
public class StaticLayoutView extends View {

    /* renamed from: a  reason: collision with root package name */
    private Layout f17490a;

    /* renamed from: b  reason: collision with root package name */
    private int f17491b;

    /* renamed from: c  reason: collision with root package name */
    private int f17492c;

    public StaticLayoutView(Context context) {
        super(context);
        this.f17490a = null;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.save();
        Layout layout = this.f17490a;
        if (layout != null) {
            layout.draw(canvas, null, null, 0);
        }
        canvas.restore();
    }

    @Override // android.view.View
    protected void onLayout(boolean z3, int i2, int i4, int i5, int i6) {
        super.onLayout(z3, i2, i4, i5, i6);
    }

    @Override // android.view.View
    protected void onMeasure(int i2, int i4) {
        Layout layout = this.f17490a;
        if (layout != null) {
            setMeasuredDimension(layout.getWidth(), this.f17490a.getHeight());
        } else {
            super.onMeasure(i2, i4);
        }
    }

    public void setLayout(Layout layout) {
        if (layout == null) {
            return;
        }
        this.f17490a = layout;
        if (layout.getWidth() == this.f17491b && this.f17490a.getHeight() == this.f17492c) {
            return;
        }
        this.f17491b = this.f17490a.getWidth();
        this.f17492c = this.f17490a.getHeight();
        requestLayout();
    }

    public StaticLayoutView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f17490a = null;
    }

    public StaticLayoutView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f17490a = null;
    }
}
