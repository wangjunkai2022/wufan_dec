package ru.noties.scrollable;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.FloatEvaluator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewTreeObserver;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import android.widget.FrameLayout;
import com.join.android.app.mgsim.wufun.R;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes5.dex */
public class ScrollableLayout extends FrameLayout {
    private static final long K = 200;

    /* renamed from: n0  reason: collision with root package name */
    private static final int f74115n0 = 100;

    /* renamed from: o0  reason: collision with root package name */
    private static final float f74116o0 = 0.0565f;
    private ViewTreeObserver.OnGlobalLayoutListener A;
    private int B;
    private boolean C;
    private l D;
    private int E;
    private View F;
    private ValueAnimator G;
    private ValueAnimator.AnimatorUpdateListener H;
    private final Runnable I;
    private final Runnable J;

    /* renamed from: a  reason: collision with root package name */
    private final Rect f74117a;

    /* renamed from: b  reason: collision with root package name */
    private final List<k> f74118b;

    /* renamed from: c  reason: collision with root package name */
    private n f74119c;

    /* renamed from: d  reason: collision with root package name */
    private GestureDetector f74120d;

    /* renamed from: e  reason: collision with root package name */
    private GestureDetector f74121e;

    /* renamed from: f  reason: collision with root package name */
    private ru.noties.scrollable.b f74122f;

    /* renamed from: g  reason: collision with root package name */
    private int f74123g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f74124h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f74125i;

    /* renamed from: j  reason: collision with root package name */
    private g f74126j;

    /* renamed from: k  reason: collision with root package name */
    private ru.noties.scrollable.c f74127k;

    /* renamed from: l  reason: collision with root package name */
    private ValueAnimator f74128l;

    /* renamed from: m  reason: collision with root package name */
    private ValueAnimator.AnimatorUpdateListener f74129m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f74130n;

    /* renamed from: o  reason: collision with root package name */
    private boolean f74131o;

    /* renamed from: p  reason: collision with root package name */
    private boolean f74132p;

    /* renamed from: q  reason: collision with root package name */
    private ru.noties.scrollable.e f74133q;

    /* renamed from: r  reason: collision with root package name */
    private ru.noties.scrollable.d f74134r;

    /* renamed from: s  reason: collision with root package name */
    private View f74135s;

    /* renamed from: t  reason: collision with root package name */
    private boolean f74136t;

    /* renamed from: u  reason: collision with root package name */
    private long f74137u;

    /* renamed from: v  reason: collision with root package name */
    private boolean f74138v;

    /* renamed from: w  reason: collision with root package name */
    private float f74139w;

    /* renamed from: x  reason: collision with root package name */
    private float f74140x;

    /* renamed from: y  reason: collision with root package name */
    private ru.noties.scrollable.j f74141y;

    /* renamed from: z  reason: collision with root package name */
    private boolean f74142z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a implements h {
        a() {
        }

        @Override // ru.noties.scrollable.ScrollableLayout.h
        public void a(MotionEvent motionEvent) {
            ScrollableLayout.super.dispatchTouchEvent(motionEvent);
        }
    }

    /* loaded from: classes5.dex */
    class b implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f74146a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f74147b;

        b(int i2, int i4) {
            this.f74146a = i2;
            this.f74147b = i4;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            ScrollableLayout.this.scrollTo(0, (int) (this.f74146a + (this.f74147b * valueAnimator.getAnimatedFraction()) + 0.5f));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class c implements ViewTreeObserver.OnGlobalLayoutListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ View f74149a;

        c(View view) {
            this.f74149a = view;
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            ScrollableLayout.this.f74123g = this.f74149a.getMeasuredHeight();
        }
    }

    /* loaded from: classes5.dex */
    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            boolean c4 = ScrollableLayout.this.f74119c.c();
            ScrollableLayout.this.f74131o = c4;
            if (c4) {
                int f4 = ScrollableLayout.this.f74119c.f();
                if (f4 - ScrollableLayout.this.getScrollY() != 0) {
                    ScrollableLayout.this.scrollTo(0, f4);
                }
                ScrollableLayout.this.post(this);
            }
        }
    }

    /* loaded from: classes5.dex */
    class e implements Runnable {

        /* loaded from: classes5.dex */
        class a implements ValueAnimator.AnimatorUpdateListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ int f74153a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ int f74154b;

            a(int i2, int i4) {
                this.f74153a = i2;
                this.f74154b = i4;
            }

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                ScrollableLayout.this.scrollTo(0, (int) (this.f74153a + (this.f74154b * valueAnimator.getAnimatedFraction()) + 0.5f));
            }
        }

        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int scrollY;
            long j4;
            ScrollableLayout.this.z(false);
            if (ScrollableLayout.this.f74130n || ScrollableLayout.this.f74131o || (scrollY = ScrollableLayout.this.getScrollY()) == 0 || scrollY == ScrollableLayout.this.f74123g) {
                return;
            }
            ru.noties.scrollable.c cVar = ScrollableLayout.this.f74127k;
            ScrollableLayout scrollableLayout = ScrollableLayout.this;
            int b4 = cVar.b(scrollableLayout, scrollY, scrollableLayout.f74123g);
            if (scrollY == b4) {
                return;
            }
            if (ScrollableLayout.this.f74128l == null) {
                ScrollableLayout.this.f74128l = ValueAnimator.ofFloat(0.0f, 1.0f);
                ScrollableLayout.this.f74128l.setEvaluator(new FloatEvaluator());
                ScrollableLayout.this.f74128l.addListener(new j(ScrollableLayout.this, null));
            } else {
                if (ScrollableLayout.this.f74129m != null) {
                    ScrollableLayout.this.f74128l.removeUpdateListener(ScrollableLayout.this.f74129m);
                }
                if (ScrollableLayout.this.f74128l.isRunning()) {
                    ScrollableLayout.this.f74128l.end();
                }
            }
            ScrollableLayout.this.f74129m = new a(scrollY, b4 - scrollY);
            ScrollableLayout.this.f74128l.addUpdateListener(ScrollableLayout.this.f74129m);
            if (ScrollableLayout.this.f74133q != null) {
                ru.noties.scrollable.e eVar = ScrollableLayout.this.f74133q;
                ScrollableLayout scrollableLayout2 = ScrollableLayout.this;
                j4 = eVar.a(scrollableLayout2, scrollY, b4, scrollableLayout2.f74123g);
            } else {
                j4 = 200;
            }
            ScrollableLayout.this.f74128l.setDuration(j4);
            if (ScrollableLayout.this.f74134r != null) {
                ScrollableLayout.this.f74134r.a(ScrollableLayout.this.f74128l);
            }
            ScrollableLayout.this.f74128l.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public class f extends ru.noties.scrollable.h {

        /* renamed from: d  reason: collision with root package name */
        private static final int f74156d = 12;

        /* renamed from: a  reason: collision with root package name */
        private final int f74157a;

        /* renamed from: b  reason: collision with root package name */
        private final float f74158b;

        f(Context context) {
            this.f74157a = ru.noties.scrollable.g.a(context, 12);
            this.f74158b = ViewConfiguration.get(context).getScaledMinimumFlingVelocity();
        }

        @Override // ru.noties.scrollable.h, android.view.GestureDetector.OnGestureListener
        public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f4, float f5) {
            int scrollY;
            if (Math.abs(f5) >= this.f74158b && Math.abs(f4) <= Math.abs(f5) && (scrollY = ScrollableLayout.this.getScrollY()) >= 0 && scrollY <= ScrollableLayout.this.f74123g) {
                int i2 = -((int) (0.5f + f5));
                if (!ScrollableLayout.this.f74136t && ScrollableLayout.this.f74141y != null && ScrollableLayout.this.f74123g != ScrollableLayout.this.getScrollY() && i2 > 0 && ScrollableLayout.this.f74122f != null && ScrollableLayout.this.f74122f.o(1)) {
                    ScrollableLayout.this.f74119c.d(0, scrollY, 0, i2, 0, 0, 0, Integer.MAX_VALUE);
                    ScrollableLayout.this.f74141y.x(ScrollableLayout.this.f74119c.h() - ScrollableLayout.this.f74123g, ScrollableLayout.this.f74119c.k(f5));
                    ScrollableLayout.this.f74119c.a();
                }
                ScrollableLayout.this.f74119c.d(0, scrollY, 0, i2, 0, 0, 0, ScrollableLayout.this.f74123g);
                if (ScrollableLayout.this.f74119c.c()) {
                    int h4 = ScrollableLayout.this.f74119c.h();
                    if (Math.abs(scrollY - h4) < this.f74157a) {
                        ScrollableLayout.this.f74119c.a();
                        return false;
                    }
                    if (h4 != scrollY && ScrollableLayout.this.f74127k != null) {
                        ru.noties.scrollable.c cVar = ScrollableLayout.this.f74127k;
                        ScrollableLayout scrollableLayout = ScrollableLayout.this;
                        h4 = cVar.a(scrollableLayout, h4 - scrollY < 0, scrollY, h4, scrollableLayout.f74123g);
                        ScrollableLayout.this.f74119c.l(h4);
                    }
                    return h4 != scrollY && ScrollableLayout.this.B(h4) >= 0;
                }
                return false;
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static class g {

        /* renamed from: a  reason: collision with root package name */
        final h f74160a;

        g(h hVar) {
            this.f74160a = hVar;
        }

        void a(MotionEvent motionEvent, int i2) {
            int action = motionEvent.getAction();
            motionEvent.setAction(i2);
            this.f74160a.a(motionEvent);
            motionEvent.setAction(action);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public interface h {
        void a(MotionEvent motionEvent);
    }

    /* loaded from: classes5.dex */
    private class j extends AnimatorListenerAdapter {

        /* renamed from: a  reason: collision with root package name */
        private boolean f74163a;

        private j() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            ScrollableLayout.this.f74130n = this.f74163a;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            ScrollableLayout.this.f74130n = this.f74163a;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            this.f74163a = ScrollableLayout.this.f74130n;
            ScrollableLayout.this.f74130n = true;
        }

        /* synthetic */ j(ScrollableLayout scrollableLayout, a aVar) {
            this();
        }
    }

    public ScrollableLayout(Context context) {
        super(context);
        this.f74117a = new Rect();
        this.f74118b = new ArrayList(3);
        this.I = new d();
        this.J = new e();
        C(context, null);
    }

    private void A() {
        l lVar = this.D;
        if (lVar != null && this.C) {
            lVar.b(this);
        }
        this.C = false;
    }

    private void C(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ScrollableLayout);
        try {
            this.f74119c = D(context, null, obtainStyledAttributes.getBoolean(8, false));
            setFriction(obtainStyledAttributes.getFloat(6, f74116o0));
            int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(7, 0);
            this.f74123g = dimensionPixelSize;
            this.f74142z = obtainStyledAttributes.getBoolean(0, dimensionPixelSize == 0);
            this.B = obtainStyledAttributes.getResourceId(1, 0);
            setConsiderIdleMillis(obtainStyledAttributes.getInteger(4, 100));
            if (obtainStyledAttributes.getBoolean(5, false)) {
                setCloseUpAlgorithm(new ru.noties.scrollable.f());
            }
            int integer = obtainStyledAttributes.getInteger(2, -1);
            if (integer != -1) {
                setCloseUpIdleAnimationTime(new o(integer));
            }
            int resourceId = obtainStyledAttributes.getResourceId(3, 0);
            if (resourceId != 0) {
                setCloseAnimatorConfigurator(new ru.noties.scrollable.i(AnimationUtils.loadInterpolator(context, resourceId)));
            }
            this.E = obtainStyledAttributes.getResourceId(9, 0);
            obtainStyledAttributes.recycle();
            this.f74120d = new GestureDetector(context, new i(this, null));
            this.f74121e = new GestureDetector(context, new f(context));
            this.f74126j = new g(new a());
            this.f74140x = ViewConfiguration.get(context).getScaledTouchSlop();
        } catch (Throwable th) {
            obtainStyledAttributes.recycle();
            throw th;
        }
    }

    private boolean y(int i2) {
        View view = this.F;
        return view != null && view.canScrollVertically(i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void z(boolean z3) {
        if (z3) {
            removeCallbacks(this.J);
        }
        ValueAnimator valueAnimator = this.f74128l;
        if (valueAnimator == null || !valueAnimator.isRunning()) {
            return;
        }
        ValueAnimator.AnimatorUpdateListener animatorUpdateListener = this.f74129m;
        if (animatorUpdateListener != null) {
            this.f74128l.removeUpdateListener(animatorUpdateListener);
        }
        this.f74128l.end();
    }

    protected int B(int i2) {
        int scrollY = getScrollY();
        if (scrollY == i2) {
            return -1;
        }
        int i4 = i2 - scrollY;
        boolean z3 = i4 < 0;
        ru.noties.scrollable.b bVar = this.f74122f;
        if (bVar != null) {
            if (z3) {
                if (!this.f74136t && !this.f74130n && bVar.o(i4)) {
                    return -1;
                }
            } else if ((!this.f74136t && !this.f74130n && y(i4)) || (scrollY == this.f74123g && !this.f74122f.o(i4))) {
                return -1;
            }
        }
        if (i2 < 0) {
            return 0;
        }
        int i5 = this.f74123g;
        return i2 > i5 ? i5 : i2;
    }

    protected n D(Context context, Interpolator interpolator, boolean z3) {
        return new n(context, interpolator, z3);
    }

    public boolean E() {
        return this.f74142z;
    }

    public boolean F() {
        return this.f74130n;
    }

    protected void G(boolean z3) {
        View childAt;
        if (getChildCount() == 0) {
            return;
        }
        int i2 = this.B;
        if (i2 != 0) {
            childAt = findViewById(i2);
        } else {
            childAt = getChildAt(0);
        }
        if (childAt == null) {
            return;
        }
        if (!z3) {
            ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener = this.A;
            if (onGlobalLayoutListener != null) {
                p.a(childAt, onGlobalLayoutListener);
                this.A = null;
            }
        } else if (this.A == null) {
            this.A = new c(childAt);
            childAt.getViewTreeObserver().addOnGlobalLayoutListener(this.A);
        }
    }

    public void H(k kVar) {
        if (kVar != null) {
            this.f74118b.remove(kVar);
        }
    }

    @Override // android.view.View
    public boolean canScrollHorizontally(int i2) {
        return false;
    }

    @Override // android.view.View
    public boolean canScrollVertically(int i2) {
        ru.noties.scrollable.b bVar;
        return (i2 < 0 && getScrollY() > 0) || (i2 > 0 && (bVar = this.f74122f) != null && bVar.o(i2));
    }

    @Override // android.view.View
    protected int computeVerticalScrollRange() {
        return this.f74123g;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (this.f74130n) {
            this.f74132p = false;
            this.f74136t = false;
            this.f74124h = false;
            this.f74125i = false;
            this.C = false;
            removeCallbacks(this.J);
            removeCallbacks(this.I);
            return super.dispatchTouchEvent(motionEvent);
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f74132p = true;
            this.f74119c.a();
            View view = this.f74135s;
            if (view != null && view.getGlobalVisibleRect(this.f74117a)) {
                this.f74136t = this.f74117a.contains((int) (motionEvent.getRawX() + 0.5f), (int) (motionEvent.getRawY() + 0.5f));
            } else {
                this.f74136t = false;
            }
        } else if (actionMasked == 1 || actionMasked == 3) {
            this.f74132p = false;
            if (this.f74127k != null) {
                removeCallbacks(this.J);
                postDelayed(this.J, this.f74137u);
            }
            if (this.f74138v) {
                if (actionMasked == 1 && Float.compare(Math.abs(motionEvent.getRawY() - this.f74139w), this.f74140x) < 0) {
                    motionEvent.setAction(3);
                }
                this.f74138v = false;
            }
            A();
        }
        boolean z3 = this.f74124h;
        boolean z4 = this.f74125i;
        this.f74125i = this.f74121e.onTouchEvent(motionEvent);
        this.f74124h = this.f74120d.onTouchEvent(motionEvent);
        removeCallbacks(this.I);
        post(this.I);
        boolean z5 = this.f74124h || this.f74125i;
        boolean z6 = z3 || z4;
        boolean z7 = actionMasked == 2 && !z5 && z6 && getScrollY() == this.f74123g;
        if (z5 || z6) {
            this.f74126j.a(motionEvent, 3);
            if (!z6) {
                return true;
            }
        }
        if (z7) {
            this.f74126j.a(motionEvent, 0);
            this.f74139w = motionEvent.getRawY();
            this.f74138v = true;
        }
        super.dispatchTouchEvent(motionEvent);
        return true;
    }

    public long getConsiderIdleMillis() {
        return this.f74137u;
    }

    public int getMaxScrollY() {
        return this.f74123g;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        ValueAnimator valueAnimator = this.G;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            this.G.cancel();
        }
        ValueAnimator valueAnimator2 = this.f74128l;
        if (valueAnimator2 != null && valueAnimator2.isRunning()) {
            this.f74128l.cancel();
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        View childAt;
        super.onFinishInflate();
        if (this.f74142z) {
            G(true);
        }
        int i2 = this.E;
        if (i2 != 0) {
            childAt = findViewById(i2);
        } else {
            childAt = getChildCount() > 0 ? getChildAt(0) : null;
        }
        this.F = childAt;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z3, int i2, int i4, int i5, int i6) {
        int childCount = getChildCount();
        if (childCount > 0) {
            int i7 = 0;
            for (int i8 = 0; i8 < childCount; i8++) {
                View childAt = getChildAt(i8);
                childAt.layout(i2, i7, i5, childAt.getMeasuredHeight() + i7);
                i7 += childAt.getMeasuredHeight();
            }
        }
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof ScrollableLayoutSavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        ScrollableLayoutSavedState scrollableLayoutSavedState = (ScrollableLayoutSavedState) parcelable;
        super.onRestoreInstanceState(scrollableLayoutSavedState.getSuperState());
        setScrollY(scrollableLayoutSavedState.f74143a);
        boolean z3 = scrollableLayoutSavedState.f74144b;
        this.f74142z = z3;
        G(z3);
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        ScrollableLayoutSavedState scrollableLayoutSavedState = new ScrollableLayoutSavedState(super.onSaveInstanceState());
        scrollableLayoutSavedState.f74143a = getScrollY();
        scrollableLayoutSavedState.f74144b = this.f74142z;
        return scrollableLayoutSavedState;
    }

    @Override // android.view.View
    public void onScrollChanged(int i2, int i4, int i5, int i6) {
        boolean z3 = i4 != i6;
        int size = z3 ? this.f74118b.size() : 0;
        if (size > 0) {
            for (int i7 = 0; i7 < size; i7++) {
                this.f74118b.get(i7).a(i4, i6, this.f74123g);
            }
        }
        if (this.f74127k != null) {
            removeCallbacks(this.J);
            if (!this.f74130n && z3 && !this.f74132p) {
                postDelayed(this.J, this.f74137u);
            }
        }
        super.onScrollChanged(i2, i4, i5, i6);
    }

    @Override // android.view.View
    public void scrollTo(int i2, int i4) {
        int B = B(i4);
        if (B < 0) {
            return;
        }
        super.scrollTo(0, B);
    }

    public void setAutoMaxScroll(boolean z3) {
        this.f74142z = z3;
        G(z3);
    }

    public void setCanScrollVerticallyDelegate(ru.noties.scrollable.b bVar) {
        this.f74122f = bVar;
    }

    public void setCloseAnimatorConfigurator(ru.noties.scrollable.d dVar) {
        this.f74134r = dVar;
    }

    public void setCloseUpAlgorithm(ru.noties.scrollable.c cVar) {
        this.f74127k = cVar;
    }

    public void setCloseUpIdleAnimationTime(ru.noties.scrollable.e eVar) {
        this.f74133q = eVar;
    }

    public void setConsiderIdleMillis(long j4) {
        this.f74137u = j4;
    }

    public void setDraggableView(View view) {
        this.f74135s = view;
    }

    public void setFriction(float f4) {
        this.f74119c.m(f4);
    }

    public void setMaxScrollY(int i2) {
        this.f74123g = i2;
        G(false);
    }

    public void setOnFlingOverListener(ru.noties.scrollable.j jVar) {
        this.f74141y = jVar;
    }

    @Deprecated
    public void setOnScrollChangedListener(k kVar) {
        this.f74118b.clear();
        w(kVar);
    }

    public void setOverScrollListener(l lVar) {
        this.D = lVar;
    }

    public void setSelfUpdateScroll(boolean z3) {
        this.f74130n = z3;
    }

    public void w(k kVar) {
        if (kVar != null) {
            this.f74118b.add(kVar);
        }
    }

    public ValueAnimator x(int i2) {
        ValueAnimator valueAnimator = this.G;
        if (valueAnimator == null) {
            ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
            this.G = ofFloat;
            ofFloat.setEvaluator(new FloatEvaluator());
            this.G.addListener(new j(this, null));
        } else {
            ValueAnimator.AnimatorUpdateListener animatorUpdateListener = this.H;
            if (animatorUpdateListener != null) {
                valueAnimator.removeUpdateListener(animatorUpdateListener);
            }
            if (this.G.isRunning()) {
                this.G.end();
            }
        }
        if (i2 < 0) {
            i2 = 0;
        } else {
            int i4 = this.f74123g;
            if (i2 > i4) {
                i2 = i4;
            }
        }
        int scrollY = getScrollY();
        b bVar = new b(scrollY, i2 - scrollY);
        this.H = bVar;
        this.G.addUpdateListener(bVar);
        return this.G;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static class ScrollableLayoutSavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<ScrollableLayoutSavedState> CREATOR = new a();

        /* renamed from: a  reason: collision with root package name */
        int f74143a;

        /* renamed from: b  reason: collision with root package name */
        boolean f74144b;

        /* loaded from: classes5.dex */
        class a implements Parcelable.Creator<ScrollableLayoutSavedState> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public ScrollableLayoutSavedState createFromParcel(Parcel parcel) {
                return new ScrollableLayoutSavedState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: b */
            public ScrollableLayoutSavedState[] newArray(int i2) {
                return new ScrollableLayoutSavedState[i2];
            }
        }

        ScrollableLayoutSavedState(Parcel parcel) {
            super(parcel);
            this.f74143a = parcel.readInt();
            this.f74144b = parcel.readByte() == 1;
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            parcel.writeInt(this.f74143a);
            parcel.writeByte(this.f74144b ? (byte) 1 : (byte) 0);
        }

        ScrollableLayoutSavedState(Parcelable parcelable) {
            super(parcelable);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public class i extends ru.noties.scrollable.h {

        /* renamed from: a  reason: collision with root package name */
        private final int f74161a;

        private i() {
            this.f74161a = ViewConfiguration.get(ScrollableLayout.this.getContext()).getScaledTouchSlop();
        }

        /* JADX WARN: Removed duplicated region for block: B:36:0x0097  */
        /* JADX WARN: Removed duplicated region for block: B:40:0x00a7 A[RETURN] */
        @Override // ru.noties.scrollable.h, android.view.GestureDetector.OnGestureListener
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean onScroll(android.view.MotionEvent r4, android.view.MotionEvent r5, float r6, float r7) {
            /*
                r3 = this;
                float r4 = java.lang.Math.abs(r6)
                float r5 = java.lang.Math.abs(r7)
                r6 = 0
                int r5 = (r4 > r5 ? 1 : (r4 == r5 ? 0 : -1))
                if (r5 > 0) goto La8
                int r5 = r3.f74161a
                float r5 = (float) r5
                int r4 = (r4 > r5 ? 1 : (r4 == r5 ? 0 : -1))
                if (r4 <= 0) goto L16
                goto La8
            L16:
                ru.noties.scrollable.ScrollableLayout r4 = ru.noties.scrollable.ScrollableLayout.this
                int r4 = r4.getScrollY()
                r5 = 1056964608(0x3f000000, float:0.5)
                float r7 = r7 + r5
                int r5 = (int) r7
                ru.noties.scrollable.ScrollableLayout r7 = ru.noties.scrollable.ScrollableLayout.this
                ru.noties.scrollable.l r7 = ru.noties.scrollable.ScrollableLayout.f(r7)
                r0 = 1
                if (r7 != 0) goto L39
                ru.noties.scrollable.ScrollableLayout r7 = ru.noties.scrollable.ScrollableLayout.this
                int r5 = r5 + r4
                r7.scrollTo(r6, r5)
                ru.noties.scrollable.ScrollableLayout r5 = ru.noties.scrollable.ScrollableLayout.this
                int r5 = r5.getScrollY()
                if (r4 == r5) goto L38
                r6 = 1
            L38:
                return r6
            L39:
                r7 = -1
                if (r5 >= 0) goto L3e
                r1 = -1
                goto L3f
            L3e:
                r1 = 1
            L3f:
                ru.noties.scrollable.ScrollableLayout r2 = ru.noties.scrollable.ScrollableLayout.this
                boolean r2 = ru.noties.scrollable.ScrollableLayout.g(r2)
                if (r2 != 0) goto L53
                ru.noties.scrollable.ScrollableLayout r2 = ru.noties.scrollable.ScrollableLayout.this
                if (r4 != 0) goto L4f
                if (r1 != r7) goto L4f
                r7 = 1
                goto L50
            L4f:
                r7 = 0
            L50:
                ru.noties.scrollable.ScrollableLayout.h(r2, r7)
            L53:
                ru.noties.scrollable.ScrollableLayout r7 = ru.noties.scrollable.ScrollableLayout.this
                boolean r7 = ru.noties.scrollable.ScrollableLayout.g(r7)
                if (r7 == 0) goto L94
                if (r1 != r0) goto L89
                if (r4 != 0) goto L89
                ru.noties.scrollable.ScrollableLayout r7 = ru.noties.scrollable.ScrollableLayout.this
                ru.noties.scrollable.l r7 = ru.noties.scrollable.ScrollableLayout.f(r7)
                ru.noties.scrollable.ScrollableLayout r1 = ru.noties.scrollable.ScrollableLayout.this
                boolean r7 = r7.a(r1, r5)
                if (r7 == 0) goto L7a
                ru.noties.scrollable.ScrollableLayout r7 = ru.noties.scrollable.ScrollableLayout.this
                ru.noties.scrollable.l r7 = ru.noties.scrollable.ScrollableLayout.f(r7)
                ru.noties.scrollable.ScrollableLayout r1 = ru.noties.scrollable.ScrollableLayout.this
                r7.c(r1, r5)
                r7 = 1
                goto L95
            L7a:
                ru.noties.scrollable.ScrollableLayout r7 = ru.noties.scrollable.ScrollableLayout.this
                ru.noties.scrollable.l r7 = ru.noties.scrollable.ScrollableLayout.f(r7)
                r7.clear()
                ru.noties.scrollable.ScrollableLayout r7 = ru.noties.scrollable.ScrollableLayout.this
                ru.noties.scrollable.ScrollableLayout.h(r7, r6)
                goto L94
            L89:
                ru.noties.scrollable.ScrollableLayout r7 = ru.noties.scrollable.ScrollableLayout.this
                ru.noties.scrollable.l r7 = ru.noties.scrollable.ScrollableLayout.f(r7)
                ru.noties.scrollable.ScrollableLayout r1 = ru.noties.scrollable.ScrollableLayout.this
                r7.c(r1, r5)
            L94:
                r7 = 0
            L95:
                if (r7 != 0) goto La7
                ru.noties.scrollable.ScrollableLayout r7 = ru.noties.scrollable.ScrollableLayout.this
                int r5 = r5 + r4
                r7.scrollTo(r6, r5)
                ru.noties.scrollable.ScrollableLayout r5 = ru.noties.scrollable.ScrollableLayout.this
                int r5 = r5.getScrollY()
                if (r4 == r5) goto La6
                r6 = 1
            La6:
                return r6
            La7:
                return r0
            La8:
                return r6
            */
            throw new UnsupportedOperationException("Method not decompiled: ru.noties.scrollable.ScrollableLayout.i.onScroll(android.view.MotionEvent, android.view.MotionEvent, float, float):boolean");
        }

        /* synthetic */ i(ScrollableLayout scrollableLayout, a aVar) {
            this();
        }
    }

    public ScrollableLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f74117a = new Rect();
        this.f74118b = new ArrayList(3);
        this.I = new d();
        this.J = new e();
        C(context, attributeSet);
    }

    public ScrollableLayout(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f74117a = new Rect();
        this.f74118b = new ArrayList(3);
        this.I = new d();
        this.J = new e();
        C(context, attributeSet);
    }
}
