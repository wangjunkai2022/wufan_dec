package com.join.mgps.customview;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
/* loaded from: classes3.dex */
public class ClipImageBorderView extends View {

    /* renamed from: a  reason: collision with root package name */
    private int f45081a;

    /* renamed from: b  reason: collision with root package name */
    private int f45082b;

    /* renamed from: c  reason: collision with root package name */
    private int f45083c;

    /* renamed from: d  reason: collision with root package name */
    private int f45084d;

    /* renamed from: e  reason: collision with root package name */
    private int f45085e;

    /* renamed from: f  reason: collision with root package name */
    private Paint f45086f;

    public ClipImageBorderView(Context context) {
        this(context, null);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        this.f45083c = getWidth() - (this.f45081a * 2);
        this.f45082b = (getHeight() - this.f45083c) / 2;
        this.f45086f.setColor(Color.parseColor("#aa000000"));
        this.f45086f.setStyle(Paint.Style.FILL);
        canvas.drawRect(0.0f, 0.0f, this.f45081a, getHeight(), this.f45086f);
        canvas.drawRect(getWidth() - this.f45081a, 0.0f, getWidth(), getHeight(), this.f45086f);
        canvas.drawRect(this.f45081a, 0.0f, getWidth() - this.f45081a, this.f45082b, this.f45086f);
        canvas.drawRect(this.f45081a, getHeight() - this.f45082b, getWidth() - this.f45081a, getHeight(), this.f45086f);
        this.f45086f.setColor(this.f45084d);
        this.f45086f.setStrokeWidth(this.f45085e);
        this.f45086f.setStyle(Paint.Style.STROKE);
        canvas.drawRect(this.f45081a, this.f45082b, getWidth() - this.f45081a, getHeight() - this.f45082b, this.f45086f);
    }

    public void setHorizontalPadding(int i2) {
        this.f45081a = i2;
    }

    public ClipImageBorderView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ClipImageBorderView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f45084d = Color.parseColor("#FFFFFF");
        this.f45085e = 1;
        this.f45085e = (int) TypedValue.applyDimension(1, 1, getResources().getDisplayMetrics());
        Paint paint = new Paint();
        this.f45086f = paint;
        paint.setAntiAlias(true);
    }
}
