package com.join.android.app.common.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.widget.ImageView;
/* loaded from: classes.dex */
public class RoundImageView extends ImageView {

    /* renamed from: a  reason: collision with root package name */
    private final RectF f17294a;

    /* renamed from: b  reason: collision with root package name */
    private float f17295b;

    /* renamed from: c  reason: collision with root package name */
    private final Paint f17296c;

    /* renamed from: d  reason: collision with root package name */
    private final Paint f17297d;

    public RoundImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f17294a = new RectF();
        this.f17295b = 6.0f;
        this.f17296c = new Paint();
        this.f17297d = new Paint();
        a();
    }

    private void a() {
        this.f17296c.setAntiAlias(true);
        this.f17296c.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
        this.f17297d.setAntiAlias(true);
        this.f17297d.setColor(-1);
        this.f17295b *= getResources().getDisplayMetrics().density;
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        canvas.saveLayer(this.f17294a, this.f17297d, 31);
        RectF rectF = this.f17294a;
        float f4 = this.f17295b;
        canvas.drawRoundRect(rectF, f4, f4, this.f17297d);
        canvas.saveLayer(this.f17294a, this.f17296c, 31);
        super.draw(canvas);
        canvas.restore();
    }

    @Override // android.view.View
    protected void onLayout(boolean z3, int i2, int i4, int i5, int i6) {
        super.onLayout(z3, i2, i4, i5, i6);
        this.f17294a.set(0.0f, 0.0f, getWidth(), getHeight());
    }

    public RoundImageView(Context context) {
        super(context);
        this.f17294a = new RectF();
        this.f17295b = 6.0f;
        this.f17296c = new Paint();
        this.f17297d = new Paint();
        a();
    }
}
