package com.join.mgps.customview.swiperefresh;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.AnimationDrawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Transformation;
import android.widget.AbsListView;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.core.content.ContextCompat;
import androidx.core.view.MotionEventCompat;
import androidx.core.view.NestedScrollingChild;
import androidx.core.view.NestedScrollingChildHelper;
import androidx.core.view.NestedScrollingParent;
import androidx.core.view.NestedScrollingParentHelper;
import androidx.core.view.ViewCompat;
import com.join.android.app.mgsim.wufun.R;
/* loaded from: classes3.dex */
public class SwipeRefresh extends ViewGroup implements NestedScrollingParent, NestedScrollingChild {
    private static final int A0 = 150;
    private static final int B0 = 300;
    private static final int C0 = 200;
    private static final int D0 = 200;
    private static final int E0 = 16777215;
    private static final int F0 = 64;

    /* renamed from: p0  reason: collision with root package name */
    public static final int f47199p0 = 0;

    /* renamed from: q0  reason: collision with root package name */
    public static final int f47200q0 = 1;
    @VisibleForTesting

    /* renamed from: r0  reason: collision with root package name */
    static final int f47201r0 = 50;
    @VisibleForTesting

    /* renamed from: s0  reason: collision with root package name */
    static final int f47202s0 = 56;

    /* renamed from: u0  reason: collision with root package name */
    private static final int f47204u0 = 255;

    /* renamed from: v0  reason: collision with root package name */
    private static final int f47205v0 = 76;

    /* renamed from: w0  reason: collision with root package name */
    private static final float f47206w0 = 2.0f;

    /* renamed from: x0  reason: collision with root package name */
    private static final int f47207x0 = -1;

    /* renamed from: y0  reason: collision with root package name */
    private static final float f47208y0 = 0.5f;

    /* renamed from: z0  reason: collision with root package name */
    private static final float f47209z0 = 0.8f;
    MaterialProgressDrawable A;
    private Animation B;
    private Animation C;
    private Animation D;
    private Animation E;
    private Animation F;
    boolean G;
    private int H;
    boolean I;
    private i J;
    private Animation.AnimationListener K;

    /* renamed from: a  reason: collision with root package name */
    private View f47210a;

    /* renamed from: b  reason: collision with root package name */
    j f47211b;

    /* renamed from: c  reason: collision with root package name */
    boolean f47212c;

    /* renamed from: d  reason: collision with root package name */
    private int f47213d;

    /* renamed from: e  reason: collision with root package name */
    private float f47214e;

    /* renamed from: f  reason: collision with root package name */
    private float f47215f;

    /* renamed from: g  reason: collision with root package name */
    private final NestedScrollingParentHelper f47216g;

    /* renamed from: h  reason: collision with root package name */
    private final NestedScrollingChildHelper f47217h;

    /* renamed from: i  reason: collision with root package name */
    private final int[] f47218i;

    /* renamed from: j  reason: collision with root package name */
    private final int[] f47219j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f47220k;

    /* renamed from: l  reason: collision with root package name */
    private int f47221l;

    /* renamed from: m  reason: collision with root package name */
    int f47222m;

    /* renamed from: n  reason: collision with root package name */
    private float f47223n;

    /* renamed from: n0  reason: collision with root package name */
    private final Animation f47224n0;

    /* renamed from: o  reason: collision with root package name */
    private float f47225o;

    /* renamed from: o0  reason: collision with root package name */
    private final Animation f47226o0;

    /* renamed from: p  reason: collision with root package name */
    private boolean f47227p;

    /* renamed from: q  reason: collision with root package name */
    private int f47228q;

    /* renamed from: r  reason: collision with root package name */
    boolean f47229r;

    /* renamed from: s  reason: collision with root package name */
    private boolean f47230s;

    /* renamed from: t  reason: collision with root package name */
    private final DecelerateInterpolator f47231t;

    /* renamed from: u  reason: collision with root package name */
    CircleImageView f47232u;

    /* renamed from: v  reason: collision with root package name */
    private int f47233v;

    /* renamed from: w  reason: collision with root package name */
    protected int f47234w;

    /* renamed from: x  reason: collision with root package name */
    float f47235x;

    /* renamed from: y  reason: collision with root package name */
    protected int f47236y;

    /* renamed from: z  reason: collision with root package name */
    int f47237z;

    /* renamed from: t0  reason: collision with root package name */
    private static final String f47203t0 = SwipeRefresh.class.getSimpleName();
    private static final int[] G0 = {16842766};

    /* loaded from: classes3.dex */
    class a implements Animation.AnimationListener {
        a() {
        }

        @Override // android.view.animation.Animation.AnimationListener
        @SuppressLint({"NewApi"})
        public void onAnimationEnd(Animation animation) {
            j jVar;
            SwipeRefresh swipeRefresh = SwipeRefresh.this;
            if (swipeRefresh.f47212c) {
                swipeRefresh.A.setAlpha(255);
                SwipeRefresh.this.A.start();
                SwipeRefresh swipeRefresh2 = SwipeRefresh.this;
                if (swipeRefresh2.G && (jVar = swipeRefresh2.f47211b) != null) {
                    jVar.onRefresh();
                }
                SwipeRefresh swipeRefresh3 = SwipeRefresh.this;
                swipeRefresh3.f47222m = swipeRefresh3.f47232u.getTop();
                return;
            }
            swipeRefresh.m();
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b extends Animation {
        b() {
        }

        @Override // android.view.animation.Animation
        public void applyTransformation(float f4, Transformation transformation) {
            SwipeRefresh.this.setAnimationProgress(f4);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c extends Animation {
        c() {
        }

        @Override // android.view.animation.Animation
        public void applyTransformation(float f4, Transformation transformation) {
            SwipeRefresh.this.setAnimationProgress(1.0f - f4);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d extends Animation {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f47241a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f47242b;

        d(int i2, int i4) {
            this.f47241a = i2;
            this.f47242b = i4;
        }

        @Override // android.view.animation.Animation
        public void applyTransformation(float f4, Transformation transformation) {
            MaterialProgressDrawable materialProgressDrawable = SwipeRefresh.this.A;
            int i2 = this.f47241a;
            materialProgressDrawable.setAlpha((int) (i2 + ((this.f47242b - i2) * f4)));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e implements Animation.AnimationListener {
        e() {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            SwipeRefresh swipeRefresh = SwipeRefresh.this;
            if (swipeRefresh.f47229r) {
                return;
            }
            swipeRefresh.t(null);
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    /* loaded from: classes3.dex */
    class f extends Animation {
        f() {
        }

        @Override // android.view.animation.Animation
        public void applyTransformation(float f4, Transformation transformation) {
            int i2;
            SwipeRefresh swipeRefresh = SwipeRefresh.this;
            if (!swipeRefresh.I) {
                i2 = swipeRefresh.f47237z - Math.abs(swipeRefresh.f47236y);
            } else {
                i2 = swipeRefresh.f47237z;
            }
            SwipeRefresh swipeRefresh2 = SwipeRefresh.this;
            int i4 = swipeRefresh2.f47234w;
            SwipeRefresh.this.o((i4 + ((int) ((i2 - i4) * f4))) - swipeRefresh2.f47232u.getTop(), false);
            SwipeRefresh.this.A.e(1.0f - f4);
        }
    }

    /* loaded from: classes3.dex */
    class g extends Animation {
        g() {
        }

        @Override // android.view.animation.Animation
        public void applyTransformation(float f4, Transformation transformation) {
            SwipeRefresh.this.k(f4);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class h extends Animation {
        h() {
        }

        @Override // android.view.animation.Animation
        public void applyTransformation(float f4, Transformation transformation) {
            SwipeRefresh swipeRefresh = SwipeRefresh.this;
            float f5 = swipeRefresh.f47235x;
            swipeRefresh.setAnimationProgress(f5 + ((-f5) * f4));
            SwipeRefresh.this.k(f4);
        }
    }

    /* loaded from: classes3.dex */
    public interface i {
        boolean a(SwipeRefresh swipeRefresh, @Nullable View view);
    }

    /* loaded from: classes3.dex */
    public interface j {
        void onRefresh();
    }

    public SwipeRefresh(Context context) {
        this(context, null);
    }

    private void a(int i2, Animation.AnimationListener animationListener) {
        this.f47234w = i2;
        this.f47224n0.reset();
        this.f47224n0.setDuration(200L);
        this.f47224n0.setInterpolator(this.f47231t);
        if (animationListener != null) {
            this.f47232u.setAnimationListener(animationListener);
        }
        this.f47232u.clearAnimation();
        this.f47232u.startAnimation(this.f47224n0);
    }

    private void b(int i2, Animation.AnimationListener animationListener) {
        if (this.f47229r) {
            u(i2, animationListener);
            return;
        }
        this.f47234w = i2;
        this.f47226o0.reset();
        this.f47226o0.setDuration(200L);
        this.f47226o0.setInterpolator(this.f47231t);
        if (animationListener != null) {
            this.f47232u.setAnimationListener(animationListener);
        }
        this.f47232u.clearAnimation();
        this.f47232u.startAnimation(this.f47226o0);
    }

    private void d() {
        this.f47232u = new CircleImageView(getContext(), 16777215);
        MaterialProgressDrawable materialProgressDrawable = new MaterialProgressDrawable(getContext(), this);
        this.A = materialProgressDrawable;
        materialProgressDrawable.f(16777215);
        AnimationDrawable animationDrawable = (AnimationDrawable) getResources().getDrawable(R.drawable.loading_animation1);
        this.f47232u.setImageDrawable(animationDrawable);
        animationDrawable.start();
        this.f47232u.setVisibility(8);
        addView(this.f47232u);
    }

    private void e() {
        if (this.f47210a == null) {
            for (int i2 = 0; i2 < getChildCount(); i2++) {
                View childAt = getChildAt(i2);
                if (!childAt.equals(this.f47232u)) {
                    this.f47210a = childAt;
                    return;
                }
            }
        }
    }

    private void f(float f4) {
        if (f4 > this.f47214e) {
            n(true, true);
            return;
        }
        this.f47212c = false;
        this.A.k(0.0f, 0.0f);
        b(this.f47222m, this.f47229r ? null : new e());
        this.A.m(false);
    }

    private boolean g() {
        return Build.VERSION.SDK_INT < 11;
    }

    private boolean h(Animation animation) {
        return (animation == null || !animation.hasStarted() || animation.hasEnded()) ? false : true;
    }

    @SuppressLint({"NewApi"})
    private void j(float f4) {
        this.A.m(true);
        float min = Math.min(1.0f, Math.abs(f4 / this.f47214e));
        double d4 = min;
        Double.isNaN(d4);
        float max = (((float) Math.max(d4 - 0.4d, 0.0d)) * 5.0f) / 3.0f;
        float abs = Math.abs(f4) - this.f47214e;
        float f5 = this.I ? this.f47237z - this.f47236y : this.f47237z;
        double max2 = Math.max(0.0f, Math.min(abs, f5 * f47206w0) / f5) / 4.0f;
        double pow = Math.pow(max2, 2.0d);
        Double.isNaN(max2);
        float f6 = ((float) (max2 - pow)) * f47206w0;
        int i2 = this.f47236y + ((int) ((f5 * min) + (f5 * f6 * f47206w0)));
        if (this.f47232u.getVisibility() != 0) {
            this.f47232u.setVisibility(0);
        }
        if (!this.f47229r) {
            ViewCompat.setScaleX(this.f47232u, 1.0f);
            ViewCompat.setScaleY(this.f47232u, 1.0f);
        }
        if (this.f47229r) {
            setAnimationProgress(Math.min(1.0f, f4 / this.f47214e));
        }
        if (f4 < this.f47214e) {
            if (this.A.getAlpha() > 76 && !h(this.D)) {
                s();
            }
        } else if (this.A.getAlpha() < 255 && !h(this.E)) {
            r();
        }
        this.A.k(0.0f, Math.min((float) f47209z0, max * f47209z0));
        this.A.e(Math.min(1.0f, max));
        this.A.h((((max * 0.4f) - 0.25f) + (f6 * f47206w0)) * 0.5f);
        o(i2 - this.f47222m, true);
    }

    private void l(MotionEvent motionEvent) {
        int actionIndex = MotionEventCompat.getActionIndex(motionEvent);
        if (motionEvent.getPointerId(actionIndex) == this.f47228q) {
            this.f47228q = motionEvent.getPointerId(actionIndex == 0 ? 1 : 0);
        }
    }

    private void n(boolean z3, boolean z4) {
        if (this.f47212c != z3) {
            this.G = z4;
            e();
            this.f47212c = z3;
            if (z3) {
                a(this.f47222m, this.K);
            } else {
                t(this.K);
            }
        }
    }

    @SuppressLint({"NewApi"})
    private Animation p(int i2, int i4) {
        if (this.f47229r && g()) {
            return null;
        }
        d dVar = new d(i2, i4);
        dVar.setDuration(300L);
        this.f47232u.setAnimationListener(null);
        this.f47232u.clearAnimation();
        this.f47232u.startAnimation(dVar);
        return dVar;
    }

    @SuppressLint({"NewApi"})
    private void q(float f4) {
        float f5 = this.f47225o;
        int i2 = this.f47213d;
        if (f4 - f5 <= i2 || this.f47227p) {
            return;
        }
        this.f47223n = f5 + i2;
        this.f47227p = true;
        this.A.setAlpha(76);
    }

    @SuppressLint({"NewApi"})
    private void r() {
        this.E = p(this.A.getAlpha(), 255);
    }

    @SuppressLint({"NewApi"})
    private void s() {
        this.D = p(this.A.getAlpha(), 76);
    }

    @SuppressLint({"NewApi"})
    private void setColorViewAlpha(int i2) {
        this.f47232u.getBackground().setAlpha(i2);
        this.A.setAlpha(i2);
    }

    @SuppressLint({"NewApi"})
    private void u(int i2, Animation.AnimationListener animationListener) {
        this.f47234w = i2;
        if (g()) {
            this.f47235x = this.A.getAlpha();
        } else {
            this.f47235x = ViewCompat.getScaleX(this.f47232u);
        }
        h hVar = new h();
        this.F = hVar;
        hVar.setDuration(150L);
        if (animationListener != null) {
            this.f47232u.setAnimationListener(animationListener);
        }
        this.f47232u.clearAnimation();
        this.f47232u.startAnimation(this.F);
    }

    @SuppressLint({"NewApi"})
    private void v(Animation.AnimationListener animationListener) {
        this.f47232u.setVisibility(0);
        if (Build.VERSION.SDK_INT >= 11) {
            this.A.setAlpha(255);
        }
        b bVar = new b();
        this.B = bVar;
        bVar.setDuration(this.f47221l);
        if (animationListener != null) {
            this.f47232u.setAnimationListener(animationListener);
        }
        this.f47232u.clearAnimation();
        this.f47232u.startAnimation(this.B);
    }

    public boolean c() {
        i iVar = this.J;
        if (iVar != null) {
            return iVar.a(this, this.f47210a);
        }
        if (Build.VERSION.SDK_INT < 14) {
            View view = this.f47210a;
            if (!(view instanceof AbsListView)) {
                return ViewCompat.canScrollVertically(view, -1) || this.f47210a.getScrollY() > 0;
            }
            AbsListView absListView = (AbsListView) view;
            return absListView.getChildCount() > 0 && (absListView.getFirstVisiblePosition() > 0 || absListView.getChildAt(0).getTop() < absListView.getPaddingTop());
        }
        return ViewCompat.canScrollVertically(this.f47210a, -1);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean dispatchNestedFling(float f4, float f5, boolean z3) {
        return this.f47217h.dispatchNestedFling(f4, f5, z3);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean dispatchNestedPreFling(float f4, float f5) {
        return this.f47217h.dispatchNestedPreFling(f4, f5);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean dispatchNestedPreScroll(int i2, int i4, int[] iArr, int[] iArr2) {
        return this.f47217h.dispatchNestedPreScroll(i2, i4, iArr, iArr2);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean dispatchNestedScroll(int i2, int i4, int i5, int i6, int[] iArr) {
        return this.f47217h.dispatchNestedScroll(i2, i4, i5, i6, iArr);
    }

    @Override // android.view.ViewGroup
    protected int getChildDrawingOrder(int i2, int i4) {
        int i5 = this.f47233v;
        return i5 < 0 ? i4 : i4 == i2 + (-1) ? i5 : i4 >= i5 ? i4 + 1 : i4;
    }

    @Override // android.view.ViewGroup, androidx.core.view.NestedScrollingParent
    public int getNestedScrollAxes() {
        return this.f47216g.getNestedScrollAxes();
    }

    public int getProgressCircleDiameter() {
        return this.H;
    }

    public int getProgressViewEndOffset() {
        return this.f47237z;
    }

    public int getProgressViewStartOffset() {
        return this.f47236y;
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean hasNestedScrollingParent() {
        return this.f47217h.hasNestedScrollingParent();
    }

    public boolean i() {
        return this.f47212c;
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean isNestedScrollingEnabled() {
        return this.f47217h.isNestedScrollingEnabled();
    }

    void k(float f4) {
        int i2 = this.f47234w;
        o((i2 + ((int) ((this.f47236y - i2) * f4))) - this.f47232u.getTop(), false);
    }

    void m() {
        this.f47232u.clearAnimation();
        this.A.stop();
        this.f47232u.setVisibility(8);
        setColorViewAlpha(255);
        if (this.f47229r) {
            setAnimationProgress(0.0f);
        } else {
            o(this.f47236y - this.f47222m, true);
        }
        this.f47222m = this.f47232u.getTop();
    }

    void o(int i2, boolean z3) {
        this.f47232u.bringToFront();
        ViewCompat.offsetTopAndBottom(this.f47232u, i2);
        this.f47222m = this.f47232u.getTop();
        if (!z3 || Build.VERSION.SDK_INT >= 11) {
            return;
        }
        invalidate();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        m();
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int findPointerIndex;
        e();
        int actionMasked = MotionEventCompat.getActionMasked(motionEvent);
        if (this.f47230s && actionMasked == 0) {
            this.f47230s = false;
        }
        if (!isEnabled() || this.f47230s || c() || this.f47212c || this.f47220k) {
            return false;
        }
        if (actionMasked != 0) {
            if (actionMasked != 1) {
                if (actionMasked == 2) {
                    int i2 = this.f47228q;
                    if (i2 == -1 || (findPointerIndex = motionEvent.findPointerIndex(i2)) < 0) {
                        return false;
                    }
                    q(motionEvent.getY(findPointerIndex));
                } else if (actionMasked != 3) {
                    if (actionMasked == 6) {
                        l(motionEvent);
                    }
                }
            }
            this.f47227p = false;
            this.f47228q = -1;
        } else {
            o(this.f47236y - this.f47232u.getTop(), true);
            int pointerId = motionEvent.getPointerId(0);
            this.f47228q = pointerId;
            this.f47227p = false;
            int findPointerIndex2 = motionEvent.findPointerIndex(pointerId);
            if (findPointerIndex2 < 0) {
                return false;
            }
            this.f47225o = motionEvent.getY(findPointerIndex2);
        }
        return this.f47227p;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z3, int i2, int i4, int i5, int i6) {
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        if (getChildCount() == 0) {
            return;
        }
        if (this.f47210a == null) {
            e();
        }
        View view = this.f47210a;
        if (view == null) {
            return;
        }
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        view.layout(paddingLeft, paddingTop, ((measuredWidth - getPaddingLeft()) - getPaddingRight()) + paddingLeft, ((measuredHeight - getPaddingTop()) - getPaddingBottom()) + paddingTop);
        int measuredWidth2 = this.f47232u.getMeasuredWidth();
        int measuredHeight2 = this.f47232u.getMeasuredHeight();
        int i7 = measuredWidth / 2;
        int i8 = measuredWidth2 / 2;
        int i9 = this.f47222m;
        this.f47232u.layout(i7 - i8, i9, i7 + i8, measuredHeight2 + i9);
    }

    @Override // android.view.View
    public void onMeasure(int i2, int i4) {
        super.onMeasure(i2, i4);
        if (this.f47210a == null) {
            e();
        }
        View view = this.f47210a;
        if (view == null) {
            return;
        }
        view.measure(View.MeasureSpec.makeMeasureSpec((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), 1073741824), View.MeasureSpec.makeMeasureSpec((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), 1073741824));
        this.f47232u.measure(View.MeasureSpec.makeMeasureSpec(this.H, 1073741824), View.MeasureSpec.makeMeasureSpec(this.H, 1073741824));
        this.f47233v = -1;
        for (int i5 = 0; i5 < getChildCount(); i5++) {
            if (getChildAt(i5) == this.f47232u) {
                this.f47233v = i5;
                return;
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public boolean onNestedFling(View view, float f4, float f5, boolean z3) {
        return dispatchNestedFling(f4, f5, z3);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public boolean onNestedPreFling(View view, float f4, float f5) {
        return dispatchNestedPreFling(f4, f5);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public void onNestedPreScroll(View view, int i2, int i4, int[] iArr) {
        if (i4 > 0) {
            float f4 = this.f47215f;
            if (f4 > 0.0f) {
                float f5 = i4;
                if (f5 > f4) {
                    iArr[1] = i4 - ((int) f4);
                    this.f47215f = 0.0f;
                } else {
                    this.f47215f = f4 - f5;
                    iArr[1] = i4;
                }
                j(this.f47215f);
            }
        }
        if (this.I && i4 > 0 && this.f47215f == 0.0f && Math.abs(i4 - iArr[1]) > 0) {
            this.f47232u.setVisibility(8);
        }
        int[] iArr2 = this.f47218i;
        if (dispatchNestedPreScroll(i2 - iArr[0], i4 - iArr[1], iArr2, null)) {
            iArr[0] = iArr[0] + iArr2[0];
            iArr[1] = iArr[1] + iArr2[1];
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public void onNestedScroll(View view, int i2, int i4, int i5, int i6) {
        dispatchNestedScroll(i2, i4, i5, i6, this.f47219j);
        int i7 = i6 + this.f47219j[1];
        if (i7 >= 0 || c()) {
            return;
        }
        float abs = this.f47215f + Math.abs(i7);
        this.f47215f = abs;
        j(abs);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public void onNestedScrollAccepted(View view, View view2, int i2) {
        this.f47216g.onNestedScrollAccepted(view, view2, i2);
        startNestedScroll(i2 & 2);
        this.f47215f = 0.0f;
        this.f47220k = true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public boolean onStartNestedScroll(View view, View view2, int i2) {
        return (!isEnabled() || this.f47230s || this.f47212c || (i2 & 2) == 0) ? false : true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public void onStopNestedScroll(View view) {
        this.f47216g.onStopNestedScroll(view);
        this.f47220k = false;
        float f4 = this.f47215f;
        if (f4 > 0.0f) {
            f(f4);
            this.f47215f = 0.0f;
        }
        stopNestedScroll();
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = MotionEventCompat.getActionMasked(motionEvent);
        if (this.f47230s && actionMasked == 0) {
            this.f47230s = false;
        }
        if (!isEnabled() || this.f47230s || c() || this.f47212c || this.f47220k) {
            return false;
        }
        if (actionMasked == 0) {
            this.f47228q = motionEvent.getPointerId(0);
            this.f47227p = false;
        } else if (actionMasked == 1) {
            int findPointerIndex = motionEvent.findPointerIndex(this.f47228q);
            if (findPointerIndex < 0) {
                return false;
            }
            if (this.f47227p) {
                this.f47227p = false;
                f((motionEvent.getY(findPointerIndex) - this.f47223n) * 0.5f);
            }
            this.f47228q = -1;
            return false;
        } else if (actionMasked == 2) {
            int findPointerIndex2 = motionEvent.findPointerIndex(this.f47228q);
            if (findPointerIndex2 < 0) {
                return false;
            }
            float y3 = motionEvent.getY(findPointerIndex2);
            q(y3);
            if (this.f47227p) {
                float f4 = (y3 - this.f47223n) * 0.5f;
                if (f4 <= 0.0f) {
                    return false;
                }
                j(f4);
            }
        } else if (actionMasked == 3) {
            return false;
        } else {
            if (actionMasked == 5) {
                int actionIndex = MotionEventCompat.getActionIndex(motionEvent);
                if (actionIndex < 0) {
                    return false;
                }
                this.f47228q = motionEvent.getPointerId(actionIndex);
            } else if (actionMasked == 6) {
                l(motionEvent);
            }
        }
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z3) {
        if (Build.VERSION.SDK_INT >= 21 || !(this.f47210a instanceof AbsListView)) {
            View view = this.f47210a;
            if (view == null || ViewCompat.isNestedScrollingEnabled(view)) {
                super.requestDisallowInterceptTouchEvent(z3);
            }
        }
    }

    void setAnimationProgress(float f4) {
        if (g()) {
            setColorViewAlpha((int) (f4 * 255.0f));
            return;
        }
        ViewCompat.setScaleX(this.f47232u, f4);
        ViewCompat.setScaleY(this.f47232u, f4);
    }

    @Deprecated
    public void setColorScheme(@ColorInt int... iArr) {
        setColorSchemeResources(iArr);
    }

    public void setColorSchemeColors(@ColorInt int... iArr) {
        e();
        this.A.g(iArr);
    }

    public void setColorSchemeResources(@ColorRes int... iArr) {
        Context context = getContext();
        int[] iArr2 = new int[iArr.length];
        for (int i2 = 0; i2 < iArr.length; i2++) {
            iArr2[i2] = ContextCompat.getColor(context, iArr[i2]);
        }
        setColorSchemeColors(iArr2);
    }

    public void setDistanceToTriggerSync(int i2) {
        this.f47214e = i2;
    }

    @Override // android.view.View
    public void setEnabled(boolean z3) {
        super.setEnabled(z3);
        if (z3) {
            return;
        }
        m();
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public void setNestedScrollingEnabled(boolean z3) {
        this.f47217h.setNestedScrollingEnabled(z3);
    }

    public void setOnChildScrollUpCallback(@Nullable i iVar) {
        this.J = iVar;
    }

    public void setOnRefreshListener(j jVar) {
        this.f47211b = jVar;
    }

    @Deprecated
    public void setProgressBackgroundColor(int i2) {
        setProgressBackgroundColorSchemeResource(i2);
    }

    public void setProgressBackgroundColorSchemeColor(@ColorInt int i2) {
        this.f47232u.setBackgroundColor(i2);
        this.A.f(i2);
    }

    public void setProgressBackgroundColorSchemeResource(@ColorRes int i2) {
        setProgressBackgroundColorSchemeColor(ContextCompat.getColor(getContext(), i2));
    }

    public void setProgressViewEndTarget(boolean z3, int i2) {
        this.f47237z = i2;
        this.f47229r = z3;
        this.f47232u.invalidate();
    }

    public void setProgressViewOffset(boolean z3, int i2, int i4) {
        this.f47229r = z3;
        this.f47236y = i2;
        this.f47237z = i4;
        this.I = true;
        m();
        this.f47212c = false;
    }

    public void setRefreshing(boolean z3) {
        int i2;
        if (z3 && this.f47212c != z3) {
            this.f47212c = z3;
            if (!this.I) {
                i2 = this.f47237z + this.f47236y;
            } else {
                i2 = this.f47237z;
            }
            o(i2 - this.f47222m, true);
            this.G = false;
            v(this.K);
            return;
        }
        n(z3, false);
    }

    public void setSize(int i2) {
        if (i2 == 0 || i2 == 1) {
            DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
            if (i2 == 0) {
                this.H = (int) (displayMetrics.density * 56.0f);
            } else {
                this.H = (int) (displayMetrics.density * 50.0f);
            }
            this.f47232u.setImageDrawable(null);
            this.A.o(i2);
            this.f47232u.setImageDrawable(this.A);
        }
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean startNestedScroll(int i2) {
        return this.f47217h.startNestedScroll(i2);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public void stopNestedScroll() {
        this.f47217h.stopNestedScroll();
    }

    void t(Animation.AnimationListener animationListener) {
        c cVar = new c();
        this.C = cVar;
        cVar.setDuration(150L);
        this.f47232u.setAnimationListener(animationListener);
        this.f47232u.clearAnimation();
        this.f47232u.startAnimation(this.C);
    }

    public SwipeRefresh(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f47212c = false;
        this.f47214e = -1.0f;
        this.f47218i = new int[2];
        this.f47219j = new int[2];
        this.f47228q = -1;
        this.f47233v = -1;
        this.K = new a();
        this.f47224n0 = new f();
        this.f47226o0 = new g();
        this.f47213d = ViewConfiguration.get(context).getScaledTouchSlop();
        this.f47221l = getResources().getInteger(17694721);
        setWillNotDraw(false);
        this.f47231t = new DecelerateInterpolator(f47206w0);
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        this.H = (int) (displayMetrics.density * 50.0f);
        d();
        ViewCompat.setChildrenDrawingOrderEnabled(this, true);
        int i2 = (int) (displayMetrics.density * 64.0f);
        this.f47237z = i2;
        this.f47214e = i2;
        this.f47216g = new NestedScrollingParentHelper(this);
        this.f47217h = new NestedScrollingChildHelper(this);
        setNestedScrollingEnabled(true);
        int i4 = -this.H;
        this.f47222m = i4;
        this.f47236y = i4;
        k(1.0f);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, G0);
        setEnabled(obtainStyledAttributes.getBoolean(0, true));
        obtainStyledAttributes.recycle();
    }
}
