package com.join.android.app.component.video;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.view.View;
import android.widget.TextView;
/* loaded from: classes2.dex */
public class OutlineTextView extends TextView {

    /* renamed from: a  reason: collision with root package name */
    private TextPaint f17618a;

    /* renamed from: b  reason: collision with root package name */
    private TextPaint f17619b;

    /* renamed from: c  reason: collision with root package name */
    private String f17620c;

    /* renamed from: d  reason: collision with root package name */
    private int f17621d;

    /* renamed from: e  reason: collision with root package name */
    private float f17622e;

    /* renamed from: f  reason: collision with root package name */
    private int f17623f;

    /* renamed from: g  reason: collision with root package name */
    private int f17624g;

    /* renamed from: h  reason: collision with root package name */
    private float f17625h;

    /* renamed from: i  reason: collision with root package name */
    private float f17626i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f17627j;

    public OutlineTextView(Context context) {
        super(context);
        this.f17620c = "";
        this.f17621d = 0;
        this.f17625h = 1.0f;
        this.f17626i = 0.0f;
        this.f17627j = true;
        a();
    }

    private void a() {
        TextPaint textPaint = new TextPaint();
        this.f17618a = textPaint;
        textPaint.setAntiAlias(true);
        this.f17618a.setTextSize(getTextSize());
        this.f17618a.setColor(this.f17624g);
        this.f17618a.setStyle(Paint.Style.FILL);
        this.f17618a.setTypeface(getTypeface());
        TextPaint textPaint2 = new TextPaint();
        this.f17619b = textPaint2;
        textPaint2.setAntiAlias(true);
        this.f17619b.setTextSize(getTextSize());
        this.f17619b.setColor(this.f17623f);
        this.f17619b.setStyle(Paint.Style.STROKE);
        this.f17619b.setTypeface(getTypeface());
        this.f17619b.setStrokeWidth(this.f17622e);
    }

    private int b(int i2) {
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        int ascent = (int) this.f17619b.ascent();
        this.f17621d = ascent;
        if (mode == 1073741824) {
            return size;
        }
        int descent = ((int) ((-ascent) + this.f17619b.descent())) + getPaddingTop() + getPaddingBottom();
        return mode == Integer.MIN_VALUE ? Math.min(descent, size) : descent;
    }

    private int c(int i2) {
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        if (mode == 1073741824) {
            return size;
        }
        int measureText = ((int) this.f17619b.measureText(this.f17620c)) + getPaddingLeft() + getPaddingRight();
        return mode == Integer.MIN_VALUE ? Math.min(measureText, size) : measureText;
    }

    @Override // android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        new StaticLayout(getText(), this.f17619b, getWidth(), Layout.Alignment.ALIGN_CENTER, this.f17625h, this.f17626i, this.f17627j).draw(canvas);
        new StaticLayout(getText(), this.f17618a, getWidth(), Layout.Alignment.ALIGN_CENTER, this.f17625h, this.f17626i, this.f17627j).draw(canvas);
    }

    @Override // android.widget.TextView, android.view.View
    protected void onMeasure(int i2, int i4) {
        StaticLayout staticLayout = new StaticLayout(getText(), this.f17619b, c(i2), Layout.Alignment.ALIGN_CENTER, this.f17625h, this.f17626i, this.f17627j);
        int i5 = (int) ((this.f17622e * 2.0f) + 1.0f);
        setMeasuredDimension(c(i2) + i5, (b(i4) * staticLayout.getLineCount()) + i5);
    }

    @Override // android.widget.TextView
    public void setShadowLayer(float f4, float f5, float f6, int i2) {
        super.setShadowLayer(f4, f5, f6, i2);
        this.f17622e = f4;
        this.f17623f = i2;
        requestLayout();
        invalidate();
        a();
    }

    public void setText(String str) {
        super.setText((CharSequence) str);
        this.f17620c = str.toString();
        requestLayout();
        invalidate();
    }

    @Override // android.widget.TextView
    public void setTextColor(int i2) {
        super.setTextColor(i2);
        this.f17624g = i2;
        invalidate();
        a();
    }

    @Override // android.widget.TextView
    public void setTextSize(float f4) {
        super.setTextSize(f4);
        requestLayout();
        invalidate();
        a();
    }

    @Override // android.widget.TextView
    public void setTypeface(Typeface typeface, int i2) {
        super.setTypeface(typeface, i2);
        requestLayout();
        invalidate();
        a();
    }

    @Override // android.widget.TextView
    public void setTypeface(Typeface typeface) {
        super.setTypeface(typeface);
        requestLayout();
        invalidate();
        a();
    }

    public OutlineTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f17620c = "";
        this.f17621d = 0;
        this.f17625h = 1.0f;
        this.f17626i = 0.0f;
        this.f17627j = true;
        a();
    }

    public OutlineTextView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f17620c = "";
        this.f17621d = 0;
        this.f17625h = 1.0f;
        this.f17626i = 0.0f;
        this.f17627j = true;
        a();
    }
}
