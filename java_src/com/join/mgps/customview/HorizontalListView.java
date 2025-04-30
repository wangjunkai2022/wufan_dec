package com.join.mgps.customview;

import android.content.Context;
import android.database.DataSetObserver;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.Scroller;
import java.util.LinkedList;
import java.util.Queue;
/* loaded from: classes3.dex */
public class HorizontalListView extends android.widget.AdapterView<ListAdapter> {

    /* renamed from: a  reason: collision with root package name */
    public boolean f45629a;

    /* renamed from: b  reason: collision with root package name */
    protected ListAdapter f45630b;

    /* renamed from: c  reason: collision with root package name */
    private int f45631c;

    /* renamed from: d  reason: collision with root package name */
    private int f45632d;

    /* renamed from: e  reason: collision with root package name */
    protected int f45633e;

    /* renamed from: f  reason: collision with root package name */
    protected int f45634f;

    /* renamed from: g  reason: collision with root package name */
    private int f45635g;

    /* renamed from: h  reason: collision with root package name */
    private int f45636h;

    /* renamed from: i  reason: collision with root package name */
    protected Scroller f45637i;

    /* renamed from: j  reason: collision with root package name */
    private GestureDetector f45638j;

    /* renamed from: k  reason: collision with root package name */
    private Queue<View> f45639k;

    /* renamed from: l  reason: collision with root package name */
    private AdapterView.OnItemSelectedListener f45640l;

    /* renamed from: m  reason: collision with root package name */
    private AdapterView.OnItemClickListener f45641m;

    /* renamed from: n  reason: collision with root package name */
    private AdapterView.OnItemLongClickListener f45642n;

    /* renamed from: o  reason: collision with root package name */
    private boolean f45643o;

    /* renamed from: p  reason: collision with root package name */
    private DataSetObserver f45644p;

    /* renamed from: q  reason: collision with root package name */
    private GestureDetector.OnGestureListener f45645q;

    /* loaded from: classes3.dex */
    class a extends DataSetObserver {
        a() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            synchronized (HorizontalListView.this) {
                HorizontalListView.this.f45643o = true;
            }
            HorizontalListView.this.invalidate();
            HorizontalListView.this.requestLayout();
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            HorizontalListView.this.p();
            HorizontalListView.this.invalidate();
            HorizontalListView.this.requestLayout();
        }
    }

    /* loaded from: classes3.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            HorizontalListView.this.requestLayout();
        }
    }

    /* loaded from: classes3.dex */
    class c extends GestureDetector.SimpleOnGestureListener {
        c() {
        }

        private boolean a(MotionEvent motionEvent, View view) {
            Rect rect = new Rect();
            int[] iArr = new int[2];
            view.getLocationOnScreen(iArr);
            int i2 = iArr[0];
            int i4 = iArr[1];
            rect.set(i2, i4, view.getWidth() + i2, view.getHeight() + i4);
            return rect.contains((int) motionEvent.getRawX(), (int) motionEvent.getRawY());
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onDown(MotionEvent motionEvent) {
            return HorizontalListView.this.l(motionEvent);
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f4, float f5) {
            return HorizontalListView.this.m(motionEvent, motionEvent2, f4, f5);
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public void onLongPress(MotionEvent motionEvent) {
            int childCount = HorizontalListView.this.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = HorizontalListView.this.getChildAt(i2);
                if (a(motionEvent, childAt)) {
                    if (HorizontalListView.this.f45642n != null) {
                        AdapterView.OnItemLongClickListener onItemLongClickListener = HorizontalListView.this.f45642n;
                        HorizontalListView horizontalListView = HorizontalListView.this;
                        int i4 = horizontalListView.f45631c + 1 + i2;
                        HorizontalListView horizontalListView2 = HorizontalListView.this;
                        onItemLongClickListener.onItemLongClick(horizontalListView, childAt, i4, horizontalListView2.f45630b.getItemId(horizontalListView2.f45631c + 1 + i2));
                        return;
                    }
                    return;
                }
            }
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f4, float f5) {
            HorizontalListView horizontalListView;
            synchronized (HorizontalListView.this) {
                horizontalListView = HorizontalListView.this;
                horizontalListView.f45634f += (int) f4;
            }
            horizontalListView.requestLayout();
            return true;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
        public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
            int i2 = 0;
            while (true) {
                if (i2 >= HorizontalListView.this.getChildCount()) {
                    break;
                }
                View childAt = HorizontalListView.this.getChildAt(i2);
                if (a(motionEvent, childAt)) {
                    if (HorizontalListView.this.f45641m != null) {
                        AdapterView.OnItemClickListener onItemClickListener = HorizontalListView.this.f45641m;
                        HorizontalListView horizontalListView = HorizontalListView.this;
                        int i4 = horizontalListView.f45631c + 1 + i2;
                        HorizontalListView horizontalListView2 = HorizontalListView.this;
                        onItemClickListener.onItemClick(horizontalListView, childAt, i4, horizontalListView2.f45630b.getItemId(horizontalListView2.f45631c + 1 + i2));
                    }
                    if (HorizontalListView.this.f45640l != null) {
                        AdapterView.OnItemSelectedListener onItemSelectedListener = HorizontalListView.this.f45640l;
                        HorizontalListView horizontalListView3 = HorizontalListView.this;
                        int i5 = horizontalListView3.f45631c + 1 + i2;
                        HorizontalListView horizontalListView4 = HorizontalListView.this;
                        onItemSelectedListener.onItemSelected(horizontalListView3, childAt, i5, horizontalListView4.f45630b.getItemId(horizontalListView4.f45631c + 1 + i2));
                    }
                } else {
                    i2++;
                }
            }
            return true;
        }
    }

    public HorizontalListView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f45629a = true;
        this.f45631c = -1;
        this.f45632d = 0;
        this.f45635g = Integer.MAX_VALUE;
        this.f45636h = 0;
        this.f45639k = new LinkedList();
        this.f45643o = false;
        this.f45644p = new a();
        this.f45645q = new c();
        k();
    }

    private void g(View view, int i2) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams == null) {
            layoutParams = new ViewGroup.LayoutParams(-1, -1);
        }
        addViewInLayout(view, i2, layoutParams, true);
        view.measure(View.MeasureSpec.makeMeasureSpec(getWidth(), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(getHeight(), Integer.MIN_VALUE));
    }

    private void h(int i2) {
        View childAt = getChildAt(getChildCount() - 1);
        j(childAt != null ? childAt.getRight() : 0, i2);
        View childAt2 = getChildAt(0);
        i(childAt2 != null ? childAt2.getLeft() : 0, i2);
    }

    private void i(int i2, int i4) {
        int i5;
        while (i2 + i4 > 0 && (i5 = this.f45631c) >= 0) {
            View view = this.f45630b.getView(i5, this.f45639k.poll(), this);
            g(view, 0);
            i2 -= view.getMeasuredWidth();
            this.f45631c--;
            this.f45636h -= view.getMeasuredWidth();
        }
    }

    private void j(int i2, int i4) {
        while (i2 + i4 < getWidth() && this.f45632d < this.f45630b.getCount()) {
            View view = this.f45630b.getView(this.f45632d, this.f45639k.poll(), this);
            g(view, -1);
            i2 += view.getMeasuredWidth();
            if (this.f45632d == this.f45630b.getCount() - 1) {
                this.f45635g = (this.f45633e + i2) - getWidth();
            }
            if (this.f45635g < 0) {
                this.f45635g = 0;
            }
            this.f45632d++;
        }
    }

    private synchronized void k() {
        this.f45631c = -1;
        this.f45632d = 0;
        this.f45636h = 0;
        this.f45633e = 0;
        this.f45634f = 0;
        this.f45635g = Integer.MAX_VALUE;
        this.f45637i = new Scroller(getContext());
        this.f45638j = new GestureDetector(getContext(), this.f45645q);
    }

    private void n(int i2) {
        if (getChildCount() > 0) {
            int i4 = this.f45636h + i2;
            this.f45636h = i4;
            for (int i5 = 0; i5 < getChildCount(); i5++) {
                View childAt = getChildAt(i5);
                int measuredWidth = childAt.getMeasuredWidth();
                childAt.layout(i4, 0, i4 + measuredWidth, childAt.getMeasuredHeight());
                i4 += measuredWidth + childAt.getPaddingRight();
            }
        }
    }

    private void o(int i2) {
        View childAt = getChildAt(0);
        while (childAt != null && childAt.getRight() + i2 <= 0) {
            this.f45636h += childAt.getMeasuredWidth();
            this.f45639k.offer(childAt);
            removeViewInLayout(childAt);
            this.f45631c++;
            childAt = getChildAt(0);
        }
        View childAt2 = getChildAt(getChildCount() - 1);
        while (childAt2 != null && childAt2.getLeft() + i2 >= getWidth()) {
            this.f45639k.offer(childAt2);
            removeViewInLayout(childAt2);
            this.f45632d--;
            childAt2 = getChildAt(getChildCount() - 1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void p() {
        k();
        removeAllViewsInLayout();
        requestLayout();
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        return this.f45638j.onTouchEvent(motionEvent) | super.dispatchTouchEvent(motionEvent);
    }

    @Override // android.widget.AdapterView
    public View getSelectedView() {
        return null;
    }

    protected boolean l(MotionEvent motionEvent) {
        this.f45637i.forceFinished(true);
        return true;
    }

    protected boolean m(MotionEvent motionEvent, MotionEvent motionEvent2, float f4, float f5) {
        synchronized (this) {
            this.f45637i.fling(this.f45634f, 0, (int) (-f4), (int) (f5 / 4.0f), 0, this.f45635g, 0, 0);
        }
        requestLayout();
        return true;
    }

    @Override // android.widget.AdapterView, android.view.ViewGroup, android.view.View
    protected synchronized void onLayout(boolean z3, int i2, int i4, int i5, int i6) {
        super.onLayout(z3, i2, i4, i5, i6);
        if (this.f45630b == null) {
            return;
        }
        if (this.f45643o) {
            int i7 = this.f45633e;
            k();
            removeAllViewsInLayout();
            this.f45634f = i7;
            this.f45643o = false;
        }
        if (this.f45637i.computeScrollOffset()) {
            this.f45634f = this.f45637i.getCurrX();
        }
        if (this.f45634f <= 0) {
            this.f45634f = 0;
            this.f45637i.forceFinished(true);
        }
        int i8 = this.f45634f;
        int i9 = this.f45635g;
        if (i8 >= i9) {
            this.f45634f = i9;
            this.f45637i.forceFinished(true);
        }
        int i10 = this.f45633e - this.f45634f;
        o(i10);
        h(i10);
        n(i10);
        this.f45633e = this.f45634f;
        if (!this.f45637i.isFinished()) {
            post(new b());
        }
    }

    public synchronized void q(int i2) {
        Scroller scroller = this.f45637i;
        int i4 = this.f45634f;
        scroller.startScroll(i4, 0, i2 - (i4 * 2), 0);
        requestLayout();
    }

    @Override // android.widget.AdapterView
    public void setOnItemClickListener(AdapterView.OnItemClickListener onItemClickListener) {
        this.f45641m = onItemClickListener;
    }

    @Override // android.widget.AdapterView
    public void setOnItemLongClickListener(AdapterView.OnItemLongClickListener onItemLongClickListener) {
        this.f45642n = onItemLongClickListener;
    }

    @Override // android.widget.AdapterView
    public void setOnItemSelectedListener(AdapterView.OnItemSelectedListener onItemSelectedListener) {
        this.f45640l = onItemSelectedListener;
    }

    @Override // android.widget.AdapterView
    public void setSelection(int i2) {
    }

    @Override // android.widget.AdapterView
    public ListAdapter getAdapter() {
        return this.f45630b;
    }

    @Override // android.widget.AdapterView
    public void setAdapter(ListAdapter listAdapter) {
        ListAdapter listAdapter2 = this.f45630b;
        if (listAdapter2 != null) {
            listAdapter2.unregisterDataSetObserver(this.f45644p);
        }
        this.f45630b = listAdapter;
        listAdapter.registerDataSetObserver(this.f45644p);
        p();
    }
}
