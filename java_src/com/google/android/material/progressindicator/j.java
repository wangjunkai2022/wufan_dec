package com.google.android.material.progressindicator;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import androidx.annotation.ColorInt;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import com.google.android.material.color.m;
/* compiled from: LinearDrawingDelegate.java */
/* loaded from: classes2.dex */
final class j extends g<LinearProgressIndicatorSpec> {

    /* renamed from: c  reason: collision with root package name */
    private float f15450c;

    /* renamed from: d  reason: collision with root package name */
    private float f15451d;

    /* renamed from: e  reason: collision with root package name */
    private float f15452e;

    public j(@NonNull LinearProgressIndicatorSpec linearProgressIndicatorSpec) {
        super(linearProgressIndicatorSpec);
        this.f15450c = 300.0f;
    }

    @Override // com.google.android.material.progressindicator.g
    public void a(@NonNull Canvas canvas, @FloatRange(from = 0.0d, to = 1.0d) float f4) {
        Rect clipBounds = canvas.getClipBounds();
        this.f15450c = clipBounds.width();
        float f5 = ((LinearProgressIndicatorSpec) this.f15443a).f15382a;
        canvas.translate(clipBounds.left + (clipBounds.width() / 2.0f), clipBounds.top + (clipBounds.height() / 2.0f) + Math.max(0.0f, (clipBounds.height() - ((LinearProgressIndicatorSpec) this.f15443a).f15382a) / 2.0f));
        if (((LinearProgressIndicatorSpec) this.f15443a).f15380i) {
            canvas.scale(-1.0f, 1.0f);
        }
        if ((this.f15444b.k() && ((LinearProgressIndicatorSpec) this.f15443a).f15386e == 1) || (this.f15444b.j() && ((LinearProgressIndicatorSpec) this.f15443a).f15387f == 2)) {
            canvas.scale(1.0f, -1.0f);
        }
        if (this.f15444b.k() || this.f15444b.j()) {
            canvas.translate(0.0f, (((LinearProgressIndicatorSpec) this.f15443a).f15382a * (f4 - 1.0f)) / 2.0f);
        }
        float f6 = this.f15450c;
        canvas.clipRect((-f6) / 2.0f, (-f5) / 2.0f, f6 / 2.0f, f5 / 2.0f);
        S s3 = this.f15443a;
        this.f15451d = ((LinearProgressIndicatorSpec) s3).f15382a * f4;
        this.f15452e = ((LinearProgressIndicatorSpec) s3).f15383b * f4;
    }

    @Override // com.google.android.material.progressindicator.g
    public void b(@NonNull Canvas canvas, @NonNull Paint paint, @FloatRange(from = 0.0d, to = 1.0d) float f4, @FloatRange(from = 0.0d, to = 1.0d) float f5, @ColorInt int i2) {
        if (f4 == f5) {
            return;
        }
        float f6 = this.f15450c;
        float f7 = this.f15452e;
        paint.setStyle(Paint.Style.FILL);
        paint.setAntiAlias(true);
        paint.setColor(i2);
        float f8 = this.f15451d;
        RectF rectF = new RectF(((-f6) / 2.0f) + (f4 * (f6 - (f7 * 2.0f))), (-f8) / 2.0f, ((-f6) / 2.0f) + (f5 * (f6 - (f7 * 2.0f))) + (f7 * 2.0f), f8 / 2.0f);
        float f9 = this.f15452e;
        canvas.drawRoundRect(rectF, f9, f9, paint);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.progressindicator.g
    public void c(@NonNull Canvas canvas, @NonNull Paint paint) {
        int a4 = m.a(((LinearProgressIndicatorSpec) this.f15443a).f15385d, this.f15444b.getAlpha());
        paint.setStyle(Paint.Style.FILL);
        paint.setAntiAlias(true);
        paint.setColor(a4);
        float f4 = this.f15450c;
        float f5 = this.f15451d;
        RectF rectF = new RectF((-f4) / 2.0f, (-f5) / 2.0f, f4 / 2.0f, f5 / 2.0f);
        float f6 = this.f15452e;
        canvas.drawRoundRect(rectF, f6, f6, paint);
    }

    @Override // com.google.android.material.progressindicator.g
    public int d() {
        return ((LinearProgressIndicatorSpec) this.f15443a).f15382a;
    }

    @Override // com.google.android.material.progressindicator.g
    public int e() {
        return -1;
    }
}
