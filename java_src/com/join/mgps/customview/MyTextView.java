package com.join.mgps.customview;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.widget.TextView;
import java.lang.reflect.Array;
import java.util.regex.Pattern;
/* loaded from: classes3.dex */
public class MyTextView extends TextView {

    /* renamed from: a  reason: collision with root package name */
    private String f45843a;

    /* renamed from: b  reason: collision with root package name */
    private int f45844b;

    /* renamed from: c  reason: collision with root package name */
    private Paint f45845c;

    /* renamed from: d  reason: collision with root package name */
    private int f45846d;

    /* renamed from: e  reason: collision with root package name */
    private int f45847e;

    /* renamed from: f  reason: collision with root package name */
    private int f45848f;

    /* renamed from: g  reason: collision with root package name */
    private int f45849g;

    /* renamed from: h  reason: collision with root package name */
    int f45850h;

    /* renamed from: i  reason: collision with root package name */
    int[][] f45851i;

    public MyTextView(Context context) {
        super(context);
        c();
    }

    public static int a(Context context, float f4) {
        return (int) ((f4 * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public void b(String str) {
        int i2;
        float f4;
        int i4;
        this.f45843a = str;
        int length = str.length();
        this.f45850h = length;
        this.f45851i = (int[][]) Array.newInstance(int.class, length, 2);
        int i5 = 1;
        int i6 = 0;
        for (int i7 = 0; i7 < this.f45850h; i7++) {
            String valueOf = String.valueOf(str.charAt(i7));
            Rect rect = new Rect();
            this.f45845c.getTextBounds(valueOf, 0, 1, rect);
            int width = rect.width();
            if (valueOf.equals("《") || valueOf.equals("（")) {
                width += this.f45849g * 2;
            }
            float f5 = width;
            int i8 = (int) (i6 + f5);
            if (i8 > this.f45844b) {
                i5++;
                i2 = 0;
            } else {
                i2 = (int) (i8 - f5);
            }
            int[][] iArr = this.f45851i;
            iArr[i7][0] = i2;
            iArr[i7][1] = (this.f45848f * i5) + (this.f45847e * (i5 - 1));
            if (d(valueOf)) {
                f4 = i2;
                i4 = this.f45849g;
            } else {
                f4 = i2;
                i4 = this.f45846d;
            }
            i6 = (int) (f4 + f5 + i4);
        }
        setHeight((this.f45848f + this.f45847e) * i5);
    }

    public void c() {
        Paint paint = new Paint();
        this.f45845c = paint;
        paint.setColor(Color.parseColor("#787878"));
        this.f45845c.setTypeface(Typeface.DEFAULT);
        this.f45845c.setTextSize(a(getContext(), 14.0f));
        Paint.FontMetrics fontMetrics = this.f45845c.getFontMetrics();
        this.f45848f = (int) (Math.ceil(fontMetrics.descent - fontMetrics.top) + 2.0d);
        this.f45846d = a(getContext(), 4.0f);
        this.f45847e = a(getContext(), 10.0f);
        this.f45849g = a(getContext(), 2.0f);
    }

    public boolean d(String str) {
        return Pattern.compile("^[A-Za-z0-9_]+$").matcher(str).matches();
    }

    @Override // android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (TextUtils.isEmpty(this.f45843a)) {
            return;
        }
        for (int i2 = 0; i2 < this.f45850h; i2++) {
            String valueOf = String.valueOf(this.f45843a.charAt(i2));
            int[][] iArr = this.f45851i;
            canvas.drawText(valueOf, iArr[i2][0], iArr[i2][1], this.f45845c);
        }
    }

    public void setText(String str) {
        this.f45844b = getWidth();
        b(str);
        invalidate();
    }

    public MyTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        c();
    }

    public MyTextView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        c();
    }
}
