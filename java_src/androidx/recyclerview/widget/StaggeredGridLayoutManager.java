package androidx.recyclerview.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.PointF;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.List;
/* loaded from: classes2.dex */
public class StaggeredGridLayoutManager extends RecyclerView.LayoutManager implements RecyclerView.SmoothScroller.ScrollVectorProvider {
    static final int A = Integer.MIN_VALUE;
    private static final float B = 0.33333334f;
    @Deprecated
    public static final int GAP_HANDLING_LAZY = 1;
    public static final int GAP_HANDLING_MOVE_ITEMS_BETWEEN_SPANS = 2;
    public static final int GAP_HANDLING_NONE = 0;
    public static final int HORIZONTAL = 0;
    public static final int VERTICAL = 1;

    /* renamed from: y  reason: collision with root package name */
    private static final String f7249y = "StaggeredGridLManager";

    /* renamed from: z  reason: collision with root package name */
    static final boolean f7250z = false;

    /* renamed from: b  reason: collision with root package name */
    Span[] f7252b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    OrientationHelper f7253c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    OrientationHelper f7254d;

    /* renamed from: e  reason: collision with root package name */
    private int f7255e;

    /* renamed from: f  reason: collision with root package name */
    private int f7256f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    private final LayoutState f7257g;

    /* renamed from: j  reason: collision with root package name */
    private BitSet f7260j;

    /* renamed from: o  reason: collision with root package name */
    private boolean f7265o;

    /* renamed from: p  reason: collision with root package name */
    private boolean f7266p;

    /* renamed from: q  reason: collision with root package name */
    private SavedState f7267q;

    /* renamed from: r  reason: collision with root package name */
    private int f7268r;

    /* renamed from: w  reason: collision with root package name */
    private int[] f7273w;

    /* renamed from: a  reason: collision with root package name */
    private int f7251a = -1;

    /* renamed from: h  reason: collision with root package name */
    boolean f7258h = false;

    /* renamed from: i  reason: collision with root package name */
    boolean f7259i = false;

    /* renamed from: k  reason: collision with root package name */
    int f7261k = -1;

    /* renamed from: l  reason: collision with root package name */
    int f7262l = Integer.MIN_VALUE;

    /* renamed from: m  reason: collision with root package name */
    LazySpanLookup f7263m = new LazySpanLookup();

    /* renamed from: n  reason: collision with root package name */
    private int f7264n = 2;

    /* renamed from: s  reason: collision with root package name */
    private final Rect f7269s = new Rect();

    /* renamed from: t  reason: collision with root package name */
    private final AnchorInfo f7270t = new AnchorInfo();

    /* renamed from: u  reason: collision with root package name */
    private boolean f7271u = false;

    /* renamed from: v  reason: collision with root package name */
    private boolean f7272v = true;

    /* renamed from: x  reason: collision with root package name */
    private final Runnable f7274x = new Runnable() { // from class: androidx.recyclerview.widget.StaggeredGridLayoutManager.1
        @Override // java.lang.Runnable
        public void run() {
            StaggeredGridLayoutManager.this.g();
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class AnchorInfo {

        /* renamed from: a  reason: collision with root package name */
        int f7276a;

        /* renamed from: b  reason: collision with root package name */
        int f7277b;

        /* renamed from: c  reason: collision with root package name */
        boolean f7278c;

        /* renamed from: d  reason: collision with root package name */
        boolean f7279d;

        /* renamed from: e  reason: collision with root package name */
        boolean f7280e;

        /* renamed from: f  reason: collision with root package name */
        int[] f7281f;

        AnchorInfo() {
            c();
        }

        void a() {
            this.f7277b = this.f7278c ? StaggeredGridLayoutManager.this.f7253c.getEndAfterPadding() : StaggeredGridLayoutManager.this.f7253c.getStartAfterPadding();
        }

        void b(int i2) {
            if (this.f7278c) {
                this.f7277b = StaggeredGridLayoutManager.this.f7253c.getEndAfterPadding() - i2;
            } else {
                this.f7277b = StaggeredGridLayoutManager.this.f7253c.getStartAfterPadding() + i2;
            }
        }

        void c() {
            this.f7276a = -1;
            this.f7277b = Integer.MIN_VALUE;
            this.f7278c = false;
            this.f7279d = false;
            this.f7280e = false;
            int[] iArr = this.f7281f;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
        }

        void d(Span[] spanArr) {
            int length = spanArr.length;
            int[] iArr = this.f7281f;
            if (iArr == null || iArr.length < length) {
                this.f7281f = new int[StaggeredGridLayoutManager.this.f7252b.length];
            }
            for (int i2 = 0; i2 < length; i2++) {
                this.f7281f[i2] = spanArr[i2].m(Integer.MIN_VALUE);
            }
        }
    }

    /* loaded from: classes2.dex */
    public static class LayoutParams extends RecyclerView.LayoutParams {
        public static final int INVALID_SPAN_ID = -1;

        /* renamed from: e  reason: collision with root package name */
        Span f7283e;

        /* renamed from: f  reason: collision with root package name */
        boolean f7284f;

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public final int getSpanIndex() {
            Span span = this.f7283e;
            if (span == null) {
                return -1;
            }
            return span.f7307e;
        }

        public boolean isFullSpan() {
            return this.f7284f;
        }

        public void setFullSpan(boolean z3) {
            this.f7284f = z3;
        }

        public LayoutParams(int i2, int i4) {
            super(i2, i4);
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public LayoutParams(RecyclerView.LayoutParams layoutParams) {
            super(layoutParams);
        }
    }

    @SuppressLint({"BanParcelableUsage"})
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    /* loaded from: classes2.dex */
    public static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: androidx.recyclerview.widget.StaggeredGridLayoutManager.SavedState.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i2) {
                return new SavedState[i2];
            }
        };

        /* renamed from: a  reason: collision with root package name */
        int f7292a;

        /* renamed from: b  reason: collision with root package name */
        int f7293b;

        /* renamed from: c  reason: collision with root package name */
        int f7294c;

        /* renamed from: d  reason: collision with root package name */
        int[] f7295d;

        /* renamed from: e  reason: collision with root package name */
        int f7296e;

        /* renamed from: f  reason: collision with root package name */
        int[] f7297f;

        /* renamed from: g  reason: collision with root package name */
        List<LazySpanLookup.FullSpanItem> f7298g;

        /* renamed from: h  reason: collision with root package name */
        boolean f7299h;

        /* renamed from: i  reason: collision with root package name */
        boolean f7300i;

        /* renamed from: j  reason: collision with root package name */
        boolean f7301j;

        public SavedState() {
        }

        void a() {
            this.f7295d = null;
            this.f7294c = 0;
            this.f7292a = -1;
            this.f7293b = -1;
        }

        void b() {
            this.f7295d = null;
            this.f7294c = 0;
            this.f7296e = 0;
            this.f7297f = null;
            this.f7298g = null;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeInt(this.f7292a);
            parcel.writeInt(this.f7293b);
            parcel.writeInt(this.f7294c);
            if (this.f7294c > 0) {
                parcel.writeIntArray(this.f7295d);
            }
            parcel.writeInt(this.f7296e);
            if (this.f7296e > 0) {
                parcel.writeIntArray(this.f7297f);
            }
            parcel.writeInt(this.f7299h ? 1 : 0);
            parcel.writeInt(this.f7300i ? 1 : 0);
            parcel.writeInt(this.f7301j ? 1 : 0);
            parcel.writeList(this.f7298g);
        }

        SavedState(Parcel parcel) {
            this.f7292a = parcel.readInt();
            this.f7293b = parcel.readInt();
            int readInt = parcel.readInt();
            this.f7294c = readInt;
            if (readInt > 0) {
                int[] iArr = new int[readInt];
                this.f7295d = iArr;
                parcel.readIntArray(iArr);
            }
            int readInt2 = parcel.readInt();
            this.f7296e = readInt2;
            if (readInt2 > 0) {
                int[] iArr2 = new int[readInt2];
                this.f7297f = iArr2;
                parcel.readIntArray(iArr2);
            }
            this.f7299h = parcel.readInt() == 1;
            this.f7300i = parcel.readInt() == 1;
            this.f7301j = parcel.readInt() == 1;
            this.f7298g = parcel.readArrayList(LazySpanLookup.FullSpanItem.class.getClassLoader());
        }

        public SavedState(SavedState savedState) {
            this.f7294c = savedState.f7294c;
            this.f7292a = savedState.f7292a;
            this.f7293b = savedState.f7293b;
            this.f7295d = savedState.f7295d;
            this.f7296e = savedState.f7296e;
            this.f7297f = savedState.f7297f;
            this.f7299h = savedState.f7299h;
            this.f7300i = savedState.f7300i;
            this.f7301j = savedState.f7301j;
            this.f7298g = savedState.f7298g;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class Span {

        /* renamed from: g  reason: collision with root package name */
        static final int f7302g = Integer.MIN_VALUE;

        /* renamed from: a  reason: collision with root package name */
        ArrayList<View> f7303a = new ArrayList<>();

        /* renamed from: b  reason: collision with root package name */
        int f7304b = Integer.MIN_VALUE;

        /* renamed from: c  reason: collision with root package name */
        int f7305c = Integer.MIN_VALUE;

        /* renamed from: d  reason: collision with root package name */
        int f7306d = 0;

        /* renamed from: e  reason: collision with root package name */
        final int f7307e;

        Span(int i2) {
            this.f7307e = i2;
        }

        void a(View view) {
            LayoutParams k4 = k(view);
            k4.f7283e = this;
            this.f7303a.add(view);
            this.f7305c = Integer.MIN_VALUE;
            if (this.f7303a.size() == 1) {
                this.f7304b = Integer.MIN_VALUE;
            }
            if (k4.isItemRemoved() || k4.isItemChanged()) {
                this.f7306d += StaggeredGridLayoutManager.this.f7253c.getDecoratedMeasurement(view);
            }
        }

        void b(boolean z3, int i2) {
            int m4;
            if (z3) {
                m4 = j(Integer.MIN_VALUE);
            } else {
                m4 = m(Integer.MIN_VALUE);
            }
            e();
            if (m4 == Integer.MIN_VALUE) {
                return;
            }
            if (!z3 || m4 >= StaggeredGridLayoutManager.this.f7253c.getEndAfterPadding()) {
                if (z3 || m4 <= StaggeredGridLayoutManager.this.f7253c.getStartAfterPadding()) {
                    if (i2 != Integer.MIN_VALUE) {
                        m4 += i2;
                    }
                    this.f7305c = m4;
                    this.f7304b = m4;
                }
            }
        }

        void c() {
            LazySpanLookup.FullSpanItem fullSpanItem;
            ArrayList<View> arrayList = this.f7303a;
            View view = arrayList.get(arrayList.size() - 1);
            LayoutParams k4 = k(view);
            this.f7305c = StaggeredGridLayoutManager.this.f7253c.getDecoratedEnd(view);
            if (k4.f7284f && (fullSpanItem = StaggeredGridLayoutManager.this.f7263m.getFullSpanItem(k4.getViewLayoutPosition())) != null && fullSpanItem.f7289b == 1) {
                this.f7305c += fullSpanItem.a(this.f7307e);
            }
        }

        void d() {
            LazySpanLookup.FullSpanItem fullSpanItem;
            View view = this.f7303a.get(0);
            LayoutParams k4 = k(view);
            this.f7304b = StaggeredGridLayoutManager.this.f7253c.getDecoratedStart(view);
            if (k4.f7284f && (fullSpanItem = StaggeredGridLayoutManager.this.f7263m.getFullSpanItem(k4.getViewLayoutPosition())) != null && fullSpanItem.f7289b == -1) {
                this.f7304b -= fullSpanItem.a(this.f7307e);
            }
        }

        void e() {
            this.f7303a.clear();
            n();
            this.f7306d = 0;
        }

        int f(int i2, int i4, boolean z3, boolean z4, boolean z5) {
            int startAfterPadding = StaggeredGridLayoutManager.this.f7253c.getStartAfterPadding();
            int endAfterPadding = StaggeredGridLayoutManager.this.f7253c.getEndAfterPadding();
            int i5 = i4 > i2 ? 1 : -1;
            while (i2 != i4) {
                View view = this.f7303a.get(i2);
                int decoratedStart = StaggeredGridLayoutManager.this.f7253c.getDecoratedStart(view);
                int decoratedEnd = StaggeredGridLayoutManager.this.f7253c.getDecoratedEnd(view);
                boolean z6 = false;
                boolean z7 = !z5 ? decoratedStart >= endAfterPadding : decoratedStart > endAfterPadding;
                if (!z5 ? decoratedEnd > startAfterPadding : decoratedEnd >= startAfterPadding) {
                    z6 = true;
                }
                if (z7 && z6) {
                    if (z3 && z4) {
                        if (decoratedStart >= startAfterPadding && decoratedEnd <= endAfterPadding) {
                            return StaggeredGridLayoutManager.this.getPosition(view);
                        }
                    } else if (z4) {
                        return StaggeredGridLayoutManager.this.getPosition(view);
                    } else {
                        if (decoratedStart < startAfterPadding || decoratedEnd > endAfterPadding) {
                            return StaggeredGridLayoutManager.this.getPosition(view);
                        }
                    }
                }
                i2 += i5;
            }
            return -1;
        }

        public int findFirstCompletelyVisibleItemPosition() {
            if (StaggeredGridLayoutManager.this.f7258h) {
                return h(this.f7303a.size() - 1, -1, true);
            }
            return h(0, this.f7303a.size(), true);
        }

        public int findFirstPartiallyVisibleItemPosition() {
            if (StaggeredGridLayoutManager.this.f7258h) {
                return g(this.f7303a.size() - 1, -1, true);
            }
            return g(0, this.f7303a.size(), true);
        }

        public int findFirstVisibleItemPosition() {
            if (StaggeredGridLayoutManager.this.f7258h) {
                return h(this.f7303a.size() - 1, -1, false);
            }
            return h(0, this.f7303a.size(), false);
        }

        public int findLastCompletelyVisibleItemPosition() {
            if (StaggeredGridLayoutManager.this.f7258h) {
                return h(0, this.f7303a.size(), true);
            }
            return h(this.f7303a.size() - 1, -1, true);
        }

        public int findLastPartiallyVisibleItemPosition() {
            if (StaggeredGridLayoutManager.this.f7258h) {
                return g(0, this.f7303a.size(), true);
            }
            return g(this.f7303a.size() - 1, -1, true);
        }

        public int findLastVisibleItemPosition() {
            if (StaggeredGridLayoutManager.this.f7258h) {
                return h(0, this.f7303a.size(), false);
            }
            return h(this.f7303a.size() - 1, -1, false);
        }

        int g(int i2, int i4, boolean z3) {
            return f(i2, i4, false, false, z3);
        }

        public int getDeletedSize() {
            return this.f7306d;
        }

        public View getFocusableViewAfter(int i2, int i4) {
            View view = null;
            if (i4 == -1) {
                int size = this.f7303a.size();
                int i5 = 0;
                while (i5 < size) {
                    View view2 = this.f7303a.get(i5);
                    StaggeredGridLayoutManager staggeredGridLayoutManager = StaggeredGridLayoutManager.this;
                    if (staggeredGridLayoutManager.f7258h && staggeredGridLayoutManager.getPosition(view2) <= i2) {
                        break;
                    }
                    StaggeredGridLayoutManager staggeredGridLayoutManager2 = StaggeredGridLayoutManager.this;
                    if ((!staggeredGridLayoutManager2.f7258h && staggeredGridLayoutManager2.getPosition(view2) >= i2) || !view2.hasFocusable()) {
                        break;
                    }
                    i5++;
                    view = view2;
                }
            } else {
                int size2 = this.f7303a.size() - 1;
                while (size2 >= 0) {
                    View view3 = this.f7303a.get(size2);
                    StaggeredGridLayoutManager staggeredGridLayoutManager3 = StaggeredGridLayoutManager.this;
                    if (staggeredGridLayoutManager3.f7258h && staggeredGridLayoutManager3.getPosition(view3) >= i2) {
                        break;
                    }
                    StaggeredGridLayoutManager staggeredGridLayoutManager4 = StaggeredGridLayoutManager.this;
                    if ((!staggeredGridLayoutManager4.f7258h && staggeredGridLayoutManager4.getPosition(view3) <= i2) || !view3.hasFocusable()) {
                        break;
                    }
                    size2--;
                    view = view3;
                }
            }
            return view;
        }

        int h(int i2, int i4, boolean z3) {
            return f(i2, i4, z3, true, false);
        }

        int i() {
            int i2 = this.f7305c;
            if (i2 != Integer.MIN_VALUE) {
                return i2;
            }
            c();
            return this.f7305c;
        }

        int j(int i2) {
            int i4 = this.f7305c;
            if (i4 != Integer.MIN_VALUE) {
                return i4;
            }
            if (this.f7303a.size() == 0) {
                return i2;
            }
            c();
            return this.f7305c;
        }

        LayoutParams k(View view) {
            return (LayoutParams) view.getLayoutParams();
        }

        int l() {
            int i2 = this.f7304b;
            if (i2 != Integer.MIN_VALUE) {
                return i2;
            }
            d();
            return this.f7304b;
        }

        int m(int i2) {
            int i4 = this.f7304b;
            if (i4 != Integer.MIN_VALUE) {
                return i4;
            }
            if (this.f7303a.size() == 0) {
                return i2;
            }
            d();
            return this.f7304b;
        }

        void n() {
            this.f7304b = Integer.MIN_VALUE;
            this.f7305c = Integer.MIN_VALUE;
        }

        void o(int i2) {
            int i4 = this.f7304b;
            if (i4 != Integer.MIN_VALUE) {
                this.f7304b = i4 + i2;
            }
            int i5 = this.f7305c;
            if (i5 != Integer.MIN_VALUE) {
                this.f7305c = i5 + i2;
            }
        }

        void p() {
            int size = this.f7303a.size();
            View remove = this.f7303a.remove(size - 1);
            LayoutParams k4 = k(remove);
            k4.f7283e = null;
            if (k4.isItemRemoved() || k4.isItemChanged()) {
                this.f7306d -= StaggeredGridLayoutManager.this.f7253c.getDecoratedMeasurement(remove);
            }
            if (size == 1) {
                this.f7304b = Integer.MIN_VALUE;
            }
            this.f7305c = Integer.MIN_VALUE;
        }

        void q() {
            View remove = this.f7303a.remove(0);
            LayoutParams k4 = k(remove);
            k4.f7283e = null;
            if (this.f7303a.size() == 0) {
                this.f7305c = Integer.MIN_VALUE;
            }
            if (k4.isItemRemoved() || k4.isItemChanged()) {
                this.f7306d -= StaggeredGridLayoutManager.this.f7253c.getDecoratedMeasurement(remove);
            }
            this.f7304b = Integer.MIN_VALUE;
        }

        void r(View view) {
            LayoutParams k4 = k(view);
            k4.f7283e = this;
            this.f7303a.add(0, view);
            this.f7304b = Integer.MIN_VALUE;
            if (this.f7303a.size() == 1) {
                this.f7305c = Integer.MIN_VALUE;
            }
            if (k4.isItemRemoved() || k4.isItemChanged()) {
                this.f7306d += StaggeredGridLayoutManager.this.f7253c.getDecoratedMeasurement(view);
            }
        }

        void s(int i2) {
            this.f7304b = i2;
            this.f7305c = i2;
        }
    }

    public StaggeredGridLayoutManager(Context context, AttributeSet attributeSet, int i2, int i4) {
        RecyclerView.LayoutManager.Properties properties = RecyclerView.LayoutManager.getProperties(context, attributeSet, i2, i4);
        setOrientation(properties.orientation);
        setSpanCount(properties.spanCount);
        setReverseLayout(properties.reverseLayout);
        this.f7257g = new LayoutState();
        k();
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x003c  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0043 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0044  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void A(int r7, int r8, int r9) {
        /*
            r6 = this;
            boolean r0 = r6.f7259i
            if (r0 == 0) goto L9
            int r0 = r6.u()
            goto Ld
        L9:
            int r0 = r6.t()
        Ld:
            r1 = 8
            if (r9 != r1) goto L1a
            if (r7 >= r8) goto L16
            int r2 = r8 + 1
            goto L1c
        L16:
            int r2 = r7 + 1
            r3 = r8
            goto L1d
        L1a:
            int r2 = r7 + r8
        L1c:
            r3 = r7
        L1d:
            androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup r4 = r6.f7263m
            r4.e(r3)
            r4 = 1
            if (r9 == r4) goto L3c
            r5 = 2
            if (r9 == r5) goto L36
            if (r9 == r1) goto L2b
            goto L41
        L2b:
            androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup r9 = r6.f7263m
            r9.h(r7, r4)
            androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup r7 = r6.f7263m
            r7.g(r8, r4)
            goto L41
        L36:
            androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup r9 = r6.f7263m
            r9.h(r7, r8)
            goto L41
        L3c:
            androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup r9 = r6.f7263m
            r9.g(r7, r8)
        L41:
            if (r2 > r0) goto L44
            return
        L44:
            boolean r7 = r6.f7259i
            if (r7 == 0) goto L4d
            int r7 = r6.t()
            goto L51
        L4d:
            int r7 = r6.u()
        L51:
            if (r3 > r7) goto L56
            r6.requestLayout()
        L56:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.A(int, int, int):void");
    }

    private void C(View view, int i2, int i4, boolean z3) {
        boolean shouldMeasureChild;
        calculateItemDecorationsForChild(view, this.f7269s);
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int i5 = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
        Rect rect = this.f7269s;
        int U = U(i2, i5 + rect.left, ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin + rect.right);
        int i6 = ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
        Rect rect2 = this.f7269s;
        int U2 = U(i4, i6 + rect2.top, ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin + rect2.bottom);
        if (z3) {
            shouldMeasureChild = shouldReMeasureChild(view, U, U2, layoutParams);
        } else {
            shouldMeasureChild = shouldMeasureChild(view, U, U2, layoutParams);
        }
        if (shouldMeasureChild) {
            view.measure(U, U2);
        }
    }

    private void D(View view, LayoutParams layoutParams, boolean z3) {
        if (layoutParams.f7284f) {
            if (this.f7255e == 1) {
                C(view, this.f7268r, RecyclerView.LayoutManager.getChildMeasureSpec(getHeight(), getHeightMode(), getPaddingTop() + getPaddingBottom(), ((ViewGroup.MarginLayoutParams) layoutParams).height, true), z3);
            } else {
                C(view, RecyclerView.LayoutManager.getChildMeasureSpec(getWidth(), getWidthMode(), getPaddingLeft() + getPaddingRight(), ((ViewGroup.MarginLayoutParams) layoutParams).width, true), this.f7268r, z3);
            }
        } else if (this.f7255e == 1) {
            C(view, RecyclerView.LayoutManager.getChildMeasureSpec(this.f7256f, getWidthMode(), 0, ((ViewGroup.MarginLayoutParams) layoutParams).width, false), RecyclerView.LayoutManager.getChildMeasureSpec(getHeight(), getHeightMode(), getPaddingTop() + getPaddingBottom(), ((ViewGroup.MarginLayoutParams) layoutParams).height, true), z3);
        } else {
            C(view, RecyclerView.LayoutManager.getChildMeasureSpec(getWidth(), getWidthMode(), getPaddingLeft() + getPaddingRight(), ((ViewGroup.MarginLayoutParams) layoutParams).width, true), RecyclerView.LayoutManager.getChildMeasureSpec(this.f7256f, getHeightMode(), 0, ((ViewGroup.MarginLayoutParams) layoutParams).height, false), z3);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:87:0x0157, code lost:
        if (g() != false) goto L83;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void E(androidx.recyclerview.widget.RecyclerView.Recycler r9, androidx.recyclerview.widget.RecyclerView.State r10, boolean r11) {
        /*
            Method dump skipped, instructions count: 379
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.E(androidx.recyclerview.widget.RecyclerView$Recycler, androidx.recyclerview.widget.RecyclerView$State, boolean):void");
    }

    private boolean F(int i2) {
        if (this.f7255e == 0) {
            return (i2 == -1) != this.f7259i;
        }
        return ((i2 == -1) == this.f7259i) == isLayoutRTL();
    }

    private void H(View view) {
        for (int i2 = this.f7251a - 1; i2 >= 0; i2--) {
            this.f7252b[i2].r(view);
        }
    }

    private void I(RecyclerView.Recycler recycler, LayoutState layoutState) {
        int min;
        int min2;
        if (!layoutState.f6992a || layoutState.f7000i) {
            return;
        }
        if (layoutState.f6993b == 0) {
            if (layoutState.f6996e == -1) {
                J(recycler, layoutState.f6998g);
            } else {
                K(recycler, layoutState.f6997f);
            }
        } else if (layoutState.f6996e == -1) {
            int i2 = layoutState.f6997f;
            int w3 = i2 - w(i2);
            if (w3 < 0) {
                min2 = layoutState.f6998g;
            } else {
                min2 = layoutState.f6998g - Math.min(w3, layoutState.f6993b);
            }
            J(recycler, min2);
        } else {
            int x3 = x(layoutState.f6998g) - layoutState.f6998g;
            if (x3 < 0) {
                min = layoutState.f6997f;
            } else {
                min = Math.min(x3, layoutState.f6993b) + layoutState.f6997f;
            }
            K(recycler, min);
        }
    }

    private void J(RecyclerView.Recycler recycler, int i2) {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            if (this.f7253c.getDecoratedStart(childAt) < i2 || this.f7253c.getTransformedStartWithDecoration(childAt) < i2) {
                return;
            }
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            if (layoutParams.f7284f) {
                for (int i4 = 0; i4 < this.f7251a; i4++) {
                    if (this.f7252b[i4].f7303a.size() == 1) {
                        return;
                    }
                }
                for (int i5 = 0; i5 < this.f7251a; i5++) {
                    this.f7252b[i5].p();
                }
            } else if (layoutParams.f7283e.f7303a.size() == 1) {
                return;
            } else {
                layoutParams.f7283e.p();
            }
            removeAndRecycleView(childAt, recycler);
        }
    }

    private void K(RecyclerView.Recycler recycler, int i2) {
        while (getChildCount() > 0) {
            View childAt = getChildAt(0);
            if (this.f7253c.getDecoratedEnd(childAt) > i2 || this.f7253c.getTransformedEndWithDecoration(childAt) > i2) {
                return;
            }
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            if (layoutParams.f7284f) {
                for (int i4 = 0; i4 < this.f7251a; i4++) {
                    if (this.f7252b[i4].f7303a.size() == 1) {
                        return;
                    }
                }
                for (int i5 = 0; i5 < this.f7251a; i5++) {
                    this.f7252b[i5].q();
                }
            } else if (layoutParams.f7283e.f7303a.size() == 1) {
                return;
            } else {
                layoutParams.f7283e.q();
            }
            removeAndRecycleView(childAt, recycler);
        }
    }

    private void L() {
        if (this.f7254d.getMode() == 1073741824) {
            return;
        }
        float f4 = 0.0f;
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            float decoratedMeasurement = this.f7254d.getDecoratedMeasurement(childAt);
            if (decoratedMeasurement >= f4) {
                if (((LayoutParams) childAt.getLayoutParams()).isFullSpan()) {
                    decoratedMeasurement = (decoratedMeasurement * 1.0f) / this.f7251a;
                }
                f4 = Math.max(f4, decoratedMeasurement);
            }
        }
        int i4 = this.f7256f;
        int round = Math.round(f4 * this.f7251a);
        if (this.f7254d.getMode() == Integer.MIN_VALUE) {
            round = Math.min(round, this.f7254d.getTotalSpace());
        }
        S(round);
        if (this.f7256f == i4) {
            return;
        }
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt2 = getChildAt(i5);
            LayoutParams layoutParams = (LayoutParams) childAt2.getLayoutParams();
            if (!layoutParams.f7284f) {
                if (isLayoutRTL() && this.f7255e == 1) {
                    int i6 = this.f7251a;
                    int i7 = layoutParams.f7283e.f7307e;
                    childAt2.offsetLeftAndRight(((-((i6 - 1) - i7)) * this.f7256f) - ((-((i6 - 1) - i7)) * i4));
                } else {
                    int i8 = layoutParams.f7283e.f7307e;
                    int i9 = this.f7256f * i8;
                    int i10 = i8 * i4;
                    if (this.f7255e == 1) {
                        childAt2.offsetLeftAndRight(i9 - i10);
                    } else {
                        childAt2.offsetTopAndBottom(i9 - i10);
                    }
                }
            }
        }
    }

    private void M(int i2) {
        LayoutState layoutState = this.f7257g;
        layoutState.f6996e = i2;
        layoutState.f6995d = this.f7259i != (i2 == -1) ? -1 : 1;
    }

    private void N(int i2, int i4) {
        for (int i5 = 0; i5 < this.f7251a; i5++) {
            if (!this.f7252b[i5].f7303a.isEmpty()) {
                T(this.f7252b[i5], i2, i4);
            }
        }
    }

    private boolean O(RecyclerView.State state, AnchorInfo anchorInfo) {
        int m4;
        if (this.f7265o) {
            m4 = q(state.getItemCount());
        } else {
            m4 = m(state.getItemCount());
        }
        anchorInfo.f7276a = m4;
        anchorInfo.f7277b = Integer.MIN_VALUE;
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0036  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x004d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void R(int r5, androidx.recyclerview.widget.RecyclerView.State r6) {
        /*
            r4 = this;
            androidx.recyclerview.widget.LayoutState r0 = r4.f7257g
            r1 = 0
            r0.f6993b = r1
            r0.f6994c = r5
            boolean r0 = r4.isSmoothScrolling()
            r2 = 1
            if (r0 == 0) goto L2e
            int r6 = r6.getTargetScrollPosition()
            r0 = -1
            if (r6 == r0) goto L2e
            boolean r0 = r4.f7259i
            if (r6 >= r5) goto L1b
            r5 = 1
            goto L1c
        L1b:
            r5 = 0
        L1c:
            if (r0 != r5) goto L25
            androidx.recyclerview.widget.OrientationHelper r5 = r4.f7253c
            int r5 = r5.getTotalSpace()
            goto L2f
        L25:
            androidx.recyclerview.widget.OrientationHelper r5 = r4.f7253c
            int r5 = r5.getTotalSpace()
            r6 = r5
            r5 = 0
            goto L30
        L2e:
            r5 = 0
        L2f:
            r6 = 0
        L30:
            boolean r0 = r4.getClipToPadding()
            if (r0 == 0) goto L4d
            androidx.recyclerview.widget.LayoutState r0 = r4.f7257g
            androidx.recyclerview.widget.OrientationHelper r3 = r4.f7253c
            int r3 = r3.getStartAfterPadding()
            int r3 = r3 - r6
            r0.f6997f = r3
            androidx.recyclerview.widget.LayoutState r6 = r4.f7257g
            androidx.recyclerview.widget.OrientationHelper r0 = r4.f7253c
            int r0 = r0.getEndAfterPadding()
            int r0 = r0 + r5
            r6.f6998g = r0
            goto L5d
        L4d:
            androidx.recyclerview.widget.LayoutState r0 = r4.f7257g
            androidx.recyclerview.widget.OrientationHelper r3 = r4.f7253c
            int r3 = r3.getEnd()
            int r3 = r3 + r5
            r0.f6998g = r3
            androidx.recyclerview.widget.LayoutState r5 = r4.f7257g
            int r6 = -r6
            r5.f6997f = r6
        L5d:
            androidx.recyclerview.widget.LayoutState r5 = r4.f7257g
            r5.f6999h = r1
            r5.f6992a = r2
            androidx.recyclerview.widget.OrientationHelper r6 = r4.f7253c
            int r6 = r6.getMode()
            if (r6 != 0) goto L74
            androidx.recyclerview.widget.OrientationHelper r6 = r4.f7253c
            int r6 = r6.getEnd()
            if (r6 != 0) goto L74
            r1 = 1
        L74:
            r5.f7000i = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.R(int, androidx.recyclerview.widget.RecyclerView$State):void");
    }

    private void T(Span span, int i2, int i4) {
        int deletedSize = span.getDeletedSize();
        if (i2 == -1) {
            if (span.l() + deletedSize <= i4) {
                this.f7260j.set(span.f7307e, false);
            }
        } else if (span.i() - deletedSize >= i4) {
            this.f7260j.set(span.f7307e, false);
        }
    }

    private int U(int i2, int i4, int i5) {
        if (i4 == 0 && i5 == 0) {
            return i2;
        }
        int mode = View.MeasureSpec.getMode(i2);
        return (mode == Integer.MIN_VALUE || mode == 1073741824) ? View.MeasureSpec.makeMeasureSpec(Math.max(0, (View.MeasureSpec.getSize(i2) - i4) - i5), mode) : i2;
    }

    private void a(View view) {
        for (int i2 = this.f7251a - 1; i2 >= 0; i2--) {
            this.f7252b[i2].a(view);
        }
    }

    private void b(AnchorInfo anchorInfo) {
        int startAfterPadding;
        SavedState savedState = this.f7267q;
        int i2 = savedState.f7294c;
        if (i2 > 0) {
            if (i2 == this.f7251a) {
                for (int i4 = 0; i4 < this.f7251a; i4++) {
                    this.f7252b[i4].e();
                    SavedState savedState2 = this.f7267q;
                    int i5 = savedState2.f7295d[i4];
                    if (i5 != Integer.MIN_VALUE) {
                        if (savedState2.f7300i) {
                            startAfterPadding = this.f7253c.getEndAfterPadding();
                        } else {
                            startAfterPadding = this.f7253c.getStartAfterPadding();
                        }
                        i5 += startAfterPadding;
                    }
                    this.f7252b[i4].s(i5);
                }
            } else {
                savedState.b();
                SavedState savedState3 = this.f7267q;
                savedState3.f7292a = savedState3.f7293b;
            }
        }
        SavedState savedState4 = this.f7267q;
        this.f7266p = savedState4.f7301j;
        setReverseLayout(savedState4.f7299h);
        resolveShouldLayoutReverse();
        SavedState savedState5 = this.f7267q;
        int i6 = savedState5.f7292a;
        if (i6 != -1) {
            this.f7261k = i6;
            anchorInfo.f7278c = savedState5.f7300i;
        } else {
            anchorInfo.f7278c = this.f7259i;
        }
        if (savedState5.f7296e > 1) {
            LazySpanLookup lazySpanLookup = this.f7263m;
            lazySpanLookup.f7286a = savedState5.f7297f;
            lazySpanLookup.f7287b = savedState5.f7298g;
        }
    }

    private int computeScrollExtent(RecyclerView.State state) {
        if (getChildCount() == 0) {
            return 0;
        }
        return ScrollbarHelper.a(state, this.f7253c, o(!this.f7272v), n(!this.f7272v), this, this.f7272v);
    }

    private int computeScrollOffset(RecyclerView.State state) {
        if (getChildCount() == 0) {
            return 0;
        }
        return ScrollbarHelper.b(state, this.f7253c, o(!this.f7272v), n(!this.f7272v), this, this.f7272v, this.f7259i);
    }

    private int computeScrollRange(RecyclerView.State state) {
        if (getChildCount() == 0) {
            return 0;
        }
        return ScrollbarHelper.c(state, this.f7253c, o(!this.f7272v), n(!this.f7272v), this, this.f7272v);
    }

    private int convertFocusDirectionToLayoutDirection(int i2) {
        return i2 != 1 ? i2 != 2 ? i2 != 17 ? i2 != 33 ? i2 != 66 ? (i2 == 130 && this.f7255e == 1) ? 1 : Integer.MIN_VALUE : this.f7255e == 0 ? 1 : Integer.MIN_VALUE : this.f7255e == 1 ? -1 : Integer.MIN_VALUE : this.f7255e == 0 ? -1 : Integer.MIN_VALUE : (this.f7255e != 1 && isLayoutRTL()) ? -1 : 1 : (this.f7255e != 1 && isLayoutRTL()) ? 1 : -1;
    }

    private void e(View view, LayoutParams layoutParams, LayoutState layoutState) {
        if (layoutState.f6996e == 1) {
            if (layoutParams.f7284f) {
                a(view);
            } else {
                layoutParams.f7283e.a(view);
            }
        } else if (layoutParams.f7284f) {
            H(view);
        } else {
            layoutParams.f7283e.r(view);
        }
    }

    private int f(int i2) {
        if (getChildCount() == 0) {
            return this.f7259i ? 1 : -1;
        }
        return (i2 < t()) != this.f7259i ? -1 : 1;
    }

    private boolean h(Span span) {
        if (this.f7259i) {
            if (span.i() < this.f7253c.getEndAfterPadding()) {
                ArrayList<View> arrayList = span.f7303a;
                return !span.k(arrayList.get(arrayList.size() - 1)).f7284f;
            }
        } else if (span.l() > this.f7253c.getStartAfterPadding()) {
            return !span.k(span.f7303a.get(0)).f7284f;
        }
        return false;
    }

    private LazySpanLookup.FullSpanItem i(int i2) {
        LazySpanLookup.FullSpanItem fullSpanItem = new LazySpanLookup.FullSpanItem();
        fullSpanItem.f7290c = new int[this.f7251a];
        for (int i4 = 0; i4 < this.f7251a; i4++) {
            fullSpanItem.f7290c[i4] = i2 - this.f7252b[i4].j(i2);
        }
        return fullSpanItem;
    }

    private LazySpanLookup.FullSpanItem j(int i2) {
        LazySpanLookup.FullSpanItem fullSpanItem = new LazySpanLookup.FullSpanItem();
        fullSpanItem.f7290c = new int[this.f7251a];
        for (int i4 = 0; i4 < this.f7251a; i4++) {
            fullSpanItem.f7290c[i4] = this.f7252b[i4].m(i2) - i2;
        }
        return fullSpanItem;
    }

    private void k() {
        this.f7253c = OrientationHelper.createOrientationHelper(this, this.f7255e);
        this.f7254d = OrientationHelper.createOrientationHelper(this, 1 - this.f7255e);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1, types: [int, boolean] */
    /* JADX WARN: Type inference failed for: r9v7 */
    private int l(RecyclerView.Recycler recycler, LayoutState layoutState, RecyclerView.State state) {
        int i2;
        int i4;
        int startAfterPadding;
        int v3;
        Span span;
        int decoratedMeasurement;
        int i5;
        int i6;
        int decoratedMeasurement2;
        boolean d4;
        ?? r9 = 0;
        this.f7260j.set(0, this.f7251a, true);
        if (this.f7257g.f7000i) {
            i4 = layoutState.f6996e == 1 ? Integer.MAX_VALUE : Integer.MIN_VALUE;
        } else {
            if (layoutState.f6996e == 1) {
                i2 = layoutState.f6998g + layoutState.f6993b;
            } else {
                i2 = layoutState.f6997f - layoutState.f6993b;
            }
            i4 = i2;
        }
        N(layoutState.f6996e, i4);
        if (this.f7259i) {
            startAfterPadding = this.f7253c.getEndAfterPadding();
        } else {
            startAfterPadding = this.f7253c.getStartAfterPadding();
        }
        int i7 = startAfterPadding;
        boolean z3 = false;
        while (layoutState.a(state) && (this.f7257g.f7000i || !this.f7260j.isEmpty())) {
            View b4 = layoutState.b(recycler);
            LayoutParams layoutParams = (LayoutParams) b4.getLayoutParams();
            int viewLayoutPosition = layoutParams.getViewLayoutPosition();
            int d5 = this.f7263m.d(viewLayoutPosition);
            boolean z4 = d5 == -1;
            if (z4) {
                span = layoutParams.f7284f ? this.f7252b[r9] : z(layoutState);
                this.f7263m.k(viewLayoutPosition, span);
            } else {
                span = this.f7252b[d5];
            }
            Span span2 = span;
            layoutParams.f7283e = span2;
            if (layoutState.f6996e == 1) {
                addView(b4);
            } else {
                addView(b4, r9);
            }
            D(b4, layoutParams, r9);
            if (layoutState.f6996e == 1) {
                int v4 = layoutParams.f7284f ? v(i7) : span2.j(i7);
                int decoratedMeasurement3 = this.f7253c.getDecoratedMeasurement(b4) + v4;
                if (z4 && layoutParams.f7284f) {
                    LazySpanLookup.FullSpanItem i8 = i(v4);
                    i8.f7289b = -1;
                    i8.f7288a = viewLayoutPosition;
                    this.f7263m.addFullSpanItem(i8);
                }
                i5 = decoratedMeasurement3;
                decoratedMeasurement = v4;
            } else {
                int y3 = layoutParams.f7284f ? y(i7) : span2.m(i7);
                decoratedMeasurement = y3 - this.f7253c.getDecoratedMeasurement(b4);
                if (z4 && layoutParams.f7284f) {
                    LazySpanLookup.FullSpanItem j4 = j(y3);
                    j4.f7289b = 1;
                    j4.f7288a = viewLayoutPosition;
                    this.f7263m.addFullSpanItem(j4);
                }
                i5 = y3;
            }
            if (layoutParams.f7284f && layoutState.f6995d == -1) {
                if (z4) {
                    this.f7271u = true;
                } else {
                    if (layoutState.f6996e == 1) {
                        d4 = c();
                    } else {
                        d4 = d();
                    }
                    if (!d4) {
                        LazySpanLookup.FullSpanItem fullSpanItem = this.f7263m.getFullSpanItem(viewLayoutPosition);
                        if (fullSpanItem != null) {
                            fullSpanItem.f7291d = true;
                        }
                        this.f7271u = true;
                    }
                }
            }
            e(b4, layoutParams, layoutState);
            if (isLayoutRTL() && this.f7255e == 1) {
                int endAfterPadding = layoutParams.f7284f ? this.f7254d.getEndAfterPadding() : this.f7254d.getEndAfterPadding() - (((this.f7251a - 1) - span2.f7307e) * this.f7256f);
                decoratedMeasurement2 = endAfterPadding;
                i6 = endAfterPadding - this.f7254d.getDecoratedMeasurement(b4);
            } else {
                int startAfterPadding2 = layoutParams.f7284f ? this.f7254d.getStartAfterPadding() : (span2.f7307e * this.f7256f) + this.f7254d.getStartAfterPadding();
                i6 = startAfterPadding2;
                decoratedMeasurement2 = this.f7254d.getDecoratedMeasurement(b4) + startAfterPadding2;
            }
            if (this.f7255e == 1) {
                layoutDecoratedWithMargins(b4, i6, decoratedMeasurement, decoratedMeasurement2, i5);
            } else {
                layoutDecoratedWithMargins(b4, decoratedMeasurement, i6, i5, decoratedMeasurement2);
            }
            if (layoutParams.f7284f) {
                N(this.f7257g.f6996e, i4);
            } else {
                T(span2, this.f7257g.f6996e, i4);
            }
            I(recycler, this.f7257g);
            if (this.f7257g.f6999h && b4.hasFocusable()) {
                if (layoutParams.f7284f) {
                    this.f7260j.clear();
                } else {
                    this.f7260j.set(span2.f7307e, false);
                    z3 = true;
                    r9 = 0;
                }
            }
            z3 = true;
            r9 = 0;
        }
        if (!z3) {
            I(recycler, this.f7257g);
        }
        if (this.f7257g.f6996e == -1) {
            v3 = this.f7253c.getStartAfterPadding() - y(this.f7253c.getStartAfterPadding());
        } else {
            v3 = v(this.f7253c.getEndAfterPadding()) - this.f7253c.getEndAfterPadding();
        }
        if (v3 > 0) {
            return Math.min(layoutState.f6993b, v3);
        }
        return 0;
    }

    private int m(int i2) {
        int childCount = getChildCount();
        for (int i4 = 0; i4 < childCount; i4++) {
            int position = getPosition(getChildAt(i4));
            if (position >= 0 && position < i2) {
                return position;
            }
        }
        return 0;
    }

    private int q(int i2) {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            int position = getPosition(getChildAt(childCount));
            if (position >= 0 && position < i2) {
                return position;
            }
        }
        return 0;
    }

    private void r(RecyclerView.Recycler recycler, RecyclerView.State state, boolean z3) {
        int endAfterPadding;
        int v3 = v(Integer.MIN_VALUE);
        if (v3 != Integer.MIN_VALUE && (endAfterPadding = this.f7253c.getEndAfterPadding() - v3) > 0) {
            int i2 = endAfterPadding - (-scrollBy(-endAfterPadding, recycler, state));
            if (!z3 || i2 <= 0) {
                return;
            }
            this.f7253c.offsetChildren(i2);
        }
    }

    private void resolveShouldLayoutReverse() {
        if (this.f7255e != 1 && isLayoutRTL()) {
            this.f7259i = !this.f7258h;
        } else {
            this.f7259i = this.f7258h;
        }
    }

    private void s(RecyclerView.Recycler recycler, RecyclerView.State state, boolean z3) {
        int startAfterPadding;
        int y3 = y(Integer.MAX_VALUE);
        if (y3 != Integer.MAX_VALUE && (startAfterPadding = y3 - this.f7253c.getStartAfterPadding()) > 0) {
            int scrollBy = startAfterPadding - scrollBy(startAfterPadding, recycler, state);
            if (!z3 || scrollBy <= 0) {
                return;
            }
            this.f7253c.offsetChildren(-scrollBy);
        }
    }

    private int v(int i2) {
        int j4 = this.f7252b[0].j(i2);
        for (int i4 = 1; i4 < this.f7251a; i4++) {
            int j5 = this.f7252b[i4].j(i2);
            if (j5 > j4) {
                j4 = j5;
            }
        }
        return j4;
    }

    private int w(int i2) {
        int m4 = this.f7252b[0].m(i2);
        for (int i4 = 1; i4 < this.f7251a; i4++) {
            int m5 = this.f7252b[i4].m(i2);
            if (m5 > m4) {
                m4 = m5;
            }
        }
        return m4;
    }

    private int x(int i2) {
        int j4 = this.f7252b[0].j(i2);
        for (int i4 = 1; i4 < this.f7251a; i4++) {
            int j5 = this.f7252b[i4].j(i2);
            if (j5 < j4) {
                j4 = j5;
            }
        }
        return j4;
    }

    private int y(int i2) {
        int m4 = this.f7252b[0].m(i2);
        for (int i4 = 1; i4 < this.f7251a; i4++) {
            int m5 = this.f7252b[i4].m(i2);
            if (m5 < m4) {
                m4 = m5;
            }
        }
        return m4;
    }

    private Span z(LayoutState layoutState) {
        int i2;
        int i4;
        int i5 = -1;
        if (F(layoutState.f6996e)) {
            i2 = this.f7251a - 1;
            i4 = -1;
        } else {
            i2 = 0;
            i5 = this.f7251a;
            i4 = 1;
        }
        Span span = null;
        if (layoutState.f6996e == 1) {
            int i6 = Integer.MAX_VALUE;
            int startAfterPadding = this.f7253c.getStartAfterPadding();
            while (i2 != i5) {
                Span span2 = this.f7252b[i2];
                int j4 = span2.j(startAfterPadding);
                if (j4 < i6) {
                    span = span2;
                    i6 = j4;
                }
                i2 += i4;
            }
            return span;
        }
        int i7 = Integer.MIN_VALUE;
        int endAfterPadding = this.f7253c.getEndAfterPadding();
        while (i2 != i5) {
            Span span3 = this.f7252b[i2];
            int m4 = span3.m(endAfterPadding);
            if (m4 > i7) {
                span = span3;
                i7 = m4;
            }
            i2 += i4;
        }
        return span;
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x0074, code lost:
        if (r10 == r11) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0086, code lost:
        if (r10 == r11) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0088, code lost:
        r10 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x008a, code lost:
        r10 = false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    android.view.View B() {
        /*
            r12 = this;
            int r0 = r12.getChildCount()
            r1 = 1
            int r0 = r0 - r1
            java.util.BitSet r2 = new java.util.BitSet
            int r3 = r12.f7251a
            r2.<init>(r3)
            int r3 = r12.f7251a
            r4 = 0
            r2.set(r4, r3, r1)
            int r3 = r12.f7255e
            r5 = -1
            if (r3 != r1) goto L20
            boolean r3 = r12.isLayoutRTL()
            if (r3 == 0) goto L20
            r3 = 1
            goto L21
        L20:
            r3 = -1
        L21:
            boolean r6 = r12.f7259i
            if (r6 == 0) goto L27
            r6 = -1
            goto L2b
        L27:
            int r0 = r0 + 1
            r6 = r0
            r0 = 0
        L2b:
            if (r0 >= r6) goto L2e
            r5 = 1
        L2e:
            if (r0 == r6) goto Lab
            android.view.View r7 = r12.getChildAt(r0)
            android.view.ViewGroup$LayoutParams r8 = r7.getLayoutParams()
            androidx.recyclerview.widget.StaggeredGridLayoutManager$LayoutParams r8 = (androidx.recyclerview.widget.StaggeredGridLayoutManager.LayoutParams) r8
            androidx.recyclerview.widget.StaggeredGridLayoutManager$Span r9 = r8.f7283e
            int r9 = r9.f7307e
            boolean r9 = r2.get(r9)
            if (r9 == 0) goto L54
            androidx.recyclerview.widget.StaggeredGridLayoutManager$Span r9 = r8.f7283e
            boolean r9 = r12.h(r9)
            if (r9 == 0) goto L4d
            return r7
        L4d:
            androidx.recyclerview.widget.StaggeredGridLayoutManager$Span r9 = r8.f7283e
            int r9 = r9.f7307e
            r2.clear(r9)
        L54:
            boolean r9 = r8.f7284f
            if (r9 == 0) goto L59
            goto La9
        L59:
            int r9 = r0 + r5
            if (r9 == r6) goto La9
            android.view.View r9 = r12.getChildAt(r9)
            boolean r10 = r12.f7259i
            if (r10 == 0) goto L77
            androidx.recyclerview.widget.OrientationHelper r10 = r12.f7253c
            int r10 = r10.getDecoratedEnd(r7)
            androidx.recyclerview.widget.OrientationHelper r11 = r12.f7253c
            int r11 = r11.getDecoratedEnd(r9)
            if (r10 >= r11) goto L74
            return r7
        L74:
            if (r10 != r11) goto L8a
            goto L88
        L77:
            androidx.recyclerview.widget.OrientationHelper r10 = r12.f7253c
            int r10 = r10.getDecoratedStart(r7)
            androidx.recyclerview.widget.OrientationHelper r11 = r12.f7253c
            int r11 = r11.getDecoratedStart(r9)
            if (r10 <= r11) goto L86
            return r7
        L86:
            if (r10 != r11) goto L8a
        L88:
            r10 = 1
            goto L8b
        L8a:
            r10 = 0
        L8b:
            if (r10 == 0) goto La9
            android.view.ViewGroup$LayoutParams r9 = r9.getLayoutParams()
            androidx.recyclerview.widget.StaggeredGridLayoutManager$LayoutParams r9 = (androidx.recyclerview.widget.StaggeredGridLayoutManager.LayoutParams) r9
            androidx.recyclerview.widget.StaggeredGridLayoutManager$Span r8 = r8.f7283e
            int r8 = r8.f7307e
            androidx.recyclerview.widget.StaggeredGridLayoutManager$Span r9 = r9.f7283e
            int r9 = r9.f7307e
            int r8 = r8 - r9
            if (r8 >= 0) goto La0
            r8 = 1
            goto La1
        La0:
            r8 = 0
        La1:
            if (r3 >= 0) goto La5
            r9 = 1
            goto La6
        La5:
            r9 = 0
        La6:
            if (r8 == r9) goto La9
            return r7
        La9:
            int r0 = r0 + r5
            goto L2e
        Lab:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.B():android.view.View");
    }

    void G(int i2, RecyclerView.State state) {
        int t3;
        int i4;
        if (i2 > 0) {
            t3 = u();
            i4 = 1;
        } else {
            t3 = t();
            i4 = -1;
        }
        this.f7257g.f6992a = true;
        R(t3, state);
        M(i4);
        LayoutState layoutState = this.f7257g;
        layoutState.f6994c = t3 + layoutState.f6995d;
        layoutState.f6993b = Math.abs(i2);
    }

    boolean P(RecyclerView.State state, AnchorInfo anchorInfo) {
        int i2;
        int startAfterPadding;
        if (!state.isPreLayout() && (i2 = this.f7261k) != -1) {
            if (i2 >= 0 && i2 < state.getItemCount()) {
                SavedState savedState = this.f7267q;
                if (savedState != null && savedState.f7292a != -1 && savedState.f7294c >= 1) {
                    anchorInfo.f7277b = Integer.MIN_VALUE;
                    anchorInfo.f7276a = this.f7261k;
                } else {
                    View findViewByPosition = findViewByPosition(this.f7261k);
                    if (findViewByPosition != null) {
                        anchorInfo.f7276a = this.f7259i ? u() : t();
                        if (this.f7262l != Integer.MIN_VALUE) {
                            if (anchorInfo.f7278c) {
                                anchorInfo.f7277b = (this.f7253c.getEndAfterPadding() - this.f7262l) - this.f7253c.getDecoratedEnd(findViewByPosition);
                            } else {
                                anchorInfo.f7277b = (this.f7253c.getStartAfterPadding() + this.f7262l) - this.f7253c.getDecoratedStart(findViewByPosition);
                            }
                            return true;
                        } else if (this.f7253c.getDecoratedMeasurement(findViewByPosition) > this.f7253c.getTotalSpace()) {
                            if (anchorInfo.f7278c) {
                                startAfterPadding = this.f7253c.getEndAfterPadding();
                            } else {
                                startAfterPadding = this.f7253c.getStartAfterPadding();
                            }
                            anchorInfo.f7277b = startAfterPadding;
                            return true;
                        } else {
                            int decoratedStart = this.f7253c.getDecoratedStart(findViewByPosition) - this.f7253c.getStartAfterPadding();
                            if (decoratedStart < 0) {
                                anchorInfo.f7277b = -decoratedStart;
                                return true;
                            }
                            int endAfterPadding = this.f7253c.getEndAfterPadding() - this.f7253c.getDecoratedEnd(findViewByPosition);
                            if (endAfterPadding < 0) {
                                anchorInfo.f7277b = endAfterPadding;
                                return true;
                            }
                            anchorInfo.f7277b = Integer.MIN_VALUE;
                        }
                    } else {
                        int i4 = this.f7261k;
                        anchorInfo.f7276a = i4;
                        int i5 = this.f7262l;
                        if (i5 == Integer.MIN_VALUE) {
                            anchorInfo.f7278c = f(i4) == 1;
                            anchorInfo.a();
                        } else {
                            anchorInfo.b(i5);
                        }
                        anchorInfo.f7279d = true;
                    }
                }
                return true;
            }
            this.f7261k = -1;
            this.f7262l = Integer.MIN_VALUE;
        }
        return false;
    }

    void Q(RecyclerView.State state, AnchorInfo anchorInfo) {
        if (P(state, anchorInfo) || O(state, anchorInfo)) {
            return;
        }
        anchorInfo.a();
        anchorInfo.f7276a = 0;
    }

    void S(int i2) {
        this.f7256f = i2 / this.f7251a;
        this.f7268r = View.MeasureSpec.makeMeasureSpec(i2, this.f7254d.getMode());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void assertNotInLayoutOrScroll(String str) {
        if (this.f7267q == null) {
            super.assertNotInLayoutOrScroll(str);
        }
    }

    boolean c() {
        int j4 = this.f7252b[0].j(Integer.MIN_VALUE);
        for (int i2 = 1; i2 < this.f7251a; i2++) {
            if (this.f7252b[i2].j(Integer.MIN_VALUE) != j4) {
                return false;
            }
        }
        return true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean canScrollHorizontally() {
        return this.f7255e == 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean canScrollVertically() {
        return this.f7255e == 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean checkLayoutParams(RecyclerView.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public void collectAdjacentPrefetchPositions(int i2, int i4, RecyclerView.State state, RecyclerView.LayoutManager.LayoutPrefetchRegistry layoutPrefetchRegistry) {
        int j4;
        int i5;
        if (this.f7255e != 0) {
            i2 = i4;
        }
        if (getChildCount() == 0 || i2 == 0) {
            return;
        }
        G(i2, state);
        int[] iArr = this.f7273w;
        if (iArr == null || iArr.length < this.f7251a) {
            this.f7273w = new int[this.f7251a];
        }
        int i6 = 0;
        for (int i7 = 0; i7 < this.f7251a; i7++) {
            LayoutState layoutState = this.f7257g;
            if (layoutState.f6995d == -1) {
                j4 = layoutState.f6997f;
                i5 = this.f7252b[i7].m(j4);
            } else {
                j4 = this.f7252b[i7].j(layoutState.f6998g);
                i5 = this.f7257g.f6998g;
            }
            int i8 = j4 - i5;
            if (i8 >= 0) {
                this.f7273w[i6] = i8;
                i6++;
            }
        }
        Arrays.sort(this.f7273w, 0, i6);
        for (int i9 = 0; i9 < i6 && this.f7257g.a(state); i9++) {
            layoutPrefetchRegistry.addPosition(this.f7257g.f6994c, this.f7273w[i9]);
            LayoutState layoutState2 = this.f7257g;
            layoutState2.f6994c += layoutState2.f6995d;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeHorizontalScrollExtent(RecyclerView.State state) {
        return computeScrollExtent(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeHorizontalScrollOffset(RecyclerView.State state) {
        return computeScrollOffset(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeHorizontalScrollRange(RecyclerView.State state) {
        return computeScrollRange(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.SmoothScroller.ScrollVectorProvider
    public PointF computeScrollVectorForPosition(int i2) {
        int f4 = f(i2);
        PointF pointF = new PointF();
        if (f4 == 0) {
            return null;
        }
        if (this.f7255e == 0) {
            pointF.x = f4;
            pointF.y = 0.0f;
        } else {
            pointF.x = 0.0f;
            pointF.y = f4;
        }
        return pointF;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeVerticalScrollExtent(RecyclerView.State state) {
        return computeScrollExtent(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeVerticalScrollOffset(RecyclerView.State state) {
        return computeScrollOffset(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeVerticalScrollRange(RecyclerView.State state) {
        return computeScrollRange(state);
    }

    boolean d() {
        int m4 = this.f7252b[0].m(Integer.MIN_VALUE);
        for (int i2 = 1; i2 < this.f7251a; i2++) {
            if (this.f7252b[i2].m(Integer.MIN_VALUE) != m4) {
                return false;
            }
        }
        return true;
    }

    public int[] findFirstCompletelyVisibleItemPositions(int[] iArr) {
        if (iArr == null) {
            iArr = new int[this.f7251a];
        } else if (iArr.length < this.f7251a) {
            throw new IllegalArgumentException("Provided int[]'s size must be more than or equal to span count. Expected:" + this.f7251a + ", array size:" + iArr.length);
        }
        for (int i2 = 0; i2 < this.f7251a; i2++) {
            iArr[i2] = this.f7252b[i2].findFirstCompletelyVisibleItemPosition();
        }
        return iArr;
    }

    public int[] findFirstVisibleItemPositions(int[] iArr) {
        if (iArr == null) {
            iArr = new int[this.f7251a];
        } else if (iArr.length < this.f7251a) {
            throw new IllegalArgumentException("Provided int[]'s size must be more than or equal to span count. Expected:" + this.f7251a + ", array size:" + iArr.length);
        }
        for (int i2 = 0; i2 < this.f7251a; i2++) {
            iArr[i2] = this.f7252b[i2].findFirstVisibleItemPosition();
        }
        return iArr;
    }

    public int[] findLastCompletelyVisibleItemPositions(int[] iArr) {
        if (iArr == null) {
            iArr = new int[this.f7251a];
        } else if (iArr.length < this.f7251a) {
            throw new IllegalArgumentException("Provided int[]'s size must be more than or equal to span count. Expected:" + this.f7251a + ", array size:" + iArr.length);
        }
        for (int i2 = 0; i2 < this.f7251a; i2++) {
            iArr[i2] = this.f7252b[i2].findLastCompletelyVisibleItemPosition();
        }
        return iArr;
    }

    public int[] findLastVisibleItemPositions(int[] iArr) {
        if (iArr == null) {
            iArr = new int[this.f7251a];
        } else if (iArr.length < this.f7251a) {
            throw new IllegalArgumentException("Provided int[]'s size must be more than or equal to span count. Expected:" + this.f7251a + ", array size:" + iArr.length);
        }
        for (int i2 = 0; i2 < this.f7251a; i2++) {
            iArr[i2] = this.f7252b[i2].findLastVisibleItemPosition();
        }
        return iArr;
    }

    boolean g() {
        int t3;
        int u3;
        if (getChildCount() == 0 || this.f7264n == 0 || !isAttachedToWindow()) {
            return false;
        }
        if (this.f7259i) {
            t3 = u();
            u3 = t();
        } else {
            t3 = t();
            u3 = u();
        }
        if (t3 == 0 && B() != null) {
            this.f7263m.a();
            requestSimpleAnimationsInNextLayout();
            requestLayout();
            return true;
        } else if (this.f7271u) {
            int i2 = this.f7259i ? -1 : 1;
            int i4 = u3 + 1;
            LazySpanLookup.FullSpanItem firstFullSpanItemInRange = this.f7263m.getFirstFullSpanItemInRange(t3, i4, i2, true);
            if (firstFullSpanItemInRange == null) {
                this.f7271u = false;
                this.f7263m.c(i4);
                return false;
            }
            LazySpanLookup.FullSpanItem firstFullSpanItemInRange2 = this.f7263m.getFirstFullSpanItemInRange(t3, firstFullSpanItemInRange.f7288a, i2 * (-1), true);
            if (firstFullSpanItemInRange2 == null) {
                this.f7263m.c(firstFullSpanItemInRange.f7288a);
            } else {
                this.f7263m.c(firstFullSpanItemInRange2.f7288a + 1);
            }
            requestSimpleAnimationsInNextLayout();
            requestLayout();
            return true;
        } else {
            return false;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public RecyclerView.LayoutParams generateDefaultLayoutParams() {
        if (this.f7255e == 0) {
            return new LayoutParams(-2, -1);
        }
        return new LayoutParams(-1, -2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public RecyclerView.LayoutParams generateLayoutParams(Context context, AttributeSet attributeSet) {
        return new LayoutParams(context, attributeSet);
    }

    public int getGapStrategy() {
        return this.f7264n;
    }

    public int getOrientation() {
        return this.f7255e;
    }

    public boolean getReverseLayout() {
        return this.f7258h;
    }

    public int getSpanCount() {
        return this.f7251a;
    }

    public void invalidateSpanAssignments() {
        this.f7263m.a();
        requestLayout();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean isAutoMeasureEnabled() {
        return this.f7264n != 0;
    }

    boolean isLayoutRTL() {
        return getLayoutDirection() == 1;
    }

    View n(boolean z3) {
        int startAfterPadding = this.f7253c.getStartAfterPadding();
        int endAfterPadding = this.f7253c.getEndAfterPadding();
        View view = null;
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            int decoratedStart = this.f7253c.getDecoratedStart(childAt);
            int decoratedEnd = this.f7253c.getDecoratedEnd(childAt);
            if (decoratedEnd > startAfterPadding && decoratedStart < endAfterPadding) {
                if (decoratedEnd <= endAfterPadding || !z3) {
                    return childAt;
                }
                if (view == null) {
                    view = childAt;
                }
            }
        }
        return view;
    }

    View o(boolean z3) {
        int startAfterPadding = this.f7253c.getStartAfterPadding();
        int endAfterPadding = this.f7253c.getEndAfterPadding();
        int childCount = getChildCount();
        View view = null;
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            int decoratedStart = this.f7253c.getDecoratedStart(childAt);
            if (this.f7253c.getDecoratedEnd(childAt) > startAfterPadding && decoratedStart < endAfterPadding) {
                if (decoratedStart >= startAfterPadding || !z3) {
                    return childAt;
                }
                if (view == null) {
                    view = childAt;
                }
            }
        }
        return view;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void offsetChildrenHorizontal(int i2) {
        super.offsetChildrenHorizontal(i2);
        for (int i4 = 0; i4 < this.f7251a; i4++) {
            this.f7252b[i4].o(i2);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void offsetChildrenVertical(int i2) {
        super.offsetChildrenVertical(i2);
        for (int i4 = 0; i4 < this.f7251a; i4++) {
            this.f7252b[i4].o(i2);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onAdapterChanged(@Nullable RecyclerView.Adapter adapter, @Nullable RecyclerView.Adapter adapter2) {
        this.f7263m.a();
        for (int i2 = 0; i2 < this.f7251a; i2++) {
            this.f7252b[i2].e();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onDetachedFromWindow(RecyclerView recyclerView, RecyclerView.Recycler recycler) {
        super.onDetachedFromWindow(recyclerView, recycler);
        removeCallbacks(this.f7274x);
        for (int i2 = 0; i2 < this.f7251a; i2++) {
            this.f7252b[i2].e();
        }
        recyclerView.requestLayout();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    @Nullable
    public View onFocusSearchFailed(View view, int i2, RecyclerView.Recycler recycler, RecyclerView.State state) {
        View findContainingItemView;
        int t3;
        int findLastPartiallyVisibleItemPosition;
        int findLastPartiallyVisibleItemPosition2;
        int findLastPartiallyVisibleItemPosition3;
        View focusableViewAfter;
        if (getChildCount() == 0 || (findContainingItemView = findContainingItemView(view)) == null) {
            return null;
        }
        resolveShouldLayoutReverse();
        int convertFocusDirectionToLayoutDirection = convertFocusDirectionToLayoutDirection(i2);
        if (convertFocusDirectionToLayoutDirection == Integer.MIN_VALUE) {
            return null;
        }
        LayoutParams layoutParams = (LayoutParams) findContainingItemView.getLayoutParams();
        boolean z3 = layoutParams.f7284f;
        Span span = layoutParams.f7283e;
        if (convertFocusDirectionToLayoutDirection == 1) {
            t3 = u();
        } else {
            t3 = t();
        }
        R(t3, state);
        M(convertFocusDirectionToLayoutDirection);
        LayoutState layoutState = this.f7257g;
        layoutState.f6994c = layoutState.f6995d + t3;
        layoutState.f6993b = (int) (this.f7253c.getTotalSpace() * B);
        LayoutState layoutState2 = this.f7257g;
        layoutState2.f6999h = true;
        layoutState2.f6992a = false;
        l(recycler, layoutState2, state);
        this.f7265o = this.f7259i;
        if (z3 || (focusableViewAfter = span.getFocusableViewAfter(t3, convertFocusDirectionToLayoutDirection)) == null || focusableViewAfter == findContainingItemView) {
            if (F(convertFocusDirectionToLayoutDirection)) {
                for (int i4 = this.f7251a - 1; i4 >= 0; i4--) {
                    View focusableViewAfter2 = this.f7252b[i4].getFocusableViewAfter(t3, convertFocusDirectionToLayoutDirection);
                    if (focusableViewAfter2 != null && focusableViewAfter2 != findContainingItemView) {
                        return focusableViewAfter2;
                    }
                }
            } else {
                for (int i5 = 0; i5 < this.f7251a; i5++) {
                    View focusableViewAfter3 = this.f7252b[i5].getFocusableViewAfter(t3, convertFocusDirectionToLayoutDirection);
                    if (focusableViewAfter3 != null && focusableViewAfter3 != findContainingItemView) {
                        return focusableViewAfter3;
                    }
                }
            }
            boolean z4 = (this.f7258h ^ true) == (convertFocusDirectionToLayoutDirection == -1);
            if (!z3) {
                if (z4) {
                    findLastPartiallyVisibleItemPosition3 = span.findFirstPartiallyVisibleItemPosition();
                } else {
                    findLastPartiallyVisibleItemPosition3 = span.findLastPartiallyVisibleItemPosition();
                }
                View findViewByPosition = findViewByPosition(findLastPartiallyVisibleItemPosition3);
                if (findViewByPosition != null && findViewByPosition != findContainingItemView) {
                    return findViewByPosition;
                }
            }
            if (F(convertFocusDirectionToLayoutDirection)) {
                for (int i6 = this.f7251a - 1; i6 >= 0; i6--) {
                    if (i6 != span.f7307e) {
                        if (z4) {
                            findLastPartiallyVisibleItemPosition2 = this.f7252b[i6].findFirstPartiallyVisibleItemPosition();
                        } else {
                            findLastPartiallyVisibleItemPosition2 = this.f7252b[i6].findLastPartiallyVisibleItemPosition();
                        }
                        View findViewByPosition2 = findViewByPosition(findLastPartiallyVisibleItemPosition2);
                        if (findViewByPosition2 != null && findViewByPosition2 != findContainingItemView) {
                            return findViewByPosition2;
                        }
                    }
                }
            } else {
                for (int i7 = 0; i7 < this.f7251a; i7++) {
                    if (z4) {
                        findLastPartiallyVisibleItemPosition = this.f7252b[i7].findFirstPartiallyVisibleItemPosition();
                    } else {
                        findLastPartiallyVisibleItemPosition = this.f7252b[i7].findLastPartiallyVisibleItemPosition();
                    }
                    View findViewByPosition3 = findViewByPosition(findLastPartiallyVisibleItemPosition);
                    if (findViewByPosition3 != null && findViewByPosition3 != findContainingItemView) {
                        return findViewByPosition3;
                    }
                }
            }
            return null;
        }
        return focusableViewAfter;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        if (getChildCount() > 0) {
            View o3 = o(false);
            View n4 = n(false);
            if (o3 == null || n4 == null) {
                return;
            }
            int position = getPosition(o3);
            int position2 = getPosition(n4);
            if (position < position2) {
                accessibilityEvent.setFromIndex(position);
                accessibilityEvent.setToIndex(position2);
                return;
            }
            accessibilityEvent.setFromIndex(position2);
            accessibilityEvent.setToIndex(position);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onItemsAdded(RecyclerView recyclerView, int i2, int i4) {
        A(i2, i4, 1);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onItemsChanged(RecyclerView recyclerView) {
        this.f7263m.a();
        requestLayout();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onItemsMoved(RecyclerView recyclerView, int i2, int i4, int i5) {
        A(i2, i4, 8);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onItemsRemoved(RecyclerView recyclerView, int i2, int i4) {
        A(i2, i4, 2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onItemsUpdated(RecyclerView recyclerView, int i2, int i4, Object obj) {
        A(i2, i4, 4);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onLayoutChildren(RecyclerView.Recycler recycler, RecyclerView.State state) {
        E(recycler, state, true);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onLayoutCompleted(RecyclerView.State state) {
        super.onLayoutCompleted(state);
        this.f7261k = -1;
        this.f7262l = Integer.MIN_VALUE;
        this.f7267q = null;
        this.f7270t.c();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            SavedState savedState = (SavedState) parcelable;
            this.f7267q = savedState;
            if (this.f7261k != -1) {
                savedState.a();
                this.f7267q.b();
            }
            requestLayout();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public Parcelable onSaveInstanceState() {
        int m4;
        int startAfterPadding;
        int[] iArr;
        if (this.f7267q != null) {
            return new SavedState(this.f7267q);
        }
        SavedState savedState = new SavedState();
        savedState.f7299h = this.f7258h;
        savedState.f7300i = this.f7265o;
        savedState.f7301j = this.f7266p;
        LazySpanLookup lazySpanLookup = this.f7263m;
        if (lazySpanLookup != null && (iArr = lazySpanLookup.f7286a) != null) {
            savedState.f7297f = iArr;
            savedState.f7296e = iArr.length;
            savedState.f7298g = lazySpanLookup.f7287b;
        } else {
            savedState.f7296e = 0;
        }
        if (getChildCount() > 0) {
            savedState.f7292a = this.f7265o ? u() : t();
            savedState.f7293b = p();
            int i2 = this.f7251a;
            savedState.f7294c = i2;
            savedState.f7295d = new int[i2];
            for (int i4 = 0; i4 < this.f7251a; i4++) {
                if (this.f7265o) {
                    m4 = this.f7252b[i4].j(Integer.MIN_VALUE);
                    if (m4 != Integer.MIN_VALUE) {
                        startAfterPadding = this.f7253c.getEndAfterPadding();
                        m4 -= startAfterPadding;
                        savedState.f7295d[i4] = m4;
                    } else {
                        savedState.f7295d[i4] = m4;
                    }
                } else {
                    m4 = this.f7252b[i4].m(Integer.MIN_VALUE);
                    if (m4 != Integer.MIN_VALUE) {
                        startAfterPadding = this.f7253c.getStartAfterPadding();
                        m4 -= startAfterPadding;
                        savedState.f7295d[i4] = m4;
                    } else {
                        savedState.f7295d[i4] = m4;
                    }
                }
            }
        } else {
            savedState.f7292a = -1;
            savedState.f7293b = -1;
            savedState.f7294c = 0;
        }
        return savedState;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onScrollStateChanged(int i2) {
        if (i2 == 0) {
            g();
        }
    }

    int p() {
        View n4 = this.f7259i ? n(true) : o(true);
        if (n4 == null) {
            return -1;
        }
        return getPosition(n4);
    }

    int scrollBy(int i2, RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (getChildCount() == 0 || i2 == 0) {
            return 0;
        }
        G(i2, state);
        int l4 = l(recycler, this.f7257g, state);
        if (this.f7257g.f6993b >= l4) {
            i2 = i2 < 0 ? -l4 : l4;
        }
        this.f7253c.offsetChildren(-i2);
        this.f7265o = this.f7259i;
        LayoutState layoutState = this.f7257g;
        layoutState.f6993b = 0;
        I(recycler, layoutState);
        return i2;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int scrollHorizontallyBy(int i2, RecyclerView.Recycler recycler, RecyclerView.State state) {
        return scrollBy(i2, recycler, state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void scrollToPosition(int i2) {
        SavedState savedState = this.f7267q;
        if (savedState != null && savedState.f7292a != i2) {
            savedState.a();
        }
        this.f7261k = i2;
        this.f7262l = Integer.MIN_VALUE;
        requestLayout();
    }

    public void scrollToPositionWithOffset(int i2, int i4) {
        SavedState savedState = this.f7267q;
        if (savedState != null) {
            savedState.a();
        }
        this.f7261k = i2;
        this.f7262l = i4;
        requestLayout();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int scrollVerticallyBy(int i2, RecyclerView.Recycler recycler, RecyclerView.State state) {
        return scrollBy(i2, recycler, state);
    }

    public void setGapStrategy(int i2) {
        assertNotInLayoutOrScroll(null);
        if (i2 == this.f7264n) {
            return;
        }
        if (i2 != 0 && i2 != 2) {
            throw new IllegalArgumentException("invalid gap strategy. Must be GAP_HANDLING_NONE or GAP_HANDLING_MOVE_ITEMS_BETWEEN_SPANS");
        }
        this.f7264n = i2;
        requestLayout();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void setMeasuredDimension(Rect rect, int i2, int i4) {
        int chooseSize;
        int chooseSize2;
        int paddingLeft = getPaddingLeft() + getPaddingRight();
        int paddingTop = getPaddingTop() + getPaddingBottom();
        if (this.f7255e == 1) {
            chooseSize2 = RecyclerView.LayoutManager.chooseSize(i4, rect.height() + paddingTop, getMinimumHeight());
            chooseSize = RecyclerView.LayoutManager.chooseSize(i2, (this.f7256f * this.f7251a) + paddingLeft, getMinimumWidth());
        } else {
            chooseSize = RecyclerView.LayoutManager.chooseSize(i2, rect.width() + paddingLeft, getMinimumWidth());
            chooseSize2 = RecyclerView.LayoutManager.chooseSize(i4, (this.f7256f * this.f7251a) + paddingTop, getMinimumHeight());
        }
        setMeasuredDimension(chooseSize, chooseSize2);
    }

    public void setOrientation(int i2) {
        if (i2 != 0 && i2 != 1) {
            throw new IllegalArgumentException("invalid orientation.");
        }
        assertNotInLayoutOrScroll(null);
        if (i2 == this.f7255e) {
            return;
        }
        this.f7255e = i2;
        OrientationHelper orientationHelper = this.f7253c;
        this.f7253c = this.f7254d;
        this.f7254d = orientationHelper;
        requestLayout();
    }

    public void setReverseLayout(boolean z3) {
        assertNotInLayoutOrScroll(null);
        SavedState savedState = this.f7267q;
        if (savedState != null && savedState.f7299h != z3) {
            savedState.f7299h = z3;
        }
        this.f7258h = z3;
        requestLayout();
    }

    public void setSpanCount(int i2) {
        assertNotInLayoutOrScroll(null);
        if (i2 != this.f7251a) {
            invalidateSpanAssignments();
            this.f7251a = i2;
            this.f7260j = new BitSet(this.f7251a);
            this.f7252b = new Span[this.f7251a];
            for (int i4 = 0; i4 < this.f7251a; i4++) {
                this.f7252b[i4] = new Span(i4);
            }
            requestLayout();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void smoothScrollToPosition(RecyclerView recyclerView, RecyclerView.State state, int i2) {
        LinearSmoothScroller linearSmoothScroller = new LinearSmoothScroller(recyclerView.getContext());
        linearSmoothScroller.setTargetPosition(i2);
        startSmoothScroll(linearSmoothScroller);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean supportsPredictiveItemAnimations() {
        return this.f7267q == null;
    }

    int t() {
        if (getChildCount() == 0) {
            return 0;
        }
        return getPosition(getChildAt(0));
    }

    int u() {
        int childCount = getChildCount();
        if (childCount == 0) {
            return 0;
        }
        return getPosition(getChildAt(childCount - 1));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public RecyclerView.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            return new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams);
        }
        return new LayoutParams(layoutParams);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class LazySpanLookup {

        /* renamed from: c  reason: collision with root package name */
        private static final int f7285c = 10;

        /* renamed from: a  reason: collision with root package name */
        int[] f7286a;

        /* renamed from: b  reason: collision with root package name */
        List<FullSpanItem> f7287b;

        LazySpanLookup() {
        }

        private int f(int i2) {
            if (this.f7287b == null) {
                return -1;
            }
            FullSpanItem fullSpanItem = getFullSpanItem(i2);
            if (fullSpanItem != null) {
                this.f7287b.remove(fullSpanItem);
            }
            int size = this.f7287b.size();
            int i4 = 0;
            while (true) {
                if (i4 >= size) {
                    i4 = -1;
                    break;
                } else if (this.f7287b.get(i4).f7288a >= i2) {
                    break;
                } else {
                    i4++;
                }
            }
            if (i4 != -1) {
                this.f7287b.remove(i4);
                return this.f7287b.get(i4).f7288a;
            }
            return -1;
        }

        private void i(int i2, int i4) {
            List<FullSpanItem> list = this.f7287b;
            if (list == null) {
                return;
            }
            for (int size = list.size() - 1; size >= 0; size--) {
                FullSpanItem fullSpanItem = this.f7287b.get(size);
                int i5 = fullSpanItem.f7288a;
                if (i5 >= i2) {
                    fullSpanItem.f7288a = i5 + i4;
                }
            }
        }

        private void j(int i2, int i4) {
            List<FullSpanItem> list = this.f7287b;
            if (list == null) {
                return;
            }
            int i5 = i2 + i4;
            for (int size = list.size() - 1; size >= 0; size--) {
                FullSpanItem fullSpanItem = this.f7287b.get(size);
                int i6 = fullSpanItem.f7288a;
                if (i6 >= i2) {
                    if (i6 < i5) {
                        this.f7287b.remove(size);
                    } else {
                        fullSpanItem.f7288a = i6 - i4;
                    }
                }
            }
        }

        void a() {
            int[] iArr = this.f7286a;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
            this.f7287b = null;
        }

        public void addFullSpanItem(FullSpanItem fullSpanItem) {
            if (this.f7287b == null) {
                this.f7287b = new ArrayList();
            }
            int size = this.f7287b.size();
            for (int i2 = 0; i2 < size; i2++) {
                FullSpanItem fullSpanItem2 = this.f7287b.get(i2);
                if (fullSpanItem2.f7288a == fullSpanItem.f7288a) {
                    this.f7287b.remove(i2);
                }
                if (fullSpanItem2.f7288a >= fullSpanItem.f7288a) {
                    this.f7287b.add(i2, fullSpanItem);
                    return;
                }
            }
            this.f7287b.add(fullSpanItem);
        }

        void b(int i2) {
            int[] iArr = this.f7286a;
            if (iArr == null) {
                int[] iArr2 = new int[Math.max(i2, 10) + 1];
                this.f7286a = iArr2;
                Arrays.fill(iArr2, -1);
            } else if (i2 >= iArr.length) {
                int[] iArr3 = new int[l(i2)];
                this.f7286a = iArr3;
                System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
                int[] iArr4 = this.f7286a;
                Arrays.fill(iArr4, iArr.length, iArr4.length, -1);
            }
        }

        int c(int i2) {
            List<FullSpanItem> list = this.f7287b;
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    if (this.f7287b.get(size).f7288a >= i2) {
                        this.f7287b.remove(size);
                    }
                }
            }
            return e(i2);
        }

        int d(int i2) {
            int[] iArr = this.f7286a;
            if (iArr == null || i2 >= iArr.length) {
                return -1;
            }
            return iArr[i2];
        }

        int e(int i2) {
            int[] iArr = this.f7286a;
            if (iArr != null && i2 < iArr.length) {
                int f4 = f(i2);
                if (f4 == -1) {
                    int[] iArr2 = this.f7286a;
                    Arrays.fill(iArr2, i2, iArr2.length, -1);
                    return this.f7286a.length;
                }
                int min = Math.min(f4 + 1, this.f7286a.length);
                Arrays.fill(this.f7286a, i2, min, -1);
                return min;
            }
            return -1;
        }

        void g(int i2, int i4) {
            int[] iArr = this.f7286a;
            if (iArr == null || i2 >= iArr.length) {
                return;
            }
            int i5 = i2 + i4;
            b(i5);
            int[] iArr2 = this.f7286a;
            System.arraycopy(iArr2, i2, iArr2, i5, (iArr2.length - i2) - i4);
            Arrays.fill(this.f7286a, i2, i5, -1);
            i(i2, i4);
        }

        public FullSpanItem getFirstFullSpanItemInRange(int i2, int i4, int i5, boolean z3) {
            List<FullSpanItem> list = this.f7287b;
            if (list == null) {
                return null;
            }
            int size = list.size();
            for (int i6 = 0; i6 < size; i6++) {
                FullSpanItem fullSpanItem = this.f7287b.get(i6);
                int i7 = fullSpanItem.f7288a;
                if (i7 >= i4) {
                    return null;
                }
                if (i7 >= i2 && (i5 == 0 || fullSpanItem.f7289b == i5 || (z3 && fullSpanItem.f7291d))) {
                    return fullSpanItem;
                }
            }
            return null;
        }

        public FullSpanItem getFullSpanItem(int i2) {
            List<FullSpanItem> list = this.f7287b;
            if (list == null) {
                return null;
            }
            for (int size = list.size() - 1; size >= 0; size--) {
                FullSpanItem fullSpanItem = this.f7287b.get(size);
                if (fullSpanItem.f7288a == i2) {
                    return fullSpanItem;
                }
            }
            return null;
        }

        void h(int i2, int i4) {
            int[] iArr = this.f7286a;
            if (iArr == null || i2 >= iArr.length) {
                return;
            }
            int i5 = i2 + i4;
            b(i5);
            int[] iArr2 = this.f7286a;
            System.arraycopy(iArr2, i5, iArr2, i2, (iArr2.length - i2) - i4);
            int[] iArr3 = this.f7286a;
            Arrays.fill(iArr3, iArr3.length - i4, iArr3.length, -1);
            j(i2, i4);
        }

        void k(int i2, Span span) {
            b(i2);
            this.f7286a[i2] = span.f7307e;
        }

        int l(int i2) {
            int length = this.f7286a.length;
            while (length <= i2) {
                length *= 2;
            }
            return length;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @SuppressLint({"BanParcelableUsage"})
        /* loaded from: classes2.dex */
        public static class FullSpanItem implements Parcelable {
            public static final Parcelable.Creator<FullSpanItem> CREATOR = new Parcelable.Creator<FullSpanItem>() { // from class: androidx.recyclerview.widget.StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem.1
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // android.os.Parcelable.Creator
                public FullSpanItem createFromParcel(Parcel parcel) {
                    return new FullSpanItem(parcel);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // android.os.Parcelable.Creator
                public FullSpanItem[] newArray(int i2) {
                    return new FullSpanItem[i2];
                }
            };

            /* renamed from: a  reason: collision with root package name */
            int f7288a;

            /* renamed from: b  reason: collision with root package name */
            int f7289b;

            /* renamed from: c  reason: collision with root package name */
            int[] f7290c;

            /* renamed from: d  reason: collision with root package name */
            boolean f7291d;

            FullSpanItem(Parcel parcel) {
                this.f7288a = parcel.readInt();
                this.f7289b = parcel.readInt();
                this.f7291d = parcel.readInt() == 1;
                int readInt = parcel.readInt();
                if (readInt > 0) {
                    int[] iArr = new int[readInt];
                    this.f7290c = iArr;
                    parcel.readIntArray(iArr);
                }
            }

            int a(int i2) {
                int[] iArr = this.f7290c;
                if (iArr == null) {
                    return 0;
                }
                return iArr[i2];
            }

            @Override // android.os.Parcelable
            public int describeContents() {
                return 0;
            }

            public String toString() {
                return "FullSpanItem{mPosition=" + this.f7288a + ", mGapDir=" + this.f7289b + ", mHasUnwantedGapAfter=" + this.f7291d + ", mGapPerSpan=" + Arrays.toString(this.f7290c) + '}';
            }

            @Override // android.os.Parcelable
            public void writeToParcel(Parcel parcel, int i2) {
                parcel.writeInt(this.f7288a);
                parcel.writeInt(this.f7289b);
                parcel.writeInt(this.f7291d ? 1 : 0);
                int[] iArr = this.f7290c;
                if (iArr != null && iArr.length > 0) {
                    parcel.writeInt(iArr.length);
                    parcel.writeIntArray(this.f7290c);
                    return;
                }
                parcel.writeInt(0);
            }

            FullSpanItem() {
            }
        }
    }

    public StaggeredGridLayoutManager(int i2, int i4) {
        this.f7255e = i4;
        setSpanCount(i2);
        this.f7257g = new LayoutState();
        k();
    }
}
