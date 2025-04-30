package com.papa91.arc.widget.htmltext;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.text.Layout;
import android.text.style.LeadingMarginSpan;
import android.text.style.LineBackgroundSpan;
import androidx.annotation.NonNull;
/* loaded from: classes4.dex */
public class DesignQuoteSpan implements LeadingMarginSpan, LineBackgroundSpan {
    private int backgroundColor;
    private float gap;
    private int stripColor;
    private float stripeWidth;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DesignQuoteSpan(int i2, int i4, float f4, float f5) {
        this.backgroundColor = i2;
        this.stripColor = i4;
        this.stripeWidth = f4;
        this.gap = f5;
    }

    @Override // android.text.style.LineBackgroundSpan
    public void drawBackground(@NonNull Canvas canvas, @NonNull Paint paint, int i2, int i4, int i5, int i6, int i7, @NonNull CharSequence charSequence, int i8, int i9, int i10) {
        int color = paint.getColor();
        paint.setColor(this.backgroundColor);
        canvas.drawRect(i2, i5, i4, i7, paint);
        paint.setColor(color);
    }

    @Override // android.text.style.LeadingMarginSpan
    public void drawLeadingMargin(Canvas canvas, Paint paint, int i2, int i4, int i5, int i6, int i7, CharSequence charSequence, int i8, int i9, boolean z3, Layout layout) {
        Paint.Style style = paint.getStyle();
        int color = paint.getColor();
        paint.setStyle(Paint.Style.FILL);
        paint.setColor(this.stripColor);
        float f4 = i2;
        canvas.drawRect(f4, i5, (i4 * this.stripeWidth) + f4, i7, paint);
        paint.setStyle(style);
        paint.setColor(color);
    }

    @Override // android.text.style.LeadingMarginSpan
    public int getLeadingMargin(boolean z3) {
        return (int) (this.stripeWidth + this.gap);
    }
}
