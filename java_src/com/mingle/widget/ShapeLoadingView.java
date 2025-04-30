package com.mingle.widget;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import com.mingle.shapeloading.R;
import com.nineoldandroids.animation.e;
/* loaded from: classes4.dex */
public class ShapeLoadingView extends View {

    /* renamed from: m  reason: collision with root package name */
    private static final float f52677m = 1.7320508f;

    /* renamed from: n  reason: collision with root package name */
    private static final float f52678n = 0.25555554f;

    /* renamed from: a  reason: collision with root package name */
    private Shape f52679a;

    /* renamed from: b  reason: collision with root package name */
    private Interpolator f52680b;

    /* renamed from: c  reason: collision with root package name */
    private e f52681c;

    /* renamed from: d  reason: collision with root package name */
    private int f52682d;

    /* renamed from: e  reason: collision with root package name */
    private int f52683e;

    /* renamed from: f  reason: collision with root package name */
    private int f52684f;

    /* renamed from: g  reason: collision with root package name */
    private float f52685g;

    /* renamed from: h  reason: collision with root package name */
    public boolean f52686h;

    /* renamed from: i  reason: collision with root package name */
    private Paint f52687i;

    /* renamed from: j  reason: collision with root package name */
    private float f52688j;

    /* renamed from: k  reason: collision with root package name */
    private float f52689k;

    /* renamed from: l  reason: collision with root package name */
    private float f52690l;

    /* loaded from: classes4.dex */
    public enum Shape {
        SHAPE_TRIANGLE,
        SHAPE_RECT,
        SHAPE_CIRCLE
    }

    /* loaded from: classes4.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f52691a;

        static {
            int[] iArr = new int[Shape.values().length];
            f52691a = iArr;
            try {
                iArr[Shape.SHAPE_TRIANGLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f52691a[Shape.SHAPE_CIRCLE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f52691a[Shape.SHAPE_RECT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public ShapeLoadingView(Context context) {
        super(context);
        this.f52679a = Shape.SHAPE_CIRCLE;
        this.f52680b = new DecelerateInterpolator();
        this.f52681c = new e();
        this.f52685g = 0.5522848f;
        this.f52686h = false;
        this.f52688j = 0.0f;
        this.f52689k = 0.0f;
        b();
    }

    private void b() {
        Paint paint = new Paint();
        this.f52687i = paint;
        Resources resources = getResources();
        int i2 = R.color.triangle;
        paint.setColor(resources.getColor(i2));
        this.f52687i.setAntiAlias(true);
        this.f52687i.setStyle(Paint.Style.FILL_AND_STROKE);
        setBackgroundColor(getResources().getColor(R.color.view_bg));
        this.f52682d = getResources().getColor(i2);
        this.f52683e = getResources().getColor(R.color.circle);
        this.f52684f = getResources().getColor(i2);
    }

    private float c(float f4) {
        return getWidth() * f4;
    }

    private float d(float f4) {
        return getHeight() * f4;
    }

    public void a() {
        this.f52686h = true;
        invalidate();
    }

    public Shape getShape() {
        return this.f52679a;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (getVisibility() == 8) {
            return;
        }
        int i2 = a.f52691a[this.f52679a.ordinal()];
        if (i2 == 1) {
            if (this.f52686h) {
                double d4 = this.f52690l;
                Double.isNaN(d4);
                float f4 = (float) (d4 + 0.1611113d);
                this.f52690l = f4;
                this.f52687i.setColor(((Integer) this.f52681c.evaluate(f4, Integer.valueOf(this.f52682d), Integer.valueOf(this.f52683e))).intValue());
                Path path = new Path();
                path.moveTo(c(0.5f), d(0.0f));
                if (this.f52690l >= 1.0f) {
                    this.f52679a = Shape.SHAPE_CIRCLE;
                    this.f52686h = false;
                    this.f52690l = 1.0f;
                }
                float c4 = this.f52688j - (c(this.f52690l * f52678n) * f52677m);
                float d5 = this.f52689k - d(this.f52690l * f52678n);
                path.quadTo(c(1.0f) - c4, d5, c(0.9330127f), d(0.75f));
                path.quadTo(c(0.5f), d((this.f52690l * 2.0f * f52678n) + 0.75f), c(0.066987306f), d(0.75f));
                path.quadTo(c4, d5, c(0.5f), d(0.0f));
                path.close();
                canvas.drawPath(path, this.f52687i);
                invalidate();
                return;
            }
            Path path2 = new Path();
            this.f52687i.setColor(getResources().getColor(R.color.triangle));
            path2.moveTo(c(0.5f), d(0.0f));
            path2.lineTo(c(1.0f), d(0.8660254f));
            path2.lineTo(c(0.0f), d(0.8660254f));
            this.f52688j = c(0.28349364f);
            this.f52689k = d(0.375f);
            this.f52690l = 0.0f;
            path2.close();
            canvas.drawPath(path2, this.f52687i);
        } else if (i2 != 2) {
            if (i2 != 3) {
                return;
            }
            if (this.f52686h) {
                double d6 = this.f52690l;
                Double.isNaN(d6);
                float f5 = (float) (d6 + 0.15d);
                this.f52690l = f5;
                if (f5 >= 1.0f) {
                    this.f52679a = Shape.SHAPE_TRIANGLE;
                    this.f52686h = false;
                    this.f52690l = 1.0f;
                }
                this.f52687i.setColor(((Integer) this.f52681c.evaluate(this.f52690l, Integer.valueOf(this.f52684f), Integer.valueOf(this.f52682d))).intValue());
                Path path3 = new Path();
                path3.moveTo(c(this.f52690l * 0.5f), 0.0f);
                path3.lineTo(d(1.0f - (this.f52690l * 0.5f)), 0.0f);
                float f6 = this.f52688j * this.f52690l;
                float d7 = (d(1.0f) - this.f52689k) * this.f52690l;
                path3.lineTo(c(1.0f) - f6, d(1.0f) - d7);
                path3.lineTo(c(0.0f) + f6, d(1.0f) - d7);
                path3.close();
                canvas.drawPath(path3, this.f52687i);
                invalidate();
                return;
            }
            this.f52687i.setColor(getResources().getColor(R.color.rect));
            this.f52688j = c(0.066987306f);
            this.f52689k = d(0.75f);
            Path path4 = new Path();
            path4.moveTo(c(0.0f), d(0.0f));
            path4.lineTo(c(1.0f), d(0.0f));
            path4.lineTo(c(1.0f), d(1.0f));
            path4.lineTo(c(0.0f), d(1.0f));
            path4.close();
            this.f52690l = 0.0f;
            canvas.drawPath(path4, this.f52687i);
        } else if (this.f52686h) {
            float f7 = this.f52685g;
            float f8 = this.f52690l;
            float f9 = f7 + f8;
            double d8 = f8;
            Double.isNaN(d8);
            float f10 = (float) (d8 + 0.12d);
            this.f52690l = f10;
            if (f9 + f10 >= 1.9f) {
                this.f52679a = Shape.SHAPE_RECT;
                this.f52686h = false;
            }
            this.f52687i.setColor(((Integer) this.f52681c.evaluate(f10, Integer.valueOf(this.f52683e), Integer.valueOf(this.f52684f))).intValue());
            Path path5 = new Path();
            path5.moveTo(c(0.5f), d(0.0f));
            float f11 = f9 / 2.0f;
            float f12 = f11 + 0.5f;
            float f13 = 0.5f - f11;
            path5.cubicTo(c(f12), d(0.0f), c(1.0f), d(f13), c(1.0f), d(0.5f));
            path5.cubicTo(c(1.0f), c(f12), c(f12), d(1.0f), c(0.5f), d(1.0f));
            path5.cubicTo(c(f13), c(1.0f), c(0.0f), d(f12), c(0.0f), d(0.5f));
            path5.cubicTo(c(0.0f), c(f13), c(f13), d(0.0f), c(0.5f), d(0.0f));
            path5.close();
            canvas.drawPath(path5, this.f52687i);
            invalidate();
        } else {
            this.f52687i.setColor(getResources().getColor(R.color.circle));
            Path path6 = new Path();
            float f14 = this.f52685g;
            path6.moveTo(c(0.5f), d(0.0f));
            float f15 = f14 / 2.0f;
            float f16 = f15 + 0.5f;
            path6.cubicTo(c(f16), 0.0f, c(1.0f), d(f15), c(1.0f), d(0.5f));
            path6.cubicTo(c(1.0f), c(f16), c(f16), d(1.0f), c(0.5f), d(1.0f));
            float f17 = 0.5f - f15;
            path6.cubicTo(c(f17), c(1.0f), c(0.0f), d(f16), c(0.0f), d(0.5f));
            path6.cubicTo(c(0.0f), c(f17), c(f17), d(0.0f), c(0.5f), d(0.0f));
            this.f52690l = 0.0f;
            path6.close();
            canvas.drawPath(path6, this.f52687i);
        }
    }

    @Override // android.view.View
    public void setVisibility(int i2) {
        super.setVisibility(i2);
        if (i2 == 0) {
            invalidate();
        }
    }

    public ShapeLoadingView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f52679a = Shape.SHAPE_CIRCLE;
        this.f52680b = new DecelerateInterpolator();
        this.f52681c = new e();
        this.f52685g = 0.5522848f;
        this.f52686h = false;
        this.f52688j = 0.0f;
        this.f52689k = 0.0f;
        b();
    }

    public ShapeLoadingView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f52679a = Shape.SHAPE_CIRCLE;
        this.f52680b = new DecelerateInterpolator();
        this.f52681c = new e();
        this.f52685g = 0.5522848f;
        this.f52686h = false;
        this.f52688j = 0.0f;
        this.f52689k = 0.0f;
    }

    @TargetApi(21)
    public ShapeLoadingView(Context context, AttributeSet attributeSet, int i2, int i4) {
        super(context, attributeSet, i2, i4);
        this.f52679a = Shape.SHAPE_CIRCLE;
        this.f52680b = new DecelerateInterpolator();
        this.f52681c = new e();
        this.f52685g = 0.5522848f;
        this.f52686h = false;
        this.f52688j = 0.0f;
        this.f52689k = 0.0f;
        b();
    }
}
