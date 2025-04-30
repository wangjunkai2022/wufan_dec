package com.join.mgps.customview;

import android.content.Context;
import android.database.DataSetObserver;
import android.os.Handler;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.ContextMenu;
import android.view.View;
import android.view.ViewDebug;
import android.view.ViewGroup;
import android.widget.Adapter;
/* loaded from: classes3.dex */
public abstract class AdapterView<T extends Adapter> extends ViewGroup {
    public static final int A = -1;
    public static final int B = -2;
    static final int C = 0;
    static final int D = 1;
    static final int E = 100;
    public static final int F = -1;
    public static final long G = Long.MIN_VALUE;
    @ViewDebug.ExportedProperty

    /* renamed from: a  reason: collision with root package name */
    int f44867a;

    /* renamed from: b  reason: collision with root package name */
    int f44868b;

    /* renamed from: c  reason: collision with root package name */
    int f44869c;

    /* renamed from: d  reason: collision with root package name */
    long f44870d;

    /* renamed from: e  reason: collision with root package name */
    long f44871e;

    /* renamed from: f  reason: collision with root package name */
    boolean f44872f;

    /* renamed from: g  reason: collision with root package name */
    int f44873g;

    /* renamed from: h  reason: collision with root package name */
    private int f44874h;

    /* renamed from: i  reason: collision with root package name */
    boolean f44875i;

    /* renamed from: j  reason: collision with root package name */
    f f44876j;

    /* renamed from: k  reason: collision with root package name */
    d f44877k;

    /* renamed from: l  reason: collision with root package name */
    e f44878l;

    /* renamed from: m  reason: collision with root package name */
    boolean f44879m;
    @ViewDebug.ExportedProperty

    /* renamed from: n  reason: collision with root package name */
    int f44880n;

    /* renamed from: o  reason: collision with root package name */
    long f44881o;
    @ViewDebug.ExportedProperty

    /* renamed from: p  reason: collision with root package name */
    int f44882p;

    /* renamed from: q  reason: collision with root package name */
    long f44883q;

    /* renamed from: r  reason: collision with root package name */
    View f44884r;
    @ViewDebug.ExportedProperty

    /* renamed from: s  reason: collision with root package name */
    int f44885s;

    /* renamed from: t  reason: collision with root package name */
    int f44886t;

    /* renamed from: u  reason: collision with root package name */
    int f44887u;

    /* renamed from: v  reason: collision with root package name */
    long f44888v;

    /* renamed from: w  reason: collision with root package name */
    private boolean f44889w;

    /* renamed from: x  reason: collision with root package name */
    private boolean f44890x;

    /* renamed from: y  reason: collision with root package name */
    private AdapterView<T>.g f44891y;

    /* renamed from: z  reason: collision with root package name */
    boolean f44892z;

    /* loaded from: classes3.dex */
    public static class b implements ContextMenu.ContextMenuInfo {

        /* renamed from: a  reason: collision with root package name */
        public View f44893a;

        /* renamed from: b  reason: collision with root package name */
        public int f44894b;

        /* renamed from: c  reason: collision with root package name */
        public long f44895c;

        public b(View view, int i2, long j4) {
            this.f44893a = view;
            this.f44894b = i2;
            this.f44895c = j4;
        }
    }

    /* loaded from: classes3.dex */
    class c extends DataSetObserver {

        /* renamed from: a  reason: collision with root package name */
        private Parcelable f44896a = null;

        /* JADX INFO: Access modifiers changed from: package-private */
        public c() {
        }

        public void a() {
            this.f44896a = null;
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            Parcelable parcelable;
            AdapterView adapterView = AdapterView.this;
            adapterView.f44879m = true;
            adapterView.f44886t = adapterView.f44885s;
            adapterView.f44885s = adapterView.getAdapter().getCount();
            if (AdapterView.this.getAdapter().hasStableIds() && (parcelable = this.f44896a) != null) {
                AdapterView adapterView2 = AdapterView.this;
                if (adapterView2.f44886t == 0 && adapterView2.f44885s > 0) {
                    adapterView2.onRestoreInstanceState(parcelable);
                    this.f44896a = null;
                    AdapterView.this.d();
                    AdapterView.this.requestLayout();
                }
            }
            AdapterView.this.o();
            AdapterView.this.d();
            AdapterView.this.requestLayout();
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            AdapterView adapterView = AdapterView.this;
            adapterView.f44879m = true;
            if (adapterView.getAdapter().hasStableIds()) {
                this.f44896a = AdapterView.this.onSaveInstanceState();
            }
            AdapterView adapterView2 = AdapterView.this;
            adapterView2.f44886t = adapterView2.f44885s;
            adapterView2.f44885s = 0;
            adapterView2.f44882p = -1;
            adapterView2.f44883q = Long.MIN_VALUE;
            adapterView2.f44880n = -1;
            adapterView2.f44881o = Long.MIN_VALUE;
            adapterView2.f44872f = false;
            adapterView2.e();
            AdapterView.this.d();
            AdapterView.this.requestLayout();
        }
    }

    /* loaded from: classes3.dex */
    public interface d {
        void a(AdapterView<?> adapterView, View view, int i2, long j4);
    }

    /* loaded from: classes3.dex */
    public interface e {
        boolean a(AdapterView<?> adapterView, View view, int i2, long j4);
    }

    /* loaded from: classes3.dex */
    public interface f {
        void a(AdapterView<?> adapterView);

        void b(AdapterView<?> adapterView, View view, int i2, long j4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public class g extends Handler implements Runnable {
        private g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            AdapterView adapterView = AdapterView.this;
            if (!adapterView.f44879m) {
                adapterView.g();
            } else {
                post(this);
            }
        }
    }

    public AdapterView(Context context) {
        super(context);
        this.f44867a = 0;
        this.f44870d = Long.MIN_VALUE;
        this.f44872f = false;
        this.f44875i = false;
        this.f44880n = -1;
        this.f44881o = Long.MIN_VALUE;
        this.f44882p = -1;
        this.f44883q = Long.MIN_VALUE;
        this.f44887u = -1;
        this.f44888v = Long.MIN_VALUE;
        this.f44892z = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        if (this.f44876j == null) {
            return;
        }
        int selectedItemPosition = getSelectedItemPosition();
        if (selectedItemPosition >= 0) {
            this.f44876j.b(this, getSelectedView(), selectedItemPosition, getAdapter().getItemId(selectedItemPosition));
            return;
        }
        this.f44876j.a(this);
    }

    private void q(boolean z3) {
        if (l()) {
            z3 = false;
        }
        if (z3) {
            View view = this.f44884r;
            if (view != null) {
                view.setVisibility(0);
                setVisibility(8);
            } else {
                setVisibility(0);
            }
            if (this.f44879m) {
                layout(getLeft(), getTop(), getRight(), getBottom());
                return;
            }
            return;
        }
        View view2 = this.f44884r;
        if (view2 != null) {
            view2.setVisibility(8);
        }
        setVisibility(0);
    }

    @Override // android.view.ViewGroup
    public final void addView(View view) {
        throw new UnsupportedOperationException("addView(View) is not supported in AdapterView");
    }

    @Override // android.view.ViewGroup
    protected final boolean canAnimate() {
        return super.canAnimate() && this.f44885s > 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d() {
        T adapter = getAdapter();
        boolean z3 = false;
        boolean z4 = !(adapter == null || adapter.getCount() == 0) || l();
        super.setFocusableInTouchMode(z4 && this.f44890x);
        super.setFocusable(z4 && this.f44889w);
        if (this.f44884r != null) {
            q((adapter == null || adapter.isEmpty()) ? true : true);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected final void dispatchRestoreInstanceState(SparseArray<Parcelable> sparseArray) {
        dispatchThawSelfOnly(sparseArray);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected final void dispatchSaveInstanceState(SparseArray<Parcelable> sparseArray) {
        dispatchFreezeSelfOnly(sparseArray);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e() {
        if (this.f44882p == this.f44887u && this.f44883q == this.f44888v) {
            return;
        }
        p();
        this.f44887u = this.f44882p;
        this.f44888v = this.f44883q;
    }

    /* JADX WARN: Code restructure failed: missing block: B:36:0x0065, code lost:
        return -1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    final int f() {
        /*
            r17 = this;
            r0 = r17
            int r1 = r0.f44885s
            r2 = -1
            if (r1 != 0) goto L8
            return r2
        L8:
            long r3 = r0.f44870d
            int r5 = r0.f44869c
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
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.customview.AdapterView.f():int");
    }

    public abstract T getAdapter();

    public int getCount() {
        return this.f44885s;
    }

    public final View getEmptyView() {
        return this.f44884r;
    }

    public final int getFirstVisiblePosition() {
        return this.f44867a;
    }

    public final int getLastVisiblePosition() {
        return (this.f44867a + getChildCount()) - 1;
    }

    public final d getOnItemClickListener() {
        return this.f44877k;
    }

    public final e getOnItemLongClickListener() {
        return this.f44878l;
    }

    public final f getOnItemSelectedListener() {
        return this.f44876j;
    }

    public final Object getSelectedItem() {
        T adapter = getAdapter();
        int selectedItemPosition = getSelectedItemPosition();
        if (adapter == null || adapter.getCount() <= 0 || selectedItemPosition < 0) {
            return null;
        }
        return adapter.getItem(selectedItemPosition);
    }

    public final long getSelectedItemId() {
        return this.f44881o;
    }

    public final int getSelectedItemPosition() {
        return this.f44880n;
    }

    public abstract View getSelectedView();

    public Object h(int i2) {
        T adapter = getAdapter();
        if (adapter == null || i2 < 0) {
            return null;
        }
        return adapter.getItem(i2);
    }

    public long i(int i2) {
        T adapter = getAdapter();
        if (adapter == null || i2 < 0) {
            return Long.MIN_VALUE;
        }
        return adapter.getItemId(i2);
    }

    public final int j(View view) {
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
                return this.f44867a + i2;
            }
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0020  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void k() {
        /*
            r5 = this;
            int r0 = r5.f44885s
            r1 = 1
            r2 = 0
            if (r0 <= 0) goto L40
            boolean r3 = r5.f44872f
            if (r3 == 0) goto L1d
            r5.f44872f = r2
            int r3 = r5.f()
            if (r3 < 0) goto L1d
            int r4 = r5.m(r3, r1)
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
            int r0 = r5.m(r4, r1)
            if (r0 >= 0) goto L35
            int r0 = r5.m(r4, r2)
        L35:
            if (r0 < 0) goto L3e
            r5.setNextSelectedPositionInt(r0)
            r5.e()
            goto L41
        L3e:
            r1 = r3
            goto L41
        L40:
            r1 = 0
        L41:
            if (r1 != 0) goto L53
            r0 = -1
            r5.f44882p = r0
            r3 = -9223372036854775808
            r5.f44883q = r3
            r5.f44880n = r0
            r5.f44881o = r3
            r5.f44872f = r2
            r5.e()
        L53:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.customview.AdapterView.k():void");
    }

    final boolean l() {
        return false;
    }

    final int m(int i2, boolean z3) {
        return i2;
    }

    public final boolean n(View view, int i2, long j4) {
        if (this.f44877k != null) {
            playSoundEffect(0);
            this.f44877k.a(this, view, i2, j4);
            return true;
        }
        return false;
    }

    final void o() {
        if (getChildCount() > 0) {
            this.f44872f = true;
            this.f44871e = this.f44874h;
            int i2 = this.f44882p;
            if (i2 >= 0) {
                View childAt = getChildAt(i2 - this.f44867a);
                this.f44870d = this.f44881o;
                this.f44869c = this.f44880n;
                if (childAt != null) {
                    this.f44868b = childAt.getTop();
                }
                this.f44873g = 0;
                return;
            }
            View childAt2 = getChildAt(0);
            T adapter = getAdapter();
            int i4 = this.f44867a;
            if (i4 >= 0 && i4 < adapter.getCount()) {
                this.f44870d = adapter.getItemId(this.f44867a);
            } else {
                this.f44870d = -1L;
            }
            this.f44869c = this.f44867a;
            if (childAt2 != null) {
                this.f44868b = childAt2.getTop();
            }
            this.f44873g = 1;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z3, int i2, int i4, int i5, int i6) {
        this.f44874h = getHeight();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void p() {
        if (this.f44876j != null) {
            if (!this.f44875i && !this.f44892z) {
                g();
                return;
            }
            if (this.f44891y == null) {
                this.f44891y = new g();
            }
            AdapterView<T>.g gVar = this.f44891y;
            gVar.post(gVar);
        }
    }

    @Override // android.view.ViewGroup
    public final void removeAllViews() {
        throw new UnsupportedOperationException("removeAllViews() is not supported in AdapterView");
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public final void removeView(View view) {
        throw new UnsupportedOperationException("removeView(View) is not supported in AdapterView");
    }

    @Override // android.view.ViewGroup
    public final void removeViewAt(int i2) {
        throw new UnsupportedOperationException("removeViewAt(int) is not supported in AdapterView");
    }

    public abstract void setAdapter(T t3);

    public final void setEmptyView(View view) {
        this.f44884r = view;
        T adapter = getAdapter();
        q(adapter == null || adapter.isEmpty());
    }

    @Override // android.view.View
    public final void setFocusable(boolean z3) {
        T adapter = getAdapter();
        boolean z4 = true;
        boolean z5 = adapter == null || adapter.getCount() == 0;
        this.f44889w = z3;
        if (!z3) {
            this.f44890x = false;
        }
        if (!z3 || (z5 && !l())) {
            z4 = false;
        }
        super.setFocusable(z4);
    }

    @Override // android.view.View
    public final void setFocusableInTouchMode(boolean z3) {
        T adapter = getAdapter();
        boolean z4 = false;
        boolean z5 = adapter == null || adapter.getCount() == 0;
        this.f44890x = z3;
        if (z3) {
            this.f44889w = true;
        }
        if (z3 && (!z5 || l())) {
            z4 = true;
        }
        super.setFocusableInTouchMode(z4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setNextSelectedPositionInt(int i2) {
        this.f44880n = i2;
        long i4 = i(i2);
        this.f44881o = i4;
        if (this.f44872f && this.f44873g == 0 && i2 >= 0) {
            this.f44869c = i2;
            this.f44870d = i4;
        }
    }

    @Override // android.view.View
    public final void setOnClickListener(View.OnClickListener onClickListener) {
        throw new RuntimeException("Don't call setOnClickListener for an AdapterView. You probably want setOnItemClickListener instead");
    }

    public final void setOnItemClickListener(d dVar) {
        this.f44877k = dVar;
    }

    public final void setOnItemLongClickListener(e eVar) {
        if (!isLongClickable()) {
            setLongClickable(true);
        }
        this.f44878l = eVar;
    }

    public final void setOnItemSelectedListener(f fVar) {
        this.f44876j = fVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setSelectedPositionInt(int i2) {
        this.f44882p = i2;
        this.f44883q = i(i2);
    }

    public abstract void setSelection(int i2);

    @Override // android.view.ViewGroup
    public final void addView(View view, int i2) {
        throw new UnsupportedOperationException("addView(View, int) is not supported in AdapterView");
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public final void addView(View view, ViewGroup.LayoutParams layoutParams) {
        throw new UnsupportedOperationException("addView(View, LayoutParams) is not supported in AdapterView");
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i2, ViewGroup.LayoutParams layoutParams) {
        throw new UnsupportedOperationException("addView(View, int, LayoutParams) is not supported in AdapterView");
    }

    public AdapterView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f44867a = 0;
        this.f44870d = Long.MIN_VALUE;
        this.f44872f = false;
        this.f44875i = false;
        this.f44880n = -1;
        this.f44881o = Long.MIN_VALUE;
        this.f44882p = -1;
        this.f44883q = Long.MIN_VALUE;
        this.f44887u = -1;
        this.f44888v = Long.MIN_VALUE;
        this.f44892z = false;
    }

    public AdapterView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f44867a = 0;
        this.f44870d = Long.MIN_VALUE;
        this.f44872f = false;
        this.f44875i = false;
        this.f44880n = -1;
        this.f44881o = Long.MIN_VALUE;
        this.f44882p = -1;
        this.f44883q = Long.MIN_VALUE;
        this.f44887u = -1;
        this.f44888v = Long.MIN_VALUE;
        this.f44892z = false;
    }
}
