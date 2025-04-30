package com.facebook.widget.text.span;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.text.style.ReplacementSpan;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
/* loaded from: classes2.dex */
public class BetterImageSpan extends ReplacementSpan {

    /* renamed from: g  reason: collision with root package name */
    public static final int f13671g = 0;

    /* renamed from: h  reason: collision with root package name */
    public static final int f13672h = 1;

    /* renamed from: i  reason: collision with root package name */
    public static final int f13673i = 2;

    /* renamed from: a  reason: collision with root package name */
    private int f13674a;

    /* renamed from: b  reason: collision with root package name */
    private int f13675b;

    /* renamed from: c  reason: collision with root package name */
    private Rect f13676c;

    /* renamed from: d  reason: collision with root package name */
    private final int f13677d;

    /* renamed from: e  reason: collision with root package name */
    private final Paint.FontMetricsInt f13678e;

    /* renamed from: f  reason: collision with root package name */
    private final Drawable f13679f;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface BetterImageSpanAlignment {
    }

    public BetterImageSpan(Drawable drawable) {
        this(drawable, 1);
    }

    private int b(Paint.FontMetricsInt fontMetricsInt) {
        int i2 = this.f13677d;
        if (i2 != 0) {
            if (i2 != 2) {
                return -this.f13675b;
            }
            int i4 = fontMetricsInt.descent;
            int i5 = fontMetricsInt.ascent;
            return i5 + (((i4 - i5) - this.f13675b) / 2);
        }
        return fontMetricsInt.descent - this.f13675b;
    }

    public static final int c(int i2) {
        if (i2 != 0) {
            return i2 != 2 ? 1 : 2;
        }
        return 0;
    }

    public Drawable a() {
        return this.f13679f;
    }

    public void d() {
        Rect bounds = this.f13679f.getBounds();
        this.f13676c = bounds;
        this.f13674a = bounds.width();
        this.f13675b = this.f13676c.height();
    }

    @Override // android.text.style.ReplacementSpan
    public void draw(Canvas canvas, CharSequence charSequence, int i2, int i4, float f4, int i5, int i6, int i7, Paint paint) {
        paint.getFontMetricsInt(this.f13678e);
        int b4 = i6 + b(this.f13678e);
        canvas.translate(f4, b4);
        this.f13679f.draw(canvas);
        canvas.translate(-f4, -b4);
    }

    @Override // android.text.style.ReplacementSpan
    public int getSize(Paint paint, CharSequence charSequence, int i2, int i4, Paint.FontMetricsInt fontMetricsInt) {
        d();
        if (fontMetricsInt == null) {
            return this.f13674a;
        }
        int b4 = b(fontMetricsInt);
        int i5 = this.f13675b + b4;
        if (b4 < fontMetricsInt.ascent) {
            fontMetricsInt.ascent = b4;
        }
        if (b4 < fontMetricsInt.top) {
            fontMetricsInt.top = b4;
        }
        if (i5 > fontMetricsInt.descent) {
            fontMetricsInt.descent = i5;
        }
        if (i5 > fontMetricsInt.bottom) {
            fontMetricsInt.bottom = i5;
        }
        return this.f13674a;
    }

    public BetterImageSpan(Drawable drawable, int i2) {
        this.f13678e = new Paint.FontMetricsInt();
        this.f13679f = drawable;
        this.f13677d = i2;
        d();
    }
}
