package com.join.mgps.customview;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.Interpolator;
import android.widget.AbsListView;
import android.widget.FrameLayout;
import android.widget.ScrollView;
import androidx.core.view.ViewCompat;
import com.join.android.app.mgsim.wufun.R;
/* loaded from: classes3.dex */
public class SlideBottomPanel extends FrameLayout {
    private static final int F = 1;
    private static final int G = 2;
    private static final int H = -1;
    private static final int I = 60;
    private static final int J = 380;
    private static final int K = 30;

    /* renamed from: n0  reason: collision with root package name */
    private static final int f46075n0 = 250;

    /* renamed from: o0  reason: collision with root package name */
    private static final int f46076o0 = 300;

    /* renamed from: p0  reason: collision with root package name */
    private static final boolean f46077p0 = true;

    /* renamed from: q0  reason: collision with root package name */
    private static final boolean f46078q0 = true;

    /* renamed from: r0  reason: collision with root package name */
    private static final boolean f46079r0 = false;
    private Interpolator A;
    private Interpolator B;
    private Context C;
    private DarkFrameLayout D;

    /* renamed from: a  reason: collision with root package name */
    private int f46081a;

    /* renamed from: b  reason: collision with root package name */
    private float f46082b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f46083c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f46084d;

    /* renamed from: e  reason: collision with root package name */
    private float f46085e;

    /* renamed from: f  reason: collision with root package name */
    private float f46086f;

    /* renamed from: g  reason: collision with root package name */
    private float f46087g;

    /* renamed from: h  reason: collision with root package name */
    private int f46088h;

    /* renamed from: i  reason: collision with root package name */
    private int f46089i;

    /* renamed from: j  reason: collision with root package name */
    private VelocityTracker f46090j;

    /* renamed from: k  reason: collision with root package name */
    private int f46091k;

    /* renamed from: l  reason: collision with root package name */
    private float f46092l;

    /* renamed from: m  reason: collision with root package name */
    private float f46093m;

    /* renamed from: n  reason: collision with root package name */
    private float f46094n;

    /* renamed from: o  reason: collision with root package name */
    private float f46095o;

    /* renamed from: p  reason: collision with root package name */
    private long f46096p;

    /* renamed from: q  reason: collision with root package name */
    private boolean f46097q;

    /* renamed from: r  reason: collision with root package name */
    private int f46098r;

    /* renamed from: s  reason: collision with root package name */
    private float f46099s;

    /* renamed from: t  reason: collision with root package name */
    private float f46100t;

    /* renamed from: u  reason: collision with root package name */
    private float f46101u;

    /* renamed from: v  reason: collision with root package name */
    private int f46102v;

    /* renamed from: w  reason: collision with root package name */
    private boolean f46103w;

    /* renamed from: x  reason: collision with root package name */
    private boolean f46104x;

    /* renamed from: y  reason: collision with root package name */
    private boolean f46105y;

    /* renamed from: z  reason: collision with root package name */
    private boolean f46106z;
    private static final String E = SlideBottomPanel.class.getSimpleName();

    /* renamed from: s0  reason: collision with root package name */
    private static float f46080s0 = 5.0f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ View f46107a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f46108b;

        a(View view, int i2) {
            this.f46107a = view;
            this.f46108b = i2;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            ViewCompat.setY(this.f46107a, floatValue);
            if (SlideBottomPanel.this.D == null || !SlideBottomPanel.this.f46103w || floatValue >= this.f46108b) {
                return;
            }
            SlideBottomPanel.this.D.b((int) ((1.0f - (floatValue / this.f46108b)) * 159.0f));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements Animator.AnimatorListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ View f46110a;

        b(View view) {
            this.f46110a = view;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            SlideBottomPanel.this.f46083c = false;
            SlideBottomPanel.this.f46084d = false;
            SlideBottomPanel.this.A(this.f46110a);
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            SlideBottomPanel.this.f46083c = false;
            SlideBottomPanel.this.f46084d = false;
            SlideBottomPanel.this.A(this.f46110a);
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            SlideBottomPanel.this.f46083c = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ View f46112a;

        c(View view) {
            this.f46112a = view;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            ViewCompat.setY(this.f46112a, floatValue);
            if (SlideBottomPanel.this.D == null || !SlideBottomPanel.this.f46103w || SlideBottomPanel.this.D.getCurrentAlpha() == 159) {
                return;
            }
            SlideBottomPanel.this.D.b((int) ((1.0f - (floatValue / (SlideBottomPanel.this.f46091k - SlideBottomPanel.this.f46100t))) * 159.0f));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d implements Animator.AnimatorListener {
        d() {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            SlideBottomPanel.this.f46083c = false;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            SlideBottomPanel.this.f46083c = false;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            SlideBottomPanel.this.f46083c = true;
        }
    }

    public SlideBottomPanel(Context context) {
        this(context, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A(View view) {
        if ((view instanceof ViewGroup) && this.f46105y) {
            try {
                View childAt = ((ViewGroup) view).getChildAt(1);
                if (childAt.getVisibility() != 0) {
                    childAt.layout(0, 0, childAt.getMeasuredWidth(), childAt.getMeasuredHeight());
                    childAt.setVisibility(0);
                }
            } catch (NullPointerException e4) {
                e4.printStackTrace();
            }
        }
    }

    private boolean B(int i2) {
        View n4;
        View n5;
        View findViewWithTag = findViewWithTag(2);
        if (!(findViewWithTag instanceof ViewGroup) || (n4 = n((ViewGroup) findViewWithTag, this.f46092l, this.f46093m)) == null) {
            return false;
        }
        if (n4 instanceof AbsListView) {
            AbsListView absListView = (AbsListView) n4;
            if (Build.VERSION.SDK_INT >= 19) {
                return absListView.canScrollList(i2);
            }
            return a(absListView, i2);
        } else if (n4 instanceof ScrollView) {
            ScrollView scrollView = (ScrollView) n4;
            if (Build.VERSION.SDK_INT >= 14) {
                return scrollView.canScrollVertically(i2);
            }
            return z(scrollView, i2);
        } else {
            if ((n4 instanceof ViewGroup) && (n5 = n((ViewGroup) n4, this.f46092l, this.f46093m)) != null && (n5 instanceof ViewGroup)) {
                if (n5 instanceof AbsListView) {
                    AbsListView absListView2 = (AbsListView) n5;
                    if (Build.VERSION.SDK_INT >= 19) {
                        return absListView2.canScrollList(i2);
                    }
                    return a(absListView2, i2);
                } else if (n5 instanceof ScrollView) {
                    ScrollView scrollView2 = (ScrollView) n5;
                    if (Build.VERSION.SDK_INT >= 14) {
                        return scrollView2.canScrollVertically(i2);
                    }
                    return z(scrollView2, i2);
                }
            }
            return false;
        }
    }

    private boolean a(AbsListView absListView, int i2) {
        int childCount = absListView.getChildCount();
        if (childCount == 0) {
            return false;
        }
        int firstVisiblePosition = absListView.getFirstVisiblePosition();
        if (i2 > 0) {
            return firstVisiblePosition + childCount < absListView.getCount() || absListView.getChildAt(childCount + (-1)).getBottom() > absListView.getHeight() - absListView.getPaddingTop();
        }
        return firstVisiblePosition > 0 || absListView.getChildAt(0).getTop() < absListView.getPaddingTop();
    }

    private void i() {
        this.f46090j.computeCurrentVelocity(1000, this.f46088h);
        this.f46085e = this.f46090j.getXVelocity();
        this.f46086f = this.f46090j.getYVelocity();
    }

    private int j(ScrollView scrollView) {
        int childCount = scrollView.getChildCount();
        int height = (scrollView.getHeight() - scrollView.getPaddingBottom()) - scrollView.getPaddingTop();
        if (childCount == 0) {
            return height;
        }
        int bottom = scrollView.getChildAt(0).getBottom();
        int scrollY = scrollView.getScrollY();
        int max = Math.max(0, bottom - height);
        return scrollY < 0 ? bottom - scrollY : scrollY > max ? bottom + (scrollY - max) : bottom;
    }

    private double l(float f4, float f5, float f6, float f7) {
        float f8 = f4 - f6;
        float f9 = f5 - f7;
        return Math.sqrt((f8 * f8) + (f9 * f9));
    }

    private int m(int i2) {
        return (int) ((i2 * this.f46082b) + 0.5f);
    }

    private View n(ViewGroup viewGroup, float f4, float f5) {
        for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = viewGroup.getChildAt(childCount);
            if (f4 >= childAt.getLeft() && f4 < childAt.getRight() && f5 >= (childAt.getTop() + this.f46091k) - this.f46099s && f5 < (childAt.getBottom() + this.f46091k) - this.f46099s) {
                return childAt;
            }
        }
        return null;
    }

    private boolean o(MotionEvent motionEvent) {
        this.f46096p = System.currentTimeMillis();
        this.f46092l = motionEvent.getX();
        float y3 = motionEvent.getY();
        this.f46094n = y3;
        this.f46093m = y3;
        boolean z3 = this.f46084d;
        if (!z3 && y3 > this.f46091k - this.f46100t) {
            this.f46106z = true;
            return true;
        }
        if (!z3 && y3 <= this.f46091k - this.f46100t) {
            this.f46106z = false;
        } else if (z3 && y3 > this.f46091k - this.f46099s) {
            this.f46106z = true;
        } else if (z3 && y3 < this.f46091k - this.f46099s) {
            s();
            this.f46106z = false;
        }
        return false;
    }

    private void p(MotionEvent motionEvent) {
        if (this.f46106z) {
            if (this.f46084d && B((int) (this.f46093m - motionEvent.getY()))) {
                return;
            }
            i();
            if (Math.abs(this.f46085e) > Math.abs(this.f46086f)) {
                return;
            }
            if (!this.f46097q && Math.abs(motionEvent.getY() - this.f46093m) > this.f46087g && Math.abs(motionEvent.getX() - this.f46092l) < this.f46087g) {
                this.f46097q = true;
                this.f46094n = motionEvent.getY();
            }
            if (this.f46097q) {
                this.f46095o = motionEvent.getY() - this.f46094n;
                this.f46094n = motionEvent.getY();
                View findViewWithTag = findViewWithTag(2);
                if (this.f46105y && this.f46084d) {
                    t(findViewWithTag);
                }
                if (this.D != null && this.f46103w) {
                    float y3 = ViewCompat.getY(findViewWithTag);
                    int i2 = this.f46091k;
                    if (y3 > i2 - this.f46099s) {
                        float f4 = this.f46100t;
                        if (y3 < i2 - f4) {
                            this.D.b((int) ((1.0f - (y3 / (i2 - f4))) * 159.0f));
                        }
                    }
                }
                if (!this.f46104x) {
                    findViewWithTag.offsetTopAndBottom((int) this.f46095o);
                    return;
                }
                float y4 = ViewCompat.getY(findViewWithTag);
                float f5 = this.f46095o;
                int i4 = this.f46091k;
                float f6 = this.f46099s;
                if (y4 + f5 <= i4 - f6) {
                    findViewWithTag.offsetTopAndBottom((int) ((i4 - f6) - y4));
                    return;
                }
                float f7 = this.f46100t;
                if (y4 + f5 >= i4 - f7) {
                    findViewWithTag.offsetTopAndBottom((int) ((i4 - f7) - y4));
                } else {
                    findViewWithTag.offsetTopAndBottom((int) f5);
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x00a6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void q(android.view.MotionEvent r9) {
        /*
            Method dump skipped, instructions count: 242
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.customview.SlideBottomPanel.q(android.view.MotionEvent):void");
    }

    private void s() {
        if (this.f46083c) {
            return;
        }
        View findViewWithTag = findViewWithTag(2);
        ValueAnimator ofFloat = ValueAnimator.ofFloat(ViewCompat.getY(findViewWithTag), this.f46091k - this.f46100t);
        ofFloat.setInterpolator(this.B);
        ofFloat.setTarget(findViewWithTag);
        ofFloat.addUpdateListener(new a(findViewWithTag, (int) (this.f46091k - this.f46100t)));
        ofFloat.addListener(new b(findViewWithTag));
        ofFloat.start();
    }

    private void t(View view) {
        if ((view instanceof ViewGroup) && this.f46105y) {
            try {
                ((ViewGroup) view).getChildAt(1).setVisibility(4);
            } catch (NullPointerException e4) {
                e4.printStackTrace();
            }
        }
    }

    private void u() {
        if (this.f46098r != -1) {
            DarkFrameLayout darkFrameLayout = new DarkFrameLayout(this.C);
            this.D = darkFrameLayout;
            darkFrameLayout.addView(LayoutInflater.from(this.C).inflate(this.f46098r, (ViewGroup) null));
            this.D.setTag(1);
            this.D.setSlideBottomPanel(this);
            addView(this.D);
        }
    }

    private void v(MotionEvent motionEvent) {
        if (this.f46090j == null) {
            this.f46090j = VelocityTracker.obtain();
        }
        this.f46090j.addMovement(motionEvent);
    }

    private int x(int i2) {
        return (int) ((i2 / this.f46082b) + 0.5f);
    }

    private void y() {
        VelocityTracker velocityTracker = this.f46090j;
        if (velocityTracker != null) {
            velocityTracker.clear();
            this.f46090j.recycle();
            this.f46090j = null;
        }
    }

    private boolean z(ScrollView scrollView, int i2) {
        int max = Math.max(0, scrollView.getScrollY());
        int j4 = j(scrollView) - scrollView.getHeight();
        if (j4 == 0) {
            return false;
        }
        return i2 < 0 ? max > 0 : max < j4 - 1;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        boolean o3;
        v(motionEvent);
        int action = motionEvent.getAction();
        if (action != 0) {
            if (action == 1) {
                q(motionEvent);
                y();
            } else if (action == 2) {
                p(motionEvent);
            }
            o3 = false;
        } else {
            o3 = o(motionEvent);
        }
        StringBuilder sb = new StringBuilder();
        sb.append("");
        sb.append(o3 || super.dispatchTouchEvent(motionEvent));
        return o3 || super.dispatchTouchEvent(motionEvent);
    }

    public void k() {
        if (this.f46084d || this.f46083c) {
            return;
        }
        if (this.f46103w || this.D != null) {
            this.D.c(true);
        }
        View findViewWithTag = findViewWithTag(2);
        ValueAnimator duration = ValueAnimator.ofFloat(ViewCompat.getY(findViewWithTag), this.f46091k - this.f46099s).setDuration(this.f46102v);
        duration.setTarget(findViewWithTag);
        duration.setInterpolator(this.A);
        duration.addUpdateListener(new c(findViewWithTag));
        duration.addListener(new d());
        duration.start();
        this.f46084d = true;
        t(findViewWithTag);
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return this.f46097q;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z3, int i2, int i4, int i5, int i6) {
        super.onLayout(z3, i2, i4, i5, i6);
        this.f46081a = getChildCount();
        int i7 = (int) (this.f46091k - this.f46100t);
        for (int i8 = 0; i8 < this.f46081a; i8++) {
            View childAt = getChildAt(i8);
            if (childAt.getTag() != null && ((Integer) childAt.getTag()).intValue() == 1) {
                if (Integer.parseInt(childAt.getTag() + "") == 1) {
                    childAt.layout(0, 0, childAt.getMeasuredWidth(), childAt.getMeasuredHeight());
                    childAt.setPadding(0, 0, 0, (int) this.f46100t);
                }
            } else {
                childAt.layout(0, i7, childAt.getMeasuredWidth(), childAt.getMeasuredHeight() + i7);
                childAt.setTag(2);
            }
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i2, int i4) {
        super.onMeasure(i2, i4);
        this.f46091k = getMeasuredHeight();
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return true;
    }

    public void r() {
        if (this.f46084d) {
            s();
        }
    }

    public boolean w() {
        return this.f46084d;
    }

    public SlideBottomPanel(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SlideBottomPanel(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f46083c = false;
        this.f46084d = false;
        this.f46097q = false;
        this.f46103w = true;
        this.f46104x = true;
        this.f46105y = false;
        this.f46106z = false;
        this.A = new AccelerateInterpolator();
        this.B = new AccelerateInterpolator();
        this.C = context;
        this.f46082b = getResources().getDisplayMetrics().density;
        ViewConfiguration viewConfiguration = ViewConfiguration.get(this.C);
        this.f46088h = viewConfiguration.getScaledMaximumFlingVelocity();
        this.f46089i = viewConfiguration.getScaledMinimumFlingVelocity();
        this.f46087g = viewConfiguration.getScaledTouchSlop();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.SlideBottomPanel, i2, 0);
        this.f46098r = obtainStyledAttributes.getResourceId(1, -1);
        this.f46099s = obtainStyledAttributes.getDimension(6, m(J));
        this.f46104x = obtainStyledAttributes.getBoolean(2, true);
        float dimension = obtainStyledAttributes.getDimension(7, m(60));
        this.f46100t = dimension;
        f46080s0 = dimension;
        this.f46101u = obtainStyledAttributes.getDimension(5, m(30));
        this.f46102v = obtainStyledAttributes.getInt(0, 250);
        this.f46105y = obtainStyledAttributes.getBoolean(4, false);
        this.f46103w = obtainStyledAttributes.getBoolean(3, true);
        obtainStyledAttributes.recycle();
        u();
    }
}
