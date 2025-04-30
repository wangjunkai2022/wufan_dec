package com.google.android.material.progressindicator;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import androidx.annotation.ColorInt;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import com.google.android.material.color.m;
/* compiled from: CircularDrawingDelegate.java */
/* loaded from: classes2.dex */
final class c extends g<CircularProgressIndicatorSpec> {

    /* renamed from: c  reason: collision with root package name */
    private int f15388c;

    /* renamed from: d  reason: collision with root package name */
    private float f15389d;

    /* renamed from: e  reason: collision with root package name */
    private float f15390e;

    /* renamed from: f  reason: collision with root package name */
    private float f15391f;

    public c(@NonNull CircularProgressIndicatorSpec circularProgressIndicatorSpec) {
        super(circularProgressIndicatorSpec);
        this.f15388c = 1;
    }

    private void h(Canvas canvas, Paint paint, float f4, float f5, float f6) {
        canvas.save();
        canvas.rotate(f6);
        float f7 = this.f15391f;
        float f8 = f4 / 2.0f;
        canvas.drawRoundRect(new RectF(f7 - f8, f5, f7 + f8, -f5), f5, f5, paint);
        canvas.restore();
    }

    private int i() {
        S s3 = this.f15443a;
        return ((CircularProgressIndicatorSpec) s3).f15373g + (((CircularProgressIndicatorSpec) s3).f15374h * 2);
    }

    @Override // com.google.android.material.progressindicator.g
    public void a(@NonNull Canvas canvas, @FloatRange(from = 0.0d, to = 1.0d) float f4) {
        S s3;
        S s4 = this.f15443a;
        float f5 = (((CircularProgressIndicatorSpec) s4).f15373g / 2.0f) + ((CircularProgressIndicatorSpec) s4).f15374h;
        canvas.translate(f5, f5);
        canvas.rotate(-90.0f);
        float f6 = -f5;
        canvas.clipRect(f6, f6, f5, f5);
        this.f15388c = ((CircularProgressIndicatorSpec) this.f15443a).f15375i == 0 ? 1 : -1;
        this.f15389d = ((CircularProgressIndicatorSpec) s3).f15382a * f4;
        this.f15390e = ((CircularProgressIndicatorSpec) s3).f15383b * f4;
        this.f15391f = (((CircularProgressIndicatorSpec) s3).f15373g - ((CircularProgressIndicatorSpec) s3).f15382a) / 2.0f;
        if ((this.f15444b.k() && ((CircularProgressIndicatorSpec) this.f15443a).f15386e == 2) || (this.f15444b.j() && ((CircularProgressIndicatorSpec) this.f15443a).f15387f == 1)) {
            this.f15391f += ((1.0f - f4) * ((CircularProgressIndicatorSpec) this.f15443a).f15382a) / 2.0f;
        } else if ((this.f15444b.k() && ((CircularProgressIndicatorSpec) this.f15443a).f15386e == 1) || (this.f15444b.j() && ((CircularProgressIndicatorSpec) this.f15443a).f15387f == 2)) {
            this.f15391f -= ((1.0f - f4) * ((CircularProgressIndicatorSpec) this.f15443a).f15382a) / 2.0f;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.progressindicator.g
    public void b(@NonNull Canvas canvas, @NonNull Paint paint, @FloatRange(from = 0.0d, to = 1.0d) float f4, @FloatRange(from = 0.0d, to = 1.0d) float f5, @ColorInt int i2) {
        if (f4 == f5) {
            return;
        }
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeCap(Paint.Cap.BUTT);
        paint.setAntiAlias(true);
        paint.setColor(i2);
        paint.setStrokeWidth(this.f15389d);
        int i4 = this.f15388c;
        float f6 = f4 * 360.0f * i4;
        float f7 = (f5 >= f4 ? f5 - f4 : (1.0f + f5) - f4) * 360.0f * i4;
        float f8 = this.f15391f;
        canvas.drawArc(new RectF(-f8, -f8, f8, f8), f6, f7, false, paint);
        if (this.f15390e <= 0.0f || Math.abs(f7) >= 360.0f) {
            return;
        }
        paint.setStyle(Paint.Style.FILL);
        h(canvas, paint, this.f15389d, this.f15390e, f6);
        h(canvas, paint, this.f15389d, this.f15390e, f6 + f7);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.progressindicator.g
    public void c(@NonNull Canvas canvas, @NonNull Paint paint) {
        int a4 = m.a(((CircularProgressIndicatorSpec) this.f15443a).f15385d, this.f15444b.getAlpha());
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeCap(Paint.Cap.BUTT);
        paint.setAntiAlias(true);
        paint.setColor(a4);
        paint.setStrokeWidth(this.f15389d);
        float f4 = this.f15391f;
        canvas.drawArc(new RectF(-f4, -f4, f4, f4), 0.0f, 360.0f, false, paint);
    }

    @Override // com.google.android.material.progressindicator.g
    public int d() {
        return i();
    }

    @Override // com.google.android.material.progressindicator.g
    public int e() {
        return i();
    }
}
