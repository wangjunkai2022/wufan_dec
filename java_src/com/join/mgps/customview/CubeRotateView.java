package com.join.mgps.customview;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Camera;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.BaseInterpolator;
import android.widget.FrameLayout;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import com.join.mgps.Util.x0;
import java.util.Timer;
import java.util.TimerTask;
/* loaded from: classes3.dex */
public class CubeRotateView extends FrameLayout {

    /* renamed from: l  reason: collision with root package name */
    private static final int f45270l = 90;

    /* renamed from: a  reason: collision with root package name */
    private Camera f45271a;

    /* renamed from: b  reason: collision with root package name */
    private Matrix f45272b;

    /* renamed from: c  reason: collision with root package name */
    private BaseInterpolator f45273c;

    /* renamed from: d  reason: collision with root package name */
    private long f45274d;

    /* renamed from: e  reason: collision with root package name */
    private long f45275e;

    /* renamed from: f  reason: collision with root package name */
    private Timer f45276f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f45277g;

    /* renamed from: h  reason: collision with root package name */
    private float f45278h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f45279i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f45280j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f45281k;

    /* loaded from: classes3.dex */
    class a extends TimerTask {

        /* renamed from: com.join.mgps.customview.CubeRotateView$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        class RunnableC0192a implements Runnable {
            RunnableC0192a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                CubeRotateView.this.g();
            }
        }

        a() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            x0.a().post(new RunnableC0192a());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements ValueAnimator.AnimatorUpdateListener {
        b() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            CubeRotateView.this.f45278h = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements Animator.AnimatorListener {
        c() {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            CubeRotateView.this.f45280j = false;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            CubeRotateView.this.f45280j = false;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
        }
    }

    public CubeRotateView(Context context) {
        super(context);
        this.f45273c = new AccelerateDecelerateInterpolator();
        this.f45274d = 3000L;
        this.f45277g = true;
        this.f45278h = 1.0f;
        this.f45279i = false;
        this.f45280j = false;
        this.f45281k = true;
    }

    private void c(Canvas canvas, double d4) {
        View childAt = this.f45279i ? getChildAt(0) : getChildAt(1);
        View childAt2 = this.f45279i ? getChildAt(1) : getChildAt(0);
        int width = getWidth();
        int height = getHeight();
        long drawingTime = getDrawingTime();
        this.f45271a.save();
        Camera camera = this.f45271a;
        double d5 = width;
        Double.isNaN(d5);
        Double.isNaN(d5);
        camera.translate((float) (d5 - (d4 * d5)), 0.0f, 0.0f);
        this.f45271a.rotateY((float) ((-90.0d) * d4));
        this.f45271a.getMatrix(this.f45272b);
        this.f45271a.restore();
        int i2 = -width;
        float f4 = (-height) / 2;
        this.f45272b.preTranslate(i2, f4);
        float f5 = height / 2;
        this.f45272b.postTranslate(0.0f, f5);
        canvas.save();
        canvas.concat(this.f45272b);
        drawChild(canvas, childAt, drawingTime);
        canvas.restore();
        this.f45271a.save();
        Camera camera2 = this.f45271a;
        double d6 = i2;
        Double.isNaN(d6);
        camera2.translate((float) (d6 * d4), 0.0f, 0.0f);
        this.f45271a.rotateY((float) (90.0d - (d4 * 90.0d)));
        this.f45271a.getMatrix(this.f45272b);
        this.f45271a.restore();
        this.f45272b.postTranslate(width, f5);
        this.f45272b.preTranslate(0.0f, f4);
        canvas.save();
        canvas.concat(this.f45272b);
        drawChild(canvas, childAt2, drawingTime);
        canvas.restore();
    }

    private void d(Canvas canvas, double d4) {
        View childAt = this.f45279i ? getChildAt(0) : getChildAt(1);
        View childAt2 = this.f45279i ? getChildAt(1) : getChildAt(0);
        int width = getWidth();
        int height = getHeight();
        long drawingTime = getDrawingTime();
        double d5 = 90.0d * d4;
        this.f45271a.save();
        Camera camera = this.f45271a;
        double d6 = height;
        Double.isNaN(d6);
        double d7 = d6 * d4;
        camera.translate(0.0f, (float) d7, 0.0f);
        this.f45271a.rotateX((((float) d5) * 2.0f) / 3.0f);
        this.f45271a.getMatrix(this.f45272b);
        this.f45271a.restore();
        float f4 = (-width) / 2;
        int i2 = -height;
        this.f45272b.preTranslate(f4, i2);
        float f5 = width / 2;
        this.f45272b.postTranslate(f5, height);
        canvas.save();
        canvas.concat(this.f45272b);
        drawChild(canvas, childAt, drawingTime);
        canvas.restore();
        float f6 = (float) (d5 - 90.0d);
        this.f45271a.save();
        Camera camera2 = this.f45271a;
        double d8 = i2;
        Double.isNaN(d8);
        camera2.translate(0.0f, (float) (d8 + d7), 0.0f);
        this.f45271a.rotateX((f6 * 2.0f) / 3.0f);
        this.f45271a.getMatrix(this.f45272b);
        this.f45271a.restore();
        this.f45272b.postTranslate(f5, 0.0f);
        this.f45272b.preTranslate(f4, 0.0f);
        canvas.save();
        canvas.concat(this.f45272b);
        drawChild(canvas, childAt2, drawingTime);
        canvas.restore();
    }

    private void e(Canvas canvas, int i2, long j4, float f4) {
        int i4;
        int height = getHeight();
        int i5 = i2 * height;
        int scrollY = getScrollY();
        if (i5 > scrollY + height || (i4 = height + i5) < scrollY) {
            return;
        }
        View childAt = getChildAt(i2);
        float scrollY2 = (getScrollY() * (f4 / getMeasuredHeight())) - (i2 * f4);
        if (scrollY2 > 90.0f || scrollY2 < -90.0f) {
            return;
        }
        float f5 = i5 < scrollY ? i4 : i5;
        float width = getWidth() / 2;
        Camera camera = this.f45271a;
        Matrix matrix = this.f45272b;
        canvas.save();
        camera.save();
        camera.translate(0.0f, -getHeight(), 0.0f);
        camera.rotateX(-f4);
        camera.getMatrix(matrix);
        camera.restore();
        matrix.preTranslate(-width, -f5);
        matrix.postTranslate(width, f5);
        canvas.concat(matrix);
        drawChild(canvas, childAt, j4);
        canvas.restore();
    }

    private void f() {
        this.f45271a = new Camera();
        this.f45272b = new Matrix();
        this.f45275e = System.currentTimeMillis();
        this.f45276f = new Timer();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        if (this.f45277g) {
            d(canvas, this.f45278h);
            ViewCompat.postInvalidateOnAnimation(this);
            return;
        }
        super.dispatchDraw(canvas);
    }

    public void g() {
        if (this.f45280j) {
            return;
        }
        this.f45280j = true;
        invalidate();
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        ofFloat.setDuration(700L);
        ofFloat.setInterpolator(new AccelerateDecelerateInterpolator());
        ofFloat.addUpdateListener(new b());
        ofFloat.addListener(new c());
        this.f45279i = true ^ this.f45279i;
        ofFloat.start();
    }

    public void setTimeAnim() {
        if (this.f45281k) {
            this.f45281k = false;
            this.f45276f.schedule(new a(), 5000L, 5000L);
        }
    }

    public CubeRotateView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f45273c = new AccelerateDecelerateInterpolator();
        this.f45274d = 3000L;
        this.f45277g = true;
        this.f45278h = 1.0f;
        this.f45279i = false;
        this.f45280j = false;
        this.f45281k = true;
        f();
    }

    public CubeRotateView(Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f45273c = new AccelerateDecelerateInterpolator();
        this.f45274d = 3000L;
        this.f45277g = true;
        this.f45278h = 1.0f;
        this.f45279i = false;
        this.f45280j = false;
        this.f45281k = true;
        f();
    }
}
