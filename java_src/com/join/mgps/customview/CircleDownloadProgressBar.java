package com.join.mgps.customview;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Shader;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import androidx.annotation.RequiresApi;
import com.join.android.app.mgsim.wufun.R;
/* loaded from: classes3.dex */
public class CircleDownloadProgressBar extends View {

    /* renamed from: m  reason: collision with root package name */
    private static int f45011m = 100;

    /* renamed from: a  reason: collision with root package name */
    private int f45012a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f45013b;

    /* renamed from: c  reason: collision with root package name */
    private int f45014c;

    /* renamed from: d  reason: collision with root package name */
    private int f45015d;

    /* renamed from: e  reason: collision with root package name */
    private Paint f45016e;

    /* renamed from: f  reason: collision with root package name */
    private Context f45017f;

    /* renamed from: g  reason: collision with root package name */
    private Paint f45018g;

    /* renamed from: h  reason: collision with root package name */
    private int f45019h;

    /* renamed from: i  reason: collision with root package name */
    private int f45020i;

    /* renamed from: j  reason: collision with root package name */
    private int f45021j;

    /* renamed from: k  reason: collision with root package name */
    private int f45022k;

    /* renamed from: l  reason: collision with root package name */
    private int f45023l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements ValueAnimator.AnimatorUpdateListener {
        a() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public final void onAnimationUpdate(ValueAnimator valueAnimator) {
            CircleDownloadProgressBar.this.f45014c = (((Integer) valueAnimator.getAnimatedValue()).intValue() * 360) / CircleDownloadProgressBar.f45011m;
            CircleDownloadProgressBar.this.invalidate();
        }
    }

    public CircleDownloadProgressBar(Context context) {
        this(context, null);
    }

    public void c(AttributeSet attributeSet) {
        this.f45018g = new Paint();
        this.f45016e = new Paint();
        TypedArray obtainStyledAttributes = this.f45017f.obtainStyledAttributes(attributeSet, R.styleable.CircleDownloadProgressBar);
        this.f45015d = obtainStyledAttributes.getColor(2, getResources().getColor(R.color.colorPrimaryDark));
        this.f45022k = obtainStyledAttributes.getColor(4, getResources().getColor(R.color.colorAccent));
        this.f45020i = obtainStyledAttributes.getDimensionPixelOffset(3, 20);
        boolean z3 = obtainStyledAttributes.getBoolean(1, false);
        this.f45013b = z3;
        if (z3) {
            this.f45023l = obtainStyledAttributes.getColor(5, this.f45017f.getResources().getColor(R.color.colorPrimary));
            this.f45012a = obtainStyledAttributes.getColor(0, this.f45017f.getResources().getColor(R.color.colorAccent));
        }
        obtainStyledAttributes.recycle();
    }

    public int getProgress() {
        return this.f45019h;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int min = Math.min(getHeight(), getWidth()) / 2;
        int i2 = min - (this.f45020i / 2);
        this.f45016e.setAntiAlias(true);
        this.f45016e.setStrokeCap(Paint.Cap.ROUND);
        this.f45016e.setStrokeWidth(this.f45020i - 1);
        this.f45016e.setStyle(Paint.Style.STROKE);
        this.f45018g.setAntiAlias(true);
        this.f45018g.setColor(this.f45015d);
        this.f45018g.setStrokeWidth(this.f45020i);
        this.f45018g.setStyle(Paint.Style.STROKE);
        this.f45018g.setStrokeCap(Paint.Cap.ROUND);
        float f4 = min - i2;
        int i4 = min + i2;
        float f5 = i4;
        RectF rectF = new RectF(f4, f4, f5, f5);
        if (this.f45013b) {
            float f6 = i4 / 2;
            LinearGradient linearGradient = new LinearGradient(f6, 0.0f, f6, getHeight(), new int[]{this.f45012a, this.f45023l}, (float[]) null, Shader.TileMode.MIRROR);
            Matrix matrix = new Matrix();
            matrix.setRotate(-183.0f, f6, f6);
            linearGradient.setLocalMatrix(matrix);
            this.f45016e.setShader(linearGradient);
        } else {
            this.f45016e.setColor(this.f45022k);
        }
        float f7 = min;
        canvas.drawCircle(f7, f7, i2, this.f45016e);
        canvas.drawArc(rectF, this.f45021j, -this.f45014c, false, this.f45018g);
    }

    public void setProgress(int i2, boolean z3) {
        if (z3) {
            setProgress(i2);
            return;
        }
        int i4 = f45011m;
        if (i2 > i4) {
            this.f45019h = i4;
            this.f45014c = 360;
        } else {
            this.f45019h = i2;
            this.f45014c = (i2 * 360) / i4;
        }
        invalidate();
    }

    public void setStartAngle(int i2) {
        this.f45021j = i2;
    }

    public CircleDownloadProgressBar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public CircleDownloadProgressBar(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f45019h = 100;
        this.f45021j = -90;
        this.f45017f = context;
        c(attributeSet);
    }

    @RequiresApi(api = 21)
    public CircleDownloadProgressBar(Context context, AttributeSet attributeSet, int i2, int i4) {
        super(context, attributeSet, i2, i4);
        this.f45019h = 100;
        this.f45021j = -90;
        this.f45017f = context;
        c(attributeSet);
    }

    public void setProgress(int i2) {
        int i4 = this.f45019h;
        int i5 = f45011m;
        if (i2 > i5) {
            this.f45019h = i5;
        } else {
            this.f45019h = i5 - i2;
        }
        int abs = (Math.abs(i2 - i4) * 1000) / f45011m;
        new ValueAnimator();
        ValueAnimator ofInt = ValueAnimator.ofInt(i4, this.f45019h);
        ofInt.setInterpolator(new DecelerateInterpolator());
        ofInt.setDuration(abs);
        ofInt.addUpdateListener(new a());
        ofInt.start();
    }
}
