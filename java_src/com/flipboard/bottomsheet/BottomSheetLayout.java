package com.flipboard.bottomsheet;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.Property;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import android.view.animation.DecelerateInterpolator;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import com.join.android.app.mgsim.wufun.R;
import java.util.Iterator;
import java.util.Objects;
import java.util.concurrent.CopyOnWriteArraySet;
/* loaded from: classes2.dex */
public class BottomSheetLayout extends FrameLayout {
    private static final Property<BottomSheetLayout, Float> I = new a(Float.class, "sheetTranslation");
    private static final long J = 300;
    private final boolean A;
    private final int B;
    private int C;
    private int D;
    private float E;
    private float F;
    private float G;
    private State H;

    /* renamed from: a  reason: collision with root package name */
    private Runnable f13688a;

    /* renamed from: b  reason: collision with root package name */
    private Rect f13689b;

    /* renamed from: c  reason: collision with root package name */
    private State f13690c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f13691d;

    /* renamed from: e  reason: collision with root package name */
    private TimeInterpolator f13692e;

    /* renamed from: f  reason: collision with root package name */
    public boolean f13693f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f13694g;

    /* renamed from: h  reason: collision with root package name */
    private float f13695h;

    /* renamed from: i  reason: collision with root package name */
    private VelocityTracker f13696i;

    /* renamed from: j  reason: collision with root package name */
    private float f13697j;

    /* renamed from: k  reason: collision with root package name */
    private float f13698k;

    /* renamed from: l  reason: collision with root package name */
    private com.flipboard.bottomsheet.c f13699l;

    /* renamed from: m  reason: collision with root package name */
    private com.flipboard.bottomsheet.c f13700m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f13701n;

    /* renamed from: o  reason: collision with root package name */
    private boolean f13702o;

    /* renamed from: p  reason: collision with root package name */
    private Animator f13703p;

    /* renamed from: q  reason: collision with root package name */
    private CopyOnWriteArraySet<com.flipboard.bottomsheet.b> f13704q;

    /* renamed from: r  reason: collision with root package name */
    private CopyOnWriteArraySet<j> f13705r;

    /* renamed from: s  reason: collision with root package name */
    private View.OnLayoutChangeListener f13706s;

    /* renamed from: t  reason: collision with root package name */
    private View f13707t;

    /* renamed from: u  reason: collision with root package name */
    private boolean f13708u;

    /* renamed from: v  reason: collision with root package name */
    private int f13709v;

    /* renamed from: w  reason: collision with root package name */
    private boolean f13710w;

    /* renamed from: x  reason: collision with root package name */
    private float f13711x;

    /* renamed from: y  reason: collision with root package name */
    private float f13712y;

    /* renamed from: z  reason: collision with root package name */
    private int f13713z;

    /* loaded from: classes2.dex */
    public enum State {
        HIDDEN,
        PREPARING,
        PEEKED,
        EXPANDED
    }

    /* loaded from: classes2.dex */
    class a extends Property<BottomSheetLayout, Float> {
        a(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* renamed from: a */
        public Float get(BottomSheetLayout bottomSheetLayout) {
            return Float.valueOf(bottomSheetLayout.f13695h);
        }

        @Override // android.util.Property
        /* renamed from: b */
        public void set(BottomSheetLayout bottomSheetLayout, Float f4) {
            bottomSheetLayout.setSheetTranslation(f4.floatValue());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class b extends h {
        b() {
            super(null);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(@NonNull Animator animator) {
            if (this.f13724a) {
                return;
            }
            BottomSheetLayout.this.f13703p = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class c extends h {
        c() {
            super(null);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(@NonNull Animator animator) {
            if (this.f13724a) {
                return;
            }
            BottomSheetLayout.this.f13703p = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class d implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ View f13716a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ com.flipboard.bottomsheet.c f13717b;

        d(View view, com.flipboard.bottomsheet.c cVar) {
            this.f13716a = view;
            this.f13717b = cVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            BottomSheetLayout.this.J(this.f13716a, this.f13717b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class e implements ViewTreeObserver.OnPreDrawListener {

        /* loaded from: classes2.dex */
        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                if (BottomSheetLayout.this.getSheetView() != null) {
                    BottomSheetLayout.this.D();
                }
            }
        }

        e() {
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            BottomSheetLayout.this.getViewTreeObserver().removeOnPreDrawListener(this);
            BottomSheetLayout.this.post(new a());
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class f implements View.OnLayoutChangeListener {
        f() {
        }

        @Override // android.view.View.OnLayoutChangeListener
        public void onLayoutChange(View view, int i2, int i4, int i5, int i6, int i7, int i8, int i9, int i10) {
            int measuredHeight = view.getMeasuredHeight();
            if (BottomSheetLayout.this.f13690c != State.HIDDEN) {
                if (measuredHeight < BottomSheetLayout.this.f13709v) {
                    if (BottomSheetLayout.this.f13690c == State.EXPANDED) {
                        BottomSheetLayout.this.setState(State.PEEKED);
                    }
                    BottomSheetLayout.this.setSheetTranslation(measuredHeight);
                } else if (BottomSheetLayout.this.f13709v > 0 && measuredHeight > BottomSheetLayout.this.f13709v && BottomSheetLayout.this.f13690c == State.PEEKED) {
                    float f4 = measuredHeight;
                    if (f4 == BottomSheetLayout.this.getMaxSheetTranslation()) {
                        BottomSheetLayout.this.setState(State.EXPANDED);
                    }
                    BottomSheetLayout.this.setSheetTranslation(f4);
                }
            }
            BottomSheetLayout.this.f13709v = measuredHeight;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class g extends h {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ View f13722b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        g(View view) {
            super(null);
            this.f13722b = view;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (this.f13724a) {
                return;
            }
            BottomSheetLayout.this.f13703p = null;
            BottomSheetLayout.this.setState(State.HIDDEN);
            BottomSheetLayout.this.setSheetLayerTypeIfEnabled(0);
            BottomSheetLayout.this.removeView(this.f13722b);
            Iterator it2 = BottomSheetLayout.this.f13704q.iterator();
            while (it2.hasNext()) {
                ((com.flipboard.bottomsheet.b) it2.next()).a(BottomSheetLayout.this);
            }
            BottomSheetLayout.this.f13700m = null;
            if (BottomSheetLayout.this.f13688a != null) {
                BottomSheetLayout.this.f13688a.run();
                BottomSheetLayout.this.f13688a = null;
            }
        }
    }

    /* loaded from: classes2.dex */
    private static class h extends AnimatorListenerAdapter {

        /* renamed from: a  reason: collision with root package name */
        protected boolean f13724a;

        private h() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f13724a = true;
        }

        /* synthetic */ h(a aVar) {
            this();
        }
    }

    /* loaded from: classes2.dex */
    private static class i extends com.flipboard.bottomsheet.a {
        private i() {
        }

        @Override // com.flipboard.bottomsheet.c
        public void b(float f4, float f5, float f6, BottomSheetLayout bottomSheetLayout, View view) {
        }

        /* synthetic */ i(a aVar) {
            this();
        }
    }

    /* loaded from: classes2.dex */
    public interface j {
        void a(State state);
    }

    public BottomSheetLayout(Context context) {
        super(context);
        this.f13689b = new Rect();
        this.f13690c = State.HIDDEN;
        this.f13691d = false;
        this.f13692e = new DecelerateInterpolator(1.6f);
        this.f13699l = new i(null);
        this.f13701n = true;
        this.f13702o = true;
        this.f13704q = new CopyOnWriteArraySet<>();
        this.f13705r = new CopyOnWriteArraySet<>();
        this.f13708u = true;
        this.f13713z = 0;
        this.A = getResources().getBoolean(R.bool.bottomsheet_is_tablet);
        this.B = getResources().getDimensionPixelSize(R.dimen.bottomsheet_default_sheet_width);
        this.C = 0;
        this.D = 0;
        x();
    }

    public static boolean B(Context context) {
        return context.getResources().getBoolean(R.bool.bottomsheet_is_tablet);
    }

    private boolean C(float f4) {
        return !this.A || (f4 >= ((float) this.C) && f4 <= ((float) this.D));
    }

    public static int E(Context context) {
        if (B(context)) {
            return context.getResources().getDimensionPixelSize(R.dimen.bottomsheet_default_sheet_width);
        }
        return context.getResources().getDisplayMetrics().widthPixels;
    }

    private void K(float f4) {
        com.flipboard.bottomsheet.c cVar = this.f13700m;
        if (cVar != null) {
            cVar.b(f4, getMaxSheetTranslation(), getPeekSheetTranslation(), this, getContentView());
            return;
        }
        com.flipboard.bottomsheet.c cVar2 = this.f13699l;
        if (cVar2 != null) {
            cVar2.b(f4, getMaxSheetTranslation(), getPeekSheetTranslation(), this, getContentView());
        }
    }

    private float getDefaultPeekTranslation() {
        return w() ? this.f13711x : getSheetView().getHeight();
    }

    private boolean o(View view, float f4, float f5) {
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i2 = 0; i2 < viewGroup.getChildCount(); i2++) {
                View childAt = viewGroup.getChildAt(i2);
                int left = childAt.getLeft() - view.getScrollX();
                int top = childAt.getTop() - view.getScrollY();
                float f6 = left;
                if ((f4 > f6 && f4 < ((float) (childAt.getRight() - view.getScrollX())) && f5 > ((float) top) && f5 < ((float) (childAt.getBottom() - view.getScrollY()))) && o(childAt, f4 - f6, f5 - top)) {
                    return true;
                }
            }
        }
        return view.canScrollVertically(-1);
    }

    private void p() {
        Animator animator = this.f13703p;
        if (animator != null) {
            animator.cancel();
        }
    }

    private static <T> T q(T t3, String str) {
        Objects.requireNonNull(t3, str);
        return t3;
    }

    private void s(Runnable runnable) {
        if (this.f13690c == State.HIDDEN) {
            this.f13688a = null;
            return;
        }
        this.f13688a = runnable;
        View sheetView = getSheetView();
        sheetView.removeOnLayoutChangeListener(this.f13706s);
        p();
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, I, 0.0f);
        ofFloat.setDuration(J);
        ofFloat.setInterpolator(this.f13692e);
        ofFloat.addListener(new g(sheetView));
        ofFloat.start();
        this.f13703p = ofFloat;
        this.C = 0;
        this.D = this.f13713z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setSheetLayerTypeIfEnabled(int i2) {
        if (this.f13702o) {
            getSheetView().setLayerType(i2, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setSheetTranslation(float f4) {
        this.f13695h = Math.min(f4, getMaxSheetTranslation());
        double height = getHeight();
        double ceil = Math.ceil(this.f13695h);
        Double.isNaN(height);
        this.f13689b.set(0, 0, getWidth(), (int) (height - ceil));
        getSheetView().setTranslationY(getHeight() - this.f13695h);
        K(this.f13695h);
        if (this.f13701n) {
            float u3 = u(this.f13695h);
            this.f13707t.setAlpha(u3);
            this.f13707t.setVisibility(u3 <= 0.0f ? 4 : 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setState(State state) {
        if (state != this.f13690c) {
            this.f13690c = state;
            Iterator<j> it2 = this.f13705r.iterator();
            while (it2.hasNext()) {
                it2.next().a(state);
            }
        }
    }

    private float u(float f4) {
        com.flipboard.bottomsheet.c cVar = this.f13700m;
        if (cVar != null) {
            return cVar.a(f4, getMaxSheetTranslation(), getPeekSheetTranslation(), this, getContentView());
        }
        com.flipboard.bottomsheet.c cVar2 = this.f13699l;
        if (cVar2 != null) {
            return cVar2.a(f4, getMaxSheetTranslation(), getPeekSheetTranslation(), this, getContentView());
        }
        return 0.0f;
    }

    private boolean v() {
        return getSheetView() == null || getSheetView().getHeight() == getHeight();
    }

    private boolean w() {
        return getSheetView() == null || ((float) getSheetView().getHeight()) > this.f13711x;
    }

    private void x() {
        ViewConfiguration viewConfiguration = ViewConfiguration.get(getContext());
        this.f13697j = viewConfiguration.getScaledMinimumFlingVelocity();
        this.f13698k = viewConfiguration.getScaledTouchSlop();
        View view = new View(getContext());
        this.f13707t = view;
        view.setBackgroundColor(-16777216);
        this.f13707t.setAlpha(0.0f);
        this.f13707t.setVisibility(4);
        setFocusableInTouchMode(true);
        Point point = new Point();
        ((WindowManager) getContext().getSystemService("window")).getDefaultDisplay().getSize(point);
        int i2 = point.x;
        this.f13713z = i2;
        this.D = i2;
        this.f13712y = 0.0f;
        this.f13711x = point.y - (i2 / 1.7777778f);
    }

    private void y() {
        this.f13695h = 0.0f;
        this.f13689b.set(0, 0, getWidth(), getHeight());
        getSheetView().setTranslationY(getHeight());
        this.f13707t.setAlpha(0.0f);
        this.f13707t.setVisibility(4);
    }

    private boolean z() {
        return this.f13703p != null;
    }

    public boolean A() {
        return this.f13690c != State.HIDDEN;
    }

    public void D() {
        p();
        setSheetLayerTypeIfEnabled(2);
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, I, getPeekSheetTranslation());
        ofFloat.setDuration(J);
        ofFloat.setInterpolator(this.f13692e);
        ofFloat.addListener(new c());
        ofFloat.start();
        this.f13703p = ofFloat;
        setState(State.PEEKED);
    }

    public void F(@NonNull com.flipboard.bottomsheet.b bVar) {
        q(bVar, "onSheetDismissedListener == null");
        this.f13704q.remove(bVar);
    }

    public void G(@NonNull j jVar) {
        q(jVar, "onSheetStateChangeListener == null");
        this.f13705r.remove(jVar);
    }

    public boolean H() {
        return this.f13701n;
    }

    public void I(View view) {
        J(view, null);
    }

    public void J(View view, com.flipboard.bottomsheet.c cVar) {
        if (this.f13690c != State.HIDDEN) {
            s(new d(view, cVar));
            return;
        }
        setState(State.PREPARING);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
        if (layoutParams == null) {
            layoutParams = new FrameLayout.LayoutParams(this.A ? -2 : -1, -2, 1);
        }
        if (this.A && layoutParams.width == -2) {
            if (layoutParams.gravity == -1) {
                layoutParams.gravity = 1;
            }
            int i2 = this.B;
            layoutParams.width = i2;
            int i4 = this.f13713z;
            int i5 = (i4 - i2) / 2;
            this.C = i5;
            this.D = i4 - i5;
        }
        super.addView(view, -1, layoutParams);
        y();
        this.f13700m = cVar;
        getViewTreeObserver().addOnPreDrawListener(new e());
        this.f13709v = view.getMeasuredHeight();
        f fVar = new f();
        this.f13706s = fVar;
        view.addOnLayoutChangeListener(fVar);
    }

    @Override // android.view.ViewGroup
    public void addView(@NonNull View view) {
        if (getChildCount() <= 0) {
            setContentView(view);
            return;
        }
        throw new IllegalArgumentException("You may not declare more then one child of bottom sheet. The sheet view must be added dynamically with showWithSheetView()");
    }

    public View getContentView() {
        if (getChildCount() > 0) {
            return getChildAt(0);
        }
        return null;
    }

    public boolean getInterceptContentTouch() {
        return this.f13708u;
    }

    public float getMaxSheetTranslation() {
        return v() ? getHeight() - getPaddingTop() : getSheetView().getHeight();
    }

    public boolean getPeekOnDismiss() {
        return this.f13691d;
    }

    public float getPeekSheetTranslation() {
        float f4 = this.f13712y;
        return f4 == 0.0f ? getDefaultPeekTranslation() : f4;
    }

    public View getSheetView() {
        if (getChildCount() > 2) {
            return getChildAt(2);
        }
        return null;
    }

    public State getState() {
        return this.f13690c;
    }

    public void m(@NonNull com.flipboard.bottomsheet.b bVar) {
        q(bVar, "onSheetDismissedListener == null");
        this.f13704q.add(bVar);
    }

    public void n(@NonNull j jVar) {
        q(jVar, "onSheetStateChangeListener == null");
        this.f13705r.add(jVar);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f13696i = VelocityTracker.obtain();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f13696i.clear();
        p();
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(@NonNull MotionEvent motionEvent) {
        boolean z3 = true;
        boolean z4 = motionEvent.getActionMasked() == 0;
        if (z4) {
            this.f13710w = false;
        }
        if (!this.f13708u && (motionEvent.getY() <= getHeight() - this.f13695h || !C(motionEvent.getX()))) {
            this.f13710w = false;
        } else {
            this.f13710w = (z4 && A()) ? false : false;
        }
        return this.f13710w;
    }

    @Override // android.view.View
    public boolean onKeyPreIme(int i2, @NonNull KeyEvent keyEvent) {
        if (i2 == 4 && A()) {
            if (keyEvent.getAction() == 0 && keyEvent.getRepeatCount() == 0) {
                KeyEvent.DispatcherState keyDispatcherState = getKeyDispatcherState();
                if (keyDispatcherState != null) {
                    keyDispatcherState.startTracking(keyEvent, this);
                }
                return true;
            } else if (keyEvent.getAction() == 1) {
                KeyEvent.DispatcherState keyDispatcherState2 = getKeyDispatcherState();
                if (keyDispatcherState2 != null) {
                    keyDispatcherState2.handleUpEvent(keyEvent);
                }
                if (A() && keyEvent.isTracking() && !keyEvent.isCanceled()) {
                    if (this.f13690c == State.EXPANDED && this.f13691d) {
                        D();
                    } else {
                        r();
                    }
                    return true;
                }
            }
        }
        return super.onKeyPreIme(i2, keyEvent);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z3, int i2, int i4, int i5, int i6) {
        super.onLayout(z3, i2, i4, i5, i6);
        double height = getHeight();
        double ceil = Math.ceil(this.f13695h);
        Double.isNaN(height);
        this.f13689b.set(0, 0, getWidth(), (int) (height - ceil));
    }

    @Override // android.view.View
    public boolean onTouchEvent(@NonNull MotionEvent motionEvent) {
        boolean z3 = false;
        if (A() && !z()) {
            if (!this.f13710w) {
                return onInterceptTouchEvent(motionEvent);
            }
            if (motionEvent.getAction() == 0) {
                this.f13693f = false;
                this.f13694g = false;
                this.E = motionEvent.getY();
                this.F = motionEvent.getX();
                this.G = this.f13695h;
                this.H = this.f13690c;
                this.f13696i.clear();
            }
            this.f13696i.addMovement(motionEvent);
            float maxSheetTranslation = getMaxSheetTranslation();
            float peekSheetTranslation = getPeekSheetTranslation();
            float y3 = this.E - motionEvent.getY();
            float x3 = this.F - motionEvent.getX();
            if (!this.f13693f && !this.f13694g) {
                this.f13693f = Math.abs(y3) > this.f13698k;
                this.f13694g = Math.abs(x3) > this.f13698k;
                if (this.f13693f) {
                    if (this.f13690c == State.PEEKED) {
                        MotionEvent obtain = MotionEvent.obtain(motionEvent);
                        obtain.offsetLocation(0.0f, this.f13695h - getHeight());
                        obtain.setAction(3);
                        getSheetView().dispatchTouchEvent(obtain);
                        obtain.recycle();
                    }
                    this.f13694g = false;
                    this.E = motionEvent.getY();
                    this.F = motionEvent.getX();
                    y3 = 0.0f;
                }
            }
            float f4 = this.G + y3;
            if (this.f13693f) {
                boolean z4 = y3 < 0.0f;
                boolean o3 = o(getSheetView(), motionEvent.getX(), motionEvent.getY() + (this.f13695h - getHeight()));
                State state = this.f13690c;
                State state2 = State.EXPANDED;
                if (state == state2 && z4 && !o3) {
                    this.E = motionEvent.getY();
                    this.G = this.f13695h;
                    this.f13696i.clear();
                    setState(State.PEEKED);
                    setSheetLayerTypeIfEnabled(2);
                    f4 = this.f13695h;
                    MotionEvent obtain2 = MotionEvent.obtain(motionEvent);
                    obtain2.setAction(3);
                    getSheetView().dispatchTouchEvent(obtain2);
                    obtain2.recycle();
                }
                if (this.f13690c == State.PEEKED && f4 > maxSheetTranslation) {
                    setSheetTranslation(maxSheetTranslation);
                    f4 = Math.min(maxSheetTranslation, f4);
                    MotionEvent obtain3 = MotionEvent.obtain(motionEvent);
                    obtain3.setAction(0);
                    getSheetView().dispatchTouchEvent(obtain3);
                    obtain3.recycle();
                    setState(state2);
                    setSheetLayerTypeIfEnabled(0);
                }
                if (this.f13690c == state2) {
                    motionEvent.offsetLocation(0.0f, this.f13695h - getHeight());
                    getSheetView().dispatchTouchEvent(motionEvent);
                } else {
                    if (f4 < peekSheetTranslation) {
                        f4 = peekSheetTranslation - ((peekSheetTranslation - f4) / 4.0f);
                    }
                    setSheetTranslation(f4);
                    if (motionEvent.getAction() == 3) {
                        if (this.H == state2) {
                            t();
                        } else {
                            D();
                        }
                    }
                    if (motionEvent.getAction() == 1) {
                        if (f4 < peekSheetTranslation) {
                            r();
                        } else {
                            this.f13696i.computeCurrentVelocity(1000);
                            float yVelocity = this.f13696i.getYVelocity();
                            if (Math.abs(yVelocity) < this.f13697j) {
                                if (this.f13695h > getHeight() / 2) {
                                    t();
                                } else {
                                    D();
                                }
                            } else if (yVelocity < 0.0f) {
                                t();
                            } else {
                                D();
                            }
                        }
                    }
                }
            } else {
                z3 = (motionEvent.getY() < ((float) getHeight()) - this.f13695h || !C(motionEvent.getX())) ? true : true;
                if (motionEvent.getAction() == 1 && z3 && this.f13708u) {
                    r();
                    return true;
                }
                motionEvent.offsetLocation(this.A ? getX() - this.C : 0.0f, this.f13695h - getHeight());
                getSheetView().dispatchTouchEvent(motionEvent);
            }
            return true;
        }
        return false;
    }

    public void r() {
        s(null);
    }

    public void setContentView(View view) {
        super.addView(view, -1, generateDefaultLayoutParams());
        super.addView(this.f13707t, -1, generateDefaultLayoutParams());
    }

    public void setDefaultViewTransformer(com.flipboard.bottomsheet.c cVar) {
        this.f13699l = cVar;
    }

    public void setInterceptContentTouch(boolean z3) {
        this.f13708u = z3;
    }

    public void setPeekOnDismiss(boolean z3) {
        this.f13691d = z3;
    }

    public void setPeekSheetTranslation(float f4) {
        this.f13712y = f4;
    }

    public void setShouldDimContentView(boolean z3) {
        this.f13701n = z3;
    }

    public void setUseHardwareLayerWhileAnimating(boolean z3) {
        this.f13702o = z3;
    }

    public void t() {
        p();
        setSheetLayerTypeIfEnabled(0);
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, I, getMaxSheetTranslation());
        ofFloat.setDuration(J);
        ofFloat.setInterpolator(this.f13692e);
        ofFloat.addListener(new b());
        ofFloat.start();
        this.f13703p = ofFloat;
        setState(State.EXPANDED);
    }

    @Override // android.view.ViewGroup
    public void addView(@NonNull View view, int i2) {
        addView(view);
    }

    @Override // android.view.ViewGroup
    public void addView(@NonNull View view, int i2, @NonNull ViewGroup.LayoutParams layoutParams) {
        addView(view);
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void addView(@NonNull View view, @NonNull ViewGroup.LayoutParams layoutParams) {
        addView(view);
    }

    @Override // android.view.ViewGroup
    public void addView(@NonNull View view, int i2, int i4) {
        addView(view);
    }

    public BottomSheetLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public BottomSheetLayout(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f13689b = new Rect();
        this.f13690c = State.HIDDEN;
        this.f13691d = false;
        this.f13692e = new DecelerateInterpolator(1.6f);
        this.f13699l = new i(null);
        this.f13701n = true;
        this.f13702o = true;
        this.f13704q = new CopyOnWriteArraySet<>();
        this.f13705r = new CopyOnWriteArraySet<>();
        this.f13708u = true;
        this.f13713z = 0;
        this.A = getResources().getBoolean(R.bool.bottomsheet_is_tablet);
        this.B = getResources().getDimensionPixelSize(R.dimen.bottomsheet_default_sheet_width);
        this.C = 0;
        this.D = 0;
        x();
    }

    @TargetApi(21)
    public BottomSheetLayout(Context context, AttributeSet attributeSet, int i2, int i4) {
        super(context, attributeSet, i2, i4);
        this.f13689b = new Rect();
        this.f13690c = State.HIDDEN;
        this.f13691d = false;
        this.f13692e = new DecelerateInterpolator(1.6f);
        this.f13699l = new i(null);
        this.f13701n = true;
        this.f13702o = true;
        this.f13704q = new CopyOnWriteArraySet<>();
        this.f13705r = new CopyOnWriteArraySet<>();
        this.f13708u = true;
        this.f13713z = 0;
        this.A = getResources().getBoolean(R.bool.bottomsheet_is_tablet);
        this.B = getResources().getDimensionPixelSize(R.dimen.bottomsheet_default_sheet_width);
        this.C = 0;
        this.D = 0;
        x();
    }
}
