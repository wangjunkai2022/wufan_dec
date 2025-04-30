package com.join.android.app.component.xrecyclerview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.animation.AccelerateInterpolator;
import android.widget.Scroller;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import com.google.android.material.appbar.AppBarLayout;
import com.join.android.app.component.xrecyclerview.AppBarStateChangeListener;
import com.join.mgps.customview.XListViewFooter;
import com.join.mgps.ptr.PtrFrameLayout;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
public class XQuickRecyclerView extends RecyclerView {
    private static final float V1 = 3.0f;
    private static final int W1 = 10000;
    private static final int X1 = 10001;
    private static final int Y1 = 10002;
    private static List<Integer> Z1 = new ArrayList();

    /* renamed from: a2  reason: collision with root package name */
    protected static final int f17770a2 = 0;

    /* renamed from: b2  reason: collision with root package name */
    protected static final int f17771b2 = 1;

    /* renamed from: c2  reason: collision with root package name */
    protected static final int f17772c2 = 400;

    /* renamed from: d2  reason: collision with root package name */
    protected static final int f17773d2 = 50;

    /* renamed from: e2  reason: collision with root package name */
    protected static final float f17774e2 = 2.0f;
    private boolean A1;
    private boolean B1;
    private ArrayList<View> C1;
    private g D1;
    private float E1;
    private f F1;
    private boolean G1;
    private boolean H1;
    private int I1;
    private View J1;
    protected XListViewFooter K1;
    protected boolean L1;
    private final RecyclerView.AdapterDataObserver M1;
    private AppBarStateChangeListener.State N1;
    private double O1;
    private int P1;
    protected Scroller Q1;
    protected RecyclerView.OnScrollListener R1;
    protected int S1;
    private PtrFrameLayout T1;
    private com.join.mgps.ptr.a U1;

    /* loaded from: classes2.dex */
    class a extends com.join.mgps.ptr.a {
        a() {
        }

        private void e() {
            XQuickRecyclerView xQuickRecyclerView = XQuickRecyclerView.this;
            xQuickRecyclerView.setLoadingMoreEnabled(xQuickRecyclerView.H1);
        }

        @Override // com.join.mgps.ptr.a, com.join.mgps.ptr.b
        public boolean a(PtrFrameLayout ptrFrameLayout, View view, View view2) {
            return XQuickRecyclerView.this.N1 == AppBarStateChangeListener.State.EXPANDED && com.join.mgps.ptr.a.d(ptrFrameLayout, view, view2);
        }

        @Override // com.join.mgps.ptr.b
        public void b(PtrFrameLayout ptrFrameLayout) {
            e();
            if (XQuickRecyclerView.this.F1 != null) {
                XQuickRecyclerView.this.F1.onRefresh();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class b extends RecyclerView.OnScrollListener {
        b() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrollStateChanged(RecyclerView recyclerView, int i2) {
            super.onScrollStateChanged(recyclerView, i2);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrolled(RecyclerView recyclerView, int i2, int i4) {
            super.onScrolled(recyclerView, i2, i4);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (XQuickRecyclerView.this.B1) {
                return;
            }
            XQuickRecyclerView xQuickRecyclerView = XQuickRecyclerView.this;
            xQuickRecyclerView.L1 = true;
            xQuickRecyclerView.K1.setState(2);
            if (XQuickRecyclerView.this.F1 != null) {
                XQuickRecyclerView.this.F1.onLoadMore();
            }
        }
    }

    /* loaded from: classes2.dex */
    class d extends AppBarStateChangeListener {
        d() {
        }

        @Override // com.join.android.app.component.xrecyclerview.AppBarStateChangeListener
        public void a(AppBarLayout appBarLayout, AppBarStateChangeListener.State state) {
            XQuickRecyclerView.this.N1 = state;
        }
    }

    /* loaded from: classes2.dex */
    private class e extends RecyclerView.AdapterDataObserver {
        private e() {
        }

        /* JADX WARN: Type inference failed for: r1v3, types: [int, boolean] */
        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onChanged() {
            RecyclerView.Adapter adapter = XQuickRecyclerView.this.getAdapter();
            if (adapter != null && XQuickRecyclerView.this.J1 != null) {
                ?? r12 = XQuickRecyclerView.this.G1;
                int i2 = r12;
                if (XQuickRecyclerView.this.H1) {
                    i2 = r12 + 1;
                }
                if (adapter.getItemCount() == i2) {
                    XQuickRecyclerView.this.J1.setVisibility(0);
                    XQuickRecyclerView.this.setVisibility(8);
                } else {
                    XQuickRecyclerView.this.J1.setVisibility(8);
                    XQuickRecyclerView.this.setVisibility(0);
                }
            }
            if (XQuickRecyclerView.this.D1 != null) {
                XQuickRecyclerView.this.D1.notifyDataSetChanged();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeChanged(int i2, int i4) {
            XQuickRecyclerView.this.D1.notifyItemRangeChanged(i2, i4);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeInserted(int i2, int i4) {
            XQuickRecyclerView.this.D1.notifyItemRangeInserted(i2, i4);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeMoved(int i2, int i4, int i5) {
            XQuickRecyclerView.this.D1.notifyItemMoved(i2, i4);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeRemoved(int i2, int i4) {
            XQuickRecyclerView.this.D1.notifyItemRangeRemoved(i2, i4);
        }

        /* synthetic */ e(XQuickRecyclerView xQuickRecyclerView, a aVar) {
            this();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeChanged(int i2, int i4, Object obj) {
            XQuickRecyclerView.this.D1.notifyItemRangeChanged(i2, i4, obj);
        }
    }

    /* loaded from: classes2.dex */
    public interface f {
        void onLoadMore();

        void onRefresh();
    }

    public XQuickRecyclerView(Context context) {
        this(context, null);
        m1();
    }

    private void f1() {
        this.K1.a();
        this.K1.setOnClickListener(null);
    }

    private void g1() {
        this.L1 = false;
        this.K1.f();
        this.K1.setState(0);
        this.K1.setOnClickListener(new c());
    }

    private int i1(int[] iArr) {
        int i2 = iArr[0];
        for (int i4 : iArr) {
            if (i4 > i2) {
                i2 = i4;
            }
        }
        return i2;
    }

    private int j1(int[] iArr) {
        int i2 = iArr[0];
        for (int i4 : iArr) {
            if (i4 < i2) {
                i2 = i4;
            }
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public View k1(int i2) {
        if (n1(i2)) {
            return this.C1.get(i2 - 10002);
        }
        return null;
    }

    private void m1() {
        this.Q1 = new Scroller(getContext(), new AccelerateInterpolator());
        addOnScrollListener(new b());
        if (this.G1) {
            setPtrFrameLayout(null);
        }
        XListViewFooter xListViewFooter = new XListViewFooter(getContext());
        xListViewFooter.setState(0);
        this.K1 = xListViewFooter;
        setLoadingMoreEnabled(this.H1);
        this.K1.setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean n1(int i2) {
        return this.C1.size() > 0 && Z1.contains(Integer.valueOf(i2));
    }

    private boolean o1() {
        return this.T1 != null && getFirstVisiblePosition() == 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean q1(int i2) {
        return i2 == 10000 || i2 == 10001 || Z1.contains(Integer.valueOf(i2));
    }

    private void s1() {
        if (!com.join.android.app.common.utils.f.j(getContext()) || this.A1 || !this.H1 || this.L1 || this.B1 || getLastVisiblePosition() < getTotalItemCount() - this.P1) {
            return;
        }
        this.A1 = true;
        this.L1 = true;
        this.K1.setState(2);
        f fVar = this.F1;
        if (fVar != null) {
            fVar.onLoadMore();
        }
    }

    public void A1() {
        PtrFrameLayout ptrFrameLayout = this.T1;
        if (ptrFrameLayout == null || !(ptrFrameLayout instanceof PtrFrameLayout)) {
            return;
        }
        ptrFrameLayout.C();
    }

    protected void B1(float f4) {
        int bottomMargin = this.K1.getBottomMargin() + ((int) f4);
        if (this.H1 && !this.L1) {
            if (bottomMargin > 50) {
                this.K1.setState(1);
            } else {
                this.K1.setState(0);
            }
        }
        this.K1.setBottomMargin(bottomMargin);
    }

    @Override // android.view.View
    public void computeScroll() {
        if (this.Q1.computeScrollOffset()) {
            if (this.S1 != 0) {
                this.K1.setBottomMargin(this.Q1.getCurrY());
            }
            postInvalidate();
        }
        super.computeScroll();
    }

    public void e1(View view) {
        Z1.add(Integer.valueOf(this.C1.size() + 10002));
        this.C1.add(view);
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public boolean fling(int i2, int i4) {
        double d4 = i4;
        double d5 = this.O1;
        Double.isNaN(d4);
        return super.fling(i2, (int) (d4 * d5));
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    @Nullable
    public RecyclerView.Adapter getAdapter() {
        g gVar = this.D1;
        if (gVar == null) {
            return null;
        }
        return gVar.a();
    }

    public View getEmptyView() {
        return this.J1;
    }

    public int getFirstCompletelyVisiblePosition() {
        RecyclerView.LayoutManager layoutManager = getLayoutManager();
        if (layoutManager instanceof GridLayoutManager) {
            return ((GridLayoutManager) layoutManager).findFirstCompletelyVisibleItemPosition();
        }
        if (layoutManager instanceof StaggeredGridLayoutManager) {
            StaggeredGridLayoutManager staggeredGridLayoutManager = (StaggeredGridLayoutManager) layoutManager;
            int[] iArr = new int[staggeredGridLayoutManager.getSpanCount()];
            staggeredGridLayoutManager.findFirstCompletelyVisibleItemPositions(iArr);
            return j1(iArr);
        }
        return ((LinearLayoutManager) layoutManager).findFirstCompletelyVisibleItemPosition();
    }

    public int getFirstVisiblePosition() {
        RecyclerView.LayoutManager layoutManager = getLayoutManager();
        if (layoutManager instanceof GridLayoutManager) {
            return ((GridLayoutManager) layoutManager).findFirstVisibleItemPosition();
        }
        if (layoutManager instanceof StaggeredGridLayoutManager) {
            StaggeredGridLayoutManager staggeredGridLayoutManager = (StaggeredGridLayoutManager) layoutManager;
            int[] iArr = new int[staggeredGridLayoutManager.getSpanCount()];
            staggeredGridLayoutManager.findFirstVisibleItemPositions(iArr);
            return j1(iArr);
        }
        return ((LinearLayoutManager) layoutManager).findFirstVisibleItemPosition();
    }

    public int getLastCompletelyVisiblePosition() {
        RecyclerView.LayoutManager layoutManager = getLayoutManager();
        if (layoutManager instanceof GridLayoutManager) {
            return ((GridLayoutManager) layoutManager).findLastCompletelyVisibleItemPosition();
        }
        if (layoutManager instanceof StaggeredGridLayoutManager) {
            StaggeredGridLayoutManager staggeredGridLayoutManager = (StaggeredGridLayoutManager) layoutManager;
            int[] iArr = new int[staggeredGridLayoutManager.getSpanCount()];
            staggeredGridLayoutManager.findLastCompletelyVisibleItemPositions(iArr);
            return i1(iArr);
        }
        return ((LinearLayoutManager) layoutManager).findLastCompletelyVisibleItemPosition();
    }

    public int getLastVisiblePosition() {
        RecyclerView.LayoutManager layoutManager = getLayoutManager();
        if (layoutManager instanceof GridLayoutManager) {
            return ((GridLayoutManager) layoutManager).findLastVisibleItemPosition();
        }
        if (layoutManager instanceof StaggeredGridLayoutManager) {
            StaggeredGridLayoutManager staggeredGridLayoutManager = (StaggeredGridLayoutManager) layoutManager;
            int[] iArr = new int[staggeredGridLayoutManager.getSpanCount()];
            staggeredGridLayoutManager.findLastVisibleItemPositions(iArr);
            return i1(iArr);
        }
        return ((LinearLayoutManager) layoutManager).findLastVisibleItemPosition();
    }

    public RecyclerView.OnScrollListener getScrollListener() {
        return this.R1;
    }

    int getTotalItemCount() {
        return (getAdapter().getItemCount() - 1) - this.C1.size();
    }

    public RecyclerView.Adapter getXRecycleviewWrapAdapter() {
        return this.D1.a();
    }

    void h1(boolean z3) {
    }

    public void l1() {
        this.H1 = false;
        this.K1.a();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        AppBarLayout appBarLayout;
        super.onAttachedToWindow();
        ViewParent parent = getParent();
        while (parent != null && !(parent instanceof CoordinatorLayout)) {
            parent = parent.getParent();
        }
        if (parent instanceof CoordinatorLayout) {
            CoordinatorLayout coordinatorLayout = (CoordinatorLayout) parent;
            int childCount = coordinatorLayout.getChildCount() - 1;
            while (true) {
                if (childCount < 0) {
                    appBarLayout = null;
                    break;
                }
                View childAt = coordinatorLayout.getChildAt(childCount);
                if (childAt instanceof AppBarLayout) {
                    appBarLayout = (AppBarLayout) childAt;
                    break;
                }
                childCount--;
            }
            if (appBarLayout != null) {
                appBarLayout.addOnOffsetChangedListener((AppBarLayout.OnOffsetChangedListener) new d());
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public void onScrollStateChanged(int i2) {
        int findLastVisibleItemPosition;
        super.onScrollStateChanged(i2);
        if (i2 != 0 || this.F1 == null || this.A1 || !this.H1) {
            return;
        }
        RecyclerView.LayoutManager layoutManager = getLayoutManager();
        if (layoutManager instanceof GridLayoutManager) {
            findLastVisibleItemPosition = ((GridLayoutManager) layoutManager).findLastVisibleItemPosition();
        } else if (layoutManager instanceof StaggeredGridLayoutManager) {
            StaggeredGridLayoutManager staggeredGridLayoutManager = (StaggeredGridLayoutManager) layoutManager;
            int[] iArr = new int[staggeredGridLayoutManager.getSpanCount()];
            staggeredGridLayoutManager.findLastVisibleItemPositions(iArr);
            findLastVisibleItemPosition = i1(iArr);
        } else {
            findLastVisibleItemPosition = ((LinearLayoutManager) layoutManager).findLastVisibleItemPosition();
        }
        PtrFrameLayout ptrFrameLayout = this.T1;
        boolean l4 = ptrFrameLayout != null ? ptrFrameLayout.l() : false;
        if (layoutManager.getChildCount() > 0 && findLastVisibleItemPosition >= this.P1 && layoutManager.getItemCount() > layoutManager.getChildCount() && !this.B1 && !l4) {
            s1();
        }
        RecyclerView.OnScrollListener onScrollListener = this.R1;
        if (onScrollListener != null) {
            onScrollListener.onScrollStateChanged(this, i2);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.E1 == -1.0f) {
            this.E1 = motionEvent.getRawY();
        }
        int action = motionEvent.getAction();
        if (action == 0) {
            this.E1 = motionEvent.getRawY();
        } else if (action != 2) {
            this.E1 = -1.0f;
            if (getLastVisiblePosition() == getTotalItemCount() && !this.B1) {
                y1();
            }
            v1();
        } else {
            float rawY = motionEvent.getRawY() - this.E1;
            this.E1 = motionEvent.getRawY();
            if (getLastVisiblePosition() == getTotalItemCount() && ((this.K1.getBottomMargin() > 0 || rawY < 0.0f) && !this.L1 && this.H1 && !this.B1)) {
                B1((-rawY) / f17774e2);
            }
        }
        return super.onTouchEvent(motionEvent);
    }

    boolean p1() {
        return this.N1 == AppBarStateChangeListener.State.EXPANDED && getScrollX() <= 0;
    }

    public void r1() {
        this.A1 = false;
        z1();
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public void setAdapter(RecyclerView.Adapter adapter) {
        g gVar = new g(adapter);
        this.D1 = gVar;
        super.setAdapter(gVar);
        if (!adapter.hasObservers()) {
            adapter.registerAdapterDataObserver(this.M1);
        }
        this.M1.onChanged();
    }

    public void setEmptyView(View view) {
        this.J1 = view;
        this.M1.onChanged();
    }

    public void setFlingScale(double d4) {
        this.O1 = d4;
    }

    public void setLoadingListener(f fVar) {
        this.F1 = fVar;
    }

    public void setLoadingMoreEnabled(boolean z3) {
        this.H1 = z3;
        if (z3) {
            g1();
        } else {
            f1();
        }
    }

    public void setNoMore() {
        z1();
        this.K1.f();
        this.K1.setState(3);
        this.L1 = false;
        this.B1 = true;
        this.K1.setOnClickListener(null);
    }

    public void setNoMoreView(boolean z3) {
        this.L1 = false;
        this.B1 = z3;
        if (z3) {
            setNoMore();
        } else {
            setLoadingMoreEnabled(this.H1);
        }
    }

    public void setPreLoadCount(int i2) {
        this.P1 = i2;
    }

    public void setPtrFrameLayout(PtrFrameLayout ptrFrameLayout) {
        if (ptrFrameLayout != null) {
            this.T1 = ptrFrameLayout;
            ptrFrameLayout.setPtrHandler(this.U1);
        } else if (getParent() != null && (getParent() instanceof PtrFrameLayout)) {
            PtrFrameLayout ptrFrameLayout2 = (PtrFrameLayout) getParent();
            this.T1 = ptrFrameLayout2;
            ptrFrameLayout2.setPtrHandler(this.U1);
        }
        PtrFrameLayout ptrFrameLayout3 = this.T1;
        if (ptrFrameLayout3 != null) {
            ptrFrameLayout3.j(true);
        }
    }

    public void setPullRefreshEnabled(boolean z3) {
        this.G1 = z3;
        if (z3) {
            return;
        }
        setPtrFrameLayout(null);
    }

    public void setRefreshing(boolean z3) {
        PtrFrameLayout ptrFrameLayout;
        if (z3 && this.G1 && (ptrFrameLayout = this.T1) != null) {
            ptrFrameLayout.f();
        }
    }

    public void setScrollListener(RecyclerView.OnScrollListener onScrollListener) {
        this.R1 = onScrollListener;
    }

    public void t1() {
        PtrFrameLayout ptrFrameLayout = this.T1;
        if (ptrFrameLayout != null) {
            ptrFrameLayout.C();
        }
        setNoMoreView(false);
    }

    public void u1() {
        setNoMoreView(false);
        r1();
        t1();
    }

    protected void v1() {
        int bottomMargin = this.K1.getBottomMargin();
        if (bottomMargin > 0) {
            this.S1 = 1;
            this.Q1.startScroll(0, bottomMargin, 0, -bottomMargin, 400);
            invalidate();
        }
    }

    public void w1() {
        PtrFrameLayout ptrFrameLayout = this.T1;
        if (ptrFrameLayout != null) {
            ptrFrameLayout.f();
        }
    }

    public void x1() {
        this.H1 = true;
        this.K1.f();
    }

    public synchronized void y1() {
        s1();
    }

    public void z1() {
        if (this.L1 && this.H1) {
            this.L1 = false;
            this.A1 = false;
            if (this.B1) {
                this.K1.setState(3);
            } else {
                this.K1.setState(0);
            }
        }
    }

    public XQuickRecyclerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        m1();
    }

    public XQuickRecyclerView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.A1 = false;
        this.B1 = false;
        this.C1 = new ArrayList<>();
        this.E1 = -1.0f;
        this.G1 = true;
        this.H1 = true;
        this.I1 = 0;
        this.M1 = new e(this, null);
        this.N1 = AppBarStateChangeListener.State.EXPANDED;
        this.O1 = 1.0d;
        this.P1 = 0;
        this.U1 = new a();
        m1();
    }

    /* loaded from: classes2.dex */
    public class g extends RecyclerView.Adapter<RecyclerView.ViewHolder> {

        /* renamed from: a  reason: collision with root package name */
        private boolean f17780a = false;

        /* renamed from: b  reason: collision with root package name */
        private RecyclerView.Adapter f17781b;

        /* loaded from: classes2.dex */
        class a extends GridLayoutManager.SpanSizeLookup {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ GridLayoutManager f17783a;

            a(GridLayoutManager gridLayoutManager) {
                this.f17783a = gridLayoutManager;
            }

            @Override // androidx.recyclerview.widget.GridLayoutManager.SpanSizeLookup
            public int getSpanSize(int i2) {
                if (g.this.d(i2) || g.this.c(i2) || g.this.e(i2)) {
                    return this.f17783a.getSpanCount();
                }
                return 1;
            }
        }

        /* loaded from: classes2.dex */
        private class b extends com.join.mgps.base.b {
            public b(View view) {
                super(view);
            }
        }

        public g(RecyclerView.Adapter adapter) {
            this.f17781b = adapter;
        }

        private void f() {
            XQuickRecyclerView xQuickRecyclerView = XQuickRecyclerView.this;
            if (xQuickRecyclerView.K1 != null) {
                if (xQuickRecyclerView.B1) {
                    XQuickRecyclerView.this.K1.setState(3);
                    return;
                }
                XQuickRecyclerView xQuickRecyclerView2 = XQuickRecyclerView.this;
                if (xQuickRecyclerView2.L1) {
                    xQuickRecyclerView2.K1.setState(2);
                } else {
                    xQuickRecyclerView2.K1.setState(0);
                }
            }
        }

        public RecyclerView.Adapter a() {
            return this.f17781b;
        }

        public int b() {
            return XQuickRecyclerView.this.C1.size();
        }

        public boolean c(int i2) {
            return XQuickRecyclerView.this.H1 && i2 == getItemCount() - 1;
        }

        public boolean d(int i2) {
            return this.f17780a && i2 >= 1 && i2 < XQuickRecyclerView.this.C1.size() + 1;
        }

        public boolean e(int i2) {
            return this.f17780a && i2 == 0;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            int b4;
            int b5;
            int itemCount;
            int i2;
            int i4;
            if (XQuickRecyclerView.this.H1) {
                int i5 = this.f17780a ? 2 : 1;
                if (this.f17781b != null) {
                    b5 = b();
                    itemCount = this.f17781b.getItemCount();
                    i4 = i5;
                    b4 = b5 + itemCount;
                    i2 = i4;
                } else {
                    b4 = b();
                    i2 = i5;
                }
            } else {
                boolean z3 = this.f17780a;
                if (this.f17781b != null) {
                    b5 = b();
                    itemCount = this.f17781b.getItemCount();
                    i4 = z3;
                    b4 = b5 + itemCount;
                    i2 = i4;
                } else {
                    b4 = b();
                    i2 = z3;
                }
            }
            return b4 + i2;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public long getItemId(int i2) {
            int b4;
            boolean z3 = this.f17780a;
            if (this.f17781b == null || i2 < b() + (z3 ? 1 : 0) || (b4 = i2 - (b() + (z3 ? 1 : 0))) >= this.f17781b.getItemCount()) {
                return -1L;
            }
            return this.f17781b.getItemId(b4);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i2) {
            RecyclerView.Adapter adapter = this.f17781b;
            int itemCount = adapter != null ? adapter.getItemCount() : 0;
            int b4 = i2 - (b() + (this.f17780a ? 1 : 0));
            if (b4 < itemCount && XQuickRecyclerView.this.q1(this.f17781b.getItemViewType(b4))) {
                throw new IllegalStateException("XRecyclerView require itemViewType in adapter should be less than 10000 ");
            }
            if (e(i2) && this.f17780a) {
                return 10000;
            }
            if (d(i2)) {
                if (this.f17780a) {
                    i2--;
                }
                return ((Integer) XQuickRecyclerView.Z1.get(i2)).intValue();
            } else if (c(i2)) {
                return 10001;
            } else {
                if (b4 < itemCount) {
                    return this.f17781b.getItemViewType(b4);
                }
                return 0;
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onAttachedToRecyclerView(RecyclerView recyclerView) {
            super.onAttachedToRecyclerView(recyclerView);
            RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
            if (layoutManager instanceof GridLayoutManager) {
                GridLayoutManager gridLayoutManager = (GridLayoutManager) layoutManager;
                gridLayoutManager.setSpanSizeLookup(new a(gridLayoutManager));
            }
            this.f17781b.onAttachedToRecyclerView(recyclerView);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i2) {
            if (d(i2) || (e(i2) && this.f17780a)) {
                return;
            }
            if (c(i2)) {
                f();
                return;
            }
            int b4 = i2 - (b() + (this.f17780a ? 1 : 0));
            RecyclerView.Adapter adapter = this.f17781b;
            if (adapter == null || b4 >= adapter.getItemCount()) {
                return;
            }
            this.f17781b.onBindViewHolder(viewHolder, b4);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i2) {
            if (i2 == 10000) {
                return null;
            }
            if (XQuickRecyclerView.this.n1(i2)) {
                return new b(XQuickRecyclerView.this.k1(i2));
            }
            if (i2 == 10001) {
                return new b(XQuickRecyclerView.this.K1);
            }
            return this.f17781b.onCreateViewHolder(viewGroup, i2);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onDetachedFromRecyclerView(RecyclerView recyclerView) {
            this.f17781b.onDetachedFromRecyclerView(recyclerView);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public boolean onFailedToRecycleView(RecyclerView.ViewHolder viewHolder) {
            return this.f17781b.onFailedToRecycleView(viewHolder);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onViewAttachedToWindow(RecyclerView.ViewHolder viewHolder) {
            super.onViewAttachedToWindow(viewHolder);
            ViewGroup.LayoutParams layoutParams = viewHolder.itemView.getLayoutParams();
            if (layoutParams != null && (layoutParams instanceof StaggeredGridLayoutManager.LayoutParams) && (d(viewHolder.getLayoutPosition()) || e(viewHolder.getLayoutPosition()) || c(viewHolder.getLayoutPosition()))) {
                ((StaggeredGridLayoutManager.LayoutParams) layoutParams).setFullSpan(true);
            }
            this.f17781b.onViewAttachedToWindow(viewHolder);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onViewDetachedFromWindow(RecyclerView.ViewHolder viewHolder) {
            this.f17781b.onViewDetachedFromWindow(viewHolder);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onViewRecycled(RecyclerView.ViewHolder viewHolder) {
            this.f17781b.onViewRecycled(viewHolder);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void registerAdapterDataObserver(RecyclerView.AdapterDataObserver adapterDataObserver) {
            this.f17781b.registerAdapterDataObserver(adapterDataObserver);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void unregisterAdapterDataObserver(RecyclerView.AdapterDataObserver adapterDataObserver) {
            this.f17781b.unregisterAdapterDataObserver(adapterDataObserver);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(@NonNull RecyclerView.ViewHolder viewHolder, int i2, @NonNull List<Object> list) {
            if (list == null) {
                super.onBindViewHolder(viewHolder, i2, list);
            } else if (d(i2) || (e(i2) && this.f17780a)) {
            } else {
                if (c(i2)) {
                    f();
                    return;
                }
                int b4 = i2 - (b() + (this.f17780a ? 1 : 0));
                RecyclerView.Adapter adapter = this.f17781b;
                if (adapter == null || b4 >= adapter.getItemCount()) {
                    return;
                }
                this.f17781b.onBindViewHolder(viewHolder, b4, list);
            }
        }
    }
}
