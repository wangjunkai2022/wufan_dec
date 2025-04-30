package it.sephiroth.android.library.widget;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.ContextMenu;
import android.view.Gravity;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.ExpandableListAdapter;
import android.widget.ListAdapter;
import com.join.android.app.mgsim.wufun.R;
import it.sephiroth.android.library.widget.AdapterView;
import it.sephiroth.android.library.widget.ExpandableHListConnector;
import java.util.ArrayList;
/* loaded from: classes5.dex */
public class ExpandableHListView extends HListView {
    private static final int[] A3 = {16842918};

    /* renamed from: i3  reason: collision with root package name */
    public static final int f70588i3 = 0;

    /* renamed from: j3  reason: collision with root package name */
    public static final int f70589j3 = 1;

    /* renamed from: k3  reason: collision with root package name */
    public static final int f70590k3 = 2;

    /* renamed from: l3  reason: collision with root package name */
    public static final long f70591l3 = 4294967295L;

    /* renamed from: m3  reason: collision with root package name */
    private static final long f70592m3 = 4294967295L;

    /* renamed from: n3  reason: collision with root package name */
    private static final long f70593n3 = 9223372032559808512L;
    private static final long o3 = Long.MIN_VALUE;
    private static final long p3 = 32;
    private static final long q3 = 63;
    private static final long r3 = -1;
    private static final long s3 = 2147483647L;
    public static final int t3 = -1;
    private static final int u3 = -2;
    private static final int[] v3;
    private static final int[] w3;
    private static final int[] x3;
    private static final int[] y3;
    private static final int[][] z3;
    private ExpandableHListConnector N2;
    private ExpandableListAdapter O2;
    private int P2;
    private int Q2;
    private int R2;
    private int S2;
    private int T2;
    private int U2;
    private Drawable V2;
    private Drawable W2;
    private Drawable X2;
    private final Rect Y2;
    private final Rect Z2;

    /* renamed from: a3  reason: collision with root package name */
    private int f70594a3;

    /* renamed from: b3  reason: collision with root package name */
    private int f70595b3;

    /* renamed from: c3  reason: collision with root package name */
    private int f70596c3;

    /* renamed from: d3  reason: collision with root package name */
    private int f70597d3;

    /* renamed from: e3  reason: collision with root package name */
    private e f70598e3;

    /* renamed from: f3  reason: collision with root package name */
    private f f70599f3;

    /* renamed from: g3  reason: collision with root package name */
    private d f70600g3;

    /* renamed from: h3  reason: collision with root package name */
    private c f70601h3;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        /* renamed from: a  reason: collision with root package name */
        ArrayList<ExpandableHListConnector.GroupMetadata> f70602a;

        /* loaded from: classes5.dex */
        class a implements Parcelable.Creator<SavedState> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: b */
            public SavedState[] newArray(int i2) {
                return new SavedState[i2];
            }
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            parcel.writeList(this.f70602a);
        }

        SavedState(Parcelable parcelable, ArrayList<ExpandableHListConnector.GroupMetadata> arrayList) {
            super(parcelable);
            this.f70602a = arrayList;
        }

        private SavedState(Parcel parcel) {
            super(parcel);
            ArrayList<ExpandableHListConnector.GroupMetadata> arrayList = new ArrayList<>();
            this.f70602a = arrayList;
            parcel.readList(arrayList, ExpandableHListConnector.class.getClassLoader());
        }
    }

    /* loaded from: classes5.dex */
    public static class b implements ContextMenu.ContextMenuInfo {

        /* renamed from: a  reason: collision with root package name */
        public View f70603a;

        /* renamed from: b  reason: collision with root package name */
        public long f70604b;

        /* renamed from: c  reason: collision with root package name */
        public long f70605c;

        public b(View view, long j4, long j5) {
            this.f70603a = view;
            this.f70604b = j4;
            this.f70605c = j5;
        }
    }

    /* loaded from: classes5.dex */
    public interface c {
        boolean a(ExpandableHListView expandableHListView, View view, int i2, int i4, long j4);
    }

    /* loaded from: classes5.dex */
    public interface d {
        boolean a(ExpandableHListView expandableHListView, View view, int i2, long j4);
    }

    /* loaded from: classes5.dex */
    public interface e {
        void a(int i2);
    }

    /* loaded from: classes5.dex */
    public interface f {
        void a(int i2);
    }

    static {
        int[] iArr = new int[0];
        v3 = iArr;
        int[] iArr2 = {16842920};
        w3 = iArr2;
        int[] iArr3 = {16842921};
        x3 = iArr3;
        int[] iArr4 = {16842920, 16842921};
        y3 = iArr4;
        z3 = new int[][]{iArr, iArr2, iArr3, iArr4};
    }

    public ExpandableHListView(Context context) {
        this(context, null);
    }

    private int g2(int i2) {
        return i2 + getHeaderViewsCount();
    }

    private long h2(it.sephiroth.android.library.widget.a aVar) {
        if (aVar.f70631d == 1) {
            return this.O2.getChildId(aVar.f70628a, aVar.f70629b);
        }
        return this.O2.getGroupId(aVar.f70628a);
    }

    private int k2(int i2) {
        return i2 - getHeaderViewsCount();
    }

    private Drawable l2(ExpandableHListConnector.b bVar) {
        Drawable drawable;
        if (bVar.f70585a.f70631d == 2) {
            drawable = this.V2;
            if (drawable != null && drawable.isStateful()) {
                ExpandableHListConnector.GroupMetadata groupMetadata = bVar.f70586b;
                drawable.setState(z3[bVar.b() | (groupMetadata == null || groupMetadata.f70579b == groupMetadata.f70578a ? (char) 2 : (char) 0)]);
            }
        } else {
            drawable = this.W2;
            if (drawable != null && drawable.isStateful()) {
                drawable.setState(bVar.f70585a.f70630c == bVar.f70586b.f70579b ? A3 : v3);
            }
        }
        return drawable;
    }

    public static int m2(long j4) {
        if (j4 != 4294967295L && (j4 & Long.MIN_VALUE) == Long.MIN_VALUE) {
            return (int) (j4 & 4294967295L);
        }
        return -1;
    }

    public static long n2(int i2, int i4) {
        return (i4 & (-1)) | ((i2 & s3) << 32) | Long.MIN_VALUE;
    }

    public static long o2(int i2) {
        return (i2 & s3) << 32;
    }

    public static int p2(long j4) {
        if (j4 == 4294967295L) {
            return -1;
        }
        return (int) ((j4 & f70593n3) >> 32);
    }

    public static int q2(long j4) {
        if (j4 == 4294967295L) {
            return 2;
        }
        return (j4 & Long.MIN_VALUE) == Long.MIN_VALUE ? 1 : 0;
    }

    private boolean t2(int i2) {
        return i2 < getHeaderViewsCount() || i2 >= this.f70558s - getFooterViewsCount();
    }

    private void u2() {
        Drawable drawable = this.W2;
        if (drawable != null) {
            this.f70596c3 = drawable.getIntrinsicWidth();
            this.f70597d3 = this.W2.getIntrinsicHeight();
            return;
        }
        this.f70596c3 = 0;
        this.f70597d3 = 0;
    }

    private void v2() {
        Drawable drawable = this.V2;
        if (drawable != null) {
            this.f70594a3 = drawable.getIntrinsicWidth();
            this.f70595b3 = this.V2.getIntrinsicHeight();
            return;
        }
        this.f70594a3 = 0;
        this.f70595b3 = 0;
    }

    @Override // it.sephiroth.android.library.widget.AbsHListView
    ContextMenu.ContextMenuInfo U(View view, int i2, long j4) {
        if (t2(i2)) {
            return new AdapterView.b(view, i2, j4);
        }
        ExpandableHListConnector.b j5 = this.N2.j(k2(i2));
        it.sephiroth.android.library.widget.a aVar = j5.f70585a;
        long h22 = h2(aVar);
        long a4 = aVar.a();
        j5.d();
        return new b(view, a4, h22);
    }

    public boolean d2(int i2) {
        boolean b4 = this.N2.b(i2);
        e eVar = this.f70598e3;
        if (eVar != null) {
            eVar.a(i2);
        }
        return b4;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // it.sephiroth.android.library.widget.HListView, it.sephiroth.android.library.widget.AbsHListView, android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        if (this.W2 == null && this.V2 == null) {
            return;
        }
        int headerViewsCount = getHeaderViewsCount();
        int footerViewsCount = ((this.f70558s - getFooterViewsCount()) - headerViewsCount) - 1;
        int right = getRight();
        int i2 = -4;
        Rect rect = this.Y2;
        int childCount = getChildCount();
        int i4 = 0;
        int i5 = this.f70540a - headerViewsCount;
        while (i4 < childCount) {
            if (i5 >= 0) {
                if (i5 > footerViewsCount) {
                    return;
                }
                View childAt = getChildAt(i4);
                int left = childAt.getLeft();
                int right2 = childAt.getRight();
                if (right2 >= 0 && left <= right) {
                    ExpandableHListConnector.b j4 = this.N2.j(i5);
                    int i6 = j4.f70585a.f70631d;
                    if (i6 != i2) {
                        if (i6 == 1) {
                            rect.top = childAt.getTop() + this.T2;
                            rect.bottom = childAt.getBottom() + this.T2;
                        } else {
                            rect.top = childAt.getTop() + this.P2;
                            rect.bottom = childAt.getBottom() + this.P2;
                        }
                        i2 = j4.f70585a.f70631d;
                    }
                    if (rect.top != rect.bottom) {
                        if (j4.f70585a.f70631d == 1) {
                            int i7 = this.U2;
                            rect.left = left + i7;
                            rect.right = right2 + i7;
                        } else {
                            int i8 = this.Q2;
                            rect.left = left + i8;
                            rect.right = right2 + i8;
                        }
                        Drawable l22 = l2(j4);
                        if (l22 != null) {
                            if (j4.f70585a.f70631d == 1) {
                                Gravity.apply(this.S2, this.f70596c3, this.f70597d3, rect, this.Z2);
                            } else {
                                Gravity.apply(this.R2, this.f70594a3, this.f70595b3, rect, this.Z2);
                            }
                            l22.setBounds(this.Z2);
                            l22.draw(canvas);
                        }
                    }
                    j4.d();
                }
            }
            i4++;
            i5++;
        }
    }

    public boolean e2(int i2) {
        return f2(i2, false);
    }

    public boolean f2(int i2, boolean z4) {
        it.sephiroth.android.library.widget.a c4 = it.sephiroth.android.library.widget.a.c(2, i2, -1, -1);
        ExpandableHListConnector.b i4 = this.N2.i(c4);
        c4.g();
        boolean e4 = this.N2.e(i4);
        f fVar = this.f70599f3;
        if (fVar != null) {
            fVar.a(i2);
        }
        if (z4) {
            int headerViewsCount = i4.f70585a.f70630c + getHeaderViewsCount();
            Q0(this.O2.getChildrenCount(i2) + headerViewsCount, headerViewsCount);
        }
        i4.d();
        return e4;
    }

    public ExpandableListAdapter getExpandableListAdapter() {
        return this.O2;
    }

    public long getSelectedId() {
        long selectedPosition = getSelectedPosition();
        if (selectedPosition == 4294967295L) {
            return -1L;
        }
        int p22 = p2(selectedPosition);
        if (q2(selectedPosition) == 0) {
            return this.O2.getGroupId(p22);
        }
        return this.O2.getChildId(p22, m2(selectedPosition));
    }

    public long getSelectedPosition() {
        return i2(getSelectedItemPosition());
    }

    public long i2(int i2) {
        if (t2(i2)) {
            return 4294967295L;
        }
        ExpandableHListConnector.b j4 = this.N2.j(k2(i2));
        long a4 = j4.f70585a.a();
        j4.d();
        return a4;
    }

    public int j2(long j4) {
        it.sephiroth.android.library.widget.a f4 = it.sephiroth.android.library.widget.a.f(j4);
        ExpandableHListConnector.b i2 = this.N2.i(f4);
        f4.g();
        int i4 = i2.f70585a.f70630c;
        i2.d();
        return g2(i4);
    }

    @Override // it.sephiroth.android.library.widget.HListView, it.sephiroth.android.library.widget.AbsHListView, it.sephiroth.android.library.widget.AdapterView, android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(ExpandableHListView.class.getName());
    }

    @Override // it.sephiroth.android.library.widget.HListView, it.sephiroth.android.library.widget.AbsHListView, it.sephiroth.android.library.widget.AdapterView, android.view.View
    @TargetApi(14)
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(ExpandableHListView.class.getName());
    }

    @Override // it.sephiroth.android.library.widget.AbsHListView, android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        ArrayList<ExpandableHListConnector.GroupMetadata> arrayList;
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        ExpandableHListConnector expandableHListConnector = this.N2;
        if (expandableHListConnector == null || (arrayList = savedState.f70602a) == null) {
            return;
        }
        expandableHListConnector.n(arrayList);
    }

    @Override // android.view.View
    public void onRtlPropertiesChanged(int i2) {
        v2();
        u2();
    }

    @Override // it.sephiroth.android.library.widget.AbsHListView, android.view.View
    public Parcelable onSaveInstanceState() {
        Parcelable onSaveInstanceState = super.onSaveInstanceState();
        ExpandableHListConnector expandableHListConnector = this.N2;
        return new SavedState(onSaveInstanceState, expandableHListConnector != null ? expandableHListConnector.h() : null);
    }

    @Override // it.sephiroth.android.library.widget.AbsHListView, it.sephiroth.android.library.widget.AdapterView
    public boolean q(View view, int i2, long j4) {
        if (t2(i2)) {
            return super.q(view, i2, j4);
        }
        return r2(view, k2(i2), j4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0022, code lost:
        if (r1.f70579b != r1.f70578a) goto L10;
     */
    @Override // it.sephiroth.android.library.widget.HListView
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void r1(android.graphics.Canvas r4, android.graphics.Rect r5, int r6) {
        /*
            r3 = this;
            int r0 = r3.f70540a
            int r6 = r6 + r0
            if (r6 < 0) goto L35
            int r0 = r3.k2(r6)
            it.sephiroth.android.library.widget.ExpandableHListConnector r1 = r3.N2
            it.sephiroth.android.library.widget.ExpandableHListConnector$b r0 = r1.j(r0)
            it.sephiroth.android.library.widget.a r1 = r0.f70585a
            int r1 = r1.f70631d
            r2 = 1
            if (r1 == r2) goto L29
            boolean r1 = r0.b()
            if (r1 == 0) goto L25
            it.sephiroth.android.library.widget.ExpandableHListConnector$GroupMetadata r1 = r0.f70586b
            int r2 = r1.f70579b
            int r1 = r1.f70578a
            if (r2 == r1) goto L25
            goto L29
        L25:
            r0.d()
            goto L35
        L29:
            android.graphics.drawable.Drawable r6 = r3.X2
            r6.setBounds(r5)
            r6.draw(r4)
            r0.d()
            return
        L35:
            super.r1(r4, r5, r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: it.sephiroth.android.library.widget.ExpandableHListView.r1(android.graphics.Canvas, android.graphics.Rect, int):void");
    }

    boolean r2(View view, int i2, long j4) {
        ExpandableHListConnector.b j5 = this.N2.j(i2);
        long h22 = h2(j5.f70585a);
        it.sephiroth.android.library.widget.a aVar = j5.f70585a;
        boolean z4 = true;
        if (aVar.f70631d == 2) {
            d dVar = this.f70600g3;
            if (dVar != null && dVar.a(this, view, aVar.f70628a, h22)) {
                j5.d();
                return true;
            } else if (j5.b()) {
                this.N2.c(j5);
                playSoundEffect(0);
                e eVar = this.f70598e3;
                if (eVar != null) {
                    eVar.a(j5.f70585a.f70628a);
                }
            } else {
                this.N2.e(j5);
                playSoundEffect(0);
                f fVar = this.f70599f3;
                if (fVar != null) {
                    fVar.a(j5.f70585a.f70628a);
                }
                it.sephiroth.android.library.widget.a aVar2 = j5.f70585a;
                int i4 = aVar2.f70628a;
                int headerViewsCount = aVar2.f70630c + getHeaderViewsCount();
                Q0(this.O2.getChildrenCount(i4) + headerViewsCount, headerViewsCount);
            }
        } else if (this.f70601h3 != null) {
            playSoundEffect(0);
            c cVar = this.f70601h3;
            it.sephiroth.android.library.widget.a aVar3 = j5.f70585a;
            return cVar.a(this, view, aVar3.f70628a, aVar3.f70629b, h22);
        } else {
            z4 = false;
        }
        j5.d();
        return z4;
    }

    public boolean s2(int i2) {
        return this.N2.k(i2);
    }

    public void setChildDivider(Drawable drawable) {
        this.X2 = drawable;
    }

    public void setChildIndicator(Drawable drawable) {
        this.W2 = drawable;
        u2();
    }

    public void setGroupIndicator(Drawable drawable) {
        this.V2 = drawable;
        v2();
    }

    public void setOnChildClickListener(c cVar) {
        this.f70601h3 = cVar;
    }

    public void setOnGroupClickListener(d dVar) {
        this.f70600g3 = dVar;
    }

    public void setOnGroupCollapseListener(e eVar) {
        this.f70598e3 = eVar;
    }

    public void setOnGroupExpandListener(f fVar) {
        this.f70599f3 = fVar;
    }

    @Override // it.sephiroth.android.library.widget.AdapterView
    public void setOnItemClickListener(AdapterView.d dVar) {
        super.setOnItemClickListener(dVar);
    }

    public void setSelectedGroup(int i2) {
        it.sephiroth.android.library.widget.a e4 = it.sephiroth.android.library.widget.a.e(i2);
        ExpandableHListConnector.b i4 = this.N2.i(e4);
        e4.g();
        super.setSelection(g2(i4.f70585a.f70630c));
        i4.d();
    }

    public boolean w2(int i2, int i4, boolean z4) {
        it.sephiroth.android.library.widget.a d4 = it.sephiroth.android.library.widget.a.d(i2, i4);
        ExpandableHListConnector.b i5 = this.N2.i(d4);
        if (i5 == null) {
            if (!z4) {
                return false;
            }
            e2(i2);
            i5 = this.N2.i(d4);
            if (i5 == null) {
                throw new IllegalStateException("Could not find child");
            }
        }
        super.setSelection(g2(i5.f70585a.f70630c));
        d4.g();
        i5.d();
        return true;
    }

    public ExpandableHListView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.hlv_expandableListViewStyle);
    }

    @Override // it.sephiroth.android.library.widget.HListView, it.sephiroth.android.library.widget.AdapterView
    public ListAdapter getAdapter() {
        return super.getAdapter();
    }

    @Override // it.sephiroth.android.library.widget.HListView, it.sephiroth.android.library.widget.AbsHListView, it.sephiroth.android.library.widget.AdapterView
    public void setAdapter(ListAdapter listAdapter) {
        throw new RuntimeException("For ExpandableListView, use setAdapter(ExpandableListAdapter) instead of setAdapter(ListAdapter)");
    }

    public ExpandableHListView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.Y2 = new Rect();
        this.Z2 = new Rect();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ExpandableHListView, i2, 0);
        setGroupIndicator(obtainStyledAttributes.getDrawable(5));
        setChildIndicator(obtainStyledAttributes.getDrawable(1));
        this.Q2 = obtainStyledAttributes.getDimensionPixelSize(7, 0);
        this.P2 = obtainStyledAttributes.getDimensionPixelSize(8, 0);
        this.R2 = obtainStyledAttributes.getInt(6, 0);
        this.S2 = obtainStyledAttributes.getInt(2, 0);
        this.U2 = obtainStyledAttributes.getDimensionPixelSize(3, 0);
        this.T2 = obtainStyledAttributes.getDimensionPixelSize(4, 0);
        this.X2 = obtainStyledAttributes.getDrawable(0);
        obtainStyledAttributes.recycle();
    }

    public void setAdapter(ExpandableListAdapter expandableListAdapter) {
        this.O2 = expandableListAdapter;
        if (expandableListAdapter != null) {
            this.N2 = new ExpandableHListConnector(expandableListAdapter);
        } else {
            this.N2 = null;
        }
        super.setAdapter((ListAdapter) this.N2);
    }
}
