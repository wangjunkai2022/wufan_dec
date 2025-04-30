package com.join.mgps.customview;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
/* loaded from: classes3.dex */
public class StrokeTextViewNoAnim extends TextView {

    /* renamed from: a  reason: collision with root package name */
    private TextView f46412a;

    /* renamed from: b  reason: collision with root package name */
    Context f46413b;

    public StrokeTextViewNoAnim(Context context) {
        super(context);
        this.f46412a = null;
        this.f46412a = new TextView(context);
        a(null);
        this.f46413b = context;
    }

    public void a(AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.StrokeTextView);
            int color = obtainStyledAttributes.getColor(1, 0);
            TextPaint paint = this.f46412a.getPaint();
            paint.setStrokeWidth(4.0f);
            paint.setStyle(Paint.Style.STROKE);
            this.f46412a.setTextColor(color);
            this.f46412a.setGravity(getGravity());
            obtainStyledAttributes.recycle();
        }
    }

    @Override // android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        this.f46412a.draw(canvas);
        super.onDraw(canvas);
    }

    @Override // android.widget.TextView, android.view.View
    protected void onLayout(boolean z3, int i2, int i4, int i5, int i6) {
        super.onLayout(z3, i2, i4, i5, i6);
        this.f46412a.layout(i2, i4, i5, i6);
    }

    @Override // android.widget.TextView, android.view.View
    protected void onMeasure(int i2, int i4) {
        CharSequence text = this.f46412a.getText();
        if (text == null || !text.equals(getText())) {
            this.f46412a.setText(getText());
            postInvalidate();
        }
        super.onMeasure(i2, i4);
        this.f46412a.measure(i2, i4);
    }

    @Override // android.view.View
    public void setLayoutParams(ViewGroup.LayoutParams layoutParams) {
        super.setLayoutParams(layoutParams);
        this.f46412a.setLayoutParams(layoutParams);
    }

    public void setStrokeColor(int i2) {
        this.f46412a.setTextColor(i2);
    }

    public StrokeTextViewNoAnim(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f46412a = null;
        this.f46412a = new TextView(context, attributeSet);
        a(attributeSet);
        this.f46413b = context;
    }

    public StrokeTextViewNoAnim(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f46412a = null;
        this.f46412a = new TextView(context, attributeSet, i2);
        a(attributeSet);
        this.f46413b = context;
    }
}
