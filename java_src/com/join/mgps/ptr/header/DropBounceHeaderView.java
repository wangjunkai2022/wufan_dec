package com.join.mgps.ptr.header;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.drawable.AnimationDrawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import androidx.core.view.ViewCompat;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.u0;
import com.join.mgps.ptr.PtrFrameLayout;
import com.join.mgps.ptr.PtrUIHeader;
@TargetApi(11)
/* loaded from: classes4.dex */
public class DropBounceHeaderView extends PtrUIHeader {

    /* renamed from: a  reason: collision with root package name */
    private final String f51174a;

    /* renamed from: b  reason: collision with root package name */
    private PtrFrameLayout f51175b;

    /* renamed from: c  reason: collision with root package name */
    private com.join.mgps.ptr.indicator.b f51176c;

    /* renamed from: d  reason: collision with root package name */
    private AnimationDrawable f51177d;

    /* renamed from: e  reason: collision with root package name */
    private Path f51178e;

    /* renamed from: f  reason: collision with root package name */
    private Paint f51179f;

    /* renamed from: g  reason: collision with root package name */
    float f51180g;

    /* renamed from: h  reason: collision with root package name */
    float f51181h;

    /* renamed from: i  reason: collision with root package name */
    private float f51182i;

    /* renamed from: j  reason: collision with root package name */
    private RectF f51183j;

    /* renamed from: k  reason: collision with root package name */
    private int f51184k;

    /* renamed from: l  reason: collision with root package name */
    private int f51185l;

    /* renamed from: m  reason: collision with root package name */
    private int f51186m;

    /* renamed from: n  reason: collision with root package name */
    private int f51187n;

    /* renamed from: o  reason: collision with root package name */
    private float f51188o;

    /* renamed from: p  reason: collision with root package name */
    private boolean f51189p;

    /* renamed from: q  reason: collision with root package name */
    private ValueAnimator f51190q;

    /* renamed from: r  reason: collision with root package name */
    private ValueAnimator f51191r;

    /* renamed from: s  reason: collision with root package name */
    private ValueAnimator f51192s;

    /* renamed from: t  reason: collision with root package name */
    private ValueAnimator f51193t;

    /* renamed from: u  reason: collision with root package name */
    private ValueAnimator.AnimatorUpdateListener f51194u;

    /* loaded from: classes4.dex */
    class a implements ValueAnimator.AnimatorUpdateListener {
        a() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            DropBounceHeaderView.this.postInvalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class b implements Animator.AnimatorListener {
        b() {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            DropBounceHeaderView.this.q();
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class c implements ValueAnimator.AnimatorUpdateListener {
        c() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            DropBounceHeaderView.this.f51188o = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            ViewCompat.postInvalidateOnAnimation(DropBounceHeaderView.this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class d implements ValueAnimator.AnimatorUpdateListener {
        d() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            DropBounceHeaderView.this.f51188o = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            ViewCompat.postInvalidateOnAnimation(DropBounceHeaderView.this);
        }
    }

    public DropBounceHeaderView(Context context) {
        super(context);
        this.f51174a = "DropBounceHeaderView";
        this.f51180g = 1.0f;
        this.f51181h = 0.8f;
        this.f51182i = 100.0f;
        this.f51186m = -1;
        this.f51187n = 0;
        this.f51189p = false;
        this.f51194u = new a();
        i();
    }

    private void h(ValueAnimator valueAnimator) {
        if (valueAnimator == null || valueAnimator.getListeners() == null) {
            return;
        }
        valueAnimator.getListeners().clear();
    }

    private void i() {
        Resources resources = getResources();
        this.f51183j = new RectF();
        AnimationDrawable animationDrawable = (AnimationDrawable) resources.getDrawable(R.drawable.loading_animation1);
        this.f51177d = animationDrawable;
        setBackgroundDrawable(animationDrawable);
        this.f51182i = (this.f51177d.getIntrinsicHeight() * this.f51181h) / 2.0f;
        if (Build.VERSION.SDK_INT >= 11) {
            setLayerType(1, null);
        }
        m();
        n();
        k();
    }

    private void j() {
    }

    private void k() {
        h(this.f51191r);
        h(this.f51190q);
        h(this.f51192s);
        h(this.f51193t);
        this.f51190q = ValueAnimator.ofFloat(0.0f, 0.0f);
        this.f51191r = ValueAnimator.ofFloat(0.0f, 0.0f);
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 0.0f);
        this.f51192s = ofFloat;
        ofFloat.start();
        ValueAnimator ofFloat2 = ValueAnimator.ofFloat(0.0f, 0.0f);
        this.f51193t = ofFloat2;
        ofFloat2.setDuration(1L);
        this.f51193t.start();
    }

    private void l() {
    }

    private void m() {
        Paint paint = new Paint();
        this.f51179f = paint;
        paint.setTextSize(22.0f);
        this.f51179f.setColor(this.f51186m);
        this.f51179f.setAntiAlias(true);
        this.f51179f.setStyle(Paint.Style.FILL);
    }

    private void n() {
        this.f51178e = new Path();
    }

    private void o() {
        this.f51187n = 1;
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 0.5f);
        this.f51190q = ofFloat;
        ofFloat.setDuration(500L);
        this.f51190q.addUpdateListener(this.f51194u);
        this.f51190q.setInterpolator(new DropBounceInterpolator());
        this.f51190q.setStartDelay(180L);
        this.f51190q.start();
        ValueAnimator ofFloat2 = ValueAnimator.ofFloat(0.0f, 0.1f);
        this.f51191r = ofFloat2;
        ofFloat2.setDuration(500L);
        this.f51191r.addUpdateListener(this.f51194u);
        this.f51191r.setInterpolator(new DropBounceInterpolator());
        ValueAnimator valueAnimator = this.f51191r;
        double d4 = 180L;
        double d5 = 500L;
        Double.isNaN(d5);
        Double.isNaN(d4);
        valueAnimator.setStartDelay((long) (d4 + (d5 * 0.25d)));
        this.f51191r.start();
    }

    private void p() {
        j();
        this.f51189p = true;
        ValueAnimator ofFloat = ValueAnimator.ofFloat(((Float) this.f51193t.getAnimatedValue()).floatValue(), 0.33333334f);
        this.f51193t = ofFloat;
        ofFloat.setDuration(200L);
        this.f51193t.setInterpolator(new AccelerateInterpolator());
        this.f51193t.addListener(new b());
        this.f51193t.start();
        ValueAnimator ofFloat2 = ValueAnimator.ofFloat(((Float) this.f51191r.getAnimatedValue()).floatValue(), 0.0f);
        this.f51191r = ofFloat2;
        ofFloat2.setDuration(200L);
        this.f51191r.setInterpolator(new AccelerateInterpolator());
        this.f51191r.start();
        ValueAnimator ofFloat3 = ValueAnimator.ofFloat(((Float) this.f51192s.getAnimatedValue()).floatValue(), (getHeight() - ((this.f51182i * 1.0f) / 3.0f)) - (TypedValue.applyDimension(1, this.f51180g, getResources().getDisplayMetrics()) / this.f51181h));
        this.f51192s = ofFloat3;
        ofFloat3.setDuration(200L);
        this.f51192s.addUpdateListener(new c());
        this.f51192s.setInterpolator(new AccelerateInterpolator());
        this.f51192s.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q() {
        if (!this.f51177d.isRunning()) {
            this.f51177d.start();
        }
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.33333334f, 1.0f);
        this.f51193t = ofFloat;
        ofFloat.setDuration(200L);
        this.f51193t.setInterpolator(new AccelerateInterpolator());
        this.f51193t.start();
        ValueAnimator ofFloat2 = ValueAnimator.ofFloat(((Float) this.f51192s.getAnimatedValue()).floatValue(), (getHeight() - this.f51182i) - (TypedValue.applyDimension(1, this.f51180g, getResources().getDisplayMetrics()) / this.f51181h));
        this.f51192s = ofFloat2;
        ofFloat2.setDuration(200L);
        this.f51192s.addUpdateListener(new d());
        this.f51192s.setInterpolator(new AccelerateInterpolator());
        this.f51192s.start();
        o();
    }

    @Override // com.join.mgps.ptr.PtrUIHeader, com.join.mgps.ptr.c
    public void a(PtrFrameLayout ptrFrameLayout) {
        u0.e("DropBounceHeaderView", "onUIRefreshComplete method called.");
    }

    @Override // com.join.mgps.ptr.PtrUIHeader, com.join.mgps.ptr.c
    public void b(PtrFrameLayout ptrFrameLayout, boolean z3, byte b4, com.join.mgps.ptr.indicator.a aVar) {
        float height;
        u0.e("DropBounceHeaderView", "onUIPositionChange method called.");
        if (this.f51189p) {
            return;
        }
        float N = this.f51176c.N();
        float d4 = this.f51176c.d();
        ((Float) this.f51192s.getAnimatedValue()).floatValue();
        ((Float) this.f51193t.getAnimatedValue()).floatValue();
        ((Float) this.f51191r.getAnimatedValue()).floatValue();
        float f4 = 0.0f;
        if (N > 0.0f && N < 0.33333334f) {
            height = getHeight() - (d4 / 2.0f);
            this.f51187n = 0;
        } else if (N < 0.6666667f) {
            f4 = (N - 0.33333334f) * 2.0f;
            this.f51187n = 0;
            height = getHeight() - (d4 / 2.0f);
        } else if (N < 1.0f) {
            float f5 = (N * 2.0f) - 0.6666667f;
            f4 = (f5 - 0.33333334f) * 2.0f;
            this.f51187n = 0;
            height = getHeight() - (((d4 * 1.0f) / 3.0f) / N);
            N = f5;
        } else {
            p();
            return;
        }
        this.f51193t = ValueAnimator.ofFloat(N, N);
        this.f51192s = ValueAnimator.ofFloat(height, height);
        this.f51191r = ValueAnimator.ofFloat(f4, f4);
        this.f51193t.start();
        this.f51192s.start();
        this.f51190q.start();
        this.f51191r.start();
        invalidate();
    }

    @Override // com.join.mgps.ptr.PtrUIHeader, com.join.mgps.ptr.c
    public void c(PtrFrameLayout ptrFrameLayout) {
        u0.e("DropBounceHeaderView", "onUIReset method called.");
        k();
        this.f51189p = false;
        if (this.f51177d.isRunning()) {
            this.f51177d.stop();
        }
        invalidate();
    }

    @Override // com.join.mgps.ptr.PtrUIHeader, com.join.mgps.ptr.c
    public void d(PtrFrameLayout ptrFrameLayout) {
        u0.e("DropBounceHeaderView", "onUIRefreshPrepare method called.");
    }

    @Override // com.join.mgps.ptr.PtrUIHeader, com.join.mgps.ptr.c
    public void e(PtrFrameLayout ptrFrameLayout) {
        u0.e("DropBounceHeaderView", "onUIRefreshBegin method called.");
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        ValueAnimator valueAnimator = this.f51193t;
        if (valueAnimator != null) {
            valueAnimator.end();
            this.f51193t.removeAllUpdateListeners();
        }
        ValueAnimator valueAnimator2 = this.f51192s;
        if (valueAnimator2 != null) {
            valueAnimator2.end();
            this.f51192s.removeAllUpdateListeners();
        }
        ValueAnimator valueAnimator3 = this.f51191r;
        if (valueAnimator3 != null) {
            valueAnimator3.end();
            this.f51191r.removeAllUpdateListeners();
        }
        ValueAnimator valueAnimator4 = this.f51190q;
        if (valueAnimator4 != null) {
            valueAnimator4.end();
            this.f51190q.removeAllUpdateListeners();
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        this.f51178e.reset();
        this.f51183j.setEmpty();
        float floatValue = ((Float) this.f51192s.getAnimatedValue()).floatValue();
        this.f51188o = floatValue;
        float f4 = this.f51185l / 2.0f;
        float floatValue2 = ((Float) this.f51193t.getAnimatedValue()).floatValue();
        float floatValue3 = ((Float) this.f51190q.getAnimatedValue()).floatValue();
        float floatValue4 = ((Float) this.f51191r.getAnimatedValue()).floatValue();
        float f5 = this.f51187n;
        float f6 = this.f51182i;
        float f7 = (floatValue3 * f5) + 1.0f;
        float f8 = (f4 - ((f6 * f7) * floatValue2)) + ((f6 * floatValue4) / 2.0f);
        float f9 = (f5 * floatValue4) + 1.0f;
        float f10 = (floatValue - ((f9 * f6) * floatValue2)) + ((f6 * floatValue3) / 2.0f);
        float applyDimension = TypedValue.applyDimension(1, this.f51180g, getResources().getDisplayMetrics());
        float f11 = applyDimension / 2.0f;
        float f12 = f8 + f11;
        float f13 = ((((f6 * f9) * floatValue2) + floatValue) - ((f6 * floatValue3) / 2.0f)) + applyDimension;
        float f14 = ((f4 + ((f7 * f6) * floatValue2)) - ((floatValue4 * f6) / 2.0f)) - f11;
        this.f51183j.set(f12, f13, f14, f10);
        this.f51178e.addOval(this.f51183j, Path.Direction.CCW);
        canvas.drawPath(this.f51178e, this.f51179f);
        if (this.f51177d.isRunning()) {
            float applyDimension2 = TypedValue.applyDimension(1, 2.0f, getResources().getDisplayMetrics());
            this.f51177d.setBounds((int) (f12 + applyDimension2), (int) (f10 + applyDimension2), (int) (f14 - applyDimension2), (int) (f13 - applyDimension2));
            this.f51177d.getCurrent().draw(canvas);
        } else {
            this.f51177d.setBounds(0, 0, 0, 0);
        }
        if (!this.f51191r.isRunning() && !this.f51190q.isRunning() && !this.f51193t.isRunning() && !this.f51192s.isRunning()) {
            l();
        }
        super.onDraw(canvas);
    }

    @Override // android.view.View
    protected void onMeasure(int i2, int i4) {
        super.onMeasure(i2, View.MeasureSpec.makeMeasureSpec(((int) (this.f51177d.getIntrinsicHeight() * this.f51181h)) + getPaddingTop() + getPaddingBottom(), 1073741824));
    }

    @Override // android.view.View
    protected void onSizeChanged(int i2, int i4, int i5, int i6) {
        this.f51185l = i2;
        super.onSizeChanged(i2, i4, i5, i6);
    }

    public void setColor(int i2) {
        this.f51186m = i2;
        this.f51179f.setColor(i2);
        invalidate();
    }

    public void setUp(PtrFrameLayout ptrFrameLayout) {
        this.f51175b = ptrFrameLayout;
        com.join.mgps.ptr.indicator.b bVar = new com.join.mgps.ptr.indicator.b();
        this.f51176c = bVar;
        this.f51175b.setPtrIndicator(bVar);
    }

    public DropBounceHeaderView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f51174a = "DropBounceHeaderView";
        this.f51180g = 1.0f;
        this.f51181h = 0.8f;
        this.f51182i = 100.0f;
        this.f51186m = -1;
        this.f51187n = 0;
        this.f51189p = false;
        this.f51194u = new a();
        i();
    }

    public DropBounceHeaderView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f51174a = "DropBounceHeaderView";
        this.f51180g = 1.0f;
        this.f51181h = 0.8f;
        this.f51182i = 100.0f;
        this.f51186m = -1;
        this.f51187n = 0;
        this.f51189p = false;
        this.f51194u = new a();
        i();
    }
}
