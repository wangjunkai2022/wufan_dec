package com.join.mgps.customview;

import android.content.Context;
import android.database.DataSetObserver;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import android.widget.SpinnerAdapter;
import com.join.mgps.customview.AdapterView;
/* loaded from: classes3.dex */
public abstract class AbsSpinner extends AdapterView<SpinnerAdapter> {
    SpinnerAdapter H;
    int I;
    int J;
    boolean K;

    /* renamed from: n0  reason: collision with root package name */
    int f44835n0;

    /* renamed from: o0  reason: collision with root package name */
    int f44836o0;

    /* renamed from: p0  reason: collision with root package name */
    int f44837p0;

    /* renamed from: q0  reason: collision with root package name */
    int f44838q0;

    /* renamed from: r0  reason: collision with root package name */
    Rect f44839r0;

    /* renamed from: s0  reason: collision with root package name */
    View f44840s0;

    /* renamed from: t0  reason: collision with root package name */
    Interpolator f44841t0;

    /* renamed from: u0  reason: collision with root package name */
    b f44842u0;

    /* renamed from: v0  reason: collision with root package name */
    private DataSetObserver f44843v0;

    /* renamed from: w0  reason: collision with root package name */
    private Rect f44844w0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        /* renamed from: a  reason: collision with root package name */
        long f44845a;

        /* renamed from: b  reason: collision with root package name */
        int f44846b;

        /* loaded from: classes3.dex */
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

        public String toString() {
            return "AbsSpinner.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " selectedId=" + this.f44845a + " position=" + this.f44846b + "}";
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            parcel.writeLong(this.f44845a);
            parcel.writeInt(this.f44846b);
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        private SavedState(Parcel parcel) {
            super(parcel);
            this.f44845a = parcel.readLong();
            this.f44846b = parcel.readInt();
        }
    }

    /* loaded from: classes3.dex */
    class b {

        /* renamed from: a  reason: collision with root package name */
        private final SparseArray<View> f44847a = new SparseArray<>();

        b() {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void a() {
            SparseArray<View> sparseArray = this.f44847a;
            int size = sparseArray.size();
            for (int i2 = 0; i2 < size; i2++) {
                View valueAt = sparseArray.valueAt(i2);
                if (valueAt != null) {
                    AbsSpinner.this.removeDetachedView(valueAt, true);
                }
            }
            sparseArray.clear();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public View b(int i2) {
            View view = this.f44847a.get(i2);
            if (view != null) {
                this.f44847a.delete(i2);
            }
            return view;
        }

        View c(int i2) {
            return this.f44847a.get(i2);
        }

        public void d(int i2, View view) {
            this.f44847a.put(i2, view);
        }
    }

    public AbsSpinner(Context context) {
        super(context);
        this.f44835n0 = 0;
        this.f44836o0 = 0;
        this.f44837p0 = 0;
        this.f44838q0 = 0;
        this.f44839r0 = new Rect();
        this.f44840s0 = null;
        this.f44842u0 = new b();
        u();
    }

    private void u() {
        setFocusable(true);
        setWillNotDraw(false);
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new ViewGroup.LayoutParams(-1, -2);
    }

    @Override // com.join.mgps.customview.AdapterView
    public final int getCount() {
        return this.f44885s;
    }

    @Override // com.join.mgps.customview.AdapterView
    public final View getSelectedView() {
        int i2;
        if (this.f44885s <= 0 || (i2 = this.f44882p) < 0) {
            return null;
        }
        return getChildAt(i2 - this.f44867a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.customview.AdapterView
    public final void k() {
        super.k();
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x00a2  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void onMeasure(int r7, int r8) {
        /*
            r6 = this;
            int r0 = android.view.View.MeasureSpec.getMode(r7)
            android.graphics.Rect r1 = r6.f44839r0
            int r2 = r6.getPaddingLeft()
            int r3 = r6.f44835n0
            if (r2 <= r3) goto L12
            int r3 = r6.getPaddingLeft()
        L12:
            r1.left = r3
            android.graphics.Rect r1 = r6.f44839r0
            int r2 = r6.getPaddingTop()
            int r3 = r6.f44836o0
            if (r2 <= r3) goto L22
            int r3 = r6.getPaddingTop()
        L22:
            r1.top = r3
            android.graphics.Rect r1 = r6.f44839r0
            int r2 = r6.getPaddingRight()
            int r3 = r6.f44837p0
            if (r2 <= r3) goto L32
            int r3 = r6.getPaddingRight()
        L32:
            r1.right = r3
            android.graphics.Rect r1 = r6.f44839r0
            int r2 = r6.getPaddingBottom()
            int r3 = r6.f44838q0
            if (r2 <= r3) goto L42
            int r3 = r6.getPaddingBottom()
        L42:
            r1.bottom = r3
            boolean r1 = r6.f44879m
            if (r1 == 0) goto L4b
            r6.k()
        L4b:
            int r1 = r6.getSelectedItemPosition()
            r2 = 1
            r3 = 0
            if (r1 < 0) goto L9f
            android.widget.SpinnerAdapter r4 = r6.H
            if (r4 == 0) goto L9f
            com.join.mgps.customview.AbsSpinner$b r4 = r6.f44842u0
            android.view.View r4 = r4.b(r1)
            if (r4 != 0) goto L66
            android.widget.SpinnerAdapter r4 = r6.H
            r5 = 0
            android.view.View r4 = r4.getView(r1, r5, r6)
        L66:
            if (r4 == 0) goto L6d
            com.join.mgps.customview.AbsSpinner$b r5 = r6.f44842u0
            r5.d(r1, r4)
        L6d:
            if (r4 == 0) goto L9f
            android.view.ViewGroup$LayoutParams r1 = r4.getLayoutParams()
            if (r1 != 0) goto L80
            r6.K = r2
            android.view.ViewGroup$LayoutParams r1 = r6.generateDefaultLayoutParams()
            r4.setLayoutParams(r1)
            r6.K = r3
        L80:
            r6.measureChild(r4, r7, r8)
            int r1 = r6.s(r4)
            android.graphics.Rect r2 = r6.f44839r0
            int r5 = r2.top
            int r1 = r1 + r5
            int r2 = r2.bottom
            int r1 = r1 + r2
            int r2 = r6.t(r4)
            android.graphics.Rect r4 = r6.f44839r0
            int r5 = r4.left
            int r2 = r2 + r5
            int r4 = r4.right
            int r2 = r2 + r4
            r3 = r1
            r1 = r2
            r2 = 0
            goto La0
        L9f:
            r1 = 0
        La0:
            if (r2 == 0) goto Lb0
            android.graphics.Rect r2 = r6.f44839r0
            int r3 = r2.top
            int r4 = r2.bottom
            int r3 = r3 + r4
            if (r0 != 0) goto Lb0
            int r0 = r2.left
            int r1 = r2.right
            int r1 = r1 + r0
        Lb0:
            int r0 = r6.getSuggestedMinimumHeight()
            int r0 = java.lang.Math.max(r3, r0)
            int r2 = r6.getSuggestedMinimumWidth()
            int r1 = java.lang.Math.max(r1, r2)
            int r0 = android.view.ViewGroup.resolveSize(r0, r8)
            int r1 = android.view.ViewGroup.resolveSize(r1, r7)
            r6.setMeasuredDimension(r1, r0)
            r6.I = r8
            r6.J = r7
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.customview.AbsSpinner.onMeasure(int, int):void");
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        long j4 = savedState.f44845a;
        if (j4 >= 0) {
            this.f44879m = true;
            this.f44872f = true;
            this.f44870d = j4;
            this.f44869c = savedState.f44846b;
            this.f44873g = 0;
            requestLayout();
        }
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        long selectedItemId = getSelectedItemId();
        savedState.f44845a = selectedItemId;
        if (selectedItemId >= 0) {
            savedState.f44846b = getSelectedItemPosition();
        } else {
            savedState.f44846b = -1;
        }
        return savedState;
    }

    @Override // android.view.View, android.view.ViewParent
    public final void requestLayout() {
        if (this.K) {
            return;
        }
        super.requestLayout();
    }

    final int s(View view) {
        return view.getMeasuredHeight();
    }

    public final void setSelection(int i2, boolean z3) {
        int i4;
        boolean z4 = true;
        z(i2, (!z3 || (i4 = this.f44867a) > i2 || i2 > (i4 + getChildCount()) - 1) ? false : false);
    }

    final int t(View view) {
        return view.getMeasuredWidth();
    }

    abstract void v(int i2, boolean z3);

    public final int w(int i2, int i4) {
        Rect rect = this.f44844w0;
        if (rect == null) {
            rect = new Rect();
            this.f44844w0 = rect;
        }
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            if (childAt.getVisibility() == 0) {
                childAt.getHitRect(rect);
                if (rect.contains(i2, i4)) {
                    return this.f44867a + childCount;
                }
            }
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void x() {
        int childCount = getChildCount();
        b bVar = this.f44842u0;
        for (int i2 = 0; i2 < childCount; i2++) {
            bVar.d(this.f44867a + i2, getChildAt(i2));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void y() {
        this.f44879m = false;
        this.f44872f = false;
        removeAllViewsInLayout();
        this.f44887u = -1;
        this.f44888v = Long.MIN_VALUE;
        setSelectedPositionInt(-1);
        setNextSelectedPositionInt(-1);
        invalidate();
    }

    final void z(int i2, boolean z3) {
        if (i2 != this.f44887u) {
            this.K = true;
            setNextSelectedPositionInt(i2);
            v(i2 - this.f44882p, z3);
            this.K = false;
        }
    }

    @Override // com.join.mgps.customview.AdapterView
    public final SpinnerAdapter getAdapter() {
        return this.H;
    }

    @Override // com.join.mgps.customview.AdapterView
    public void setAdapter(SpinnerAdapter spinnerAdapter) {
        SpinnerAdapter spinnerAdapter2 = this.H;
        if (spinnerAdapter2 != null) {
            spinnerAdapter2.unregisterDataSetObserver(this.f44843v0);
            y();
        }
        this.H = spinnerAdapter;
        this.f44887u = -1;
        this.f44888v = Long.MIN_VALUE;
        if (spinnerAdapter != null) {
            this.f44886t = this.f44885s;
            this.f44885s = spinnerAdapter.getCount();
            d();
            AdapterView.c cVar = new AdapterView.c();
            this.f44843v0 = cVar;
            this.H.registerDataSetObserver(cVar);
            int i2 = this.f44885s > 0 ? 0 : -1;
            setSelectedPositionInt(i2);
            setNextSelectedPositionInt(i2);
            if (this.f44885s == 0) {
                e();
            }
        } else {
            d();
            y();
            e();
        }
        requestLayout();
    }

    @Override // com.join.mgps.customview.AdapterView
    public final void setSelection(int i2) {
        setNextSelectedPositionInt(i2);
        requestLayout();
        invalidate();
    }

    public AbsSpinner(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public AbsSpinner(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f44835n0 = 0;
        this.f44836o0 = 0;
        this.f44837p0 = 0;
        this.f44838q0 = 0;
        this.f44839r0 = new Rect();
        this.f44840s0 = null;
        this.f44842u0 = new b();
        u();
    }
}
