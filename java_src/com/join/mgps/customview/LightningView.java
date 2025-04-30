package com.join.mgps.customview;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.Shader;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.animation.AccelerateInterpolator;
import androidx.annotation.Nullable;
/* loaded from: classes3.dex */
public class LightningView extends View {

    /* renamed from: a  reason: collision with root package name */
    private Shader f45709a;

    /* renamed from: b  reason: collision with root package name */
    private Matrix f45710b;

    /* renamed from: c  reason: collision with root package name */
    private Paint f45711c;

    /* renamed from: d  reason: collision with root package name */
    private int f45712d;

    /* renamed from: e  reason: collision with root package name */
    private int f45713e;

    /* renamed from: f  reason: collision with root package name */
    private float f45714f;

    /* renamed from: g  reason: collision with root package name */
    private float f45715g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f45716h;

    /* renamed from: i  reason: collision with root package name */
    private Rect f45717i;

    /* renamed from: j  reason: collision with root package name */
    private ValueAnimator f45718j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f45719k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements ValueAnimator.AnimatorUpdateListener {
        a() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            LightningView lightningView = LightningView.this;
            lightningView.f45714f = ((lightningView.f45712d * 4) * floatValue) - (LightningView.this.f45712d * 2);
            LightningView lightningView2 = LightningView.this;
            lightningView2.f45715g = lightningView2.f45713e * floatValue;
            if (LightningView.this.f45710b != null) {
                LightningView.this.f45710b.setTranslate(LightningView.this.f45714f, LightningView.this.f45715g);
            }
            if (LightningView.this.f45709a != null) {
                LightningView.this.f45709a.setLocalMatrix(LightningView.this.f45710b);
            }
            LightningView.this.invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements ViewTreeObserver.OnGlobalLayoutListener {
        b() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            LightningView.this.getViewTreeObserver().removeGlobalOnLayoutListener(this);
            LightningView.this.f45716h = true;
            if (LightningView.this.f45718j != null) {
                LightningView.this.f45718j.start();
            }
        }
    }

    public LightningView(Context context) {
        super(context);
        this.f45712d = 0;
        this.f45713e = 0;
        this.f45714f = 0.0f;
        this.f45715g = 0.0f;
        this.f45716h = false;
        this.f45719k = true;
        k();
    }

    private void k() {
        this.f45717i = new Rect();
        this.f45711c = new Paint();
        l();
    }

    private void l() {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.f45718j = ofFloat;
        ofFloat.setDuration(2000L);
        this.f45718j.setInterpolator(new AccelerateInterpolator());
        this.f45718j.addUpdateListener(new a());
        if (this.f45719k) {
            this.f45718j.setRepeatCount(-1);
            getViewTreeObserver().addOnGlobalLayoutListener(new b());
        }
    }

    public void m() {
        ValueAnimator valueAnimator;
        if (this.f45716h || (valueAnimator = this.f45718j) == null) {
            return;
        }
        this.f45716h = true;
        valueAnimator.start();
    }

    public void n() {
        ValueAnimator valueAnimator;
        if (!this.f45716h || (valueAnimator = this.f45718j) == null) {
            return;
        }
        this.f45716h = false;
        valueAnimator.cancel();
        invalidate();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (!this.f45716h || this.f45710b == null) {
            return;
        }
        canvas.drawCircle(getWidth() / 2, getHeight() / 2, getHeight() / 2, this.f45711c);
    }

    @Override // android.view.View
    protected void onMeasure(int i2, int i4) {
        super.onMeasure(i2, i4);
        this.f45717i.set(0, 0, getWidth(), getHeight());
    }

    @Override // android.view.View
    protected void onSizeChanged(int i2, int i4, int i5, int i6) {
        super.onSizeChanged(i2, i4, i5, i6);
        if (this.f45712d == 0) {
            this.f45712d = getWidth();
            this.f45713e = getHeight();
            if (this.f45712d > 0) {
                LinearGradient linearGradient = new LinearGradient(0.0f, 0.0f, this.f45712d, this.f45713e / 3, new int[]{16777215, 1090519039, 16777215, 1090519039, 16777215, 16777215}, new float[]{0.0f, 0.45f, 0.46f, 0.75f, 0.76f, 1.0f}, Shader.TileMode.CLAMP);
                this.f45709a = linearGradient;
                this.f45711c.setShader(linearGradient);
                this.f45711c.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.LIGHTEN));
                Matrix matrix = new Matrix();
                this.f45710b = matrix;
                matrix.setTranslate(this.f45712d * (-2), this.f45713e);
                this.f45709a.setLocalMatrix(this.f45710b);
                this.f45717i.set(0, 0, i2, i4);
            }
        }
    }

    public void setAutoRun(boolean z3) {
        this.f45719k = z3;
    }

    public LightningView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f45712d = 0;
        this.f45713e = 0;
        this.f45714f = 0.0f;
        this.f45715g = 0.0f;
        this.f45716h = false;
        this.f45719k = true;
        k();
    }

    public LightningView(Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f45712d = 0;
        this.f45713e = 0;
        this.f45714f = 0.0f;
        this.f45715g = 0.0f;
        this.f45716h = false;
        this.f45719k = true;
        k();
    }
}
