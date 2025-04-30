package com.join.mgps.customview;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.text.style.ImageSpan;
/* compiled from: VerticalImageSpan.java */
/* loaded from: classes3.dex */
public class r0 extends ImageSpan {

    /* renamed from: a  reason: collision with root package name */
    private float f47105a;

    public r0(Drawable drawable) {
        super(drawable);
        this.f47105a = 1.0f;
    }

    @Override // android.text.style.DynamicDrawableSpan, android.text.style.ReplacementSpan
    public void draw(Canvas canvas, CharSequence charSequence, int i2, int i4, float f4, int i5, int i6, int i7, Paint paint) {
        Drawable drawable = getDrawable();
        canvas.save();
        int i8 = ((i7 - i5) - drawable.getBounds().bottom) / 2;
        float f5 = this.f47105a;
        canvas.translate(f4, f5 > 1.0f ? (int) ((i5 + i8) - (i8 * (f5 - 1.0f))) : i5 + i8);
        drawable.draw(canvas);
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
        return bounds.right;
    }

    public r0(Drawable drawable, float f4) {
        super(drawable);
        this.f47105a = 1.0f;
        this.f47105a = f4;
    }
}
