package com.join.mgps.customview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewTreeObserver;
import android.view.animation.DecelerateInterpolator;
import android.widget.AbsListView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.Scroller;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes3.dex */
public class XListView extends ListView implements AbsListView.OnScrollListener {

    /* renamed from: u  reason: collision with root package name */
    public static final String f46556u = "XListView";

    /* renamed from: v  reason: collision with root package name */
    protected static final int f46557v = 0;

    /* renamed from: w  reason: collision with root package name */
    protected static final int f46558w = 1;

    /* renamed from: x  reason: collision with root package name */
    protected static final int f46559x = 400;

    /* renamed from: y  reason: collision with root package name */
    protected static final int f46560y = 50;

    /* renamed from: z  reason: collision with root package name */
    protected static final float f46561z = 2.0f;

    /* renamed from: a  reason: collision with root package name */
    protected float f46562a;

    /* renamed from: b  reason: collision with root package name */
    protected float f46563b;

    /* renamed from: c  reason: collision with root package name */
    protected Scroller f46564c;

    /* renamed from: d  reason: collision with root package name */
    protected AbsListView.OnScrollListener f46565d;

    /* renamed from: e  reason: collision with root package name */
    protected i f46566e;

    /* renamed from: f  reason: collision with root package name */
    protected j f46567f;

    /* renamed from: g  reason: collision with root package name */
    protected XListViewHeader f46568g;

    /* renamed from: h  reason: collision with root package name */
    protected RelativeLayout f46569h;

    /* renamed from: i  reason: collision with root package name */
    protected TextView f46570i;

    /* renamed from: j  reason: collision with root package name */
    protected int f46571j;

    /* renamed from: k  reason: collision with root package name */
    protected boolean f46572k;

    /* renamed from: l  reason: collision with root package name */
    protected AtomicBoolean f46573l;

    /* renamed from: m  reason: collision with root package name */
    protected XListViewFooter f46574m;

    /* renamed from: n  reason: collision with root package name */
    protected boolean f46575n;

    /* renamed from: o  reason: collision with root package name */
    protected boolean f46576o;

    /* renamed from: p  reason: collision with root package name */
    protected boolean f46577p;

    /* renamed from: q  reason: collision with root package name */
    protected int f46578q;

    /* renamed from: r  reason: collision with root package name */
    protected int f46579r;

    /* renamed from: s  reason: collision with root package name */
    private int f46580s;

    /* renamed from: t  reason: collision with root package name */
    private boolean f46581t;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements ViewTreeObserver.OnGlobalLayoutListener {
        a() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            XListView xListView = XListView.this;
            xListView.f46571j = xListView.f46569h.getHeight();
            XListView.this.getViewTreeObserver().removeGlobalOnLayoutListener(this);
        }
    }

    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            XListView xListView = XListView.this;
            xListView.f46576o = true;
            xListView.f46574m.setState(2);
            i iVar = XListView.this.f46566e;
            if (iVar != null) {
                iVar.onLoadMore();
            }
        }
    }

    public XListView(Context context) {
        super(context);
        this.f46562a = -1.0f;
        this.f46563b = -1.0f;
        this.f46572k = true;
        this.f46573l = new AtomicBoolean(false);
        this.f46577p = false;
        this.f46580s = 0;
        this.f46581t = false;
        e(context);
        setFriction(ViewConfiguration.getScrollFriction() * f46561z);
        setFastScrollEnabled(false);
    }

    private void h() {
        if (!com.join.android.app.common.utils.f.j(getContext()) || this.f46573l.get() || !this.f46575n || this.f46576o || getLastVisiblePosition() < this.f46578q - this.f46580s) {
            return;
        }
        this.f46576o = true;
        this.f46574m.setState(2);
        i iVar = this.f46566e;
        if (iVar != null) {
            iVar.onLoadMore();
        }
    }

    public void b() {
        this.f46575n = false;
        this.f46574m.a();
        this.f46574m.setOnClickListener(null);
    }

    public void c() {
        this.f46572k = false;
        this.f46569h.setVisibility(4);
    }

    @Override // android.view.View
    public void computeScroll() {
        if (this.f46564c.computeScrollOffset()) {
            if (this.f46579r == 0) {
                this.f46568g.setVisibleHeight(this.f46564c.getCurrY());
            } else {
                this.f46574m.setBottomMargin(this.f46564c.getCurrY());
            }
            postInvalidate();
            f();
        }
        super.computeScroll();
    }

    public void d() {
        this.f46575n = false;
        this.f46574m.a();
    }

    protected void e(Context context) {
        this.f46564c = new Scroller(context, new DecelerateInterpolator());
        super.setOnScrollListener(this);
        XListViewHeader xListViewHeader = new XListViewHeader(context);
        this.f46568g = xListViewHeader;
        this.f46569h = (RelativeLayout) xListViewHeader.findViewById(R.id.xlistview_header_content);
        this.f46570i = (TextView) this.f46568g.findViewById(R.id.xlistview_header_time);
        addHeaderView(this.f46568g);
        this.f46574m = new XListViewFooter(context);
        this.f46568g.getViewTreeObserver().addOnGlobalLayoutListener(new a());
        b();
        c();
    }

    protected void f() {
        AbsListView.OnScrollListener onScrollListener = this.f46565d;
        if (onScrollListener instanceof k) {
            ((k) onScrollListener).a(this);
        }
    }

    public boolean g() {
        return this.f46573l.get();
    }

    public void i() {
        this.f46575n = true;
        this.f46572k = true;
        this.f46574m.setState(0);
    }

    protected void j() {
        int bottomMargin = this.f46574m.getBottomMargin();
        if (bottomMargin > 0) {
            this.f46579r = 1;
            this.f46564c.startScroll(0, bottomMargin, 0, -bottomMargin, 400);
            invalidate();
        }
    }

    protected void k() {
        int visibleHeight = this.f46568g.getVisibleHeight();
        if (visibleHeight == 0) {
            return;
        }
        if (!this.f46573l.get() || visibleHeight > this.f46571j) {
            int i2 = (!this.f46573l.get() || visibleHeight <= (i2 = this.f46571j)) ? 0 : 0;
            StringBuilder sb = new StringBuilder();
            sb.append("resetHeaderHeight-->");
            int i4 = i2 - visibleHeight;
            sb.append(i4);
            this.f46579r = 0;
            this.f46564c.startScroll(0, visibleHeight, 0, i4, 400);
            invalidate();
        }
    }

    protected void l(int i2) {
        int visibleHeight = this.f46568g.getVisibleHeight();
        if (visibleHeight == 0) {
            return;
        }
        if (!this.f46573l.get() || visibleHeight > this.f46571j) {
            int i4 = (!this.f46573l.get() || visibleHeight <= (i4 = this.f46571j)) ? 0 : 0;
            this.f46579r = 0;
            StringBuilder sb = new StringBuilder();
            sb.append("resetHeaderHeight-->");
            int i5 = i4 - visibleHeight;
            sb.append(i5);
            this.f46564c.startScroll(0, visibleHeight, 0, i5 + 100, 400);
            invalidate();
        }
    }

    public void m() {
        this.f46573l.set(true);
        this.f46568g.setState(2);
        t(this.f46571j);
        k();
    }

    public void n() {
        this.f46575n = true;
        this.f46574m.setState(1);
        this.f46574m.f();
    }

    protected void o() {
        if (!this.f46575n || this.f46574m.getBottomMargin() <= 50 || this.f46576o) {
            return;
        }
        this.f46576o = true;
        this.f46574m.setState(2);
        i iVar = this.f46566e;
        if (iVar != null) {
            iVar.onLoadMore();
        }
    }

    @Override // android.widget.AbsListView, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z3, int i2, int i4, int i5, int i6) {
        try {
            super.onLayout(z3, i2, i4, i5, i6);
            if (this.f46577p || getAdapter() == null || getLastVisiblePosition() == getAdapter().getCount() - 1) {
                return;
            }
            this.f46577p = true;
            addFooterView(this.f46574m);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView absListView, int i2, int i4, int i5) {
        this.f46578q = i5;
        AbsListView.OnScrollListener onScrollListener = this.f46565d;
        if (onScrollListener != null) {
            onScrollListener.onScroll(absListView, i2, i4, i5);
        }
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView absListView, int i2) {
        int firstVisiblePosition = absListView.getFirstVisiblePosition();
        int childCount = absListView.getChildCount();
        if (i2 == 0 || firstVisiblePosition + childCount > this.f46578q) {
            h();
        }
        AbsListView.OnScrollListener onScrollListener = this.f46565d;
        if (onScrollListener != null) {
            onScrollListener.onScrollStateChanged(absListView, i2);
        }
    }

    @Override // android.widget.AbsListView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.f46562a == -1.0f) {
            this.f46562a = motionEvent.getRawY();
        }
        if (this.f46563b == -1.0f) {
            this.f46563b = motionEvent.getRawX();
        }
        int action = motionEvent.getAction();
        if (action == 0) {
            this.f46562a = motionEvent.getRawY();
            this.f46563b = motionEvent.getRawX();
        } else if (action != 2) {
            this.f46562a = -1.0f;
            if (getFirstVisiblePosition() == 0) {
                if (!this.f46573l.get() && this.f46572k) {
                    p();
                    k();
                }
            } else if (getLastVisiblePosition() == this.f46578q - 1) {
                o();
                j();
            }
        } else {
            float rawY = motionEvent.getRawY() - this.f46562a;
            this.f46562a = motionEvent.getRawY();
            StringBuilder sb = new StringBuilder();
            sb.append("onTouchEvent  LastVisiblePosition ");
            sb.append(getLastVisiblePosition());
            sb.append(" mTotalItemCount ");
            sb.append(this.f46578q);
            sb.append(";mPullLoading=");
            sb.append(this.f46576o);
            sb.append(";mEnablePullLoad=");
            sb.append(this.f46575n);
            if (getFirstVisiblePosition() == 0 && ((this.f46568g.getVisibleHeight() > 0 || rawY > 0.0f) && !this.f46573l.get())) {
                if (this.f46572k && !this.f46573l.get()) {
                    t(rawY / f46561z);
                    f();
                }
            } else if (getLastVisiblePosition() == this.f46578q - 1 && ((this.f46574m.getBottomMargin() > 0 || rawY < 0.0f) && !this.f46576o)) {
                if (this.f46575n) {
                    s((-rawY) / f46561z);
                }
            } else if (this.f46580s != 0) {
                h();
            }
        }
        return super.onTouchEvent(motionEvent);
    }

    protected void p() {
        if (!this.f46572k || this.f46568g.getVisibleHeight() <= this.f46571j || this.f46573l.get()) {
            return;
        }
        this.f46573l.set(true);
        this.f46568g.setState(2);
        j jVar = this.f46567f;
        if (jVar != null) {
            jVar.onRefresh();
        }
        if (this.f46581t) {
            this.f46575n = true;
            this.f46574m.f();
            this.f46574m.setState(0);
        }
    }

    public void q() {
        if (this.f46576o && this.f46575n) {
            this.f46576o = false;
            this.f46574m.setState(0);
        }
    }

    public void r() {
        if (this.f46573l.get()) {
            this.f46573l.set(false);
            k();
        }
    }

    protected void s(float f4) {
        int bottomMargin = this.f46574m.getBottomMargin() + ((int) f4);
        if (this.f46575n && !this.f46576o) {
            if (bottomMargin > 50) {
                this.f46574m.setState(1);
            } else {
                this.f46574m.setState(0);
            }
        }
        this.f46574m.setBottomMargin(bottomMargin);
    }

    public void setNoMore() {
        q();
        this.f46574m.f();
        this.f46574m.setState(3);
        this.f46575n = false;
        this.f46574m.setOnClickListener(null);
    }

    @Override // android.widget.AbsListView
    public void setOnScrollListener(AbsListView.OnScrollListener onScrollListener) {
        this.f46565d = onScrollListener;
    }

    public void setPreLoadCount(int i2) {
        this.f46580s = i2;
    }

    public void setPullLoadEnable(i iVar) {
        this.f46575n = true;
        this.f46581t = true;
        this.f46566e = iVar;
        this.f46576o = false;
        this.f46574m.f();
        this.f46574m.setState(0);
        this.f46574m.setOnClickListener(new b());
    }

    public void setPullRefreshEnable(j jVar) {
        this.f46572k = true;
        this.f46569h.setVisibility(0);
        this.f46567f = jVar;
    }

    protected void t(float f4) {
        XListViewHeader xListViewHeader = this.f46568g;
        xListViewHeader.setVisibleHeight(((int) f4) + xListViewHeader.getVisibleHeight());
        if (this.f46572k && !this.f46573l.get()) {
            if (this.f46568g.getVisibleHeight() > this.f46571j) {
                this.f46568g.setState(1);
            } else {
                this.f46568g.setState(0);
            }
        }
        setSelection(0);
    }

    @Override // android.widget.AdapterView
    public void setAdapter(ListAdapter listAdapter) {
        super.setAdapter(listAdapter);
    }

    public XListView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f46562a = -1.0f;
        this.f46563b = -1.0f;
        this.f46572k = true;
        this.f46573l = new AtomicBoolean(false);
        this.f46577p = false;
        this.f46580s = 0;
        this.f46581t = false;
        e(context);
    }

    public XListView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f46562a = -1.0f;
        this.f46563b = -1.0f;
        this.f46572k = true;
        this.f46573l = new AtomicBoolean(false);
        this.f46577p = false;
        this.f46580s = 0;
        this.f46581t = false;
        e(context);
    }
}
