package com.join.mgps.customview;

import android.annotation.TargetApi;
import android.content.Context;
import android.os.Build;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.animation.DecelerateInterpolator;
import android.widget.AbsListView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import android.widget.Scroller;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
/* loaded from: classes3.dex */
public class XScrollView extends ScrollView implements AbsListView.OnScrollListener {
    private static final int A = 50;
    private static final float B = 1.8f;

    /* renamed from: w  reason: collision with root package name */
    private static final String f46727w = "XScrollView";

    /* renamed from: x  reason: collision with root package name */
    private static final int f46728x = 0;

    /* renamed from: y  reason: collision with root package name */
    private static final int f46729y = 1;

    /* renamed from: z  reason: collision with root package name */
    private static final int f46730z = 400;

    /* renamed from: a  reason: collision with root package name */
    private float f46731a;

    /* renamed from: b  reason: collision with root package name */
    private Scroller f46732b;

    /* renamed from: c  reason: collision with root package name */
    private AbsListView.OnScrollListener f46733c;

    /* renamed from: d  reason: collision with root package name */
    private int f46734d;

    /* renamed from: e  reason: collision with root package name */
    private e f46735e;

    /* renamed from: f  reason: collision with root package name */
    private LinearLayout f46736f;

    /* renamed from: g  reason: collision with root package name */
    private LinearLayout f46737g;

    /* renamed from: h  reason: collision with root package name */
    private XListViewHeader f46738h;

    /* renamed from: i  reason: collision with root package name */
    private RelativeLayout f46739i;

    /* renamed from: j  reason: collision with root package name */
    private TextView f46740j;

    /* renamed from: k  reason: collision with root package name */
    private int f46741k;

    /* renamed from: l  reason: collision with root package name */
    private XListViewFooter f46742l;

    /* renamed from: m  reason: collision with root package name */
    private boolean f46743m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f46744n;

    /* renamed from: o  reason: collision with root package name */
    private boolean f46745o;

    /* renamed from: p  reason: collision with root package name */
    private boolean f46746p;

    /* renamed from: q  reason: collision with root package name */
    private boolean f46747q;

    /* renamed from: r  reason: collision with root package name */
    private float f46748r;

    /* renamed from: s  reason: collision with root package name */
    private float f46749s;

    /* renamed from: t  reason: collision with root package name */
    private float f46750t;

    /* renamed from: u  reason: collision with root package name */
    private float f46751u;

    /* renamed from: v  reason: collision with root package name */
    private boolean f46752v;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements ViewTreeObserver.OnGlobalLayoutListener {
        a() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        @TargetApi(16)
        public void onGlobalLayout() {
            XScrollView xScrollView = XScrollView.this;
            xScrollView.f46741k = xScrollView.f46739i.getHeight();
            ViewTreeObserver viewTreeObserver = XScrollView.this.getViewTreeObserver();
            if (viewTreeObserver != null) {
                if (Build.VERSION.SDK_INT < 16) {
                    viewTreeObserver.removeGlobalOnLayoutListener(this);
                } else {
                    viewTreeObserver.removeOnGlobalLayoutListener(this);
                }
            }
        }
    }

    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            XScrollView.this.o();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            XScrollView.this.fullScroll(33);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            XScrollView.this.fullScroll(130);
        }
    }

    /* loaded from: classes3.dex */
    public interface e {
        void onLoadMore();

        void onRefresh();
    }

    /* loaded from: classes3.dex */
    public interface f extends AbsListView.OnScrollListener {
        void a(View view);
    }

    public XScrollView(Context context) {
        super(context);
        this.f46731a = -1.0f;
        this.f46743m = true;
        this.f46744n = false;
        this.f46745o = true;
        this.f46746p = false;
        this.f46747q = false;
        this.f46752v = true;
        f(context);
    }

    private void g() {
        AbsListView.OnScrollListener onScrollListener = this.f46733c;
        if (onScrollListener instanceof f) {
            ((f) onScrollListener).a(this);
        }
    }

    private boolean h() {
        XListViewFooter xListViewFooter;
        return Math.abs((getScrollY() + getHeight()) - computeVerticalScrollRange()) <= 5 || (getScrollY() > 0 && (xListViewFooter = this.f46742l) != null && xListViewFooter.getBottomMargin() > 0);
    }

    private boolean i() {
        return getScrollY() <= 0 || this.f46738h.getVisibleHeight() > this.f46741k || this.f46737g.getTop() > 0;
    }

    private void j() {
        e eVar;
        if (!this.f46745o || (eVar = this.f46735e) == null) {
            return;
        }
        eVar.onLoadMore();
    }

    private void k() {
        e eVar;
        if (!this.f46743m || (eVar = this.f46735e) == null) {
            return;
        }
        eVar.onRefresh();
    }

    private void l() {
        int bottomMargin = this.f46742l.getBottomMargin();
        if (bottomMargin > 0) {
            this.f46734d = 1;
            this.f46732b.startScroll(0, bottomMargin, 0, -bottomMargin, 400);
            invalidate();
        }
    }

    private void m() {
        int visibleHeight = this.f46738h.getVisibleHeight();
        if (visibleHeight == 0) {
            return;
        }
        boolean z3 = this.f46744n;
        if (!z3 || visibleHeight > this.f46741k) {
            int i2 = (!z3 || visibleHeight <= (i2 = this.f46741k)) ? 0 : 0;
            this.f46734d = 0;
            this.f46732b.startScroll(0, visibleHeight, 0, i2 - visibleHeight, 400);
            invalidate();
        }
    }

    private void n() {
        if (i()) {
            if (this.f46743m && this.f46738h.getVisibleHeight() > this.f46741k) {
                this.f46744n = true;
                this.f46738h.setState(2);
                k();
            }
            m();
        } else if (h()) {
            if (this.f46745o && this.f46742l.getBottomMargin() > 50) {
                o();
            }
            l();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o() {
        if (this.f46747q) {
            return;
        }
        this.f46747q = true;
        this.f46742l.setState(2);
        j();
    }

    private void r(float f4) {
        int bottomMargin = this.f46742l.getBottomMargin() + ((int) f4);
        if (this.f46745o && !this.f46747q) {
            if (bottomMargin > 50) {
                this.f46742l.setState(1);
            } else {
                this.f46742l.setState(0);
            }
        }
        this.f46742l.setBottomMargin(bottomMargin);
        post(new d());
    }

    private void s(float f4) {
        XListViewHeader xListViewHeader = this.f46738h;
        xListViewHeader.setVisibleHeight(((int) f4) + xListViewHeader.getVisibleHeight());
        if (this.f46743m && !this.f46744n) {
            if (this.f46738h.getVisibleHeight() > this.f46741k) {
                this.f46738h.setState(1);
            } else {
                this.f46738h.setState(0);
            }
        }
        post(new c());
    }

    @Override // android.widget.ScrollView, android.view.View
    public void computeScroll() {
        if (this.f46732b.computeScrollOffset()) {
            if (this.f46734d == 0) {
                this.f46738h.setVisibleHeight(this.f46732b.getCurrY());
            } else {
                this.f46742l.setBottomMargin(this.f46732b.getCurrY());
            }
            postInvalidate();
            g();
        }
        super.computeScroll();
    }

    public void e() {
        this.f46738h.setVisibleHeight(this.f46741k);
        if (this.f46743m && !this.f46744n) {
            if (this.f46738h.getVisibleHeight() > this.f46741k) {
                this.f46738h.setState(1);
            } else {
                this.f46738h.setState(0);
            }
        }
        this.f46744n = true;
        this.f46738h.setState(2);
        k();
    }

    protected void f(Context context) {
        ViewGroup viewGroup = null;
        LinearLayout linearLayout = (LinearLayout) View.inflate(context, R.layout.vw_xscrollview_layout, null);
        this.f46736f = linearLayout;
        this.f46737g = (LinearLayout) linearLayout.findViewById(R.id.content_layout);
        this.f46732b = new Scroller(context, new DecelerateInterpolator());
        setOnScrollListener(this);
        XListViewHeader xListViewHeader = new XListViewHeader(context);
        this.f46738h = xListViewHeader;
        this.f46739i = (RelativeLayout) xListViewHeader.findViewById(R.id.xlistview_header_content);
        this.f46740j = (TextView) this.f46738h.findViewById(R.id.xlistview_header_time);
        ((LinearLayout) this.f46736f.findViewById(R.id.header_layout)).addView(this.f46738h);
        this.f46742l = new XListViewFooter(context);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
        layoutParams.gravity = 17;
        this.f46742l.setState(0);
        ((LinearLayout) this.f46736f.findViewById(R.id.footer_layout)).addView(this.f46742l, layoutParams);
        ViewTreeObserver viewTreeObserver = this.f46738h.getViewTreeObserver();
        if (viewTreeObserver != null) {
            viewTreeObserver.addOnGlobalLayoutListener(new a());
        }
        if (getChildCount() > 0) {
            viewGroup = (ViewGroup) getChildAt(0);
            removeAllViews();
        }
        addView(this.f46736f);
        if (viewGroup != null) {
            setContentView(viewGroup);
        }
    }

    @Override // android.widget.ScrollView, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            this.f46749s = 0.0f;
            this.f46748r = 0.0f;
            this.f46750t = motionEvent.getX();
            this.f46751u = motionEvent.getY();
        } else if (action == 2) {
            float x3 = motionEvent.getX();
            float y3 = motionEvent.getY();
            this.f46748r += Math.abs(x3 - this.f46750t);
            float abs = this.f46749s + Math.abs(y3 - this.f46751u);
            this.f46749s = abs;
            this.f46750t = x3;
            this.f46751u = y3;
            if (this.f46748r <= abs && this.f46752v) {
                return super.onInterceptTouchEvent(motionEvent);
            }
            return false;
        }
        return super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView absListView, int i2, int i4, int i5) {
        AbsListView.OnScrollListener onScrollListener = this.f46733c;
        if (onScrollListener != null) {
            onScrollListener.onScroll(absListView, i2, i4, i5);
        }
    }

    @Override // android.view.View
    protected void onScrollChanged(int i2, int i4, int i5, int i6) {
        View childAt = getChildAt(getChildCount() - 1);
        if (childAt != null && childAt.getBottom() - (childAt.getHeight() + childAt.getScrollY()) == 0 && this.f46746p) {
            o();
        }
        super.onScrollChanged(i2, i4, i5, i6);
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView absListView, int i2) {
        AbsListView.OnScrollListener onScrollListener = this.f46733c;
        if (onScrollListener != null) {
            onScrollListener.onScrollStateChanged(absListView, i2);
        }
    }

    @Override // android.widget.ScrollView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.f46731a == -1.0f) {
            this.f46731a = motionEvent.getRawY();
        }
        int action = motionEvent.getAction();
        if (action == 0) {
            this.f46731a = motionEvent.getRawY();
            g();
        } else if (action != 2) {
            this.f46731a = -1.0f;
            n();
        } else {
            float rawY = motionEvent.getRawY() - this.f46731a;
            this.f46731a = motionEvent.getRawY();
            if (i() && (this.f46738h.getVisibleHeight() > 0 || rawY > 0.0f)) {
                s(rawY / B);
            } else if (h() && (this.f46742l.getBottomMargin() > 0 || rawY < 0.0f)) {
                r((-rawY) / B);
            }
            g();
        }
        return super.onTouchEvent(motionEvent);
    }

    public void p() {
        if (this.f46747q) {
            this.f46747q = false;
            this.f46742l.setState(0);
        }
    }

    public void q() {
        if (this.f46744n) {
            this.f46744n = false;
            m();
        }
    }

    public void setAutoLoadEnable(boolean z3) {
        this.f46746p = z3;
    }

    public void setContentView(ViewGroup viewGroup) {
        LinearLayout linearLayout = this.f46736f;
        if (linearLayout == null) {
            return;
        }
        if (this.f46737g == null) {
            this.f46737g = (LinearLayout) linearLayout.findViewById(R.id.content_layout);
        }
        if (this.f46737g.getChildCount() > 0) {
            this.f46737g.removeAllViews();
        }
        this.f46737g.addView(viewGroup);
    }

    public void setIXScrollViewListener(e eVar) {
        this.f46735e = eVar;
    }

    public void setOnScrollListener(AbsListView.OnScrollListener onScrollListener) {
        this.f46733c = onScrollListener;
    }

    public void setPullLoadEnable(boolean z3) {
        this.f46745o = z3;
        if (!z3) {
            this.f46742l.setBottomMargin(0);
            this.f46742l.a();
            XListViewFooter xListViewFooter = this.f46742l;
            xListViewFooter.setPadding(0, 0, 0, xListViewFooter.getHeight() * (-1));
            this.f46742l.setOnClickListener(null);
            return;
        }
        this.f46747q = false;
        this.f46742l.setPadding(0, 0, 0, 0);
        this.f46742l.f();
        this.f46742l.setState(0);
        this.f46742l.setOnClickListener(new b());
    }

    public void setPullRefreshEnable(boolean z3) {
        this.f46743m = z3;
        this.f46739i.setVisibility(z3 ? 0 : 4);
    }

    public void setRefreshTime(String str) {
        this.f46740j.setText(str);
    }

    public void setScrollEnable(boolean z3) {
        this.f46752v = z3;
        requestDisallowInterceptTouchEvent(!z3);
    }

    public void setView(View view) {
        LinearLayout linearLayout = this.f46736f;
        if (linearLayout == null) {
            return;
        }
        if (this.f46737g == null) {
            this.f46737g = (LinearLayout) linearLayout.findViewById(R.id.content_layout);
        }
        this.f46737g.addView(view);
    }

    public XScrollView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f46731a = -1.0f;
        this.f46743m = true;
        this.f46744n = false;
        this.f46745o = true;
        this.f46746p = false;
        this.f46747q = false;
        this.f46752v = true;
        f(context);
    }

    public XScrollView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f46731a = -1.0f;
        this.f46743m = true;
        this.f46744n = false;
        this.f46745o = true;
        this.f46746p = false;
        this.f46747q = false;
        this.f46752v = true;
        f(context);
    }
}
