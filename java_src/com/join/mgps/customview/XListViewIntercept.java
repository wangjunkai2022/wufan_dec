package com.join.mgps.customview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.animation.DecelerateInterpolator;
import android.widget.AbsListView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.Scroller;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
/* loaded from: classes3.dex */
public class XListViewIntercept extends ListView implements AbsListView.OnScrollListener {

    /* renamed from: u  reason: collision with root package name */
    private static final int f46700u = 0;

    /* renamed from: v  reason: collision with root package name */
    private static final int f46701v = 1;

    /* renamed from: w  reason: collision with root package name */
    private static final int f46702w = 400;

    /* renamed from: x  reason: collision with root package name */
    private static final int f46703x = 50;

    /* renamed from: y  reason: collision with root package name */
    private static final float f46704y = 1.8f;

    /* renamed from: a  reason: collision with root package name */
    private float f46705a;

    /* renamed from: b  reason: collision with root package name */
    private Scroller f46706b;

    /* renamed from: c  reason: collision with root package name */
    private AbsListView.OnScrollListener f46707c;

    /* renamed from: d  reason: collision with root package name */
    private c f46708d;

    /* renamed from: e  reason: collision with root package name */
    private XListViewHeader f46709e;

    /* renamed from: f  reason: collision with root package name */
    private RelativeLayout f46710f;

    /* renamed from: g  reason: collision with root package name */
    private TextView f46711g;

    /* renamed from: h  reason: collision with root package name */
    private int f46712h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f46713i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f46714j;

    /* renamed from: k  reason: collision with root package name */
    private XListViewFooter f46715k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f46716l;

    /* renamed from: m  reason: collision with root package name */
    private boolean f46717m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f46718n;

    /* renamed from: o  reason: collision with root package name */
    private int f46719o;

    /* renamed from: p  reason: collision with root package name */
    private int f46720p;

    /* renamed from: q  reason: collision with root package name */
    private boolean f46721q;

    /* renamed from: r  reason: collision with root package name */
    private float f46722r;

    /* renamed from: s  reason: collision with root package name */
    private float f46723s;

    /* renamed from: t  reason: collision with root package name */
    private int f46724t;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements ViewTreeObserver.OnGlobalLayoutListener {
        a() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            XListViewIntercept xListViewIntercept = XListViewIntercept.this;
            xListViewIntercept.f46712h = xListViewIntercept.f46710f.getHeight();
            XListViewIntercept.this.getViewTreeObserver().removeGlobalOnLayoutListener(this);
        }
    }

    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            XListViewIntercept.this.i();
        }
    }

    /* loaded from: classes3.dex */
    public interface c {
        void onLoadMore();

        void onRefresh();
    }

    /* loaded from: classes3.dex */
    public interface d extends AbsListView.OnScrollListener {
        void a(View view);
    }

    public XListViewIntercept(Context context) {
        super(context);
        this.f46705a = -1.0f;
        this.f46713i = true;
        this.f46714j = false;
        this.f46718n = false;
        this.f46721q = false;
        e(context);
    }

    private void e(Context context) {
        this.f46706b = new Scroller(context, new DecelerateInterpolator());
        super.setOnScrollListener(this);
        setVerticalScrollBarEnabled(false);
        XListViewHeader xListViewHeader = new XListViewHeader(context);
        this.f46709e = xListViewHeader;
        this.f46710f = (RelativeLayout) xListViewHeader.findViewById(R.id.xlistview_header_content);
        this.f46711g = (TextView) this.f46709e.findViewById(R.id.xlistview_header_time);
        addHeaderView(this.f46709e);
        this.f46715k = new XListViewFooter(context);
        this.f46709e.getViewTreeObserver().addOnGlobalLayoutListener(new a());
    }

    private void f() {
        AbsListView.OnScrollListener onScrollListener = this.f46707c;
        if (onScrollListener instanceof d) {
            ((d) onScrollListener).a(this);
        }
    }

    private void g() {
        int bottomMargin = this.f46715k.getBottomMargin();
        if (bottomMargin > 0) {
            this.f46720p = 1;
            this.f46706b.startScroll(0, bottomMargin, 0, -bottomMargin, 400);
            invalidate();
        }
    }

    private void h() {
        int visibleHeight = this.f46709e.getVisibleHeight();
        if (visibleHeight == 0) {
            return;
        }
        boolean z3 = this.f46714j;
        if (!z3 || visibleHeight > this.f46712h) {
            int i2 = (!z3 || visibleHeight <= (i2 = this.f46712h)) ? 0 : 0;
            this.f46720p = 0;
            this.f46706b.startScroll(0, visibleHeight, 0, i2 - visibleHeight, 400);
            invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i() {
        this.f46717m = true;
        this.f46715k.setState(2);
        c cVar = this.f46708d;
        if (cVar != null) {
            cVar.onLoadMore();
        }
    }

    private void l(float f4) {
        int bottomMargin = this.f46715k.getBottomMargin() + ((int) f4);
        if (this.f46716l && !this.f46717m) {
            if (bottomMargin > 50) {
                this.f46715k.setState(1);
            } else {
                this.f46715k.setState(0);
            }
        }
        this.f46715k.setBottomMargin(bottomMargin);
    }

    private void m(float f4) {
        XListViewHeader xListViewHeader = this.f46709e;
        xListViewHeader.setVisibleHeight(((int) f4) + xListViewHeader.getVisibleHeight());
        if (this.f46713i && !this.f46714j) {
            if (this.f46709e.getVisibleHeight() > this.f46712h) {
                this.f46709e.setState(1);
            } else {
                this.f46709e.setState(0);
            }
        }
        setSelection(0);
    }

    @Override // android.view.View
    public void computeScroll() {
        if (this.f46706b.computeScrollOffset()) {
            if (this.f46720p == 0) {
                this.f46709e.setVisibleHeight(this.f46706b.getCurrY());
            } else {
                this.f46715k.setBottomMargin(this.f46706b.getCurrY());
            }
            postInvalidate();
            f();
        }
        super.computeScroll();
    }

    public void j() {
        if (this.f46717m) {
            this.f46717m = false;
            this.f46715k.setState(0);
        }
    }

    public void k() {
        if (this.f46714j) {
            this.f46714j = false;
            this.f46715k.setVisibility(0);
            h();
        }
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView absListView, int i2, int i4, int i5) {
        this.f46719o = i5;
        AbsListView.OnScrollListener onScrollListener = this.f46707c;
        if (onScrollListener != null) {
            onScrollListener.onScroll(absListView, i2, i4, i5);
        }
    }

    @Override // android.view.View
    protected void onScrollChanged(int i2, int i4, int i5, int i6) {
        View childAt;
        super.onScrollChanged(i2, i4, i5, i6);
        if (!this.f46721q || (childAt = getChildAt(0)) == null) {
            return;
        }
        if (childAt.getTop() == 0) {
            getParent().requestDisallowInterceptTouchEvent(false);
        }
        int i7 = this.f46724t;
        if (i7 < i4) {
            getParent().requestDisallowInterceptTouchEvent(true);
        } else if (i4 < i7 && getScrollY() == 0) {
            getParent().requestDisallowInterceptTouchEvent(false);
        }
        this.f46724t = i4;
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView absListView, int i2) {
        AbsListView.OnScrollListener onScrollListener = this.f46707c;
        if (onScrollListener != null) {
            onScrollListener.onScrollStateChanged(absListView, i2);
        }
    }

    @Override // android.widget.AbsListView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.f46705a == -1.0f) {
            this.f46705a = motionEvent.getRawY();
        }
        int action = motionEvent.getAction();
        if (action == 0) {
            if (this.f46721q) {
                getParent().requestDisallowInterceptTouchEvent(true);
                this.f46722r = motionEvent.getX();
                this.f46723s = motionEvent.getY();
            }
            this.f46705a = motionEvent.getRawY();
        } else if (action != 2) {
            if (this.f46721q) {
                getParent().requestDisallowInterceptTouchEvent(false);
            }
            this.f46705a = -1.0f;
            if (getFirstVisiblePosition() == 0) {
                if (this.f46713i && this.f46709e.getVisibleHeight() > this.f46712h) {
                    this.f46714j = true;
                    this.f46709e.setState(2);
                    c cVar = this.f46708d;
                    if (cVar != null) {
                        cVar.onRefresh();
                        this.f46715k.setVisibility(4);
                    }
                }
                h();
            } else if (getLastVisiblePosition() == this.f46719o - 1) {
                if (this.f46716l && this.f46715k.getBottomMargin() > 50) {
                    i();
                }
                g();
            }
        } else {
            if (this.f46721q) {
                if (Math.abs(motionEvent.getX() - this.f46722r) > Math.abs(motionEvent.getY() - this.f46723s)) {
                    getParent().requestDisallowInterceptTouchEvent(false);
                } else {
                    getParent().requestDisallowInterceptTouchEvent(true);
                }
                View childAt = getChildAt(0);
                if (childAt != null && childAt.getTop() == 0) {
                    getParent().requestDisallowInterceptTouchEvent(false);
                }
            }
            float rawY = motionEvent.getRawY() - this.f46705a;
            this.f46705a = motionEvent.getRawY();
            if (getFirstVisiblePosition() == 0 && (this.f46709e.getVisibleHeight() > 0 || rawY > 0.0f)) {
                if (this.f46713i) {
                    m(rawY / f46704y);
                    f();
                }
            } else if (getLastVisiblePosition() == this.f46719o - 1 && (this.f46715k.getBottomMargin() > 0 || rawY < 0.0f)) {
                l((-rawY) / f46704y);
            }
        }
        return super.onTouchEvent(motionEvent);
    }

    public void setFirstNoMore(Boolean bool) {
        if (bool.booleanValue()) {
            this.f46715k.a();
            this.f46715k.setOnClickListener(null);
            return;
        }
        this.f46717m = false;
        this.f46715k.f();
        this.f46715k.setState(5);
    }

    public void setInterceptToch(boolean z3) {
        this.f46721q = z3;
    }

    public void setNoMore() {
        if (!this.f46716l) {
            this.f46715k.a();
            this.f46715k.setOnClickListener(null);
            return;
        }
        this.f46717m = false;
        this.f46715k.f();
        this.f46715k.setState(3);
    }

    @Override // android.widget.AbsListView
    public void setOnScrollListener(AbsListView.OnScrollListener onScrollListener) {
        this.f46707c = onScrollListener;
    }

    public void setPullLoadEnable(boolean z3) {
        this.f46716l = z3;
        if (!z3) {
            this.f46715k.a();
            this.f46715k.setOnClickListener(null);
            return;
        }
        this.f46717m = false;
        this.f46715k.f();
        this.f46715k.setState(0);
        this.f46715k.setOnClickListener(new b());
    }

    public void setPullRefreshEnable(boolean z3) {
        this.f46713i = z3;
        if (!z3) {
            this.f46710f.setVisibility(4);
        } else {
            this.f46710f.setVisibility(0);
        }
    }

    public void setRefreshTime(String str) {
        this.f46711g.setText(str);
    }

    public void setXListViewListener(c cVar) {
        this.f46708d = cVar;
    }

    @Override // android.widget.AdapterView
    public void setAdapter(ListAdapter listAdapter) {
        if (!this.f46718n) {
            this.f46718n = true;
            this.f46715k.setState(4);
            addFooterView(this.f46715k);
        }
        super.setAdapter(listAdapter);
    }

    public XListViewIntercept(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f46705a = -1.0f;
        this.f46713i = true;
        this.f46714j = false;
        this.f46718n = false;
        this.f46721q = false;
        e(context);
    }

    public XListViewIntercept(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f46705a = -1.0f;
        this.f46713i = true;
        this.f46714j = false;
        this.f46718n = false;
        this.f46721q = false;
        e(context);
    }
}
