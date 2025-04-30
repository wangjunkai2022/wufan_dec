package com.facebook.drawee.drawable;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import com.facebook.common.internal.VisibleForTesting;
import java.lang.ref.WeakReference;
import javax.annotation.Nullable;
/* compiled from: RoundedBitmapDrawable.java */
/* loaded from: classes.dex */
public class m extends o {
    private final Paint C;
    private final Paint D;
    @Nullable
    private final Bitmap E;
    private WeakReference<Bitmap> F;

    public m(Resources resources, @Nullable Bitmap bitmap, @Nullable Paint paint) {
        super(new BitmapDrawable(resources, bitmap));
        Paint paint2 = new Paint();
        this.C = paint2;
        Paint paint3 = new Paint(1);
        this.D = paint3;
        this.E = bitmap;
        if (paint != null) {
            paint2.set(paint);
        }
        paint2.setFlags(1);
        paint3.setStyle(Paint.Style.STROKE);
    }

    public static m o(Resources resources, BitmapDrawable bitmapDrawable) {
        return new m(resources, bitmapDrawable.getBitmap(), bitmapDrawable.getPaint());
    }

    private void q() {
        WeakReference<Bitmap> weakReference = this.F;
        if (weakReference == null || weakReference.get() != this.E) {
            this.F = new WeakReference<>(this.E);
            Paint paint = this.C;
            Bitmap bitmap = this.E;
            Shader.TileMode tileMode = Shader.TileMode.CLAMP;
            paint.setShader(new BitmapShader(bitmap, tileMode, tileMode));
            this.f12100f = true;
        }
        if (this.f12100f) {
            this.C.getShader().setLocalMatrix(this.f12118x);
            this.f12100f = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.facebook.drawee.drawable.o
    @VisibleForTesting
    public boolean d() {
        return super.d() && this.E != null;
    }

    @Override // com.facebook.drawee.drawable.o, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.a("RoundedBitmapDrawable#draw");
        }
        if (!d()) {
            super.draw(canvas);
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
                return;
            }
            return;
        }
        f();
        e();
        q();
        int save = canvas.save();
        canvas.concat(this.f12115u);
        canvas.drawPath(this.f12099e, this.C);
        float f4 = this.f12098d;
        if (f4 > 0.0f) {
            this.D.setStrokeWidth(f4);
            this.D.setColor(f.d(this.f12101g, this.C.getAlpha()));
            canvas.drawPath(this.f12102h, this.D);
        }
        canvas.restoreToCount(save);
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.c();
        }
    }

    Paint p() {
        return this.C;
    }

    @Override // com.facebook.drawee.drawable.o, android.graphics.drawable.Drawable
    public void setAlpha(int i2) {
        super.setAlpha(i2);
        if (i2 != this.C.getAlpha()) {
            this.C.setAlpha(i2);
            super.setAlpha(i2);
            invalidateSelf();
        }
    }

    @Override // com.facebook.drawee.drawable.o, android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        super.setColorFilter(colorFilter);
        this.C.setColorFilter(colorFilter);
    }

    public m(Resources resources, Bitmap bitmap) {
        this(resources, bitmap, null);
    }
}
