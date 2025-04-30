package com.google.android.material.timepicker;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.Pair;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import androidx.annotation.Dimension;
import androidx.annotation.FloatRange;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.core.view.ViewCompat;
import com.google.android.material.R;
import java.util.ArrayList;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class ClockHandView extends View {

    /* renamed from: r  reason: collision with root package name */
    private static final int f16182r = 200;

    /* renamed from: a  reason: collision with root package name */
    private ValueAnimator f16183a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f16184b;

    /* renamed from: c  reason: collision with root package name */
    private float f16185c;

    /* renamed from: d  reason: collision with root package name */
    private float f16186d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f16187e;

    /* renamed from: f  reason: collision with root package name */
    private int f16188f;

    /* renamed from: g  reason: collision with root package name */
    private final List<d> f16189g;

    /* renamed from: h  reason: collision with root package name */
    private final int f16190h;

    /* renamed from: i  reason: collision with root package name */
    private final float f16191i;

    /* renamed from: j  reason: collision with root package name */
    private final Paint f16192j;

    /* renamed from: k  reason: collision with root package name */
    private final RectF f16193k;
    @Px

    /* renamed from: l  reason: collision with root package name */
    private final int f16194l;

    /* renamed from: m  reason: collision with root package name */
    private float f16195m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f16196n;

    /* renamed from: o  reason: collision with root package name */
    private c f16197o;

    /* renamed from: p  reason: collision with root package name */
    private double f16198p;

    /* renamed from: q  reason: collision with root package name */
    private int f16199q;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a implements ValueAnimator.AnimatorUpdateListener {
        a() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            ClockHandView.this.n(((Float) valueAnimator.getAnimatedValue()).floatValue(), true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class b extends AnimatorListenerAdapter {
        b() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            animator.end();
        }
    }

    /* loaded from: classes2.dex */
    public interface c {
        void b(@FloatRange(from = 0.0d, to = 360.0d) float f4, boolean z3);
    }

    /* loaded from: classes2.dex */
    public interface d {
        void f(@FloatRange(from = 0.0d, to = 360.0d) float f4, boolean z3);
    }

    public ClockHandView(Context context) {
        this(context, null);
    }

    private void c(Canvas canvas) {
        int width;
        int height = getHeight() / 2;
        float width2 = getWidth() / 2;
        float f4 = height;
        this.f16192j.setStrokeWidth(0.0f);
        canvas.drawCircle((this.f16199q * ((float) Math.cos(this.f16198p))) + width2, (this.f16199q * ((float) Math.sin(this.f16198p))) + f4, this.f16190h, this.f16192j);
        double sin = Math.sin(this.f16198p);
        double cos = Math.cos(this.f16198p);
        Double.isNaN(r6);
        Double.isNaN(r6);
        this.f16192j.setStrokeWidth(this.f16194l);
        canvas.drawLine(width2, f4, width + ((int) (cos * r6)), height + ((int) (r6 * sin)), this.f16192j);
        canvas.drawCircle(width2, f4, this.f16191i, this.f16192j);
    }

    private int e(float f4, float f5) {
        int degrees = ((int) Math.toDegrees(Math.atan2(f5 - (getHeight() / 2), f4 - (getWidth() / 2)))) + 90;
        return degrees < 0 ? degrees + 360 : degrees;
    }

    private Pair<Float, Float> h(float f4) {
        float f5 = f();
        if (Math.abs(f5 - f4) > 180.0f) {
            if (f5 > 180.0f && f4 < 180.0f) {
                f4 += 360.0f;
            }
            if (f5 < 180.0f && f4 > 180.0f) {
                f5 += 360.0f;
            }
        }
        return new Pair<>(Float.valueOf(f5), Float.valueOf(f4));
    }

    private boolean i(float f4, float f5, boolean z3, boolean z4, boolean z5) {
        float e4 = e(f4, f5);
        boolean z6 = false;
        boolean z7 = f() != e4;
        if (z4 && z7) {
            return true;
        }
        if (z7 || z3) {
            if (z5 && this.f16184b) {
                z6 = true;
            }
            m(e4, z6);
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n(@FloatRange(from = 0.0d, to = 360.0d) float f4, boolean z3) {
        float f5 = f4 % 360.0f;
        this.f16195m = f5;
        this.f16198p = Math.toRadians(f5 - 90.0f);
        float width = (getWidth() / 2) + (this.f16199q * ((float) Math.cos(this.f16198p)));
        float height = (getHeight() / 2) + (this.f16199q * ((float) Math.sin(this.f16198p)));
        RectF rectF = this.f16193k;
        int i2 = this.f16190h;
        rectF.set(width - i2, height - i2, width + i2, height + i2);
        for (d dVar : this.f16189g) {
            dVar.f(f5, z3);
        }
        invalidate();
    }

    public void b(d dVar) {
        this.f16189g.add(dVar);
    }

    public RectF d() {
        return this.f16193k;
    }

    @FloatRange(from = 0.0d, to = 360.0d)
    public float f() {
        return this.f16195m;
    }

    public int g() {
        return this.f16190h;
    }

    public void j(boolean z3) {
        this.f16184b = z3;
    }

    public void k(@Dimension int i2) {
        this.f16199q = i2;
        invalidate();
    }

    public void l(@FloatRange(from = 0.0d, to = 360.0d) float f4) {
        m(f4, false);
    }

    public void m(@FloatRange(from = 0.0d, to = 360.0d) float f4, boolean z3) {
        ValueAnimator valueAnimator = this.f16183a;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        if (!z3) {
            n(f4, false);
            return;
        }
        Pair<Float, Float> h4 = h(f4);
        ValueAnimator ofFloat = ValueAnimator.ofFloat(((Float) h4.first).floatValue(), ((Float) h4.second).floatValue());
        this.f16183a = ofFloat;
        ofFloat.setDuration(200L);
        this.f16183a.addUpdateListener(new a());
        this.f16183a.addListener(new b());
        this.f16183a.start();
    }

    public void o(c cVar) {
        this.f16197o = cVar;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        c(canvas);
    }

    @Override // android.view.View
    protected void onLayout(boolean z3, int i2, int i4, int i5, int i6) {
        super.onLayout(z3, i2, i4, i5, i6);
        l(f());
    }

    @Override // android.view.View
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z3;
        boolean z4;
        boolean z5;
        c cVar;
        int actionMasked = motionEvent.getActionMasked();
        float x3 = motionEvent.getX();
        float y3 = motionEvent.getY();
        if (actionMasked != 0) {
            if (actionMasked == 1 || actionMasked == 2) {
                int i2 = (int) (x3 - this.f16185c);
                int i4 = (int) (y3 - this.f16186d);
                this.f16187e = (i2 * i2) + (i4 * i4) > this.f16188f;
                boolean z6 = this.f16196n;
                z3 = actionMasked == 1;
                z4 = z6;
            } else {
                z3 = false;
                z4 = false;
            }
            z5 = false;
        } else {
            this.f16185c = x3;
            this.f16186d = y3;
            this.f16187e = true;
            this.f16196n = false;
            z3 = false;
            z4 = false;
            z5 = true;
        }
        boolean i5 = i(x3, y3, z4, z5, z3) | this.f16196n;
        this.f16196n = i5;
        if (i5 && z3 && (cVar = this.f16197o) != null) {
            cVar.b(e(x3, y3), this.f16187e);
        }
        return true;
    }

    public ClockHandView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.materialClockStyle);
    }

    public ClockHandView(Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f16189g = new ArrayList();
        Paint paint = new Paint();
        this.f16192j = paint;
        this.f16193k = new RectF();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ClockHandView, i2, R.style.Widget_MaterialComponents_TimePicker_Clock);
        this.f16199q = obtainStyledAttributes.getDimensionPixelSize(R.styleable.ClockHandView_materialCircleRadius, 0);
        this.f16190h = obtainStyledAttributes.getDimensionPixelSize(R.styleable.ClockHandView_selectorSize, 0);
        Resources resources = getResources();
        this.f16194l = resources.getDimensionPixelSize(R.dimen.material_clock_hand_stroke_width);
        this.f16191i = resources.getDimensionPixelSize(R.dimen.material_clock_hand_center_dot_radius);
        int color = obtainStyledAttributes.getColor(R.styleable.ClockHandView_clockHandColor, 0);
        paint.setAntiAlias(true);
        paint.setColor(color);
        l(0.0f);
        this.f16188f = ViewConfiguration.get(context).getScaledTouchSlop();
        ViewCompat.setImportantForAccessibility(this, 2);
        obtainStyledAttributes.recycle();
    }
}
