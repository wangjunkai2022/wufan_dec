package com.facebook.drawee.drawable;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import com.facebook.common.internal.VisibleForTesting;
import java.util.Arrays;
import javax.annotation.Nullable;
/* loaded from: classes.dex */
public class RoundedCornersDrawable extends h implements l {
    @VisibleForTesting

    /* renamed from: e  reason: collision with root package name */
    Type f12004e;

    /* renamed from: f  reason: collision with root package name */
    private final RectF f12005f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private RectF f12006g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private Matrix f12007h;

    /* renamed from: i  reason: collision with root package name */
    private final float[] f12008i;
    @VisibleForTesting

    /* renamed from: j  reason: collision with root package name */
    final float[] f12009j;
    @VisibleForTesting

    /* renamed from: k  reason: collision with root package name */
    final Paint f12010k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f12011l;

    /* renamed from: m  reason: collision with root package name */
    private float f12012m;

    /* renamed from: n  reason: collision with root package name */
    private int f12013n;

    /* renamed from: o  reason: collision with root package name */
    private int f12014o;

    /* renamed from: p  reason: collision with root package name */
    private float f12015p;

    /* renamed from: q  reason: collision with root package name */
    private boolean f12016q;

    /* renamed from: r  reason: collision with root package name */
    private final Path f12017r;

    /* renamed from: s  reason: collision with root package name */
    private final Path f12018s;

    /* renamed from: t  reason: collision with root package name */
    private final RectF f12019t;

    /* loaded from: classes2.dex */
    public enum Type {
        OVERLAY_COLOR,
        CLIPPING
    }

    /* loaded from: classes2.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f12020a;

        static {
            int[] iArr = new int[Type.values().length];
            f12020a = iArr;
            try {
                iArr[Type.CLIPPING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f12020a[Type.OVERLAY_COLOR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public RoundedCornersDrawable(Drawable drawable) {
        super((Drawable) com.facebook.common.internal.h.i(drawable));
        this.f12004e = Type.OVERLAY_COLOR;
        this.f12005f = new RectF();
        this.f12008i = new float[8];
        this.f12009j = new float[8];
        this.f12010k = new Paint(1);
        this.f12011l = false;
        this.f12012m = 0.0f;
        this.f12013n = 0;
        this.f12014o = 0;
        this.f12015p = 0.0f;
        this.f12016q = false;
        this.f12017r = new Path();
        this.f12018s = new Path();
        this.f12019t = new RectF();
    }

    private void B() {
        float[] fArr;
        this.f12017r.reset();
        this.f12018s.reset();
        this.f12019t.set(getBounds());
        RectF rectF = this.f12019t;
        float f4 = this.f12015p;
        rectF.inset(f4, f4);
        this.f12017r.addRect(this.f12019t, Path.Direction.CW);
        if (this.f12011l) {
            this.f12017r.addCircle(this.f12019t.centerX(), this.f12019t.centerY(), Math.min(this.f12019t.width(), this.f12019t.height()) / 2.0f, Path.Direction.CW);
        } else {
            this.f12017r.addRoundRect(this.f12019t, this.f12008i, Path.Direction.CW);
        }
        RectF rectF2 = this.f12019t;
        float f5 = this.f12015p;
        rectF2.inset(-f5, -f5);
        RectF rectF3 = this.f12019t;
        float f6 = this.f12012m;
        rectF3.inset(f6 / 2.0f, f6 / 2.0f);
        if (this.f12011l) {
            this.f12018s.addCircle(this.f12019t.centerX(), this.f12019t.centerY(), Math.min(this.f12019t.width(), this.f12019t.height()) / 2.0f, Path.Direction.CW);
        } else {
            int i2 = 0;
            while (true) {
                fArr = this.f12009j;
                if (i2 >= fArr.length) {
                    break;
                }
                fArr[i2] = (this.f12008i[i2] + this.f12015p) - (this.f12012m / 2.0f);
                i2++;
            }
            this.f12018s.addRoundRect(this.f12019t, fArr, Path.Direction.CW);
        }
        RectF rectF4 = this.f12019t;
        float f7 = this.f12012m;
        rectF4.inset((-f7) / 2.0f, (-f7) / 2.0f);
    }

    public void A(Type type) {
        this.f12004e = type;
        invalidateSelf();
    }

    @Override // com.facebook.drawee.drawable.l
    public void a(int i2, float f4) {
        this.f12013n = i2;
        this.f12012m = f4;
        B();
        invalidateSelf();
    }

    @Override // com.facebook.drawee.drawable.l
    public boolean b() {
        return this.f12016q;
    }

    @Override // com.facebook.drawee.drawable.l
    public void c(boolean z3) {
        this.f12011l = z3;
        B();
        invalidateSelf();
    }

    @Override // com.facebook.drawee.drawable.h, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        this.f12005f.set(getBounds());
        int i2 = a.f12020a[this.f12004e.ordinal()];
        if (i2 == 1) {
            int save = canvas.save();
            this.f12017r.setFillType(Path.FillType.EVEN_ODD);
            canvas.clipPath(this.f12017r);
            super.draw(canvas);
            canvas.restoreToCount(save);
        } else if (i2 == 2) {
            if (this.f12016q) {
                RectF rectF = this.f12006g;
                if (rectF == null) {
                    this.f12006g = new RectF(this.f12005f);
                    this.f12007h = new Matrix();
                } else {
                    rectF.set(this.f12005f);
                }
                RectF rectF2 = this.f12006g;
                float f4 = this.f12012m;
                rectF2.inset(f4, f4);
                this.f12007h.setRectToRect(this.f12005f, this.f12006g, Matrix.ScaleToFit.FILL);
                int save2 = canvas.save();
                canvas.clipRect(this.f12005f);
                canvas.concat(this.f12007h);
                super.draw(canvas);
                canvas.restoreToCount(save2);
            } else {
                super.draw(canvas);
            }
            this.f12010k.setStyle(Paint.Style.FILL);
            this.f12010k.setColor(this.f12014o);
            this.f12010k.setStrokeWidth(0.0f);
            this.f12017r.setFillType(Path.FillType.EVEN_ODD);
            canvas.drawPath(this.f12017r, this.f12010k);
            if (this.f12011l) {
                float width = ((this.f12005f.width() - this.f12005f.height()) + this.f12012m) / 2.0f;
                float height = ((this.f12005f.height() - this.f12005f.width()) + this.f12012m) / 2.0f;
                if (width > 0.0f) {
                    RectF rectF3 = this.f12005f;
                    float f5 = rectF3.left;
                    canvas.drawRect(f5, rectF3.top, f5 + width, rectF3.bottom, this.f12010k);
                    RectF rectF4 = this.f12005f;
                    float f6 = rectF4.right;
                    canvas.drawRect(f6 - width, rectF4.top, f6, rectF4.bottom, this.f12010k);
                }
                if (height > 0.0f) {
                    RectF rectF5 = this.f12005f;
                    float f7 = rectF5.left;
                    float f8 = rectF5.top;
                    canvas.drawRect(f7, f8, rectF5.right, f8 + height, this.f12010k);
                    RectF rectF6 = this.f12005f;
                    float f9 = rectF6.left;
                    float f10 = rectF6.bottom;
                    canvas.drawRect(f9, f10 - height, rectF6.right, f10, this.f12010k);
                }
            }
        }
        if (this.f12013n != 0) {
            this.f12010k.setStyle(Paint.Style.STROKE);
            this.f12010k.setColor(this.f12013n);
            this.f12010k.setStrokeWidth(this.f12012m);
            this.f12017r.setFillType(Path.FillType.EVEN_ODD);
            canvas.drawPath(this.f12018s, this.f12010k);
        }
    }

    @Override // com.facebook.drawee.drawable.l
    public void g(float f4) {
        this.f12015p = f4;
        B();
        invalidateSelf();
    }

    @Override // com.facebook.drawee.drawable.l
    public void h(float f4) {
        Arrays.fill(this.f12008i, f4);
        B();
        invalidateSelf();
    }

    @Override // com.facebook.drawee.drawable.l
    public boolean j() {
        return this.f12011l;
    }

    @Override // com.facebook.drawee.drawable.l
    public int k() {
        return this.f12013n;
    }

    @Override // com.facebook.drawee.drawable.l
    public float[] l() {
        return this.f12008i;
    }

    @Override // com.facebook.drawee.drawable.l
    public void m(boolean z3) {
        this.f12016q = z3;
        B();
        invalidateSelf();
    }

    @Override // com.facebook.drawee.drawable.l
    public float n() {
        return this.f12012m;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.drawee.drawable.h, android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        B();
    }

    @Override // com.facebook.drawee.drawable.l
    public float r() {
        return this.f12015p;
    }

    @Override // com.facebook.drawee.drawable.l
    public void t(float[] fArr) {
        if (fArr == null) {
            Arrays.fill(this.f12008i, 0.0f);
        } else {
            com.facebook.common.internal.h.e(fArr.length == 8, "radii should have exactly 8 values");
            System.arraycopy(fArr, 0, this.f12008i, 0, 8);
        }
        B();
        invalidateSelf();
    }

    public int y() {
        return this.f12014o;
    }

    public void z(int i2) {
        this.f12014o = i2;
        invalidateSelf();
    }
}
