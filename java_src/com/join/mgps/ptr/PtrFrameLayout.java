package com.join.mgps.ptr;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.widget.Scroller;
import android.widget.TextView;
import com.facebook.common.statfs.StatFsHelper;
import com.join.android.app.mgsim.wufun.R;
/* loaded from: classes4.dex */
public class PtrFrameLayout extends ViewGroup {
    public static final byte E = 1;
    public static final byte F = 2;
    public static final byte G = 3;
    public static final byte H = 4;
    private static final boolean I = true;
    public static boolean J = false;
    private static int K = 1;

    /* renamed from: n0  reason: collision with root package name */
    private static byte f51128n0 = 1;

    /* renamed from: o0  reason: collision with root package name */
    private static byte f51129o0 = 2;

    /* renamed from: p0  reason: collision with root package name */
    private static byte f51130p0 = 4;

    /* renamed from: q0  reason: collision with root package name */
    private static byte f51131q0 = 8;

    /* renamed from: r0  reason: collision with root package name */
    private static byte f51132r0 = 3;
    private float A;
    private float B;
    private float C;
    private float D;

    /* renamed from: a  reason: collision with root package name */
    private byte f51133a;

    /* renamed from: b  reason: collision with root package name */
    protected final String f51134b;

    /* renamed from: c  reason: collision with root package name */
    protected View f51135c;

    /* renamed from: d  reason: collision with root package name */
    private int f51136d;

    /* renamed from: e  reason: collision with root package name */
    private int f51137e;

    /* renamed from: f  reason: collision with root package name */
    private int f51138f;

    /* renamed from: g  reason: collision with root package name */
    private int f51139g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f51140h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f51141i;

    /* renamed from: j  reason: collision with root package name */
    private View f51142j;

    /* renamed from: k  reason: collision with root package name */
    private d f51143k;

    /* renamed from: l  reason: collision with root package name */
    private com.join.mgps.ptr.b f51144l;

    /* renamed from: m  reason: collision with root package name */
    private c f51145m;

    /* renamed from: n  reason: collision with root package name */
    private int f51146n;

    /* renamed from: o  reason: collision with root package name */
    private int f51147o;

    /* renamed from: p  reason: collision with root package name */
    private boolean f51148p;

    /* renamed from: q  reason: collision with root package name */
    private int f51149q;

    /* renamed from: r  reason: collision with root package name */
    private boolean f51150r;

    /* renamed from: s  reason: collision with root package name */
    private MotionEvent f51151s;

    /* renamed from: t  reason: collision with root package name */
    private e f51152t;

    /* renamed from: u  reason: collision with root package name */
    private int f51153u;

    /* renamed from: v  reason: collision with root package name */
    private long f51154v;

    /* renamed from: w  reason: collision with root package name */
    private com.join.mgps.ptr.indicator.a f51155w;

    /* renamed from: x  reason: collision with root package name */
    private boolean f51156x;

    /* renamed from: y  reason: collision with root package name */
    private Runnable f51157y;

    /* renamed from: z  reason: collision with root package name */
    protected int f51158z;

    /* loaded from: classes4.dex */
    public static class LayoutParams extends ViewGroup.MarginLayoutParams {
        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public LayoutParams(int i2, int i4) {
            super(i2, i4);
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }
    }

    /* loaded from: classes4.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            PtrFrameLayout.this.B();
        }
    }

    /* loaded from: classes4.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (PtrFrameLayout.J) {
                com.join.mgps.ptr.util.a.a(PtrFrameLayout.this.f51134b, "mRefreshCompleteHook resume.");
            }
            PtrFrameLayout.this.u(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private int f51161a;

        /* renamed from: b  reason: collision with root package name */
        private Scroller f51162b;

        /* renamed from: c  reason: collision with root package name */
        private boolean f51163c = false;

        /* renamed from: d  reason: collision with root package name */
        private int f51164d;

        /* renamed from: e  reason: collision with root package name */
        private int f51165e;

        public c() {
            this.f51162b = new Scroller(PtrFrameLayout.this.getContext());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void d() {
            f();
            if (this.f51162b.isFinished()) {
                return;
            }
            this.f51162b.forceFinished(true);
        }

        private void e() {
            if (PtrFrameLayout.J) {
                PtrFrameLayout ptrFrameLayout = PtrFrameLayout.this;
                com.join.mgps.ptr.util.a.p(ptrFrameLayout.f51134b, "finish, currentPos:%s", Integer.valueOf(ptrFrameLayout.f51155w.d()));
            }
            f();
            PtrFrameLayout.this.x();
        }

        private void f() {
            this.f51163c = false;
            this.f51161a = 0;
            PtrFrameLayout.this.removeCallbacks(this);
        }

        public void a() {
            if (this.f51163c) {
                if (!this.f51162b.isFinished()) {
                    this.f51162b.forceFinished(true);
                }
                PtrFrameLayout.this.w();
                f();
            }
        }

        public void g(int i2, int i4) {
            if (PtrFrameLayout.this.f51155w.t(i2)) {
                return;
            }
            int d4 = PtrFrameLayout.this.f51155w.d();
            this.f51164d = d4;
            this.f51165e = i2;
            int i5 = i2 - d4;
            if (PtrFrameLayout.J) {
                com.join.mgps.ptr.util.a.c(PtrFrameLayout.this.f51134b, "tryToScrollTo: start: %s, distance:%s, to:%s", Integer.valueOf(d4), Integer.valueOf(i5), Integer.valueOf(i2));
            }
            PtrFrameLayout.this.removeCallbacks(this);
            this.f51161a = 0;
            if (!this.f51162b.isFinished()) {
                this.f51162b.forceFinished(true);
            }
            this.f51162b.startScroll(0, 0, 0, i5, i4);
            PtrFrameLayout.this.post(this);
            this.f51163c = true;
        }

        @Override // java.lang.Runnable
        public void run() {
            boolean z3 = !this.f51162b.computeScrollOffset() || this.f51162b.isFinished();
            int currY = this.f51162b.getCurrY();
            int i2 = currY - this.f51161a;
            if (PtrFrameLayout.J && i2 != 0) {
                com.join.mgps.ptr.util.a.p(PtrFrameLayout.this.f51134b, "scroll: %s, start: %s, to: %s, currentPos: %s, current :%s, last: %s, delta: %s", Boolean.valueOf(z3), Integer.valueOf(this.f51164d), Integer.valueOf(this.f51165e), Integer.valueOf(PtrFrameLayout.this.f51155w.d()), Integer.valueOf(currY), Integer.valueOf(this.f51161a), Integer.valueOf(i2));
            }
            if (!z3) {
                this.f51161a = currY;
                PtrFrameLayout.this.t(i2);
                PtrFrameLayout.this.post(this);
                return;
            }
            e();
        }
    }

    public PtrFrameLayout(Context context) {
        this(context, null);
    }

    private void A() {
        this.f51154v = System.currentTimeMillis();
        if (this.f51143k.j()) {
            this.f51143k.e(this);
            if (J) {
                com.join.mgps.ptr.util.a.j(this.f51134b, "PtrUIHandler: onUIRefreshBegin");
            }
        }
        com.join.mgps.ptr.b bVar = this.f51144l;
        if (bVar != null) {
            bVar.b(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void B() {
        this.f51133a = (byte) 4;
        if (this.f51145m.f51163c && l()) {
            if (J) {
                com.join.mgps.ptr.util.a.c(this.f51134b, "performRefreshComplete do nothing, scrolling: %s, auto refresh: %s", Boolean.valueOf(this.f51145m.f51163c), Integer.valueOf(this.f51149q));
                return;
            }
            return;
        }
        u(false);
    }

    private void E() {
        if (J) {
            com.join.mgps.ptr.util.a.a(this.f51134b, "send cancel event");
        }
        MotionEvent motionEvent = this.f51151s;
        if (motionEvent == null) {
            return;
        }
        k(MotionEvent.obtain(motionEvent.getDownTime(), motionEvent.getEventTime() + ViewConfiguration.getLongPressTimeout(), 3, motionEvent.getX(), motionEvent.getY(), motionEvent.getMetaState()));
    }

    private void F() {
        if (J) {
            com.join.mgps.ptr.util.a.a(this.f51134b, "send down event");
        }
        MotionEvent motionEvent = this.f51151s;
        k(MotionEvent.obtain(motionEvent.getDownTime(), motionEvent.getEventTime(), 0, motionEvent.getX(), motionEvent.getY(), motionEvent.getMetaState()));
    }

    private void G() {
        if (this.f51155w.x()) {
            return;
        }
        this.f51145m.g(0, this.f51139g);
    }

    private void H() {
        G();
    }

    private void I() {
        G();
    }

    private void J() {
        G();
    }

    private boolean K() {
        byte b4 = this.f51133a;
        if ((b4 == 4 || b4 == 2) && this.f51155w.u()) {
            if (this.f51143k.j()) {
                this.f51143k.c(this);
                if (J) {
                    com.join.mgps.ptr.util.a.j(this.f51134b, "PtrUIHandler: onUIReset");
                }
            }
            this.f51133a = (byte) 1;
            i();
            return true;
        }
        return false;
    }

    private boolean L() {
        if (this.f51133a != 2) {
            return false;
        }
        if ((this.f51155w.v() && l()) || this.f51155w.w()) {
            this.f51133a = (byte) 3;
            A();
        }
        return false;
    }

    private void M(int i2) {
        if (i2 == 0) {
            return;
        }
        boolean x3 = this.f51155w.x();
        if (x3 && !this.f51156x && this.f51155w.s()) {
            this.f51156x = true;
            E();
        }
        if ((this.f51155w.p() && this.f51133a == 1) || (this.f51155w.n() && this.f51133a == 4 && m())) {
            this.f51133a = (byte) 2;
            this.f51143k.d(this);
            if (J) {
                com.join.mgps.ptr.util.a.l(this.f51134b, "PtrUIHandler: onUIRefreshPrepare, mFlag %s", Integer.valueOf(this.f51149q));
            }
        }
        if (this.f51155w.o()) {
            K();
            if (x3) {
                F();
            }
        }
        if (this.f51133a == 2) {
            if (x3 && !l() && this.f51141i && this.f51155w.b()) {
                L();
            }
            if (z() && this.f51155w.q()) {
                L();
            }
        }
        if (J) {
            com.join.mgps.ptr.util.a.p(this.f51134b, "updatePos: change: %s, current: %s last: %s, top: %s, headerHeight: %s", Integer.valueOf(i2), Integer.valueOf(this.f51155w.d()), Integer.valueOf(this.f51155w.g()), Integer.valueOf(this.f51135c.getTop()), Integer.valueOf(this.f51147o));
        }
        this.f51142j.offsetTopAndBottom(i2);
        if (!o()) {
            this.f51135c.offsetTopAndBottom(i2);
        }
        invalidate();
        if (this.f51143k.j()) {
            this.f51143k.b(this, x3, this.f51133a, this.f51155w);
        }
        v(x3, this.f51133a, this.f51155w);
    }

    private void i() {
        this.f51149q &= f51132r0 ^ (-1);
    }

    private void r() {
        int d4 = this.f51155w.d();
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        View view = this.f51142j;
        if (view != null) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
            int i2 = marginLayoutParams.leftMargin + paddingLeft;
            int i4 = ((marginLayoutParams.topMargin + paddingTop) + d4) - this.f51147o;
            int measuredWidth = this.f51142j.getMeasuredWidth() + i2;
            int measuredHeight = this.f51142j.getMeasuredHeight() + i4;
            this.f51142j.layout(i2, i4, measuredWidth, measuredHeight);
            if (J) {
                com.join.mgps.ptr.util.a.c(this.f51134b, "onLayout header: %s %s %s %s", Integer.valueOf(i2), Integer.valueOf(i4), Integer.valueOf(measuredWidth), Integer.valueOf(measuredHeight));
            }
        }
        if (this.f51135c != null) {
            if (o()) {
                d4 = 0;
            }
            ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) this.f51135c.getLayoutParams();
            int i5 = paddingLeft + marginLayoutParams2.leftMargin;
            int i6 = paddingTop + marginLayoutParams2.topMargin + d4;
            int measuredWidth2 = this.f51135c.getMeasuredWidth() + i5;
            int measuredHeight2 = this.f51135c.getMeasuredHeight() + i6;
            if (J) {
                com.join.mgps.ptr.util.a.c(this.f51134b, "onLayout content: %s %s %s %s", Integer.valueOf(i5), Integer.valueOf(i6), Integer.valueOf(measuredWidth2), Integer.valueOf(measuredHeight2));
            }
            this.f51135c.layout(i5, i6, measuredWidth2, measuredHeight2);
        }
    }

    private void s(View view, int i2, int i4) {
        if (view == null) {
            return;
        }
        try {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
            view.measure(ViewGroup.getChildMeasureSpec(i2, getPaddingLeft() + getPaddingRight() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin, marginLayoutParams.width), ViewGroup.getChildMeasureSpec(i4, getPaddingTop() + getPaddingBottom() + marginLayoutParams.topMargin, marginLayoutParams.height));
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void t(float f4) {
        int i2 = 0;
        if (f4 < 0.0f && this.f51155w.u()) {
            if (J) {
                com.join.mgps.ptr.util.a.d(this.f51134b, String.format("has reached the top", new Object[0]));
                return;
            }
            return;
        }
        int d4 = this.f51155w.d() + ((int) f4);
        if (!this.f51155w.M(d4)) {
            i2 = d4;
        } else if (J) {
            com.join.mgps.ptr.util.a.d(this.f51134b, String.format("over top", new Object[0]));
        }
        this.f51155w.E(i2);
        M(i2 - this.f51155w.g());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u(boolean z3) {
        if (this.f51155w.r() && !z3 && this.f51152t != null) {
            if (J) {
                com.join.mgps.ptr.util.a.a(this.f51134b, "notifyUIRefreshComplete mRefreshCompleteHook run.");
            }
            this.f51152t.d();
            return;
        }
        if (this.f51143k.j()) {
            if (J) {
                com.join.mgps.ptr.util.a.j(this.f51134b, "PtrUIHandler: onUIRefreshComplete");
            }
            this.f51143k.a(this);
        }
        this.f51155w.B();
        I();
        K();
    }

    private void y(boolean z3) {
        L();
        byte b4 = this.f51133a;
        if (b4 != 3) {
            if (b4 == 4) {
                u(false);
            } else {
                H();
            }
        } else if (this.f51140h) {
            if (!this.f51155w.v() || z3) {
                return;
            }
            this.f51145m.g(this.f51155w.h(), this.f51138f);
        } else {
            J();
        }
    }

    private boolean z() {
        return (this.f51149q & f51132r0) == f51129o0;
    }

    public final void C() {
        if (J) {
            com.join.mgps.ptr.util.a.j(this.f51134b, "refreshComplete");
        }
        e eVar = this.f51152t;
        if (eVar != null) {
            eVar.a();
        }
        int currentTimeMillis = (int) (this.f51153u - (System.currentTimeMillis() - this.f51154v));
        if (currentTimeMillis <= 0) {
            if (J) {
                com.join.mgps.ptr.util.a.a(this.f51134b, "performRefreshComplete at once");
            }
            B();
            return;
        }
        postDelayed(this.f51157y, currentTimeMillis);
        if (J) {
            com.join.mgps.ptr.util.a.c(this.f51134b, "performRefreshComplete after delay: %s", Integer.valueOf(currentTimeMillis));
        }
    }

    public void D(com.join.mgps.ptr.c cVar) {
        this.f51143k = d.k(this.f51143k, cVar);
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams != null && (layoutParams instanceof LayoutParams);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x001f, code lost:
        if (r0 != 3) goto L13;
     */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean dispatchTouchEvent(android.view.MotionEvent r13) {
        /*
            Method dump skipped, instructions count: 350
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.ptr.PtrFrameLayout.dispatchTouchEvent(android.view.MotionEvent):boolean");
    }

    public void e(com.join.mgps.ptr.c cVar) {
        d.f(this.f51143k, cVar);
    }

    public void f() {
        h(true, this.f51139g);
    }

    public void g(boolean z3) {
        h(z3, this.f51139g);
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-1, -1);
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new LayoutParams(layoutParams);
    }

    public View getContentView() {
        return this.f51135c;
    }

    public float getDurationToClose() {
        return this.f51138f;
    }

    public long getDurationToCloseHeader() {
        return this.f51139g;
    }

    public int getHeaderHeight() {
        return this.f51147o;
    }

    public View getHeaderView() {
        return this.f51142j;
    }

    public int getOffsetToKeepHeaderWhileLoading() {
        return this.f51155w.h();
    }

    public int getOffsetToRefresh() {
        return this.f51155w.i();
    }

    public float getRatioOfHeaderToHeightRefresh() {
        return this.f51155w.l();
    }

    public float getResistance() {
        return this.f51155w.m();
    }

    public void h(boolean z3, int i2) {
        if (this.f51133a != 1) {
            return;
        }
        this.f51149q |= z3 ? f51128n0 : f51129o0;
        this.f51133a = (byte) 2;
        if (this.f51143k.j()) {
            this.f51143k.d(this);
            if (J) {
                com.join.mgps.ptr.util.a.l(this.f51134b, "PtrUIHandler: onUIRefreshPrepare, mFlag %s", Integer.valueOf(this.f51149q));
            }
        }
        this.f51145m.g(this.f51155w.i(), i2);
        if (z3) {
            this.f51133a = (byte) 3;
            A();
        }
    }

    public void j(boolean z3) {
        this.f51148p = z3;
    }

    public boolean k(MotionEvent motionEvent) {
        return super.dispatchTouchEvent(motionEvent);
    }

    public boolean l() {
        return (this.f51149q & f51132r0) > 0;
    }

    public boolean m() {
        return (this.f51149q & f51130p0) > 0;
    }

    public boolean n() {
        return this.f51140h;
    }

    public boolean o() {
        return (this.f51149q & f51131q0) > 0;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        c cVar = this.f51145m;
        if (cVar != null) {
            cVar.d();
        }
        Runnable runnable = this.f51157y;
        if (runnable != null) {
            removeCallbacks(runnable);
        }
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        int childCount = getChildCount();
        if (childCount <= 2) {
            if (childCount == 2) {
                int i2 = this.f51136d;
                if (i2 != 0 && this.f51142j == null) {
                    this.f51142j = findViewById(i2);
                }
                int i4 = this.f51137e;
                if (i4 != 0 && this.f51135c == null) {
                    this.f51135c = findViewById(i4);
                }
                if (this.f51135c == null || this.f51142j == null) {
                    View childAt = getChildAt(0);
                    View childAt2 = getChildAt(1);
                    if (childAt instanceof com.join.mgps.ptr.c) {
                        this.f51142j = childAt;
                        this.f51135c = childAt2;
                    } else if (childAt2 instanceof com.join.mgps.ptr.c) {
                        this.f51142j = childAt2;
                        this.f51135c = childAt;
                    } else {
                        View view = this.f51135c;
                        if (view == null && this.f51142j == null) {
                            this.f51142j = childAt;
                            this.f51135c = childAt2;
                        } else {
                            View view2 = this.f51142j;
                            if (view2 == null) {
                                if (view == childAt) {
                                    childAt = childAt2;
                                }
                                this.f51142j = childAt;
                            } else {
                                if (view2 == childAt) {
                                    childAt = childAt2;
                                }
                                this.f51135c = childAt;
                            }
                        }
                    }
                }
            } else if (childCount == 1) {
                this.f51135c = getChildAt(0);
            } else {
                TextView textView = new TextView(getContext());
                textView.setClickable(true);
                textView.setTextColor(-39424);
                textView.setGravity(17);
                textView.setTextSize(20.0f);
                textView.setText("The content view in PtrFrameLayout is empty. Do you forget to specify its id in xml layout file?");
                this.f51135c = textView;
                addView(textView);
            }
            View view3 = this.f51142j;
            if (view3 != null) {
                view3.bringToFront();
            }
            super.onFinishInflate();
            return;
        }
        throw new IllegalStateException("PtrFrameLayout only can host 2 elements");
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z3, int i2, int i4, int i5, int i6) {
        r();
    }

    @Override // android.view.View
    protected void onMeasure(int i2, int i4) {
        super.onMeasure(i2, i4);
        if (J) {
            com.join.mgps.ptr.util.a.c(this.f51134b, "onMeasure frame: width: %s, h eight: %s, padding: %s %s %s %s", Integer.valueOf(getMeasuredHeight()), Integer.valueOf(getMeasuredWidth()), Integer.valueOf(getPaddingLeft()), Integer.valueOf(getPaddingRight()), Integer.valueOf(getPaddingTop()), Integer.valueOf(getPaddingBottom()));
        }
        View view = this.f51142j;
        if (view != null) {
            measureChildWithMargins(view, i2, 0, i4, 0);
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.f51142j.getLayoutParams();
            int measuredHeight = this.f51142j.getMeasuredHeight() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
            this.f51147o = measuredHeight;
            this.f51155w.F(measuredHeight);
        }
        View view2 = this.f51135c;
        if (view2 != null) {
            s(view2, i2, i4);
            if (J) {
                ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) this.f51135c.getLayoutParams();
                com.join.mgps.ptr.util.a.c(this.f51134b, "onMeasure content, width: %s, height: %s, margin: %s %s %s %s", Integer.valueOf(getMeasuredWidth()), Integer.valueOf(getMeasuredHeight()), Integer.valueOf(marginLayoutParams2.leftMargin), Integer.valueOf(marginLayoutParams2.topMargin), Integer.valueOf(marginLayoutParams2.rightMargin), Integer.valueOf(marginLayoutParams2.bottomMargin));
                com.join.mgps.ptr.util.a.c(this.f51134b, "onMeasure, currentPos: %s, lastPos: %s, top: %s", Integer.valueOf(this.f51155w.d()), Integer.valueOf(this.f51155w.g()), Integer.valueOf(this.f51135c.getTop()));
            }
        }
    }

    public boolean p() {
        return this.f51141i;
    }

    public boolean q() {
        return this.f51133a == 3;
    }

    public void setDurationToClose(int i2) {
        this.f51138f = i2;
    }

    public void setDurationToCloseHeader(int i2) {
        this.f51139g = i2;
    }

    public void setEnabledNextPtrAtOnce(boolean z3) {
        if (z3) {
            this.f51149q |= f51130p0;
        } else {
            this.f51149q &= f51130p0 ^ (-1);
        }
    }

    public void setHeaderView(View view) {
        View view2 = this.f51142j;
        if (view2 != null && view != null && view2 != view) {
            removeView(view2);
        }
        if (view.getLayoutParams() == null) {
            view.setLayoutParams(new LayoutParams(-1, -2));
        }
        this.f51142j = view;
        addView(view);
    }

    @Deprecated
    public void setInterceptEventWhileWorking(boolean z3) {
    }

    public void setKeepHeaderWhenRefresh(boolean z3) {
        this.f51140h = z3;
    }

    public void setLoadingMinTime(int i2) {
        this.f51153u = i2;
    }

    public void setOffsetToKeepHeaderWhileLoading(int i2) {
        this.f51155w.H(i2);
    }

    public void setOffsetToRefresh(int i2) {
        this.f51155w.I(i2);
    }

    public void setPinContent(boolean z3) {
        if (z3) {
            this.f51149q |= f51131q0;
        } else {
            this.f51149q &= f51131q0 ^ (-1);
        }
    }

    public void setPtrHandler(com.join.mgps.ptr.b bVar) {
        this.f51144l = bVar;
    }

    public void setPtrIndicator(com.join.mgps.ptr.indicator.a aVar) {
        com.join.mgps.ptr.indicator.a aVar2 = this.f51155w;
        if (aVar2 != null && aVar2 != aVar) {
            aVar.a(aVar2);
        }
        this.f51155w = aVar;
    }

    public void setPullToRefresh(boolean z3) {
        this.f51141i = z3;
    }

    public void setRatioOfHeaderHeightToRefresh(float f4) {
        this.f51155w.J(f4);
    }

    public void setRefreshCompleteHook(e eVar) {
        this.f51152t = eVar;
        eVar.c(new b());
    }

    public void setResistance(float f4) {
        this.f51155w.K(f4);
    }

    protected void v(boolean z3, byte b4, com.join.mgps.ptr.indicator.a aVar) {
    }

    protected void w() {
        if (this.f51155w.r() && l()) {
            if (J) {
                com.join.mgps.ptr.util.a.a(this.f51134b, "call onRelease after scroll abort");
            }
            y(true);
        }
    }

    protected void x() {
        if (this.f51155w.r() && l()) {
            if (J) {
                com.join.mgps.ptr.util.a.a(this.f51134b, "call onRelease after scroll finish");
            }
            y(true);
        }
    }

    public PtrFrameLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    public PtrFrameLayout(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f51133a = (byte) 1;
        StringBuilder sb = new StringBuilder();
        sb.append("ptr-frame-");
        int i4 = K + 1;
        K = i4;
        sb.append(i4);
        this.f51134b = sb.toString();
        this.f51136d = 0;
        this.f51137e = 0;
        this.f51138f = 200;
        this.f51139g = StatFsHelper.f11741h;
        this.f51140h = true;
        this.f51141i = false;
        this.f51143k = d.h();
        this.f51148p = false;
        this.f51149q = 0;
        this.f51150r = false;
        this.f51153u = 500;
        this.f51154v = 0L;
        this.f51156x = false;
        this.f51157y = new a();
        this.f51155w = new com.join.mgps.ptr.indicator.a();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.PtrFrameLayout, 0, 0);
        if (obtainStyledAttributes != null) {
            this.f51136d = obtainStyledAttributes.getResourceId(3, this.f51136d);
            this.f51137e = obtainStyledAttributes.getResourceId(0, this.f51137e);
            com.join.mgps.ptr.indicator.a aVar = this.f51155w;
            aVar.K(obtainStyledAttributes.getFloat(8, aVar.m()));
            this.f51138f = obtainStyledAttributes.getInt(1, this.f51138f);
            this.f51139g = obtainStyledAttributes.getInt(2, this.f51139g);
            this.f51155w.J(obtainStyledAttributes.getFloat(7, this.f51155w.l()));
            this.f51140h = obtainStyledAttributes.getBoolean(5, this.f51140h);
            this.f51141i = obtainStyledAttributes.getBoolean(6, this.f51141i);
            this.f51158z = obtainStyledAttributes.getInt(4, 0);
            obtainStyledAttributes.recycle();
        }
        this.f51145m = new c();
        this.f51146n = ViewConfiguration.get(getContext()).getScaledTouchSlop() * 2;
    }
}
