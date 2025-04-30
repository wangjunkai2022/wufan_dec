package com.join.mgps.customview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.animation.DecelerateInterpolator;
import android.widget.AbsListView;
import android.widget.ExpandableListView;
import android.widget.ListAdapter;
import android.widget.RelativeLayout;
import android.widget.Scroller;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.t0;
import com.join.mgps.ptr.PtrFrameLayout;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes3.dex */
public class XExpandableListView extends ExpandableListView implements AbsListView.OnScrollListener {
    protected static final int A = 50;
    protected static final float B = 2.0f;

    /* renamed from: w  reason: collision with root package name */
    public static final String f46528w = "XListView";

    /* renamed from: x  reason: collision with root package name */
    protected static final int f46529x = 0;

    /* renamed from: y  reason: collision with root package name */
    protected static final int f46530y = 1;

    /* renamed from: z  reason: collision with root package name */
    protected static final int f46531z = 400;

    /* renamed from: a  reason: collision with root package name */
    protected float f46532a;

    /* renamed from: b  reason: collision with root package name */
    protected float f46533b;

    /* renamed from: c  reason: collision with root package name */
    protected Scroller f46534c;

    /* renamed from: d  reason: collision with root package name */
    protected AbsListView.OnScrollListener f46535d;

    /* renamed from: e  reason: collision with root package name */
    protected i f46536e;

    /* renamed from: f  reason: collision with root package name */
    protected j f46537f;

    /* renamed from: g  reason: collision with root package name */
    protected XListViewHeader f46538g;

    /* renamed from: h  reason: collision with root package name */
    protected RelativeLayout f46539h;

    /* renamed from: i  reason: collision with root package name */
    protected TextView f46540i;

    /* renamed from: j  reason: collision with root package name */
    protected int f46541j;

    /* renamed from: k  reason: collision with root package name */
    protected boolean f46542k;

    /* renamed from: l  reason: collision with root package name */
    protected AtomicBoolean f46543l;

    /* renamed from: m  reason: collision with root package name */
    protected XListViewFooter f46544m;

    /* renamed from: n  reason: collision with root package name */
    protected boolean f46545n;

    /* renamed from: o  reason: collision with root package name */
    protected boolean f46546o;

    /* renamed from: p  reason: collision with root package name */
    protected boolean f46547p;

    /* renamed from: q  reason: collision with root package name */
    protected int f46548q;

    /* renamed from: r  reason: collision with root package name */
    protected int f46549r;

    /* renamed from: s  reason: collision with root package name */
    private int f46550s;

    /* renamed from: t  reason: collision with root package name */
    private boolean f46551t;

    /* renamed from: u  reason: collision with root package name */
    private com.join.mgps.ptr.a f46552u;

    /* renamed from: v  reason: collision with root package name */
    private j f46553v;

    /* loaded from: classes3.dex */
    class a extends com.join.mgps.ptr.a {
        a() {
        }

        @Override // com.join.mgps.ptr.a, com.join.mgps.ptr.b
        public boolean a(PtrFrameLayout ptrFrameLayout, View view, View view2) {
            return com.join.mgps.ptr.a.d(ptrFrameLayout, view, view2);
        }

        @Override // com.join.mgps.ptr.b
        public void b(PtrFrameLayout ptrFrameLayout) {
            t0.g("onRefreshBegin----------");
            XExpandableListView.this.q();
            if (XExpandableListView.this.f46553v != null) {
                XExpandableListView.this.f46553v.onRefresh();
            }
        }
    }

    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            XExpandableListView xExpandableListView = XExpandableListView.this;
            xExpandableListView.f46546o = true;
            xExpandableListView.f46544m.setState(2);
            i iVar = XExpandableListView.this.f46536e;
            if (iVar != null) {
                iVar.onLoadMore();
            }
        }
    }

    public XExpandableListView(Context context) {
        super(context);
        this.f46532a = -1.0f;
        this.f46533b = -1.0f;
        this.f46542k = true;
        this.f46543l = new AtomicBoolean(false);
        this.f46547p = false;
        this.f46550s = 0;
        this.f46551t = false;
        this.f46552u = new a();
        f(context);
        setFriction(ViewConfiguration.getScrollFriction() * B);
        setFastScrollEnabled(false);
    }

    public void c() {
        this.f46545n = false;
        this.f46544m.a();
        this.f46544m.setOnClickListener(null);
    }

    @Override // android.view.View
    public void computeScroll() {
        if (this.f46534c.computeScrollOffset()) {
            if (this.f46549r != 0) {
                this.f46544m.setBottomMargin(this.f46534c.getCurrY());
            }
            postInvalidate();
            g();
        }
        super.computeScroll();
    }

    public void d() {
        this.f46542k = false;
        this.f46539h.setVisibility(4);
    }

    public void e() {
        this.f46545n = false;
        this.f46544m.a();
    }

    protected void f(Context context) {
        this.f46534c = new Scroller(context, new DecelerateInterpolator());
        super.setOnScrollListener(this);
        XListViewHeader xListViewHeader = new XListViewHeader(context);
        this.f46538g = xListViewHeader;
        this.f46539h = (RelativeLayout) xListViewHeader.findViewById(R.id.xlistview_header_content);
        this.f46540i = (TextView) this.f46538g.findViewById(R.id.xlistview_header_time);
        this.f46544m = new XListViewFooter(context);
        c();
        d();
        addFooterView(this.f46544m);
    }

    protected void g() {
        AbsListView.OnScrollListener onScrollListener = this.f46535d;
        if (onScrollListener instanceof k) {
            ((k) onScrollListener).a(this);
        }
    }

    public boolean h() {
        return this.f46543l.get();
    }

    public void i() {
        if (!com.join.android.app.common.utils.f.j(getContext()) || this.f46543l.get() || !this.f46545n || this.f46546o || getLastVisiblePosition() < this.f46548q - this.f46550s) {
            return;
        }
        this.f46546o = true;
        this.f46544m.setState(2);
        i iVar = this.f46536e;
        if (iVar != null) {
            iVar.onLoadMore();
        }
    }

    public void j() {
        this.f46545n = true;
        this.f46542k = true;
        this.f46544m.setState(0);
    }

    protected void k() {
        int bottomMargin = this.f46544m.getBottomMargin();
        if (bottomMargin > 0) {
            this.f46549r = 1;
            this.f46534c.startScroll(0, bottomMargin, 0, -bottomMargin, 400);
            invalidate();
        }
    }

    protected void l() {
        int visibleHeight = this.f46538g.getVisibleHeight();
        if (visibleHeight == 0) {
            return;
        }
        if (!this.f46543l.get() || visibleHeight > this.f46541j) {
            int i2 = (!this.f46543l.get() || visibleHeight <= (i2 = this.f46541j)) ? 0 : 0;
            StringBuilder sb = new StringBuilder();
            sb.append("resetHeaderHeight-->");
            int i4 = i2 - visibleHeight;
            sb.append(i4);
            this.f46549r = 0;
            this.f46534c.startScroll(0, visibleHeight, 0, i4, 400);
            invalidate();
        }
    }

    protected void m(int i2) {
        int visibleHeight = this.f46538g.getVisibleHeight();
        if (visibleHeight == 0) {
            return;
        }
        if (!this.f46543l.get() || visibleHeight > this.f46541j) {
            int i4 = (!this.f46543l.get() || visibleHeight <= (i4 = this.f46541j)) ? 0 : 0;
            this.f46549r = 0;
            StringBuilder sb = new StringBuilder();
            sb.append("resetHeaderHeight-->");
            int i5 = i4 - visibleHeight;
            sb.append(i5);
            this.f46534c.startScroll(0, visibleHeight, 0, i5 + 100, 400);
            invalidate();
        }
    }

    public void n() {
        if (getParent() == null || !(getParent() instanceof PtrFrameLayout)) {
            return;
        }
        ((PtrFrameLayout) getParent()).f();
    }

    public void o() {
        this.f46545n = true;
        this.f46544m.f();
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView absListView, int i2, int i4, int i5) {
        StringBuilder sb = new StringBuilder();
        sb.append("onScroll  ");
        sb.append(i2);
        sb.append(" visibleItemCount ");
        sb.append(i4);
        sb.append(" totalItemCount ");
        sb.append(i5);
        sb.append(";mPullRefreshing=");
        sb.append(this.f46543l.get());
        sb.append(";mPullLoading=");
        sb.append(this.f46546o);
        this.f46548q = i5;
        AbsListView.OnScrollListener onScrollListener = this.f46535d;
        if (onScrollListener != null) {
            onScrollListener.onScroll(absListView, i2, i4, i5);
        }
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView absListView, int i2) {
        StringBuilder sb = new StringBuilder();
        sb.append("scrollStateChanged");
        sb.append(i2);
        int firstVisiblePosition = absListView.getFirstVisiblePosition();
        int childCount = absListView.getChildCount();
        if (i2 == 0 || firstVisiblePosition + childCount > this.f46548q) {
            i();
        }
        AbsListView.OnScrollListener onScrollListener = this.f46535d;
        if (onScrollListener != null) {
            onScrollListener.onScrollStateChanged(absListView, i2);
        }
    }

    @Override // android.widget.AbsListView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.f46532a == -1.0f) {
            this.f46532a = motionEvent.getRawY();
        }
        if (this.f46533b == -1.0f) {
            this.f46533b = motionEvent.getRawX();
        }
        int action = motionEvent.getAction();
        if (action == 0) {
            this.f46532a = motionEvent.getRawY();
            this.f46533b = motionEvent.getRawX();
        } else if (action != 2) {
            this.f46532a = -1.0f;
            if (getLastVisiblePosition() == this.f46548q - 1) {
                p();
                k();
            }
        } else {
            float rawY = motionEvent.getRawY() - this.f46532a;
            this.f46532a = motionEvent.getRawY();
            StringBuilder sb = new StringBuilder();
            sb.append("onTouchEvent  LastVisiblePosition ");
            sb.append(getLastVisiblePosition());
            sb.append(" mTotalItemCount ");
            sb.append(this.f46548q);
            sb.append(";mPullLoading=");
            sb.append(this.f46546o);
            sb.append(";mEnablePullLoad=");
            sb.append(this.f46545n);
            if (getLastVisiblePosition() == this.f46548q - 1 && ((this.f46544m.getBottomMargin() > 0 || rawY < 0.0f) && !this.f46546o)) {
                if (this.f46545n) {
                    t((-rawY) / B);
                }
            } else if (this.f46550s != 0) {
                i();
            }
        }
        return super.onTouchEvent(motionEvent);
    }

    protected void p() {
        if (!this.f46545n || this.f46544m.getBottomMargin() <= 50 || this.f46546o) {
            return;
        }
        this.f46546o = true;
        this.f46544m.setState(2);
        i iVar = this.f46536e;
        if (iVar != null) {
            iVar.onLoadMore();
        }
    }

    protected void q() {
        if (this.f46551t) {
            this.f46545n = true;
            this.f46544m.f();
            this.f46544m.setState(0);
        }
    }

    public void r() {
        if (this.f46546o && this.f46545n) {
            this.f46546o = false;
            this.f46544m.setState(0);
        }
    }

    public void s() {
        if (getParent() == null || !(getParent() instanceof PtrFrameLayout)) {
            return;
        }
        ((PtrFrameLayout) getParent()).C();
    }

    public void setNoMore() {
        r();
        this.f46544m.f();
        this.f46544m.setState(3);
        this.f46545n = false;
        this.f46544m.setOnClickListener(null);
    }

    @Override // android.widget.AbsListView
    public void setOnScrollListener(AbsListView.OnScrollListener onScrollListener) {
        this.f46535d = onScrollListener;
    }

    public void setPreLoadCount(int i2) {
        this.f46550s = i2;
    }

    public void setPullLoadEnable(i iVar) {
        this.f46545n = true;
        this.f46551t = true;
        this.f46536e = iVar;
        this.f46546o = false;
        this.f46544m.f();
        this.f46544m.setState(0);
        this.f46544m.setOnClickListener(new b());
    }

    public void setPullRefreshEnable(j jVar) {
        this.f46553v = jVar;
        if (getParent() == null || !(getParent() instanceof PtrFrameLayout)) {
            return;
        }
        ((PtrFrameLayout) getParent()).setPtrHandler(this.f46552u);
    }

    protected void t(float f4) {
        int bottomMargin = this.f46544m.getBottomMargin() + ((int) f4);
        if (this.f46545n && !this.f46546o) {
            if (bottomMargin > 50) {
                this.f46544m.setState(1);
            } else {
                this.f46544m.setState(0);
            }
        }
        this.f46544m.setBottomMargin(bottomMargin);
    }

    protected void u(float f4) {
        XListViewHeader xListViewHeader = this.f46538g;
        xListViewHeader.setVisibleHeight(((int) f4) + xListViewHeader.getVisibleHeight());
        if (this.f46542k && !this.f46543l.get()) {
            if (this.f46538g.getVisibleHeight() > this.f46541j) {
                this.f46538g.setState(1);
            } else {
                this.f46538g.setState(0);
            }
        }
        setSelection(0);
    }

    @Override // android.widget.AdapterView
    public void setAdapter(ListAdapter listAdapter) {
        super.setAdapter(listAdapter);
    }

    public XExpandableListView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f46532a = -1.0f;
        this.f46533b = -1.0f;
        this.f46542k = true;
        this.f46543l = new AtomicBoolean(false);
        this.f46547p = false;
        this.f46550s = 0;
        this.f46551t = false;
        this.f46552u = new a();
        f(context);
    }

    public XExpandableListView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f46532a = -1.0f;
        this.f46533b = -1.0f;
        this.f46542k = true;
        this.f46543l = new AtomicBoolean(false);
        this.f46547p = false;
        this.f46550s = 0;
        this.f46551t = false;
        this.f46552u = new a();
        f(context);
    }
}
