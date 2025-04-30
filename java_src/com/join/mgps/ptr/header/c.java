package com.join.mgps.ptr.header;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PointF;
import android.view.animation.Animation;
import android.view.animation.Transformation;
import java.util.Random;
/* compiled from: StoreHouseBarItem.java */
/* loaded from: classes4.dex */
public class c extends Animation {

    /* renamed from: a  reason: collision with root package name */
    public PointF f51329a;

    /* renamed from: b  reason: collision with root package name */
    public float f51330b;

    /* renamed from: c  reason: collision with root package name */
    public int f51331c;

    /* renamed from: d  reason: collision with root package name */
    private final Paint f51332d;

    /* renamed from: e  reason: collision with root package name */
    private float f51333e;

    /* renamed from: f  reason: collision with root package name */
    private float f51334f;

    /* renamed from: g  reason: collision with root package name */
    private PointF f51335g;

    /* renamed from: h  reason: collision with root package name */
    private PointF f51336h;

    public c(int i2, PointF pointF, PointF pointF2, int i4, int i5) {
        Paint paint = new Paint();
        this.f51332d = paint;
        this.f51333e = 1.0f;
        this.f51334f = 0.4f;
        this.f51331c = i2;
        this.f51329a = new PointF((pointF.x + pointF2.x) / 2.0f, (pointF.y + pointF2.y) / 2.0f);
        float f4 = pointF.x;
        PointF pointF3 = this.f51329a;
        this.f51335g = new PointF(f4 - pointF3.x, pointF.y - pointF3.y);
        float f5 = pointF2.x;
        PointF pointF4 = this.f51329a;
        this.f51336h = new PointF(f5 - pointF4.x, pointF2.y - pointF4.y);
        d(i4);
        e(i5);
        paint.setAntiAlias(true);
        paint.setStyle(Paint.Style.STROKE);
    }

    public void a(Canvas canvas) {
        PointF pointF = this.f51335g;
        float f4 = pointF.x;
        float f5 = pointF.y;
        PointF pointF2 = this.f51336h;
        canvas.drawLine(f4, f5, pointF2.x, pointF2.y, this.f51332d);
    }

    @Override // android.view.animation.Animation
    protected void applyTransformation(float f4, Transformation transformation) {
        float f5 = this.f51333e;
        c(f5 + ((this.f51334f - f5) * f4));
    }

    public void b(int i2) {
        this.f51330b = (-new Random().nextInt(i2)) + i2;
    }

    public void c(float f4) {
        this.f51332d.setAlpha((int) (f4 * 255.0f));
    }

    public void d(int i2) {
        this.f51332d.setColor(i2);
    }

    public void e(int i2) {
        this.f51332d.setStrokeWidth(i2);
    }

    public void f(float f4, float f5) {
        this.f51333e = f4;
        this.f51334f = f5;
        super.start();
    }
}
