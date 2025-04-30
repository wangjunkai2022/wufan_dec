package com.join.mgps.customview;

import android.content.Context;
import android.database.DataSetObserver;
import android.os.Build;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.animation.DecelerateInterpolator;
import android.widget.AbsListView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.Scroller;
import android.widget.TextView;
import androidx.core.view.NestedScrollingChild;
import androidx.core.view.NestedScrollingChildHelper;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.t0;
import com.join.mgps.Util.u0;
import com.join.mgps.ptr.PtrFrameLayout;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes3.dex */
public class XListView3 extends ListView implements AbsListView.OnScrollListener, NestedScrollingChild {
    protected static final int A = 0;
    protected static final int B = 1;
    protected static final int C = 400;
    protected static final int D = 50;
    protected static final float E = 2.0f;

    /* renamed from: z  reason: collision with root package name */
    public static final String f46614z = "XListView";

    /* renamed from: a  reason: collision with root package name */
    protected float f46615a;

    /* renamed from: b  reason: collision with root package name */
    protected float f46616b;

    /* renamed from: c  reason: collision with root package name */
    protected Scroller f46617c;

    /* renamed from: d  reason: collision with root package name */
    protected AbsListView.OnScrollListener f46618d;

    /* renamed from: e  reason: collision with root package name */
    protected i f46619e;

    /* renamed from: f  reason: collision with root package name */
    protected j f46620f;

    /* renamed from: g  reason: collision with root package name */
    protected XListViewHeader f46621g;

    /* renamed from: h  reason: collision with root package name */
    protected RelativeLayout f46622h;

    /* renamed from: i  reason: collision with root package name */
    protected TextView f46623i;

    /* renamed from: j  reason: collision with root package name */
    protected int f46624j;

    /* renamed from: k  reason: collision with root package name */
    protected boolean f46625k;

    /* renamed from: l  reason: collision with root package name */
    protected AtomicBoolean f46626l;

    /* renamed from: m  reason: collision with root package name */
    protected XListViewFooter f46627m;

    /* renamed from: n  reason: collision with root package name */
    protected boolean f46628n;

    /* renamed from: o  reason: collision with root package name */
    protected boolean f46629o;

    /* renamed from: p  reason: collision with root package name */
    protected boolean f46630p;

    /* renamed from: q  reason: collision with root package name */
    protected int f46631q;

    /* renamed from: r  reason: collision with root package name */
    protected int f46632r;

    /* renamed from: s  reason: collision with root package name */
    private int f46633s;

    /* renamed from: t  reason: collision with root package name */
    private boolean f46634t;

    /* renamed from: u  reason: collision with root package name */
    private NestedScrollingChildHelper f46635u;

    /* renamed from: v  reason: collision with root package name */
    DataSetObserver f46636v;

    /* renamed from: w  reason: collision with root package name */
    private com.join.mgps.ptr.a f46637w;

    /* renamed from: x  reason: collision with root package name */
    private j f46638x;

    /* renamed from: y  reason: collision with root package name */
    e f46639y;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a extends DataSetObserver {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ListAdapter f46640a;

        a(ListAdapter listAdapter) {
            this.f46640a = listAdapter;
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            super.onChanged();
            ListAdapter listAdapter = this.f46640a;
            if (listAdapter == null || listAdapter.getCount() <= 20) {
                XListView3.this.k();
            }
        }
    }

    /* loaded from: classes3.dex */
    class b extends com.join.mgps.ptr.a {
        b() {
        }

        @Override // com.join.mgps.ptr.a, com.join.mgps.ptr.b
        public boolean a(PtrFrameLayout ptrFrameLayout, View view, View view2) {
            StringBuilder sb = new StringBuilder();
            sb.append("checkCanDoRefresh: ");
            sb.append(view);
            return XListView3.this.c(ptrFrameLayout, view, view2);
        }

        @Override // com.join.mgps.ptr.b
        public void b(PtrFrameLayout ptrFrameLayout) {
            t0.g("onRefreshBegin----------");
            XListView3.this.t();
            if (XListView3.this.f46638x != null) {
                XListView3.this.f46638x.onRefresh();
            }
        }
    }

    /* loaded from: classes3.dex */
    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            XListView3 xListView3 = XListView3.this;
            xListView3.f46629o = true;
            xListView3.f46627m.setState(2);
            i iVar = XListView3.this.f46619e;
            if (iVar != null) {
                iVar.onLoadMore();
            }
        }
    }

    /* loaded from: classes3.dex */
    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (XListView3.this.f46638x != null) {
                XListView3.this.f46638x.onRefresh();
                XListView3.this.f46627m.setState(0);
                XListView3 xListView3 = XListView3.this;
                xListView3.f46628n = true;
                xListView3.f46627m.setOnClickListener(null);
            }
        }
    }

    /* loaded from: classes3.dex */
    public interface e {
        void a(int i2, int i4, boolean z3, boolean z4);
    }

    public XListView3(Context context) {
        super(context);
        this.f46615a = -1.0f;
        this.f46616b = -1.0f;
        this.f46625k = true;
        this.f46626l = new AtomicBoolean(false);
        this.f46630p = false;
        this.f46633s = 0;
        this.f46634t = false;
        this.f46637w = new b();
        h(context);
        setFriction(ViewConfiguration.getScrollFriction() * E);
        setFastScrollEnabled(false);
        g();
    }

    private void g() {
        this.f46635u = new NestedScrollingChildHelper(this);
        if (Build.VERSION.SDK_INT >= 21) {
            setNestedScrollingEnabled(true);
        }
    }

    public boolean c(PtrFrameLayout ptrFrameLayout, View view, View view2) {
        return com.join.mgps.ptr.a.d(ptrFrameLayout, this, view2);
    }

    @Override // android.view.View
    public void computeScroll() {
        if (this.f46617c.computeScrollOffset()) {
            if (this.f46632r != 0) {
                this.f46627m.setBottomMargin(this.f46617c.getCurrY());
            }
            postInvalidate();
            i();
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
        this.f46628n = false;
        this.f46627m.a();
        this.f46627m.setOnClickListener(null);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean dispatchNestedFling(float f4, float f5, boolean z3) {
        return this.f46635u.dispatchNestedFling(f4, f5, z3);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean dispatchNestedPreFling(float f4, float f5) {
        return this.f46635u.dispatchNestedPreFling(f4, f5);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean dispatchNestedPreScroll(int i2, int i4, int[] iArr, int[] iArr2) {
        return this.f46635u.dispatchNestedPreScroll(i2, i4, iArr, iArr2);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean dispatchNestedScroll(int i2, int i4, int i5, int i6, int[] iArr) {
        return this.f46635u.dispatchNestedScroll(i2, i4, i5, i6, iArr);
    }

    public void e() {
        this.f46625k = false;
        this.f46622h.setVisibility(4);
    }

    public void f() {
        this.f46628n = false;
        this.f46627m.a();
    }

    public int getLastCompletelyVisiblePosition() {
        View childAt;
        int lastVisiblePosition = getLastVisiblePosition();
        return (getChildCount() > 0 && (childAt = getChildAt(getChildCount() + (-1))) != null && childAt.getBottom() > getHeight()) ? Math.max(0, lastVisiblePosition - 1) : lastVisiblePosition;
    }

    protected void h(Context context) {
        this.f46617c = new Scroller(context, new DecelerateInterpolator());
        super.setOnScrollListener(this);
        XListViewHeader xListViewHeader = new XListViewHeader(context);
        this.f46621g = xListViewHeader;
        this.f46622h = (RelativeLayout) xListViewHeader.findViewById(R.id.xlistview_header_content);
        this.f46623i = (TextView) this.f46621g.findViewById(R.id.xlistview_header_time);
        this.f46627m = new XListViewFooter(context);
        d();
        e();
        addFooterView(this.f46627m);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean hasNestedScrollingParent() {
        return this.f46635u.hasNestedScrollingParent();
    }

    protected void i() {
        AbsListView.OnScrollListener onScrollListener = this.f46618d;
        if (onScrollListener instanceof k) {
            ((k) onScrollListener).a(this);
        }
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean isNestedScrollingEnabled() {
        return this.f46635u.isNestedScrollingEnabled();
    }

    public boolean j() {
        return this.f46626l.get();
    }

    public synchronized void k() {
        if (com.join.android.app.common.utils.f.j(getContext()) && !this.f46626l.get() && this.f46628n && this.f46631q > 1 && !this.f46629o && getLastVisiblePosition() >= this.f46631q - this.f46633s) {
            u0.e("XListView", "do-preload");
            this.f46629o = true;
            this.f46627m.setState(2);
            i iVar = this.f46619e;
            if (iVar != null) {
                iVar.onLoadMore();
            }
        }
    }

    public void l() {
        this.f46628n = true;
        this.f46625k = true;
        this.f46627m.setState(0);
    }

    protected void m() {
        int bottomMargin = this.f46627m.getBottomMargin();
        if (bottomMargin > 0) {
            this.f46632r = 1;
            this.f46617c.startScroll(0, bottomMargin, 0, -bottomMargin, 400);
            invalidate();
        }
    }

    protected void n() {
        int visibleHeight = this.f46621g.getVisibleHeight();
        if (visibleHeight == 0) {
            return;
        }
        if (!this.f46626l.get() || visibleHeight > this.f46624j) {
            int i2 = (!this.f46626l.get() || visibleHeight <= (i2 = this.f46624j)) ? 0 : 0;
            StringBuilder sb = new StringBuilder();
            sb.append("resetHeaderHeight-->");
            int i4 = i2 - visibleHeight;
            sb.append(i4);
            this.f46632r = 0;
            this.f46617c.startScroll(0, visibleHeight, 0, i4, 400);
            invalidate();
        }
    }

    protected void o(int i2) {
        int visibleHeight = this.f46621g.getVisibleHeight();
        if (visibleHeight == 0) {
            return;
        }
        if (!this.f46626l.get() || visibleHeight > this.f46624j) {
            int i4 = (!this.f46626l.get() || visibleHeight <= (i4 = this.f46624j)) ? 0 : 0;
            this.f46632r = 0;
            StringBuilder sb = new StringBuilder();
            sb.append("resetHeaderHeight-->");
            int i5 = i4 - visibleHeight;
            sb.append(i5);
            this.f46617c.startScroll(0, visibleHeight, 0, i5 + 100, 400);
            invalidate();
        }
    }

    @Override // android.widget.AbsListView, android.view.View
    protected void onOverScrolled(int i2, int i4, boolean z3, boolean z4) {
        super.onOverScrolled(i2, i4, z3, z4);
        e eVar = this.f46639y;
        if (eVar != null) {
            eVar.a(i2, i4, z3, z4);
        }
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView absListView, int i2, int i4, int i5) {
        this.f46631q = i5;
        AbsListView.OnScrollListener onScrollListener = this.f46618d;
        if (onScrollListener != null) {
            onScrollListener.onScroll(absListView, i2, i4, i5);
        }
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView absListView, int i2) {
        int firstVisiblePosition = absListView.getFirstVisiblePosition();
        int childCount = absListView.getChildCount();
        if (i2 == 0 || firstVisiblePosition + childCount > this.f46631q) {
            u0.e("XListView", "onScrollStateChanged", "preload");
            k();
        }
        AbsListView.OnScrollListener onScrollListener = this.f46618d;
        if (onScrollListener != null) {
            onScrollListener.onScrollStateChanged(absListView, i2);
        }
    }

    @Override // android.widget.AbsListView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.f46615a == -1.0f) {
            this.f46615a = motionEvent.getRawY();
        }
        if (this.f46616b == -1.0f) {
            this.f46616b = motionEvent.getRawX();
        }
        int action = motionEvent.getAction();
        if (action == 0) {
            this.f46615a = motionEvent.getRawY();
            this.f46616b = motionEvent.getRawX();
        } else if (action != 2) {
            this.f46615a = -1.0f;
            if (getLastVisiblePosition() == this.f46631q - 1) {
                r();
                m();
            }
        } else {
            float rawY = motionEvent.getRawY() - this.f46615a;
            this.f46615a = motionEvent.getRawY();
            StringBuilder sb = new StringBuilder();
            sb.append("onTouchEvent  LastVisiblePosition ");
            sb.append(getLastVisiblePosition());
            sb.append(" mTotalItemCount ");
            sb.append(this.f46631q);
            sb.append(";mPullLoading=");
            sb.append(this.f46629o);
            sb.append(";mEnablePullLoad=");
            sb.append(this.f46628n);
            if (getLastVisiblePosition() == this.f46631q - 1 && ((this.f46627m.getBottomMargin() > 0 || rawY < 0.0f) && !this.f46629o)) {
                if (this.f46628n) {
                    w((-rawY) / E);
                }
            } else if (this.f46633s != 0) {
                k();
            }
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.view.View
    protected boolean overScrollBy(int i2, int i4, int i5, int i6, int i7, int i8, int i9, int i10, boolean z3) {
        return super.overScrollBy(i2, i4, i5, i6, i7, i8, i9, i10, z3);
    }

    public void p() {
        if (getParent() != null && (getParent() instanceof PtrFrameLayout)) {
            ((PtrFrameLayout) getParent()).f();
        } else if (getParent() != null && getParent().getParent() != null && (getParent().getParent() instanceof PtrFrameLayout)) {
            ((PtrFrameLayout) getParent().getParent()).f();
        } else if (getParent() == null || getParent().getParent() == null || getParent().getParent().getParent() == null || !(getParent().getParent().getParent() instanceof PtrFrameLayout)) {
        } else {
            ((PtrFrameLayout) getParent().getParent().getParent()).f();
        }
    }

    public void q() {
        this.f46628n = true;
        this.f46627m.f();
    }

    protected void r() {
        if (!this.f46628n || this.f46627m.getBottomMargin() <= 50 || this.f46629o) {
            return;
        }
        this.f46629o = true;
        this.f46627m.setState(2);
        i iVar = this.f46619e;
        if (iVar != null) {
            iVar.onLoadMore();
        }
    }

    public void s() {
        if (!this.f46628n || this.f46627m.getBottomMargin() <= 50 || this.f46629o) {
            return;
        }
        this.f46629o = true;
        this.f46627m.setState(2);
        i iVar = this.f46619e;
        if (iVar != null) {
            iVar.onLoadMore();
        }
    }

    public void setCanLoadMore() {
        this.f46627m.setState(0);
        this.f46628n = true;
        this.f46627m.setOnClickListener(null);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public void setNestedScrollingEnabled(boolean z3) {
        this.f46635u.setNestedScrollingEnabled(z3);
    }

    public void setNoMore() {
        View findViewById;
        u0.e("XListView", "setNoMore");
        u();
        this.f46627m.f();
        this.f46627m.setState(7);
        this.f46628n = false;
        this.f46627m.setOnClickListener(null);
        try {
            View childAt = this.f46627m.getChildAt(0);
            if (!(childAt instanceof LinearLayout) || (findViewById = childAt.findViewById(R.id.xlistview_footer_refresh_textview)) == null) {
                return;
            }
            findViewById.setOnClickListener(new d());
        } catch (Exception unused) {
        }
    }

    public void setOnOverScrolled(e eVar) {
        this.f46639y = eVar;
    }

    @Override // android.widget.AbsListView
    public void setOnScrollListener(AbsListView.OnScrollListener onScrollListener) {
        this.f46618d = onScrollListener;
    }

    public void setPreLoadCount(int i2) {
        this.f46633s = i2;
    }

    public void setPullLoadEnable(i iVar) {
        this.f46628n = true;
        this.f46634t = true;
        this.f46619e = iVar;
        this.f46629o = false;
        this.f46627m.f();
        this.f46627m.setState(0);
        this.f46627m.setOnClickListener(new c());
    }

    public void setPullRefreshEnable(j jVar) {
        this.f46638x = jVar;
        if (getParent() != null && (getParent() instanceof PtrFrameLayout)) {
            ((PtrFrameLayout) getParent()).setPtrHandler(this.f46637w);
            ((PtrFrameLayout) getParent()).j(true);
        } else if (getParent() != null && getParent().getParent() != null && (getParent().getParent() instanceof PtrFrameLayout)) {
            ((PtrFrameLayout) getParent().getParent()).setPtrHandler(this.f46637w);
            ((PtrFrameLayout) getParent().getParent()).j(true);
        } else if (getParent() == null || getParent().getParent() == null || getParent().getParent().getParent() == null || !(getParent().getParent().getParent() instanceof PtrFrameLayout)) {
        } else {
            ((PtrFrameLayout) getParent().getParent().getParent()).setPtrHandler(this.f46637w);
            ((PtrFrameLayout) getParent().getParent().getParent()).j(true);
        }
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean startNestedScroll(int i2) {
        return this.f46635u.startNestedScroll(i2);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public void stopNestedScroll() {
        this.f46635u.stopNestedScroll();
    }

    protected void t() {
        if (this.f46634t) {
            this.f46628n = true;
            this.f46627m.f();
            this.f46627m.setState(0);
        }
    }

    public void u() {
        u0.e("XListView", "stopLoadMore");
        if (this.f46629o && this.f46628n) {
            u0.e("XListView", "stopLoadMore-called");
            this.f46629o = false;
            XListViewFooter xListViewFooter = this.f46627m;
            if (xListViewFooter != null) {
                xListViewFooter.setState(0);
            }
        }
    }

    public void v() {
        if (getParent() != null && (getParent() instanceof PtrFrameLayout)) {
            ((PtrFrameLayout) getParent()).C();
        } else if (getParent() != null && getParent().getParent() != null && (getParent().getParent() instanceof PtrFrameLayout)) {
            ((PtrFrameLayout) getParent().getParent()).C();
        } else if (getParent() == null || getParent().getParent() == null || getParent().getParent().getParent() == null || !(getParent().getParent().getParent() instanceof PtrFrameLayout)) {
        } else {
            ((PtrFrameLayout) getParent().getParent().getParent()).C();
        }
    }

    protected void w(float f4) {
        int bottomMargin = this.f46627m.getBottomMargin() + ((int) f4);
        if (this.f46628n && !this.f46629o) {
            if (bottomMargin > 50) {
                this.f46627m.setState(1);
            } else {
                this.f46627m.setState(0);
            }
        }
        this.f46627m.setBottomMargin(bottomMargin);
    }

    protected void x(float f4) {
        XListViewHeader xListViewHeader = this.f46621g;
        xListViewHeader.setVisibleHeight(((int) f4) + xListViewHeader.getVisibleHeight());
        if (this.f46625k && !this.f46626l.get()) {
            if (this.f46621g.getVisibleHeight() > this.f46624j) {
                this.f46621g.setState(1);
            } else {
                this.f46621g.setState(0);
            }
        }
        setSelection(0);
    }

    @Override // android.widget.AdapterView
    public void setAdapter(ListAdapter listAdapter) {
        super.setAdapter(listAdapter);
        a aVar = new a(listAdapter);
        this.f46636v = aVar;
        listAdapter.registerDataSetObserver(aVar);
    }

    public XListView3(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f46615a = -1.0f;
        this.f46616b = -1.0f;
        this.f46625k = true;
        this.f46626l = new AtomicBoolean(false);
        this.f46630p = false;
        this.f46633s = 0;
        this.f46634t = false;
        this.f46637w = new b();
        h(context);
        g();
    }

    public XListView3(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f46615a = -1.0f;
        this.f46616b = -1.0f;
        this.f46625k = true;
        this.f46626l = new AtomicBoolean(false);
        this.f46630p = false;
        this.f46633s = 0;
        this.f46634t = false;
        this.f46637w = new b();
        h(context);
        g();
    }
}
