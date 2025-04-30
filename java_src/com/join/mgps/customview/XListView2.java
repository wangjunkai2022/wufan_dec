package com.join.mgps.customview;

import android.content.Context;
import android.database.DataSetObserver;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.animation.DecelerateInterpolator;
import android.widget.AbsListView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.Scroller;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.t0;
import com.join.mgps.Util.u0;
import com.join.mgps.ptr.PtrFrameLayout;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes3.dex */
public class XListView2 extends ListView implements AbsListView.OnScrollListener {
    protected static final int A = 1;
    protected static final int B = 400;
    protected static final int C = 50;
    protected static final float D = 2.0f;

    /* renamed from: y  reason: collision with root package name */
    public static final String f46584y = "XListView";

    /* renamed from: z  reason: collision with root package name */
    protected static final int f46585z = 0;

    /* renamed from: a  reason: collision with root package name */
    protected float f46586a;

    /* renamed from: b  reason: collision with root package name */
    protected float f46587b;

    /* renamed from: c  reason: collision with root package name */
    protected Scroller f46588c;

    /* renamed from: d  reason: collision with root package name */
    protected AbsListView.OnScrollListener f46589d;

    /* renamed from: e  reason: collision with root package name */
    protected i f46590e;

    /* renamed from: f  reason: collision with root package name */
    protected j f46591f;

    /* renamed from: g  reason: collision with root package name */
    protected XListViewHeader f46592g;

    /* renamed from: h  reason: collision with root package name */
    protected RelativeLayout f46593h;

    /* renamed from: i  reason: collision with root package name */
    protected TextView f46594i;

    /* renamed from: j  reason: collision with root package name */
    protected int f46595j;

    /* renamed from: k  reason: collision with root package name */
    protected boolean f46596k;

    /* renamed from: l  reason: collision with root package name */
    protected AtomicBoolean f46597l;

    /* renamed from: m  reason: collision with root package name */
    protected XListViewFooter f46598m;

    /* renamed from: n  reason: collision with root package name */
    protected boolean f46599n;

    /* renamed from: o  reason: collision with root package name */
    protected boolean f46600o;

    /* renamed from: p  reason: collision with root package name */
    protected boolean f46601p;

    /* renamed from: q  reason: collision with root package name */
    protected int f46602q;

    /* renamed from: r  reason: collision with root package name */
    protected int f46603r;

    /* renamed from: s  reason: collision with root package name */
    private int f46604s;

    /* renamed from: t  reason: collision with root package name */
    private boolean f46605t;

    /* renamed from: u  reason: collision with root package name */
    DataSetObserver f46606u;

    /* renamed from: v  reason: collision with root package name */
    private com.join.mgps.ptr.a f46607v;

    /* renamed from: w  reason: collision with root package name */
    private j f46608w;

    /* renamed from: x  reason: collision with root package name */
    d f46609x;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a extends DataSetObserver {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ListAdapter f46610a;

        a(ListAdapter listAdapter) {
            this.f46610a = listAdapter;
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            super.onChanged();
            ListAdapter listAdapter = this.f46610a;
            if (listAdapter == null || listAdapter.getCount() <= 20) {
                XListView2.this.j();
            }
        }
    }

    /* loaded from: classes3.dex */
    class b extends com.join.mgps.ptr.a {
        b() {
        }

        @Override // com.join.mgps.ptr.a, com.join.mgps.ptr.b
        public boolean a(PtrFrameLayout ptrFrameLayout, View view, View view2) {
            return XListView2.this.c(ptrFrameLayout, view, view2);
        }

        @Override // com.join.mgps.ptr.b
        public void b(PtrFrameLayout ptrFrameLayout) {
            t0.g("onRefreshBegin----------");
            XListView2.this.s();
            if (XListView2.this.f46608w != null) {
                XListView2.this.f46608w.onRefresh();
            }
        }
    }

    /* loaded from: classes3.dex */
    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            XListView2 xListView2 = XListView2.this;
            xListView2.f46600o = true;
            xListView2.f46598m.setState(2);
            i iVar = XListView2.this.f46590e;
            if (iVar != null) {
                iVar.onLoadMore();
            }
        }
    }

    /* loaded from: classes3.dex */
    public interface d {
        void a(int i2, int i4, boolean z3, boolean z4);
    }

    public XListView2(Context context) {
        super(context);
        this.f46586a = -1.0f;
        this.f46587b = -1.0f;
        this.f46596k = true;
        this.f46597l = new AtomicBoolean(false);
        this.f46601p = false;
        this.f46604s = 0;
        this.f46605t = false;
        this.f46607v = new b();
        g(context);
        setFriction(ViewConfiguration.getScrollFriction() * D);
        setFastScrollEnabled(false);
    }

    public boolean c(PtrFrameLayout ptrFrameLayout, View view, View view2) {
        return com.join.mgps.ptr.a.d(ptrFrameLayout, this, view2);
    }

    @Override // android.view.View
    public void computeScroll() {
        if (this.f46588c.computeScrollOffset()) {
            if (this.f46603r != 0) {
                this.f46598m.setBottomMargin(this.f46588c.getCurrY());
            }
            postInvalidate();
            h();
        }
        super.computeScroll();
    }

    @Override // android.widget.AbsListView, android.view.View
    protected int computeVerticalScrollExtent() {
        return super.computeVerticalScrollExtent();
    }

    @Override // android.widget.AbsListView, android.view.View
    protected int computeVerticalScrollOffset() {
        return super.computeVerticalScrollOffset();
    }

    public void d() {
        this.f46599n = false;
        this.f46598m.a();
        this.f46598m.setOnClickListener(null);
    }

    public void e() {
        this.f46596k = false;
        this.f46593h.setVisibility(4);
    }

    public void f() {
        this.f46599n = false;
        this.f46598m.a();
    }

    protected void g(Context context) {
        this.f46588c = new Scroller(context, new DecelerateInterpolator());
        super.setOnScrollListener(this);
        XListViewHeader xListViewHeader = new XListViewHeader(context);
        this.f46592g = xListViewHeader;
        this.f46593h = (RelativeLayout) xListViewHeader.findViewById(R.id.xlistview_header_content);
        this.f46594i = (TextView) this.f46592g.findViewById(R.id.xlistview_header_time);
        this.f46598m = new XListViewFooter(context);
        d();
        e();
        addFooterView(this.f46598m);
    }

    protected void h() {
        AbsListView.OnScrollListener onScrollListener = this.f46589d;
        if (onScrollListener instanceof k) {
            ((k) onScrollListener).a(this);
        }
    }

    public boolean i() {
        return this.f46597l.get();
    }

    public synchronized void j() {
        if (com.join.android.app.common.utils.f.j(getContext()) && !this.f46597l.get() && this.f46599n && this.f46602q > 1 && !this.f46600o && getLastVisiblePosition() >= this.f46602q - this.f46604s) {
            u0.e("XListView", "do-preload");
            this.f46600o = true;
            this.f46598m.setState(2);
            i iVar = this.f46590e;
            if (iVar != null) {
                iVar.onLoadMore();
            }
        }
    }

    public void k() {
        this.f46599n = true;
        this.f46596k = true;
        this.f46598m.setState(0);
    }

    protected void l() {
        int bottomMargin = this.f46598m.getBottomMargin();
        if (bottomMargin > 0) {
            this.f46603r = 1;
            this.f46588c.startScroll(0, bottomMargin, 0, -bottomMargin, 400);
            invalidate();
        }
    }

    protected void m() {
        int visibleHeight = this.f46592g.getVisibleHeight();
        if (visibleHeight == 0) {
            return;
        }
        if (!this.f46597l.get() || visibleHeight > this.f46595j) {
            int i2 = (!this.f46597l.get() || visibleHeight <= (i2 = this.f46595j)) ? 0 : 0;
            StringBuilder sb = new StringBuilder();
            sb.append("resetHeaderHeight-->");
            int i4 = i2 - visibleHeight;
            sb.append(i4);
            this.f46603r = 0;
            this.f46588c.startScroll(0, visibleHeight, 0, i4, 400);
            invalidate();
        }
    }

    protected void n(int i2) {
        int visibleHeight = this.f46592g.getVisibleHeight();
        if (visibleHeight == 0) {
            return;
        }
        if (!this.f46597l.get() || visibleHeight > this.f46595j) {
            int i4 = (!this.f46597l.get() || visibleHeight <= (i4 = this.f46595j)) ? 0 : 0;
            this.f46603r = 0;
            StringBuilder sb = new StringBuilder();
            sb.append("resetHeaderHeight-->");
            int i5 = i4 - visibleHeight;
            sb.append(i5);
            this.f46588c.startScroll(0, visibleHeight, 0, i5 + 100, 400);
            invalidate();
        }
    }

    public void o() {
        if (getParent() != null && (getParent() instanceof PtrFrameLayout)) {
            ((PtrFrameLayout) getParent()).f();
        } else if (getParent() == null || getParent().getParent() == null || !(getParent().getParent() instanceof PtrFrameLayout)) {
        } else {
            ((PtrFrameLayout) getParent().getParent()).f();
        }
    }

    @Override // android.widget.AbsListView, android.view.View
    protected void onOverScrolled(int i2, int i4, boolean z3, boolean z4) {
        super.onOverScrolled(i2, i4, z3, z4);
        d dVar = this.f46609x;
        if (dVar != null) {
            dVar.a(i2, i4, z3, z4);
        }
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView absListView, int i2, int i4, int i5) {
        this.f46602q = i5;
        AbsListView.OnScrollListener onScrollListener = this.f46589d;
        if (onScrollListener != null) {
            onScrollListener.onScroll(absListView, i2, i4, i5);
        }
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView absListView, int i2) {
        int firstVisiblePosition = absListView.getFirstVisiblePosition();
        int childCount = absListView.getChildCount();
        if (i2 == 0 || firstVisiblePosition + childCount > this.f46602q) {
            u0.e("XListView", "onScrollStateChanged", "preload");
            j();
        }
        AbsListView.OnScrollListener onScrollListener = this.f46589d;
        if (onScrollListener != null) {
            onScrollListener.onScrollStateChanged(absListView, i2);
        }
    }

    @Override // android.widget.AbsListView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.f46586a == -1.0f) {
            this.f46586a = motionEvent.getRawY();
        }
        if (this.f46587b == -1.0f) {
            this.f46587b = motionEvent.getRawX();
        }
        int action = motionEvent.getAction();
        if (action == 0) {
            this.f46586a = motionEvent.getRawY();
            this.f46587b = motionEvent.getRawX();
        } else if (action != 2) {
            this.f46586a = -1.0f;
            if (getLastVisiblePosition() == this.f46602q - 1) {
                q();
                l();
            }
        } else {
            float rawY = motionEvent.getRawY() - this.f46586a;
            this.f46586a = motionEvent.getRawY();
            StringBuilder sb = new StringBuilder();
            sb.append("onTouchEvent  LastVisiblePosition ");
            sb.append(getLastVisiblePosition());
            sb.append(" mTotalItemCount ");
            sb.append(this.f46602q);
            sb.append(";mPullLoading=");
            sb.append(this.f46600o);
            sb.append(";mEnablePullLoad=");
            sb.append(this.f46599n);
            if (getLastVisiblePosition() == this.f46602q - 1 && ((this.f46598m.getBottomMargin() > 0 || rawY < 0.0f) && !this.f46600o)) {
                if (this.f46599n) {
                    v((-rawY) / D);
                }
            } else if (this.f46604s != 0) {
                j();
            }
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.view.View
    protected boolean overScrollBy(int i2, int i4, int i5, int i6, int i7, int i8, int i9, int i10, boolean z3) {
        return super.overScrollBy(i2, i4, i5, i6, i7, i8, i9, i10, z3);
    }

    public void p() {
        this.f46599n = true;
        this.f46598m.f();
    }

    protected void q() {
        if (!this.f46599n || this.f46598m.getBottomMargin() <= 50 || this.f46600o) {
            return;
        }
        this.f46600o = true;
        this.f46598m.setState(2);
        i iVar = this.f46590e;
        if (iVar != null) {
            iVar.onLoadMore();
        }
    }

    public void r() {
        if (!this.f46599n || this.f46598m.getBottomMargin() <= 50 || this.f46600o) {
            return;
        }
        this.f46600o = true;
        this.f46598m.setState(2);
        i iVar = this.f46590e;
        if (iVar != null) {
            iVar.onLoadMore();
        }
    }

    protected void s() {
        if (this.f46605t) {
            this.f46599n = true;
            this.f46598m.f();
            this.f46598m.setState(0);
        }
    }

    public void setNoMore() {
        u0.e("XListView", "setNoMore");
        t();
        this.f46598m.f();
        this.f46598m.setState(3);
        this.f46599n = false;
        this.f46598m.setOnClickListener(null);
    }

    public void setOnOverScrolled(d dVar) {
        this.f46609x = dVar;
    }

    @Override // android.widget.AbsListView
    public void setOnScrollListener(AbsListView.OnScrollListener onScrollListener) {
        this.f46589d = onScrollListener;
    }

    public void setPreLoadCount(int i2) {
        this.f46604s = i2;
    }

    public void setPullLoadEnable(i iVar) {
        this.f46599n = true;
        this.f46605t = true;
        this.f46590e = iVar;
        this.f46600o = false;
        this.f46598m.f();
        this.f46598m.setState(0);
        this.f46598m.setOnClickListener(new c());
    }

    public void setPullRefreshEnable(j jVar) {
        this.f46608w = jVar;
        if (getParent() != null && (getParent() instanceof PtrFrameLayout)) {
            ((PtrFrameLayout) getParent()).setPtrHandler(this.f46607v);
            ((PtrFrameLayout) getParent()).j(true);
        } else if (getParent() == null || getParent().getParent() == null || !(getParent().getParent() instanceof PtrFrameLayout)) {
        } else {
            ((PtrFrameLayout) getParent().getParent()).setPtrHandler(this.f46607v);
            ((PtrFrameLayout) getParent().getParent()).j(true);
        }
    }

    public void t() {
        u0.e("XListView", "stopLoadMore");
        if (this.f46600o && this.f46599n) {
            u0.e("XListView", "stopLoadMore-called");
            this.f46600o = false;
            XListViewFooter xListViewFooter = this.f46598m;
            if (xListViewFooter != null) {
                xListViewFooter.setState(0);
            }
        }
    }

    public void u() {
        if (getParent() != null && (getParent() instanceof PtrFrameLayout)) {
            ((PtrFrameLayout) getParent()).C();
        } else if (getParent() == null || getParent().getParent() == null || !(getParent().getParent() instanceof PtrFrameLayout)) {
        } else {
            ((PtrFrameLayout) getParent().getParent()).C();
        }
    }

    protected void v(float f4) {
        int bottomMargin = this.f46598m.getBottomMargin() + ((int) f4);
        if (this.f46599n && !this.f46600o) {
            if (bottomMargin > 50) {
                this.f46598m.setState(1);
            } else {
                this.f46598m.setState(0);
            }
        }
        this.f46598m.setBottomMargin(bottomMargin);
    }

    protected void w(float f4) {
        XListViewHeader xListViewHeader = this.f46592g;
        xListViewHeader.setVisibleHeight(((int) f4) + xListViewHeader.getVisibleHeight());
        if (this.f46596k && !this.f46597l.get()) {
            if (this.f46592g.getVisibleHeight() > this.f46595j) {
                this.f46592g.setState(1);
            } else {
                this.f46592g.setState(0);
            }
        }
        setSelection(0);
    }

    @Override // android.widget.AdapterView
    public void setAdapter(ListAdapter listAdapter) {
        super.setAdapter(listAdapter);
        a aVar = new a(listAdapter);
        this.f46606u = aVar;
        listAdapter.registerDataSetObserver(aVar);
    }

    public XListView2(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f46586a = -1.0f;
        this.f46587b = -1.0f;
        this.f46596k = true;
        this.f46597l = new AtomicBoolean(false);
        this.f46601p = false;
        this.f46604s = 0;
        this.f46605t = false;
        this.f46607v = new b();
        g(context);
    }

    public XListView2(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f46586a = -1.0f;
        this.f46587b = -1.0f;
        this.f46596k = true;
        this.f46597l = new AtomicBoolean(false);
        this.f46601p = false;
        this.f46604s = 0;
        this.f46605t = false;
        this.f46607v = new b();
        g(context);
    }
}
