package com.join.mgps.customview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.animation.DecelerateInterpolator;
import android.widget.AbsListView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.Scroller;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.u0;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes3.dex */
public class XListView4Forum extends ListView implements AbsListView.OnScrollListener {
    protected static final int A = 50;
    protected static final float B = 2.0f;

    /* renamed from: w  reason: collision with root package name */
    public static final String f46645w = "XListView";

    /* renamed from: x  reason: collision with root package name */
    protected static final int f46646x = 0;

    /* renamed from: y  reason: collision with root package name */
    protected static final int f46647y = 1;

    /* renamed from: z  reason: collision with root package name */
    protected static final int f46648z = 400;

    /* renamed from: a  reason: collision with root package name */
    protected float f46649a;

    /* renamed from: b  reason: collision with root package name */
    protected float f46650b;

    /* renamed from: c  reason: collision with root package name */
    protected Scroller f46651c;

    /* renamed from: d  reason: collision with root package name */
    protected AbsListView.OnScrollListener f46652d;

    /* renamed from: e  reason: collision with root package name */
    protected i f46653e;

    /* renamed from: f  reason: collision with root package name */
    protected j f46654f;

    /* renamed from: g  reason: collision with root package name */
    protected XListViewHeader f46655g;

    /* renamed from: h  reason: collision with root package name */
    protected RelativeLayout f46656h;

    /* renamed from: i  reason: collision with root package name */
    protected TextView f46657i;

    /* renamed from: j  reason: collision with root package name */
    protected int f46658j;

    /* renamed from: k  reason: collision with root package name */
    protected boolean f46659k;

    /* renamed from: l  reason: collision with root package name */
    protected AtomicBoolean f46660l;

    /* renamed from: m  reason: collision with root package name */
    protected XListViewFooter f46661m;

    /* renamed from: n  reason: collision with root package name */
    protected boolean f46662n;

    /* renamed from: o  reason: collision with root package name */
    protected boolean f46663o;

    /* renamed from: p  reason: collision with root package name */
    protected boolean f46664p;

    /* renamed from: q  reason: collision with root package name */
    protected int f46665q;

    /* renamed from: r  reason: collision with root package name */
    protected int f46666r;

    /* renamed from: s  reason: collision with root package name */
    private int f46667s;

    /* renamed from: t  reason: collision with root package name */
    private boolean f46668t;

    /* renamed from: u  reason: collision with root package name */
    private ViewGroup f46669u;

    /* renamed from: v  reason: collision with root package name */
    private boolean f46670v;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements ViewTreeObserver.OnGlobalLayoutListener {
        a() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            XListView4Forum xListView4Forum = XListView4Forum.this;
            xListView4Forum.f46658j = xListView4Forum.f46656h.getHeight();
            XListView4Forum.this.getViewTreeObserver().removeGlobalOnLayoutListener(this);
        }
    }

    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            XListView4Forum xListView4Forum = XListView4Forum.this;
            xListView4Forum.f46663o = true;
            xListView4Forum.f46661m.setState(2);
            i iVar = XListView4Forum.this.f46653e;
            if (iVar != null) {
                iVar.onLoadMore();
            }
        }
    }

    public XListView4Forum(Context context) {
        super(context);
        this.f46649a = -1.0f;
        this.f46650b = -1.0f;
        this.f46659k = true;
        this.f46660l = new AtomicBoolean(false);
        this.f46664p = false;
        this.f46667s = 0;
        this.f46668t = false;
        this.f46670v = false;
        g(context);
    }

    private void setParentScrollAble(boolean z3) {
        ViewGroup viewGroup = this.f46669u;
        if (viewGroup != null) {
            viewGroup.requestDisallowInterceptTouchEvent(!z3);
        } else {
            getParent().requestDisallowInterceptTouchEvent(!z3);
        }
    }

    public void b() {
        this.f46670v = false;
    }

    public void c() {
        this.f46662n = false;
        this.f46661m.a();
        this.f46661m.setOnClickListener(null);
    }

    @Override // android.view.View
    public void computeScroll() {
        if (this.f46651c.computeScrollOffset()) {
            if (this.f46666r == 0) {
                this.f46655g.setVisibleHeight(this.f46651c.getCurrY());
            } else {
                this.f46661m.setBottomMargin(this.f46651c.getCurrY());
            }
            postInvalidate();
            h();
        }
        super.computeScroll();
    }

    public void d() {
        this.f46659k = false;
        this.f46656h.setVisibility(4);
    }

    public void e() {
        this.f46670v = true;
    }

    public void f() {
        this.f46662n = false;
        this.f46661m.a();
    }

    protected void g(Context context) {
        this.f46651c = new Scroller(context, new DecelerateInterpolator());
        super.setOnScrollListener(this);
        XListViewHeader xListViewHeader = new XListViewHeader(context);
        this.f46655g = xListViewHeader;
        this.f46656h = (RelativeLayout) xListViewHeader.findViewById(R.id.xlistview_header_content);
        this.f46657i = (TextView) this.f46655g.findViewById(R.id.xlistview_header_time);
        addHeaderView(this.f46655g);
        this.f46661m = new XListViewFooter(context);
        this.f46655g.getViewTreeObserver().addOnGlobalLayoutListener(new a());
        c();
        d();
    }

    protected void h() {
        AbsListView.OnScrollListener onScrollListener = this.f46652d;
        if (onScrollListener instanceof k) {
            ((k) onScrollListener).a(this);
        }
    }

    protected void i() {
        int bottomMargin = this.f46661m.getBottomMargin();
        if (bottomMargin > 0) {
            this.f46666r = 1;
            this.f46651c.startScroll(0, bottomMargin, 0, -bottomMargin, 400);
            invalidate();
        }
    }

    protected void j() {
        int visibleHeight = this.f46655g.getVisibleHeight();
        if (visibleHeight == 0) {
            return;
        }
        if (!this.f46660l.get() || visibleHeight > this.f46658j) {
            int i2 = (!this.f46660l.get() || visibleHeight <= (i2 = this.f46658j)) ? 0 : 0;
            StringBuilder sb = new StringBuilder();
            sb.append("resetHeaderHeight-->");
            int i4 = i2 - visibleHeight;
            sb.append(i4);
            this.f46666r = 0;
            this.f46651c.startScroll(0, visibleHeight, 0, i4, 400);
            invalidate();
        }
    }

    protected void k(int i2) {
        int visibleHeight = this.f46655g.getVisibleHeight();
        if (visibleHeight == 0) {
            return;
        }
        if (!this.f46660l.get() || visibleHeight > this.f46658j) {
            int i4 = (!this.f46660l.get() || visibleHeight <= (i4 = this.f46658j)) ? 0 : 0;
            this.f46666r = 0;
            StringBuilder sb = new StringBuilder();
            sb.append("resetHeaderHeight-->");
            int i5 = i4 - visibleHeight;
            sb.append(i5);
            this.f46651c.startScroll(0, visibleHeight, 0, i5 + 100, 400);
            invalidate();
        }
    }

    public void l() {
        this.f46660l.set(true);
        this.f46655g.setState(2);
        s(this.f46658j);
        j();
    }

    public void m() {
        this.f46662n = true;
        this.f46661m.f();
    }

    protected void n() {
        if (!this.f46662n || this.f46661m.getBottomMargin() <= 50 || this.f46663o) {
            return;
        }
        this.f46663o = true;
        this.f46661m.setState(2);
        i iVar = this.f46653e;
        if (iVar != null) {
            iVar.onLoadMore();
        }
    }

    protected void o() {
        if (!this.f46659k || this.f46655g.getVisibleHeight() <= this.f46658j || this.f46660l.get()) {
            return;
        }
        this.f46660l.set(true);
        this.f46655g.setState(2);
        if (this.f46654f != null) {
            this.f46654f.onRefresh();
        }
        if (this.f46668t) {
            this.f46662n = true;
            this.f46661m.f();
            this.f46661m.setState(0);
        }
    }

    @Override // android.widget.AbsListView, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (this.f46669u == null) {
            return super.onInterceptTouchEvent(motionEvent);
        }
        boolean z3 = this.f46670v;
        u0.e("XListView", "onInterceptTouchEvent", " disallowIntercept=" + z3);
        if (z3) {
            if (motionEvent.getAction() == 0) {
                u0.e("XListView", "onInterceptTouchEvent", " ACTION_DOWN");
                setParentScrollAble(false);
            } else if (motionEvent.getAction() == 1) {
                u0.e("XListView", "onInterceptTouchEvent", " ACTION_UP");
                setParentScrollAble(true);
            } else if (motionEvent.getAction() == 2) {
                u0.e("XListView", "onInterceptTouchEvent", " ACTION_MOVE");
            } else if (motionEvent.getAction() == 3) {
                u0.e("XListView", "onInterceptTouchEvent", " ACTION_CANCEL");
                setParentScrollAble(true);
            }
        } else {
            setParentScrollAble(true);
        }
        return super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.widget.AbsListView, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z3, int i2, int i4, int i5, int i6) {
        super.onLayout(z3, i2, i4, i5, i6);
        if (this.f46664p || getAdapter() == null || getLastVisiblePosition() == getAdapter().getCount() - 1) {
            return;
        }
        this.f46664p = true;
        addFooterView(this.f46661m);
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView absListView, int i2, int i4, int i5) {
        StringBuilder sb = new StringBuilder();
        sb.append("onScroll firstVisibleItem ");
        sb.append(i2);
        sb.append(" visibleItemCount ");
        sb.append(i4);
        sb.append(" totalItemCount ");
        sb.append(i5);
        this.f46665q = i5;
        AbsListView.OnScrollListener onScrollListener = this.f46652d;
        if (onScrollListener != null) {
            onScrollListener.onScroll(absListView, i2, i4, i5);
        }
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView absListView, int i2) {
        AbsListView.OnScrollListener onScrollListener = this.f46652d;
        if (onScrollListener != null) {
            onScrollListener.onScrollStateChanged(absListView, i2);
        }
    }

    @Override // android.widget.AbsListView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        ViewGroup viewGroup;
        if (this.f46649a == -1.0f) {
            this.f46649a = motionEvent.getRawY();
        }
        if (this.f46650b == -1.0f) {
            this.f46650b = motionEvent.getRawX();
        }
        int action = motionEvent.getAction();
        if (action == 0) {
            this.f46649a = motionEvent.getRawY();
            this.f46650b = motionEvent.getRawX();
        } else if (action != 1) {
            if (action != 2) {
                this.f46649a = -1.0f;
                if (getFirstVisiblePosition() == 0) {
                    if (!this.f46660l.get()) {
                        o();
                        j();
                    }
                } else if (getLastVisiblePosition() == this.f46665q - 1) {
                    n();
                    i();
                }
            } else {
                float rawY = motionEvent.getRawY() - this.f46649a;
                this.f46649a = motionEvent.getRawY();
                StringBuilder sb = new StringBuilder();
                sb.append("onTouchEvent  LastVisiblePosition ");
                sb.append(getLastVisiblePosition());
                sb.append(" mTotalItemCount ");
                sb.append(this.f46665q);
                if (getFirstVisiblePosition() == 0 && ((this.f46655g.getVisibleHeight() > 0 || rawY > 0.0f) && !this.f46660l.get())) {
                    if (this.f46659k && !this.f46660l.get()) {
                        s(rawY / B);
                        h();
                    }
                } else if (getLastVisiblePosition() == this.f46665q - 1 && ((this.f46661m.getBottomMargin() > 0 || rawY < 0.0f) && !this.f46663o)) {
                    if (this.f46662n) {
                        r((-rawY) / B);
                    }
                } else if (this.f46667s != 0 && !this.f46660l.get() && this.f46662n && !this.f46663o && getLastVisiblePosition() >= this.f46665q - this.f46667s) {
                    this.f46663o = true;
                    this.f46661m.setState(2);
                    i iVar = this.f46653e;
                    if (iVar != null) {
                        iVar.onLoadMore();
                    }
                }
                float rawX = motionEvent.getRawX() - this.f46650b;
                this.f46650b = motionEvent.getRawX();
                u0.e("XListView", "deltaY=" + rawY + " deltaX=" + rawX);
                if (Math.abs(rawY) >= Math.abs(rawX) || (viewGroup = this.f46669u) != null) {
                    if (rawY > 0.0f) {
                        if (getFirstVisiblePosition() == 0) {
                            u0.e("XListView", "SCROLL DOWN -- ParentScrollAble=true");
                            setParentScrollAble(true);
                        } else {
                            u0.e("XListView", "SCROLL DOWN -- ParentScrollAble=false");
                            setParentScrollAble(false);
                        }
                    } else if (rawY < 0.0f) {
                        u0.e("XListView", "SCROLL UP");
                        if (getLastVisiblePosition() == this.f46665q - 1) {
                            u0.e("XListView", "SCROLL UP -- ParentScrollAble=true");
                            setParentScrollAble(true);
                        } else {
                            u0.e("XListView", "SCROLL UP -- ParentScrollAble=false");
                            setParentScrollAble(false);
                        }
                    }
                } else if (viewGroup == null) {
                    u0.e("XListView", "SCROLL HORIZONTAL");
                    if (this.f46670v) {
                        setParentScrollAble(false);
                    } else {
                        setParentScrollAble(true);
                    }
                }
            }
        }
        return super.onTouchEvent(motionEvent);
    }

    public void p() {
        if (this.f46663o && this.f46662n) {
            this.f46663o = false;
            this.f46661m.setState(0);
        }
    }

    public void q() {
        if (this.f46660l.get()) {
            this.f46660l.set(false);
            j();
        }
    }

    protected void r(float f4) {
        int bottomMargin = this.f46661m.getBottomMargin() + ((int) f4);
        if (this.f46662n && !this.f46663o) {
            if (bottomMargin > 50) {
                this.f46661m.setState(1);
            } else {
                this.f46661m.setState(0);
            }
        }
        this.f46661m.setBottomMargin(bottomMargin);
    }

    protected void s(float f4) {
        XListViewHeader xListViewHeader = this.f46655g;
        xListViewHeader.setVisibleHeight(((int) f4) + xListViewHeader.getVisibleHeight());
        if (this.f46659k && !this.f46660l.get()) {
            if (this.f46655g.getVisibleHeight() > this.f46658j) {
                this.f46655g.setState(1);
            } else {
                this.f46655g.setState(0);
            }
        }
        setSelection(0);
    }

    public void setNoMore() {
        p();
        this.f46661m.f();
        this.f46661m.setState(3);
        this.f46662n = false;
        this.f46661m.setOnClickListener(null);
    }

    @Override // android.widget.AbsListView
    public void setOnScrollListener(AbsListView.OnScrollListener onScrollListener) {
        this.f46652d = onScrollListener;
    }

    public void setParentIntercepView(ViewGroup viewGroup) {
        this.f46669u = viewGroup;
    }

    public void setPreLoadCount(int i2) {
        this.f46667s = i2;
    }

    public void setPullLoadEnable(i iVar) {
        this.f46662n = true;
        this.f46668t = true;
        this.f46653e = iVar;
        this.f46663o = false;
        this.f46661m.f();
        this.f46661m.setState(0);
        this.f46661m.setOnClickListener(new b());
    }

    public void setPullRefreshEnable(j jVar) {
        this.f46659k = true;
        this.f46656h.setVisibility(0);
        this.f46654f = jVar;
    }

    @Override // android.widget.AdapterView
    public void setAdapter(ListAdapter listAdapter) {
        super.setAdapter(listAdapter);
    }

    public XListView4Forum(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f46649a = -1.0f;
        this.f46650b = -1.0f;
        this.f46659k = true;
        this.f46660l = new AtomicBoolean(false);
        this.f46664p = false;
        this.f46667s = 0;
        this.f46668t = false;
        this.f46670v = false;
        g(context);
    }

    public XListView4Forum(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f46649a = -1.0f;
        this.f46650b = -1.0f;
        this.f46659k = true;
        this.f46660l = new AtomicBoolean(false);
        this.f46664p = false;
        this.f46667s = 0;
        this.f46668t = false;
        this.f46670v = false;
        g(context);
    }
}
