package it.sephiroth.android.library.widget;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.database.DataSetObserver;
import android.os.Build;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.ContextMenu;
import android.view.View;
import android.view.ViewDebug;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Adapter;
/* loaded from: classes5.dex */
public abstract class AdapterView<T extends Adapter> extends ViewGroup {
    public static final String B = "AdapterView";
    public static final boolean C = false;
    public static final int D = -1;
    public static final int E = -2;
    static final int F = 0;
    static final int G = 1;
    static final int H = 100;
    public static final int I = -1;
    public static final long J = Long.MIN_VALUE;
    protected boolean A;
    @ViewDebug.ExportedProperty(category = "scrolling")

    /* renamed from: a  reason: collision with root package name */
    protected int f70540a;

    /* renamed from: b  reason: collision with root package name */
    protected int f70541b;

    /* renamed from: c  reason: collision with root package name */
    protected int f70542c;

    /* renamed from: d  reason: collision with root package name */
    protected long f70543d;

    /* renamed from: e  reason: collision with root package name */
    protected long f70544e;

    /* renamed from: f  reason: collision with root package name */
    protected boolean f70545f;

    /* renamed from: g  reason: collision with root package name */
    int f70546g;

    /* renamed from: h  reason: collision with root package name */
    private int f70547h;

    /* renamed from: i  reason: collision with root package name */
    protected boolean f70548i;

    /* renamed from: j  reason: collision with root package name */
    f f70549j;

    /* renamed from: k  reason: collision with root package name */
    d f70550k;

    /* renamed from: l  reason: collision with root package name */
    e f70551l;

    /* renamed from: m  reason: collision with root package name */
    public boolean f70552m;
    @ViewDebug.ExportedProperty(category = "list")

    /* renamed from: n  reason: collision with root package name */
    protected int f70553n;

    /* renamed from: o  reason: collision with root package name */
    protected long f70554o;
    @ViewDebug.ExportedProperty(category = "list")

    /* renamed from: p  reason: collision with root package name */
    protected int f70555p;

    /* renamed from: q  reason: collision with root package name */
    protected long f70556q;

    /* renamed from: r  reason: collision with root package name */
    private View f70557r;
    @ViewDebug.ExportedProperty(category = "list")

    /* renamed from: s  reason: collision with root package name */
    protected int f70558s;

    /* renamed from: t  reason: collision with root package name */
    protected int f70559t;

    /* renamed from: u  reason: collision with root package name */
    AccessibilityManager f70560u;

    /* renamed from: v  reason: collision with root package name */
    protected int f70561v;

    /* renamed from: w  reason: collision with root package name */
    protected long f70562w;

    /* renamed from: x  reason: collision with root package name */
    private boolean f70563x;

    /* renamed from: y  reason: collision with root package name */
    private boolean f70564y;

    /* renamed from: z  reason: collision with root package name */
    private AdapterView<T>.g f70565z;

    /* loaded from: classes5.dex */
    public static class b implements ContextMenu.ContextMenuInfo {

        /* renamed from: a  reason: collision with root package name */
        public View f70566a;

        /* renamed from: b  reason: collision with root package name */
        public int f70567b;

        /* renamed from: c  reason: collision with root package name */
        public long f70568c;

        public b(View view, int i2, long j4) {
            this.f70566a = view;
            this.f70567b = i2;
            this.f70568c = j4;
        }
    }

    /* loaded from: classes5.dex */
    class c extends DataSetObserver {

        /* renamed from: a  reason: collision with root package name */
        private Parcelable f70569a = null;

        /* JADX INFO: Access modifiers changed from: package-private */
        public c() {
        }

        public void a() {
            this.f70569a = null;
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            Parcelable parcelable;
            AdapterView adapterView = AdapterView.this;
            adapterView.f70552m = true;
            adapterView.f70559t = adapterView.f70558s;
            adapterView.f70558s = adapterView.getAdapter().getCount();
            if (AdapterView.this.getAdapter().hasStableIds() && (parcelable = this.f70569a) != null) {
                AdapterView adapterView2 = AdapterView.this;
                if (adapterView2.f70559t == 0 && adapterView2.f70558s > 0) {
                    adapterView2.onRestoreInstanceState(parcelable);
                    this.f70569a = null;
                    AdapterView.this.e();
                    AdapterView.this.requestLayout();
                }
            }
            AdapterView.this.r();
            AdapterView.this.e();
            AdapterView.this.requestLayout();
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            AdapterView adapterView = AdapterView.this;
            adapterView.f70552m = true;
            if (adapterView.getAdapter().hasStableIds()) {
                this.f70569a = AdapterView.this.onSaveInstanceState();
            }
            AdapterView adapterView2 = AdapterView.this;
            adapterView2.f70559t = adapterView2.f70558s;
            adapterView2.f70558s = 0;
            adapterView2.f70555p = -1;
            adapterView2.f70556q = Long.MIN_VALUE;
            adapterView2.f70553n = -1;
            adapterView2.f70554o = Long.MIN_VALUE;
            adapterView2.f70545f = false;
            adapterView2.e();
            AdapterView.this.requestLayout();
        }
    }

    /* loaded from: classes5.dex */
    public interface d {
        void a(AdapterView<?> adapterView, View view, int i2, long j4);
    }

    /* loaded from: classes5.dex */
    public interface e {
        boolean a(AdapterView<?> adapterView, View view, int i2, long j4);
    }

    /* loaded from: classes5.dex */
    public interface f {
        void a(AdapterView<?> adapterView);

        void b(AdapterView<?> adapterView, View view, int i2, long j4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public class g implements Runnable {
        private g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            AdapterView adapterView = AdapterView.this;
            if (!adapterView.f70552m) {
                adapterView.h();
                AdapterView.this.p();
            } else if (adapterView.getAdapter() != null) {
                AdapterView.this.post(this);
            }
        }
    }

    public AdapterView(Context context) {
        super(context);
        this.f70540a = 0;
        this.f70543d = Long.MIN_VALUE;
        this.f70545f = false;
        this.f70548i = false;
        this.f70553n = -1;
        this.f70554o = Long.MIN_VALUE;
        this.f70555p = -1;
        this.f70556q = Long.MIN_VALUE;
        this.f70561v = -1;
        this.f70562w = Long.MIN_VALUE;
        this.A = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h() {
        if (this.f70549j == null) {
            return;
        }
        int selectedItemPosition = getSelectedItemPosition();
        if (selectedItemPosition >= 0) {
            this.f70549j.b(this, getSelectedView(), selectedItemPosition, getAdapter().getItemId(selectedItemPosition));
            return;
        }
        this.f70549j.a(this);
    }

    private boolean n() {
        int count;
        T adapter = getAdapter();
        if (adapter == null || (count = adapter.getCount()) <= 0) {
            return false;
        }
        return getFirstVisiblePosition() > 0 || getLastVisiblePosition() < count - 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p() {
        if (this.f70560u.isEnabled() && getSelectedItemPosition() >= 0) {
            sendAccessibilityEvent(4);
        }
    }

    @SuppressLint({"WrongCall"})
    private void t(boolean z3) {
        if (m()) {
            z3 = false;
        }
        if (z3) {
            View view = this.f70557r;
            if (view != null) {
                view.setVisibility(0);
                setVisibility(8);
            } else {
                setVisibility(0);
            }
            if (this.f70552m) {
                onLayout(false, getLeft(), getTop(), getRight(), getBottom());
                return;
            }
            return;
        }
        View view2 = this.f70557r;
        if (view2 != null) {
            view2.setVisibility(8);
        }
        setVisibility(0);
    }

    @Override // android.view.ViewGroup
    public void addView(View view) {
        throw new UnsupportedOperationException("addView(View) is not supported in AdapterView");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    public boolean canAnimate() {
        return super.canAnimate() && this.f70558s > 0;
    }

    @Override // android.view.View
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        View selectedView = getSelectedView();
        return selectedView != null && selectedView.getVisibility() == 0 && selectedView.dispatchPopulateAccessibilityEvent(accessibilityEvent);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchRestoreInstanceState(SparseArray<Parcelable> sparseArray) {
        dispatchThawSelfOnly(sparseArray);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchSaveInstanceState(SparseArray<Parcelable> sparseArray) {
        dispatchFreezeSelfOnly(sparseArray);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void e() {
        T adapter = getAdapter();
        boolean z3 = false;
        boolean z4 = !(adapter == null || adapter.getCount() == 0) || m();
        super.setFocusableInTouchMode(z4 && this.f70564y);
        super.setFocusable(z4 && this.f70563x);
        if (this.f70557r != null) {
            t((adapter == null || adapter.isEmpty()) ? true : true);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void f() {
        if (this.f70555p == this.f70561v && this.f70556q == this.f70562w) {
            return;
        }
        s();
        this.f70561v = this.f70555p;
        this.f70562w = this.f70556q;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0065, code lost:
        return -1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int g() {
        /*
            r17 = this;
            r0 = r17
            int r1 = r0.f70558s
            r2 = -1
            if (r1 != 0) goto L8
            return r2
        L8:
            long r3 = r0.f70543d
            int r5 = r0.f70542c
            r6 = -9223372036854775808
            int r8 = (r3 > r6 ? 1 : (r3 == r6 ? 0 : -1))
            if (r8 != 0) goto L13
            return r2
        L13:
            r6 = 0
            int r5 = java.lang.Math.max(r6, r5)
            r7 = 1
            int r1 = r1 - r7
            int r5 = java.lang.Math.min(r1, r5)
            long r8 = android.os.SystemClock.uptimeMillis()
            r10 = 100
            long r8 = r8 + r10
            android.widget.Adapter r10 = r17.getAdapter()
            if (r10 != 0) goto L2c
            return r2
        L2c:
            r11 = r5
            r12 = r11
        L2e:
            r13 = 0
        L2f:
            long r14 = android.os.SystemClock.uptimeMillis()
            int r16 = (r14 > r8 ? 1 : (r14 == r8 ? 0 : -1))
            if (r16 > 0) goto L65
            long r14 = r10.getItemId(r5)
            int r16 = (r14 > r3 ? 1 : (r14 == r3 ? 0 : -1))
            if (r16 != 0) goto L40
            return r5
        L40:
            if (r11 != r1) goto L44
            r14 = 1
            goto L45
        L44:
            r14 = 0
        L45:
            if (r12 != 0) goto L49
            r15 = 1
            goto L4a
        L49:
            r15 = 0
        L4a:
            if (r14 == 0) goto L4f
            if (r15 == 0) goto L4f
            goto L65
        L4f:
            if (r15 != 0) goto L61
            if (r13 == 0) goto L56
            if (r14 != 0) goto L56
            goto L61
        L56:
            if (r14 != 0) goto L5c
            if (r13 != 0) goto L2f
            if (r15 != 0) goto L2f
        L5c:
            int r12 = r12 + (-1)
            r5 = r12
            r13 = 1
            goto L2f
        L61:
            int r11 = r11 + 1
            r5 = r11
            goto L2e
        L65:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: it.sephiroth.android.library.widget.AdapterView.g():int");
    }

    public abstract T getAdapter();

    @ViewDebug.CapturedViewProperty
    public int getCount() {
        return this.f70558s;
    }

    public View getEmptyView() {
        return this.f70557r;
    }

    public int getFirstVisiblePosition() {
        return this.f70540a;
    }

    public int getLastVisiblePosition() {
        return (this.f70540a + getChildCount()) - 1;
    }

    public final d getOnItemClickListener() {
        return this.f70550k;
    }

    public final e getOnItemLongClickListener() {
        return this.f70551l;
    }

    public final f getOnItemSelectedListener() {
        return this.f70549j;
    }

    public Object getSelectedItem() {
        T adapter = getAdapter();
        int selectedItemPosition = getSelectedItemPosition();
        if (adapter == null || adapter.getCount() <= 0 || selectedItemPosition < 0) {
            return null;
        }
        return adapter.getItem(selectedItemPosition);
    }

    @ViewDebug.CapturedViewProperty
    public long getSelectedItemId() {
        return this.f70554o;
    }

    @ViewDebug.CapturedViewProperty
    public int getSelectedItemPosition() {
        return this.f70553n;
    }

    public abstract View getSelectedView();

    public Object i(int i2) {
        T adapter = getAdapter();
        if (adapter == null || i2 < 0) {
            return null;
        }
        return adapter.getItem(i2);
    }

    public long j(int i2) {
        T adapter = getAdapter();
        if (adapter == null || i2 < 0) {
            return Long.MIN_VALUE;
        }
        return adapter.getItemId(i2);
    }

    public int k(View view) {
        while (true) {
            try {
                View view2 = (View) view.getParent();
                if (view2.equals(this)) {
                    break;
                }
                view = view2;
            } catch (ClassCastException unused) {
            }
        }
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            if (getChildAt(i2).equals(view)) {
                return this.f70540a + i2;
            }
        }
        return -1;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0020  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void l() {
        /*
            r5 = this;
            int r0 = r5.f70558s
            r1 = 1
            r2 = 0
            if (r0 <= 0) goto L40
            boolean r3 = r5.f70545f
            if (r3 == 0) goto L1d
            r5.f70545f = r2
            int r3 = r5.g()
            if (r3 < 0) goto L1d
            int r4 = r5.o(r3, r1)
            if (r4 != r3) goto L1d
            r5.setNextSelectedPositionInt(r3)
            r3 = 1
            goto L1e
        L1d:
            r3 = 0
        L1e:
            if (r3 != 0) goto L3e
            int r4 = r5.getSelectedItemPosition()
            if (r4 < r0) goto L28
            int r4 = r0 + (-1)
        L28:
            if (r4 >= 0) goto L2b
            r4 = 0
        L2b:
            int r0 = r5.o(r4, r1)
            if (r0 >= 0) goto L35
            int r0 = r5.o(r4, r2)
        L35:
            if (r0 < 0) goto L3e
            r5.setNextSelectedPositionInt(r0)
            r5.f()
            goto L41
        L3e:
            r1 = r3
            goto L41
        L40:
            r1 = 0
        L41:
            if (r1 != 0) goto L53
            r0 = -1
            r5.f70555p = r0
            r3 = -9223372036854775808
            r5.f70556q = r3
            r5.f70553n = r0
            r5.f70554o = r3
            r5.f70545f = r2
            r5.f()
        L53:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: it.sephiroth.android.library.widget.AdapterView.l():void");
    }

    boolean m() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int o(int i2, boolean z3) {
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        removeCallbacks(this.f70565z);
    }

    @Override // android.view.View
    @TargetApi(14)
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(AdapterView.class.getName());
        accessibilityEvent.setScrollable(n());
        View selectedView = getSelectedView();
        if (selectedView != null) {
            accessibilityEvent.setEnabled(selectedView.isEnabled());
        }
        accessibilityEvent.setCurrentItemIndex(getSelectedItemPosition());
        accessibilityEvent.setFromIndex(getFirstVisiblePosition());
        accessibilityEvent.setToIndex(getLastVisiblePosition());
        accessibilityEvent.setItemCount(getCount());
    }

    @Override // android.view.View
    @TargetApi(14)
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(AdapterView.class.getName());
        accessibilityNodeInfo.setScrollable(n());
        View selectedView = getSelectedView();
        if (selectedView != null) {
            accessibilityNodeInfo.setEnabled(selectedView.isEnabled());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z3, int i2, int i4, int i5, int i6) {
        this.f70547h = getWidth();
    }

    @Override // android.view.ViewGroup
    @TargetApi(14)
    public boolean onRequestSendAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        if (super.onRequestSendAccessibilityEvent(view, accessibilityEvent)) {
            AccessibilityEvent obtain = AccessibilityEvent.obtain();
            onInitializeAccessibilityEvent(obtain);
            view.dispatchPopulateAccessibilityEvent(obtain);
            accessibilityEvent.appendRecord(obtain);
            return true;
        }
        return false;
    }

    public boolean q(View view, int i2, long j4) {
        if (this.f70550k != null) {
            playSoundEffect(0);
            if (view != null) {
                view.sendAccessibilityEvent(1);
            }
            this.f70550k.a(this, view, i2, j4);
            return true;
        }
        return false;
    }

    public void r() {
        if (getChildCount() > 0) {
            this.f70545f = true;
            this.f70544e = this.f70547h;
            int i2 = this.f70555p;
            if (i2 >= 0) {
                View childAt = getChildAt(i2 - this.f70540a);
                this.f70543d = this.f70554o;
                this.f70542c = this.f70553n;
                if (childAt != null) {
                    this.f70541b = childAt.getLeft();
                }
                this.f70546g = 0;
                return;
            }
            View childAt2 = getChildAt(0);
            T adapter = getAdapter();
            int i4 = this.f70540a;
            if (i4 >= 0 && i4 < adapter.getCount()) {
                this.f70543d = adapter.getItemId(this.f70540a);
            } else {
                this.f70543d = -1L;
            }
            this.f70542c = this.f70540a;
            if (childAt2 != null) {
                this.f70541b = childAt2.getLeft();
            }
            this.f70546g = 1;
        }
    }

    @Override // android.view.ViewGroup
    public void removeAllViews() {
        throw new UnsupportedOperationException("removeAllViews() is not supported in AdapterView");
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void removeView(View view) {
        throw new UnsupportedOperationException("removeView(View) is not supported in AdapterView");
    }

    @Override // android.view.ViewGroup
    public void removeViewAt(int i2) {
        throw new UnsupportedOperationException("removeViewAt(int) is not supported in AdapterView");
    }

    void s() {
        if (this.f70549j != null || this.f70560u.isEnabled()) {
            if (!this.f70548i && !this.A) {
                h();
                p();
                return;
            }
            if (this.f70565z == null) {
                this.f70565z = new g();
            }
            post(this.f70565z);
        }
    }

    public abstract void setAdapter(T t3);

    @TargetApi(16)
    public void setEmptyView(View view) {
        this.f70557r = view;
        boolean z3 = true;
        if (Build.VERSION.SDK_INT >= 16 && view != null && view.getImportantForAccessibility() == 0) {
            view.setImportantForAccessibility(1);
        }
        T adapter = getAdapter();
        if (adapter != null && !adapter.isEmpty()) {
            z3 = false;
        }
        t(z3);
    }

    @Override // android.view.View
    public void setFocusable(boolean z3) {
        T adapter = getAdapter();
        boolean z4 = true;
        boolean z5 = adapter == null || adapter.getCount() == 0;
        this.f70563x = z3;
        if (!z3) {
            this.f70564y = false;
        }
        if (!z3 || (z5 && !m())) {
            z4 = false;
        }
        super.setFocusable(z4);
    }

    @Override // android.view.View
    public void setFocusableInTouchMode(boolean z3) {
        T adapter = getAdapter();
        boolean z4 = false;
        boolean z5 = adapter == null || adapter.getCount() == 0;
        this.f70564y = z3;
        if (z3) {
            this.f70563x = true;
        }
        if (z3 && (!z5 || m())) {
            z4 = true;
        }
        super.setFocusableInTouchMode(z4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setNextSelectedPositionInt(int i2) {
        this.f70553n = i2;
        long j4 = j(i2);
        this.f70554o = j4;
        if (this.f70545f && this.f70546g == 0 && i2 >= 0) {
            this.f70542c = i2;
            this.f70543d = j4;
        }
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        throw new RuntimeException("Don't call setOnClickListener for an AdapterView. You probably want setOnItemClickListener instead");
    }

    public void setOnItemClickListener(d dVar) {
        this.f70550k = dVar;
    }

    public void setOnItemLongClickListener(e eVar) {
        if (!isLongClickable()) {
            setLongClickable(true);
        }
        this.f70551l = eVar;
    }

    public void setOnItemSelectedListener(f fVar) {
        this.f70549j = fVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setSelectedPositionInt(int i2) {
        this.f70555p = i2;
        this.f70556q = j(i2);
    }

    public abstract void setSelection(int i2);

    @Override // android.view.ViewGroup
    public void addView(View view, int i2) {
        throw new UnsupportedOperationException("addView(View, int) is not supported in AdapterView");
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void addView(View view, ViewGroup.LayoutParams layoutParams) {
        throw new UnsupportedOperationException("addView(View, LayoutParams) is not supported in AdapterView");
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i2, ViewGroup.LayoutParams layoutParams) {
        throw new UnsupportedOperationException("addView(View, int, LayoutParams) is not supported in AdapterView");
    }

    public AdapterView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f70540a = 0;
        this.f70543d = Long.MIN_VALUE;
        this.f70545f = false;
        this.f70548i = false;
        this.f70553n = -1;
        this.f70554o = Long.MIN_VALUE;
        this.f70555p = -1;
        this.f70556q = Long.MIN_VALUE;
        this.f70561v = -1;
        this.f70562w = Long.MIN_VALUE;
        this.A = false;
    }

    @TargetApi(16)
    public AdapterView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f70540a = 0;
        this.f70543d = Long.MIN_VALUE;
        this.f70545f = false;
        this.f70548i = false;
        this.f70553n = -1;
        this.f70554o = Long.MIN_VALUE;
        this.f70555p = -1;
        this.f70556q = Long.MIN_VALUE;
        this.f70561v = -1;
        this.f70562w = Long.MIN_VALUE;
        this.A = false;
        if (Build.VERSION.SDK_INT >= 16 && getImportantForAccessibility() == 0) {
            setImportantForAccessibility(1);
        }
        if (isInEditMode()) {
            return;
        }
        this.f70560u = (AccessibilityManager) getContext().getSystemService("accessibility");
    }
}
