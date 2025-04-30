package com.join.mgps.customview;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.text.style.ImageSpan;
/* compiled from: TagImageSpan.java */
/* loaded from: classes3.dex */
public class q0 extends ImageSpan {

    /* renamed from: a  reason: collision with root package name */
    private int f47089a;

    public q0(Drawable drawable) {
        super(drawable);
        this.f47089a = -1;
    }

    @Override // android.text.style.DynamicDrawableSpan, android.text.style.ReplacementSpan
    public void draw(Canvas canvas, CharSequence charSequence, int i2, int i4, float f4, int i5, int i6, int i7, Paint paint) {
        float textSize = paint.getTextSize();
        Paint.FontMetrics fontMetrics = paint.getFontMetrics();
        int ceil = (int) Math.ceil(fontMetrics.descent - fontMetrics.ascent);
        int round = Math.round(paint.measureText(charSequence, i2, i4));
        getDrawable().setBounds(0, 0, round, ceil);
        Drawable drawable = getDrawable();
        getDrawable().setBounds(0, 0, round, ceil);
        canvas.save();
        int i8 = ((i7 - i5) - drawable.getBounds().bottom) / 2;
        canvas.translate(f4, (int) ((i5 + i8) - (i8 * 0.20000005f)));
        drawable.draw(canvas);
        canvas.restore();
        canvas.save();
        paint.setColor(this.f47089a);
        paint.setTextSize(textSize * 0.8f);
        Paint.FontMetrics fontMetrics2 = paint.getFontMetrics();
        String charSequence2 = charSequence.subSequence(i2, i4).toString();
        canvas.drawText(charSequence2, f4 + ((round - paint.measureText(charSequence2)) / 2.0f), i6 - ((ceil - ((int) Math.ceil(fontMetrics2.descent - fontMetrics2.ascent))) / 4), paint);
        canvas.restore();
    }

    @Override // android.text.style.DynamicDrawableSpan, android.text.style.ReplacementSpan
    public int getSize(Paint paint, CharSequence charSequence, int i2, int i4, Paint.FontMetricsInt fontMetricsInt) {
        Rect bounds = getDrawable().getBounds();
        if (fontMetricsInt != null) {
            Paint.FontMetricsInt fontMetricsInt2 = paint.getFontMetricsInt();
            int i5 = fontMetricsInt2.bottom - fontMetricsInt2.top;
            int i6 = (bounds.bottom - bounds.top) / 2;
            int i7 = i5 / 4;
            int i8 = i6 - i7;
            int i9 = -(i6 + i7);
            fontMetricsInt.ascent = i9;
            fontMetricsInt.top = i9;
            fontMetricsInt.bottom = i8;
            fontMetricsInt.descent = i8;
        }
        return Math.round(paint.measureText(charSequence, i2, i4));
    }

    public q0(Drawable drawable, int i2) {
        super(drawable);
        this.f47089a = -1;
        this.f47089a = i2;
    }
}
