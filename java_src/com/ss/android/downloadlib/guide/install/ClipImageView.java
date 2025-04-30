package com.ss.android.downloadlib.guide.install;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PaintFlagsDrawFilter;
import android.graphics.Path;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.widget.ImageView;
/* loaded from: classes4.dex */
public class ClipImageView extends ImageView {

    /* renamed from: a  reason: collision with root package name */
    private boolean f57534a;

    /* renamed from: b  reason: collision with root package name */
    private Path f57535b;

    /* renamed from: c  reason: collision with root package name */
    private RectF f57536c;

    /* renamed from: d  reason: collision with root package name */
    private Paint f57537d;

    /* renamed from: e  reason: collision with root package name */
    private float[] f57538e;

    public ClipImageView(Context context) {
        super(context);
        this.f57534a = true;
        a(context);
    }

    protected void a(Context context) {
        this.f57535b = new Path();
        this.f57536c = new RectF();
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.f57534a) {
            this.f57535b.reset();
            this.f57536c.set(0.0f, 0.0f, getWidth(), getHeight());
            float[] fArr = this.f57538e;
            if (fArr != null) {
                this.f57535b.addRoundRect(this.f57536c, fArr, Path.Direction.CW);
            }
            canvas.setDrawFilter(new PaintFlagsDrawFilter(0, 3));
            canvas.clipPath(this.f57535b);
            Paint paint = this.f57537d;
            if (paint != null) {
                canvas.drawPath(this.f57535b, paint);
            }
        }
        super.onDraw(canvas);
    }

    @Override // android.view.View
    public void setBackgroundColor(int i2) {
        Paint paint = new Paint(1);
        this.f57537d = paint;
        paint.setStyle(Paint.Style.FILL);
        this.f57537d.setColor(i2);
    }

    public void setClip(boolean z3) {
        this.f57534a = z3;
    }

    public void setRadius(float[] fArr) {
        if (fArr == null || fArr.length != 8) {
            return;
        }
        this.f57538e = fArr;
    }

    public void setRoundRadius(int i2) {
        if (i2 > 0) {
            float f4 = i2;
            setRadius(new float[]{f4, f4, f4, f4, f4, f4, f4, f4});
        }
    }

    public ClipImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f57534a = true;
        a(context);
    }

    public ClipImageView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f57534a = true;
        a(context);
    }
}
