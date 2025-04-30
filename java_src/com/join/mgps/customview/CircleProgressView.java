package com.join.mgps.customview;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.BitmapFactory;
import android.graphics.BlurMaskFilter;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.SweepGradient;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.Interpolator;
import androidx.annotation.Nullable;
import com.join.android.app.mgsim.wufun.R;
/* loaded from: classes3.dex */
public class CircleProgressView extends View {

    /* renamed from: h  reason: collision with root package name */
    public static final String f45067h = "progress";

    /* renamed from: a  reason: collision with root package name */
    private float f45068a;

    /* renamed from: b  reason: collision with root package name */
    private RectF f45069b;

    /* renamed from: c  reason: collision with root package name */
    private Paint f45070c;

    /* renamed from: d  reason: collision with root package name */
    private int f45071d;

    /* renamed from: e  reason: collision with root package name */
    private int f45072e;

    /* renamed from: f  reason: collision with root package name */
    private int[] f45073f;

    /* renamed from: g  reason: collision with root package name */
    private float f45074g;

    /* loaded from: classes3.dex */
    class a implements Interpolator {
        a() {
        }

        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f4) {
            float f5 = 1.0f - f4;
            return 1.0f - ((f5 * f5) * f5);
        }
    }

    /* loaded from: classes3.dex */
    class b implements ValueAnimator.AnimatorUpdateListener {
        b() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            CircleProgressView.this.f45068a = (((Float) valueAnimator.getAnimatedValue()).floatValue() * 360.0f) / 100.0f;
            StringBuilder sb = new StringBuilder();
            sb.append(CircleProgressView.this.f45068a);
            sb.append("");
            CircleProgressView.this.invalidate();
        }
    }

    public CircleProgressView(Context context) {
        super(context);
        this.f45071d = 40;
        this.f45072e = 5;
    }

    public void c(float f4) {
        this.f45068a = f4;
        AnimatorSet animatorSet = new AnimatorSet();
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, "progress", 0.0f, f4);
        ofFloat.setDuration(1000L);
        ofFloat.setInterpolator(new AccelerateDecelerateInterpolator());
        animatorSet.playTogether(ofFloat);
        animatorSet.start();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        int i2;
        String str;
        this.f45070c.setShader(null);
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        this.f45070c.setAntiAlias(true);
        this.f45070c.setStrokeWidth(1.0f);
        this.f45070c.setStyle(Paint.Style.FILL);
        this.f45070c.setStrokeCap(Paint.Cap.BUTT);
        this.f45070c.setColor(Color.parseColor("#000000"));
        new DisplayMetrics();
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        float f4 = displayMetrics.density;
        double d4 = f4;
        Double.isNaN(d4);
        float f5 = (float) (d4 * 3.5d);
        double d5 = f4;
        Double.isNaN(d5);
        float f6 = (float) (d5 * 2.5d);
        float f7 = measuredWidth;
        float f8 = f7 - f6;
        float f9 = measuredHeight;
        float f10 = f9 - f6;
        this.f45070c.setShader(new LinearGradient(f6, f6, f8, f10, new int[]{Color.parseColor("#FFFFFF"), Color.parseColor("#efefef")}, (float[]) null, Shader.TileMode.CLAMP));
        this.f45069b.set(f6, f6, f8, f10);
        canvas.drawArc(this.f45069b, 0.0f, 360.0f, false, this.f45070c);
        this.f45070c.setShader(null);
        this.f45070c.setStyle(Paint.Style.FILL_AND_STROKE);
        this.f45070c.setColor(Color.parseColor("#cccccc"));
        this.f45070c.setMaskFilter(new BlurMaskFilter(f6, BlurMaskFilter.Blur.OUTER));
        this.f45069b.set(f6, f6, f8, f10);
        canvas.drawArc(this.f45069b, 0.0f, 360.0f, false, this.f45070c);
        this.f45070c.setColor(Color.parseColor("#DDDDDD"));
        float f11 = f6 + f5;
        float f12 = f11 + (this.f45072e / 2);
        this.f45070c.setStyle(Paint.Style.STROKE);
        this.f45070c.setStrokeWidth(this.f45072e);
        this.f45070c.setMaskFilter(null);
        float f13 = f7 - f12;
        float f14 = f9 - f12;
        this.f45069b.set(f12, f12, f13, f14);
        canvas.drawArc(this.f45069b, 0.0f, 360.0f, false, this.f45070c);
        this.f45070c.setColor(Color.parseColor("#000000"));
        this.f45070c.setStyle(Paint.Style.STROKE);
        this.f45070c.setStrokeWidth(1.0f);
        this.f45070c.setMaskFilter(new BlurMaskFilter(5.0f, BlurMaskFilter.Blur.INNER));
        this.f45069b.set(f11, f11, f7 - f11, f9 - f11);
        canvas.drawArc(this.f45069b, 0.0f, 360.0f, false, this.f45070c);
        float f15 = f5 + 5.0f + this.f45072e;
        this.f45070c.setMaskFilter(new BlurMaskFilter(5.0f, BlurMaskFilter.Blur.INNER));
        this.f45069b.set(f15, f15, f7 - f15, f9 - f15);
        canvas.drawArc(this.f45069b, 0.0f, 360.0f, false, this.f45070c);
        this.f45070c.setMaskFilter(null);
        this.f45070c.setColor(Color.parseColor("#f47500"));
        float f16 = measuredWidth / 2;
        canvas.drawBitmap(BitmapFactory.decodeResource(getResources(), R.drawable.wufan_name), f16 - (((displayMetrics.density * 35.0f) / 2.0f) / 2.0f), (measuredHeight * 70) / 110, this.f45070c);
        this.f45070c.setStrokeWidth(this.f45072e);
        this.f45070c.setStyle(Paint.Style.STROKE);
        this.f45069b.set(f12, f12, f13, f14);
        int[] iArr = this.f45073f;
        int length = iArr.length;
        int[] iArr2 = new int[length];
        System.arraycopy(iArr, 0, iArr2, 0, length);
        SweepGradient sweepGradient = new SweepGradient(f16, f16, iArr2, (float[]) null);
        int i4 = (int) ((1.0f - (this.f45068a / this.f45074g)) * 90.0f);
        float f17 = measuredHeight / 2;
        canvas.rotate((-90) - i4, f17, f17);
        this.f45070c.setStyle(Paint.Style.STROKE);
        this.f45070c.setShader(sweepGradient);
        canvas.drawArc(this.f45069b, 0.0f, this.f45068a, false, this.f45070c);
        canvas.rotate(i4 + 90, f17, f17);
        this.f45070c.setTextSize((((measuredHeight * 31) * 12) / 110) / 10);
        this.f45070c.setShader(new SweepGradient(f16, f16, Color.parseColor("#f47500"), Color.parseColor("#f47500")));
        this.f45070c.setStyle(Paint.Style.FILL);
        this.f45070c.setTypeface(Typeface.create(Typeface.SANS_SERIF, 3));
        canvas.drawText((((int) Math.rint((this.f45068a * 100.0f) / 360.0f)) / 10.0f) + "", i2 - (((int) this.f45070c.measureText(str, 0, str.length())) / 2), (measuredHeight * 60) / 110, this.f45070c);
    }

    @Override // android.view.View
    protected void onMeasure(int i2, int i4) {
        if (this.f45071d <= 40) {
            this.f45071d = 40;
        }
        int i5 = this.f45071d;
        setMeasuredDimension(i5, i5);
    }

    public void setColors(int[] iArr) {
        this.f45073f = iArr;
    }

    public void setFirstProgressfloat(float f4) {
        this.f45074g = (360.0f * f4) / 100.0f;
        c(f4);
    }

    public void setProgress(float f4) {
        this.f45068a = (f4 * 360.0f) / 100.0f;
        invalidate();
    }

    public void setValue(float f4) {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, f4);
        ofFloat.setDuration(1500L);
        ofFloat.setInterpolator(new a());
        ofFloat.addUpdateListener(new b());
        ofFloat.start();
    }

    public CircleProgressView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f45071d = 40;
        this.f45072e = 5;
        try {
            setLayerType(1, null);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.CircleProgressView);
            int dimensionPixelOffset = obtainStyledAttributes.getDimensionPixelOffset(1, 40);
            int dimensionPixelOffset2 = obtainStyledAttributes.getDimensionPixelOffset(0, 40);
            this.f45071d = dimensionPixelOffset;
            this.f45072e = dimensionPixelOffset2;
            obtainStyledAttributes.recycle();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        this.f45070c = new Paint();
        this.f45069b = new RectF();
        this.f45068a = 50.0f;
    }
}
