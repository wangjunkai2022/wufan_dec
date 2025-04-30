package com.join.mgps.customview;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.FrameLayout;
/* loaded from: classes3.dex */
public class DarkFrameLayout extends FrameLayout {

    /* renamed from: d  reason: collision with root package name */
    public static final int f45325d = 159;

    /* renamed from: a  reason: collision with root package name */
    private int f45326a;

    /* renamed from: b  reason: collision with root package name */
    private Paint f45327b;

    /* renamed from: c  reason: collision with root package name */
    private SlideBottomPanel f45328c;

    public DarkFrameLayout(Context context) {
        this(context, null);
    }

    private void a(Canvas canvas) {
        this.f45327b.setColor(Color.argb(this.f45326a, 0, 0, 0));
        canvas.drawRect(0.0f, 0.0f, getMeasuredWidth(), getHeight(), this.f45327b);
    }

    public void b(int i2) {
        this.f45326a = i2;
        invalidate();
    }

    public void c(boolean z3) {
        this.f45326a = z3 ? 143 : 0;
        invalidate();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        a(canvas);
    }

    public int getCurrentAlpha() {
        return this.f45326a;
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return this.f45328c.w();
    }

    public void setSlideBottomPanel(SlideBottomPanel slideBottomPanel) {
        this.f45328c = slideBottomPanel;
    }

    public DarkFrameLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public DarkFrameLayout(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f45326a = 0;
        this.f45327b = new Paint();
    }
}
