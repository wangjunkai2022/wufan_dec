package androidx.swiperefreshlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
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
import android.widget.ListView;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.VisibleForTesting;
import androidx.core.content.ContextCompat;
import androidx.core.view.NestedScrollingChild;
import androidx.core.view.NestedScrollingChildHelper;
import androidx.core.view.NestedScrollingParent;
import androidx.core.view.NestedScrollingParentHelper;
import androidx.core.view.ViewCompat;
import androidx.core.widget.ListViewCompat;
/* loaded from: classes2.dex */
public class SwipeRefreshLayout extends ViewGroup implements NestedScrollingParent, NestedScrollingChild {
    private static final int A0 = 300;
    private static final int B0 = 200;
    private static final int C0 = 200;
    private static final int D0 = -328966;
    public static final int DEFAULT = 1;
    public static final int DEFAULT_SLINGSHOT_DISTANCE = -1;
    private static final int E0 = 64;
    public static final int LARGE = 0;
    @VisibleForTesting

    /* renamed from: q0  reason: collision with root package name */
    static final int f7480q0 = 40;
    @VisibleForTesting

    /* renamed from: r0  reason: collision with root package name */
    static final int f7481r0 = 56;

    /* renamed from: t0  reason: collision with root package name */
    private static final int f7483t0 = 255;

    /* renamed from: u0  reason: collision with root package name */
    private static final int f7484u0 = 76;

    /* renamed from: v0  reason: collision with root package name */
    private static final float f7485v0 = 2.0f;

    /* renamed from: w0  reason: collision with root package name */
    private static final int f7486w0 = -1;

    /* renamed from: x0  reason: collision with root package name */
    private static final float f7487x0 = 0.5f;

    /* renamed from: y0  reason: collision with root package name */
    private static final float f7488y0 = 0.8f;

    /* renamed from: z0  reason: collision with root package name */
    private static final int f7489z0 = 150;
    int A;
    CircularProgressDrawable B;
    private Animation C;
    private Animation D;
    private Animation E;
    private Animation F;
    private Animation G;
    boolean H;
    private int I;
    boolean J;
    private OnChildScrollUpCallback K;

    /* renamed from: a  reason: collision with root package name */
    private View f7490a;

    /* renamed from: b  reason: collision with root package name */
    OnRefreshListener f7491b;

    /* renamed from: c  reason: collision with root package name */
    boolean f7492c;

    /* renamed from: d  reason: collision with root package name */
    private int f7493d;

    /* renamed from: e  reason: collision with root package name */
    private float f7494e;

    /* renamed from: f  reason: collision with root package name */
    private float f7495f;

    /* renamed from: g  reason: collision with root package name */
    private final NestedScrollingParentHelper f7496g;

    /* renamed from: h  reason: collision with root package name */
    private final NestedScrollingChildHelper f7497h;

    /* renamed from: i  reason: collision with root package name */
    private final int[] f7498i;

    /* renamed from: j  reason: collision with root package name */
    private final int[] f7499j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f7500k;

    /* renamed from: l  reason: collision with root package name */
    private int f7501l;

    /* renamed from: m  reason: collision with root package name */
    int f7502m;

    /* renamed from: n  reason: collision with root package name */
    private float f7503n;

    /* renamed from: n0  reason: collision with root package name */
    private Animation.AnimationListener f7504n0;

    /* renamed from: o  reason: collision with root package name */
    private float f7505o;

    /* renamed from: o0  reason: collision with root package name */
    private final Animation f7506o0;

    /* renamed from: p  reason: collision with root package name */
    private boolean f7507p;

    /* renamed from: p0  reason: collision with root package name */
    private final Animation f7508p0;

    /* renamed from: q  reason: collision with root package name */
    private int f7509q;

    /* renamed from: r  reason: collision with root package name */
    boolean f7510r;

    /* renamed from: s  reason: collision with root package name */
    private boolean f7511s;

    /* renamed from: t  reason: collision with root package name */
    private final DecelerateInterpolator f7512t;

    /* renamed from: u  reason: collision with root package name */
    CircleImageView f7513u;

    /* renamed from: v  reason: collision with root package name */
    private int f7514v;

    /* renamed from: w  reason: collision with root package name */
    protected int f7515w;

    /* renamed from: x  reason: collision with root package name */
    float f7516x;

    /* renamed from: y  reason: collision with root package name */
    protected int f7517y;

    /* renamed from: z  reason: collision with root package name */
    int f7518z;

    /* renamed from: s0  reason: collision with root package name */
    private static final String f7482s0 = SwipeRefreshLayout.class.getSimpleName();
    private static final int[] F0 = {16842766};

    /* loaded from: classes2.dex */
    public interface OnChildScrollUpCallback {
        boolean canChildScrollUp(@NonNull SwipeRefreshLayout swipeRefreshLayout, @Nullable View view);
    }

    /* loaded from: classes2.dex */
    public interface OnRefreshListener {
        void onRefresh();
    }

    public SwipeRefreshLayout(@NonNull Context context) {
        this(context, null);
    }

    private void a(int i2, Animation.AnimationListener animationListener) {
        this.f7515w = i2;
        this.f7506o0.reset();
        this.f7506o0.setDuration(200L);
        this.f7506o0.setInterpolator(this.f7512t);
        if (animationListener != null) {
            this.f7513u.setAnimationListener(animationListener);
        }
        this.f7513u.clearAnimation();
        this.f7513u.startAnimation(this.f7506o0);
    }

    private void b(int i2, Animation.AnimationListener animationListener) {
        if (this.f7510r) {
            q(i2, animationListener);
            return;
        }
        this.f7515w = i2;
        this.f7508p0.reset();
        this.f7508p0.setDuration(200L);
        this.f7508p0.setInterpolator(this.f7512t);
        if (animationListener != null) {
            this.f7513u.setAnimationListener(animationListener);
        }
        this.f7513u.clearAnimation();
        this.f7513u.startAnimation(this.f7508p0);
    }

    private void c() {
        this.f7513u = new CircleImageView(getContext(), D0);
        CircularProgressDrawable circularProgressDrawable = new CircularProgressDrawable(getContext());
        this.B = circularProgressDrawable;
        circularProgressDrawable.setStyle(1);
        this.f7513u.setImageDrawable(this.B);
        this.f7513u.setVisibility(8);
        addView(this.f7513u);
    }

    private void d() {
        if (this.f7490a == null) {
            for (int i2 = 0; i2 < getChildCount(); i2++) {
                View childAt = getChildAt(i2);
                if (!childAt.equals(this.f7513u)) {
                    this.f7490a = childAt;
                    return;
                }
            }
        }
    }

    private void e(float f4) {
        if (f4 > this.f7494e) {
            k(true, true);
            return;
        }
        this.f7492c = false;
        this.B.setStartEndTrim(0.0f, 0.0f);
        b(this.f7502m, this.f7510r ? null : new Animation.AnimationListener() { // from class: androidx.swiperefreshlayout.widget.SwipeRefreshLayout.5
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                SwipeRefreshLayout swipeRefreshLayout = SwipeRefreshLayout.this;
                if (swipeRefreshLayout.f7510r) {
                    return;
                }
                swipeRefreshLayout.p(null);
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }
        });
        this.B.setArrowEnabled(false);
    }

    private boolean f(Animation animation) {
        return (animation == null || !animation.hasStarted() || animation.hasEnded()) ? false : true;
    }

    private void g(float f4) {
        this.B.setArrowEnabled(true);
        float min = Math.min(1.0f, Math.abs(f4 / this.f7494e));
        double d4 = min;
        Double.isNaN(d4);
        float max = (((float) Math.max(d4 - 0.4d, 0.0d)) * 5.0f) / 3.0f;
        float abs = Math.abs(f4) - this.f7494e;
        int i2 = this.A;
        if (i2 <= 0) {
            i2 = this.J ? this.f7518z - this.f7517y : this.f7518z;
        }
        float f5 = i2;
        double max2 = Math.max(0.0f, Math.min(abs, f5 * f7485v0) / f5) / 4.0f;
        double pow = Math.pow(max2, 2.0d);
        Double.isNaN(max2);
        float f6 = ((float) (max2 - pow)) * f7485v0;
        int i4 = this.f7517y + ((int) ((f5 * min) + (f5 * f6 * f7485v0)));
        if (this.f7513u.getVisibility() != 0) {
            this.f7513u.setVisibility(0);
        }
        if (!this.f7510r) {
            this.f7513u.setScaleX(1.0f);
            this.f7513u.setScaleY(1.0f);
        }
        if (this.f7510r) {
            setAnimationProgress(Math.min(1.0f, f4 / this.f7494e));
        }
        if (f4 < this.f7494e) {
            if (this.B.getAlpha() > 76 && !f(this.E)) {
                o();
            }
        } else if (this.B.getAlpha() < 255 && !f(this.F)) {
            n();
        }
        this.B.setStartEndTrim(0.0f, Math.min((float) f7488y0, max * f7488y0));
        this.B.setArrowScale(Math.min(1.0f, max));
        this.B.setProgressRotation((((max * 0.4f) - 0.25f) + (f6 * f7485v0)) * 0.5f);
        setTargetOffsetTopAndBottom(i4 - this.f7502m);
    }

    private void i(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.f7509q) {
            this.f7509q = motionEvent.getPointerId(actionIndex == 0 ? 1 : 0);
        }
    }

    private void k(boolean z3, boolean z4) {
        if (this.f7492c != z3) {
            this.H = z4;
            d();
            this.f7492c = z3;
            if (z3) {
                a(this.f7502m, this.f7504n0);
            } else {
                p(this.f7504n0);
            }
        }
    }

    private Animation l(final int i2, final int i4) {
        Animation animation = new Animation() { // from class: androidx.swiperefreshlayout.widget.SwipeRefreshLayout.4
            @Override // android.view.animation.Animation
            public void applyTransformation(float f4, Transformation transformation) {
                CircularProgressDrawable circularProgressDrawable = SwipeRefreshLayout.this.B;
                int i5 = i2;
                circularProgressDrawable.setAlpha((int) (i5 + ((i4 - i5) * f4)));
            }
        };
        animation.setDuration(300L);
        this.f7513u.setAnimationListener(null);
        this.f7513u.clearAnimation();
        this.f7513u.startAnimation(animation);
        return animation;
    }

    private void m(float f4) {
        float f5 = this.f7505o;
        int i2 = this.f7493d;
        if (f4 - f5 <= i2 || this.f7507p) {
            return;
        }
        this.f7503n = f5 + i2;
        this.f7507p = true;
        this.B.setAlpha(76);
    }

    private void n() {
        this.F = l(this.B.getAlpha(), 255);
    }

    private void o() {
        this.E = l(this.B.getAlpha(), 76);
    }

    private void q(int i2, Animation.AnimationListener animationListener) {
        this.f7515w = i2;
        this.f7516x = this.f7513u.getScaleX();
        Animation animation = new Animation() { // from class: androidx.swiperefreshlayout.widget.SwipeRefreshLayout.8
            @Override // android.view.animation.Animation
            public void applyTransformation(float f4, Transformation transformation) {
                SwipeRefreshLayout swipeRefreshLayout = SwipeRefreshLayout.this;
                float f5 = swipeRefreshLayout.f7516x;
                swipeRefreshLayout.setAnimationProgress(f5 + ((-f5) * f4));
                SwipeRefreshLayout.this.h(f4);
            }
        };
        this.G = animation;
        animation.setDuration(150L);
        if (animationListener != null) {
            this.f7513u.setAnimationListener(animationListener);
        }
        this.f7513u.clearAnimation();
        this.f7513u.startAnimation(this.G);
    }

    private void r(Animation.AnimationListener animationListener) {
        this.f7513u.setVisibility(0);
        this.B.setAlpha(255);
        Animation animation = new Animation() { // from class: androidx.swiperefreshlayout.widget.SwipeRefreshLayout.2
            @Override // android.view.animation.Animation
            public void applyTransformation(float f4, Transformation transformation) {
                SwipeRefreshLayout.this.setAnimationProgress(f4);
            }
        };
        this.C = animation;
        animation.setDuration(this.f7501l);
        if (animationListener != null) {
            this.f7513u.setAnimationListener(animationListener);
        }
        this.f7513u.clearAnimation();
        this.f7513u.startAnimation(this.C);
    }

    private void setColorViewAlpha(int i2) {
        this.f7513u.getBackground().setAlpha(i2);
        this.B.setAlpha(i2);
    }

    public boolean canChildScrollUp() {
        OnChildScrollUpCallback onChildScrollUpCallback = this.K;
        if (onChildScrollUpCallback != null) {
            return onChildScrollUpCallback.canChildScrollUp(this, this.f7490a);
        }
        View view = this.f7490a;
        if (view instanceof ListView) {
            return ListViewCompat.canScrollList((ListView) view, -1);
        }
        return view.canScrollVertically(-1);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean dispatchNestedFling(float f4, float f5, boolean z3) {
        return this.f7497h.dispatchNestedFling(f4, f5, z3);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean dispatchNestedPreFling(float f4, float f5) {
        return this.f7497h.dispatchNestedPreFling(f4, f5);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean dispatchNestedPreScroll(int i2, int i4, int[] iArr, int[] iArr2) {
        return this.f7497h.dispatchNestedPreScroll(i2, i4, iArr, iArr2);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean dispatchNestedScroll(int i2, int i4, int i5, int i6, int[] iArr) {
        return this.f7497h.dispatchNestedScroll(i2, i4, i5, i6, iArr);
    }

    @Override // android.view.ViewGroup
    protected int getChildDrawingOrder(int i2, int i4) {
        int i5 = this.f7514v;
        return i5 < 0 ? i4 : i4 == i2 + (-1) ? i5 : i4 >= i5 ? i4 + 1 : i4;
    }

    @Override // android.view.ViewGroup, androidx.core.view.NestedScrollingParent
    public int getNestedScrollAxes() {
        return this.f7496g.getNestedScrollAxes();
    }

    public int getProgressCircleDiameter() {
        return this.I;
    }

    public int getProgressViewEndOffset() {
        return this.f7518z;
    }

    public int getProgressViewStartOffset() {
        return this.f7517y;
    }

    void h(float f4) {
        int i2 = this.f7515w;
        setTargetOffsetTopAndBottom((i2 + ((int) ((this.f7517y - i2) * f4))) - this.f7513u.getTop());
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean hasNestedScrollingParent() {
        return this.f7497h.hasNestedScrollingParent();
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean isNestedScrollingEnabled() {
        return this.f7497h.isNestedScrollingEnabled();
    }

    public boolean isRefreshing() {
        return this.f7492c;
    }

    void j() {
        this.f7513u.clearAnimation();
        this.B.stop();
        this.f7513u.setVisibility(8);
        setColorViewAlpha(255);
        if (this.f7510r) {
            setAnimationProgress(0.0f);
        } else {
            setTargetOffsetTopAndBottom(this.f7517y - this.f7502m);
        }
        this.f7502m = this.f7513u.getTop();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        j();
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int findPointerIndex;
        d();
        int actionMasked = motionEvent.getActionMasked();
        if (this.f7511s && actionMasked == 0) {
            this.f7511s = false;
        }
        if (!isEnabled() || this.f7511s || canChildScrollUp() || this.f7492c || this.f7500k) {
            return false;
        }
        if (actionMasked != 0) {
            if (actionMasked != 1) {
                if (actionMasked == 2) {
                    int i2 = this.f7509q;
                    if (i2 == -1 || (findPointerIndex = motionEvent.findPointerIndex(i2)) < 0) {
                        return false;
                    }
                    m(motionEvent.getY(findPointerIndex));
                } else if (actionMasked != 3) {
                    if (actionMasked == 6) {
                        i(motionEvent);
                    }
                }
            }
            this.f7507p = false;
            this.f7509q = -1;
        } else {
            setTargetOffsetTopAndBottom(this.f7517y - this.f7513u.getTop());
            int pointerId = motionEvent.getPointerId(0);
            this.f7509q = pointerId;
            this.f7507p = false;
            int findPointerIndex2 = motionEvent.findPointerIndex(pointerId);
            if (findPointerIndex2 < 0) {
                return false;
            }
            this.f7505o = motionEvent.getY(findPointerIndex2);
        }
        return this.f7507p;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z3, int i2, int i4, int i5, int i6) {
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        if (getChildCount() == 0) {
            return;
        }
        if (this.f7490a == null) {
            d();
        }
        View view = this.f7490a;
        if (view == null) {
            return;
        }
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        view.layout(paddingLeft, paddingTop, ((measuredWidth - getPaddingLeft()) - getPaddingRight()) + paddingLeft, ((measuredHeight - getPaddingTop()) - getPaddingBottom()) + paddingTop);
        int measuredWidth2 = this.f7513u.getMeasuredWidth();
        int measuredHeight2 = this.f7513u.getMeasuredHeight();
        int i7 = measuredWidth / 2;
        int i8 = measuredWidth2 / 2;
        int i9 = this.f7502m;
        this.f7513u.layout(i7 - i8, i9, i7 + i8, measuredHeight2 + i9);
    }

    @Override // android.view.View
    public void onMeasure(int i2, int i4) {
        super.onMeasure(i2, i4);
        if (this.f7490a == null) {
            d();
        }
        View view = this.f7490a;
        if (view == null) {
            return;
        }
        view.measure(View.MeasureSpec.makeMeasureSpec((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), 1073741824), View.MeasureSpec.makeMeasureSpec((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), 1073741824));
        this.f7513u.measure(View.MeasureSpec.makeMeasureSpec(this.I, 1073741824), View.MeasureSpec.makeMeasureSpec(this.I, 1073741824));
        this.f7514v = -1;
        for (int i5 = 0; i5 < getChildCount(); i5++) {
            if (getChildAt(i5) == this.f7513u) {
                this.f7514v = i5;
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
            float f4 = this.f7495f;
            if (f4 > 0.0f) {
                float f5 = i4;
                if (f5 > f4) {
                    iArr[1] = i4 - ((int) f4);
                    this.f7495f = 0.0f;
                } else {
                    this.f7495f = f4 - f5;
                    iArr[1] = i4;
                }
                g(this.f7495f);
            }
        }
        if (this.J && i4 > 0 && this.f7495f == 0.0f && Math.abs(i4 - iArr[1]) > 0) {
            this.f7513u.setVisibility(8);
        }
        int[] iArr2 = this.f7498i;
        if (dispatchNestedPreScroll(i2 - iArr[0], i4 - iArr[1], iArr2, null)) {
            iArr[0] = iArr[0] + iArr2[0];
            iArr[1] = iArr[1] + iArr2[1];
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public void onNestedScroll(View view, int i2, int i4, int i5, int i6) {
        dispatchNestedScroll(i2, i4, i5, i6, this.f7499j);
        int i7 = i6 + this.f7499j[1];
        if (i7 >= 0 || canChildScrollUp()) {
            return;
        }
        float abs = this.f7495f + Math.abs(i7);
        this.f7495f = abs;
        g(abs);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public void onNestedScrollAccepted(View view, View view2, int i2) {
        this.f7496g.onNestedScrollAccepted(view, view2, i2);
        startNestedScroll(i2 & 2);
        this.f7495f = 0.0f;
        this.f7500k = true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public boolean onStartNestedScroll(View view, View view2, int i2) {
        return (!isEnabled() || this.f7511s || this.f7492c || (i2 & 2) == 0) ? false : true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public void onStopNestedScroll(View view) {
        this.f7496g.onStopNestedScroll(view);
        this.f7500k = false;
        float f4 = this.f7495f;
        if (f4 > 0.0f) {
            e(f4);
            this.f7495f = 0.0f;
        }
        stopNestedScroll();
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (this.f7511s && actionMasked == 0) {
            this.f7511s = false;
        }
        if (!isEnabled() || this.f7511s || canChildScrollUp() || this.f7492c || this.f7500k) {
            return false;
        }
        if (actionMasked == 0) {
            this.f7509q = motionEvent.getPointerId(0);
            this.f7507p = false;
        } else if (actionMasked == 1) {
            int findPointerIndex = motionEvent.findPointerIndex(this.f7509q);
            if (findPointerIndex < 0) {
                return false;
            }
            if (this.f7507p) {
                this.f7507p = false;
                e((motionEvent.getY(findPointerIndex) - this.f7503n) * 0.5f);
            }
            this.f7509q = -1;
            return false;
        } else if (actionMasked == 2) {
            int findPointerIndex2 = motionEvent.findPointerIndex(this.f7509q);
            if (findPointerIndex2 < 0) {
                return false;
            }
            float y3 = motionEvent.getY(findPointerIndex2);
            m(y3);
            if (this.f7507p) {
                float f4 = (y3 - this.f7503n) * 0.5f;
                if (f4 <= 0.0f) {
                    return false;
                }
                g(f4);
            }
        } else if (actionMasked == 3) {
            return false;
        } else {
            if (actionMasked == 5) {
                int actionIndex = motionEvent.getActionIndex();
                if (actionIndex < 0) {
                    return false;
                }
                this.f7509q = motionEvent.getPointerId(actionIndex);
            } else if (actionMasked == 6) {
                i(motionEvent);
            }
        }
        return true;
    }

    void p(Animation.AnimationListener animationListener) {
        Animation animation = new Animation() { // from class: androidx.swiperefreshlayout.widget.SwipeRefreshLayout.3
            @Override // android.view.animation.Animation
            public void applyTransformation(float f4, Transformation transformation) {
                SwipeRefreshLayout.this.setAnimationProgress(1.0f - f4);
            }
        };
        this.D = animation;
        animation.setDuration(150L);
        this.f7513u.setAnimationListener(animationListener);
        this.f7513u.clearAnimation();
        this.f7513u.startAnimation(this.D);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z3) {
        if (Build.VERSION.SDK_INT >= 21 || !(this.f7490a instanceof AbsListView)) {
            View view = this.f7490a;
            if (view == null || ViewCompat.isNestedScrollingEnabled(view)) {
                super.requestDisallowInterceptTouchEvent(z3);
            }
        }
    }

    void setAnimationProgress(float f4) {
        this.f7513u.setScaleX(f4);
        this.f7513u.setScaleY(f4);
    }

    @Deprecated
    public void setColorScheme(@ColorRes int... iArr) {
        setColorSchemeResources(iArr);
    }

    public void setColorSchemeColors(@ColorInt int... iArr) {
        d();
        this.B.setColorSchemeColors(iArr);
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
        this.f7494e = i2;
    }

    @Override // android.view.View
    public void setEnabled(boolean z3) {
        super.setEnabled(z3);
        if (z3) {
            return;
        }
        j();
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public void setNestedScrollingEnabled(boolean z3) {
        this.f7497h.setNestedScrollingEnabled(z3);
    }

    public void setOnChildScrollUpCallback(@Nullable OnChildScrollUpCallback onChildScrollUpCallback) {
        this.K = onChildScrollUpCallback;
    }

    public void setOnRefreshListener(@Nullable OnRefreshListener onRefreshListener) {
        this.f7491b = onRefreshListener;
    }

    @Deprecated
    public void setProgressBackgroundColor(int i2) {
        setProgressBackgroundColorSchemeResource(i2);
    }

    public void setProgressBackgroundColorSchemeColor(@ColorInt int i2) {
        this.f7513u.setBackgroundColor(i2);
    }

    public void setProgressBackgroundColorSchemeResource(@ColorRes int i2) {
        setProgressBackgroundColorSchemeColor(ContextCompat.getColor(getContext(), i2));
    }

    public void setProgressViewEndTarget(boolean z3, int i2) {
        this.f7518z = i2;
        this.f7510r = z3;
        this.f7513u.invalidate();
    }

    public void setProgressViewOffset(boolean z3, int i2, int i4) {
        this.f7510r = z3;
        this.f7517y = i2;
        this.f7518z = i4;
        this.J = true;
        j();
        this.f7492c = false;
    }

    public void setRefreshing(boolean z3) {
        int i2;
        if (z3 && this.f7492c != z3) {
            this.f7492c = z3;
            if (!this.J) {
                i2 = this.f7518z + this.f7517y;
            } else {
                i2 = this.f7518z;
            }
            setTargetOffsetTopAndBottom(i2 - this.f7502m);
            this.H = false;
            r(this.f7504n0);
            return;
        }
        k(z3, false);
    }

    public void setSize(int i2) {
        if (i2 == 0 || i2 == 1) {
            DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
            if (i2 == 0) {
                this.I = (int) (displayMetrics.density * 56.0f);
            } else {
                this.I = (int) (displayMetrics.density * 40.0f);
            }
            this.f7513u.setImageDrawable(null);
            this.B.setStyle(i2);
            this.f7513u.setImageDrawable(this.B);
        }
    }

    public void setSlingshotDistance(@Px int i2) {
        this.A = i2;
    }

    void setTargetOffsetTopAndBottom(int i2) {
        this.f7513u.bringToFront();
        ViewCompat.offsetTopAndBottom(this.f7513u, i2);
        this.f7502m = this.f7513u.getTop();
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean startNestedScroll(int i2) {
        return this.f7497h.startNestedScroll(i2);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public void stopNestedScroll() {
        this.f7497h.stopNestedScroll();
    }

    public SwipeRefreshLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f7492c = false;
        this.f7494e = -1.0f;
        this.f7498i = new int[2];
        this.f7499j = new int[2];
        this.f7509q = -1;
        this.f7514v = -1;
        this.f7504n0 = new Animation.AnimationListener() { // from class: androidx.swiperefreshlayout.widget.SwipeRefreshLayout.1
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                OnRefreshListener onRefreshListener;
                SwipeRefreshLayout swipeRefreshLayout = SwipeRefreshLayout.this;
                if (swipeRefreshLayout.f7492c) {
                    swipeRefreshLayout.B.setAlpha(255);
                    SwipeRefreshLayout.this.B.start();
                    SwipeRefreshLayout swipeRefreshLayout2 = SwipeRefreshLayout.this;
                    if (swipeRefreshLayout2.H && (onRefreshListener = swipeRefreshLayout2.f7491b) != null) {
                        onRefreshListener.onRefresh();
                    }
                    SwipeRefreshLayout swipeRefreshLayout3 = SwipeRefreshLayout.this;
                    swipeRefreshLayout3.f7502m = swipeRefreshLayout3.f7513u.getTop();
                    return;
                }
                swipeRefreshLayout.j();
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }
        };
        this.f7506o0 = new Animation() { // from class: androidx.swiperefreshlayout.widget.SwipeRefreshLayout.6
            @Override // android.view.animation.Animation
            public void applyTransformation(float f4, Transformation transformation) {
                int i2;
                SwipeRefreshLayout swipeRefreshLayout = SwipeRefreshLayout.this;
                if (!swipeRefreshLayout.J) {
                    i2 = swipeRefreshLayout.f7518z - Math.abs(swipeRefreshLayout.f7517y);
                } else {
                    i2 = swipeRefreshLayout.f7518z;
                }
                SwipeRefreshLayout swipeRefreshLayout2 = SwipeRefreshLayout.this;
                int i4 = swipeRefreshLayout2.f7515w;
                SwipeRefreshLayout.this.setTargetOffsetTopAndBottom((i4 + ((int) ((i2 - i4) * f4))) - swipeRefreshLayout2.f7513u.getTop());
                SwipeRefreshLayout.this.B.setArrowScale(1.0f - f4);
            }
        };
        this.f7508p0 = new Animation() { // from class: androidx.swiperefreshlayout.widget.SwipeRefreshLayout.7
            @Override // android.view.animation.Animation
            public void applyTransformation(float f4, Transformation transformation) {
                SwipeRefreshLayout.this.h(f4);
            }
        };
        this.f7493d = ViewConfiguration.get(context).getScaledTouchSlop();
        this.f7501l = getResources().getInteger(17694721);
        setWillNotDraw(false);
        this.f7512t = new DecelerateInterpolator(f7485v0);
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        this.I = (int) (displayMetrics.density * 40.0f);
        c();
        setChildrenDrawingOrderEnabled(true);
        int i2 = (int) (displayMetrics.density * 64.0f);
        this.f7518z = i2;
        this.f7494e = i2;
        this.f7496g = new NestedScrollingParentHelper(this);
        this.f7497h = new NestedScrollingChildHelper(this);
        setNestedScrollingEnabled(true);
        int i4 = -this.I;
        this.f7502m = i4;
        this.f7517y = i4;
        h(1.0f);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, F0);
        setEnabled(obtainStyledAttributes.getBoolean(0, true));
        obtainStyledAttributes.recycle();
    }
}
