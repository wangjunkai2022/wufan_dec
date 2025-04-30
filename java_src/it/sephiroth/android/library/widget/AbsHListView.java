package it.sephiroth.android.library.widget;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.TransitionDrawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ActionMode;
import android.view.ContextMenu;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewDebug;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.Checkable;
import android.widget.ListAdapter;
import androidx.collection.LongSparseArray;
import androidx.collection.SparseArrayCompat;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.MotionEventCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.widget.EdgeEffectCompat;
import com.join.android.app.mgsim.wufun.R;
import it.sephiroth.android.library.util.b;
import it.sephiroth.android.library.widget.AdapterView;
import java.util.ArrayList;
import java.util.List;
@TargetApi(11)
/* loaded from: classes5.dex */
public abstract class AbsHListView extends AdapterView<ListAdapter> implements ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnTouchModeChangeListener {
    private static final String Q1 = "AbsListView";
    public static final int R1 = 0;
    public static final int S1 = 1;
    public static final int T1 = 2;
    public static final int U1 = -1;
    public static final int V1 = 0;
    public static final int W1 = 1;
    public static final int X1 = 2;
    public static final int Y1 = 3;
    public static final int Z1 = 4;

    /* renamed from: a2  reason: collision with root package name */
    public static final int f70416a2 = 5;

    /* renamed from: b2  reason: collision with root package name */
    public static final int f70417b2 = 6;

    /* renamed from: c2  reason: collision with root package name */
    public static final int f70418c2 = 0;

    /* renamed from: d2  reason: collision with root package name */
    public static final int f70419d2 = 1;

    /* renamed from: e2  reason: collision with root package name */
    public static final int f70420e2 = 2;

    /* renamed from: f2  reason: collision with root package name */
    public static final int f70421f2 = 3;

    /* renamed from: g2  reason: collision with root package name */
    public static final int f70422g2 = 4;

    /* renamed from: h2  reason: collision with root package name */
    public static final int f70423h2 = 5;
    public static final int i2 = 6;

    /* renamed from: j2  reason: collision with root package name */
    protected static final int f70424j2 = 3;

    /* renamed from: k2  reason: collision with root package name */
    private static final int f70425k2 = 20;

    /* renamed from: l2  reason: collision with root package name */
    private static final int f70426l2 = -1;

    /* renamed from: m2  reason: collision with root package name */
    private static final int f70427m2 = 0;

    /* renamed from: n2  reason: collision with root package name */
    private static final int f70428n2 = 1;

    /* renamed from: o2  reason: collision with root package name */
    private static final int f70429o2 = -1;

    /* renamed from: p2  reason: collision with root package name */
    static final Interpolator f70430p2 = new LinearInterpolator();

    /* renamed from: q2  reason: collision with root package name */
    public static final int[] f70431q2 = {0};
    protected Rect A0;
    int A1;
    protected final l B0;
    private EdgeEffectCompat B1;
    int C0;
    private EdgeEffectCompat C1;
    int D0;
    private int D1;
    int E0;
    private int E1;
    int F0;
    private int F1;
    protected Rect G0;
    private boolean G1;
    protected int H0;
    private int H1;
    View I0;
    private int I1;
    View J0;
    private h J1;
    b.a K;
    protected boolean K0;
    private int K1;
    protected boolean L0;
    private int L1;
    protected int M0;
    protected boolean M1;
    int N0;
    private int N1;
    int O0;
    private SavedState O1;
    int P0;
    private float P1;
    int Q0;
    protected int R0;
    int S0;
    int T0;
    private VelocityTracker U0;
    private g V0;
    protected k W0;
    protected int X0;
    protected boolean Y0;
    boolean Z0;

    /* renamed from: a1  reason: collision with root package name */
    boolean f70432a1;

    /* renamed from: b1  reason: collision with root package name */
    private i f70433b1;

    /* renamed from: c1  reason: collision with root package name */
    private boolean f70434c1;

    /* renamed from: d1  reason: collision with root package name */
    private Rect f70435d1;

    /* renamed from: e1  reason: collision with root package name */
    protected int f70436e1;

    /* renamed from: f1  reason: collision with root package name */
    private ContextMenu.ContextMenuInfo f70437f1;

    /* renamed from: g1  reason: collision with root package name */
    protected int f70438g1;

    /* renamed from: h1  reason: collision with root package name */
    private int f70439h1;

    /* renamed from: i1  reason: collision with root package name */
    private e f70440i1;

    /* renamed from: j1  reason: collision with root package name */
    private Runnable f70441j1;

    /* renamed from: k1  reason: collision with root package name */
    private d f70442k1;

    /* renamed from: l1  reason: collision with root package name */
    private j f70443l1;

    /* renamed from: m1  reason: collision with root package name */
    private Runnable f70444m1;

    /* renamed from: n0  reason: collision with root package name */
    protected int f70445n0;

    /* renamed from: n1  reason: collision with root package name */
    private int f70446n1;

    /* renamed from: o0  reason: collision with root package name */
    public Object f70447o0;

    /* renamed from: o1  reason: collision with root package name */
    private int f70448o1;

    /* renamed from: p0  reason: collision with root package name */
    Object f70449p0;

    /* renamed from: p1  reason: collision with root package name */
    private boolean f70450p1;

    /* renamed from: q0  reason: collision with root package name */
    int f70451q0;

    /* renamed from: q1  reason: collision with root package name */
    private int f70452q1;

    /* renamed from: r0  reason: collision with root package name */
    protected SparseArrayCompat<Boolean> f70453r0;

    /* renamed from: r1  reason: collision with root package name */
    private int f70454r1;

    /* renamed from: s0  reason: collision with root package name */
    LongSparseArray<Integer> f70455s0;

    /* renamed from: s1  reason: collision with root package name */
    private Runnable f70456s1;

    /* renamed from: t0  reason: collision with root package name */
    protected int f70457t0;

    /* renamed from: t1  reason: collision with root package name */
    protected Runnable f70458t1;

    /* renamed from: u0  reason: collision with root package name */
    protected c f70459u0;

    /* renamed from: u1  reason: collision with root package name */
    private int f70460u1;

    /* renamed from: v0  reason: collision with root package name */
    protected ListAdapter f70461v0;

    /* renamed from: v1  reason: collision with root package name */
    private int f70462v1;

    /* renamed from: w0  reason: collision with root package name */
    boolean f70463w0;

    /* renamed from: w1  reason: collision with root package name */
    private float f70464w1;

    /* renamed from: x0  reason: collision with root package name */
    boolean f70465x0;

    /* renamed from: x1  reason: collision with root package name */
    protected final boolean[] f70466x1;

    /* renamed from: y0  reason: collision with root package name */
    Drawable f70467y0;

    /* renamed from: y1  reason: collision with root package name */
    private int f70468y1;

    /* renamed from: z0  reason: collision with root package name */
    int f70469z0;

    /* renamed from: z1  reason: collision with root package name */
    int f70470z1;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        /* renamed from: a  reason: collision with root package name */
        long f70476a;

        /* renamed from: b  reason: collision with root package name */
        long f70477b;

        /* renamed from: c  reason: collision with root package name */
        int f70478c;

        /* renamed from: d  reason: collision with root package name */
        int f70479d;

        /* renamed from: e  reason: collision with root package name */
        int f70480e;

        /* renamed from: f  reason: collision with root package name */
        String f70481f;

        /* renamed from: g  reason: collision with root package name */
        boolean f70482g;

        /* renamed from: h  reason: collision with root package name */
        int f70483h;

        /* renamed from: i  reason: collision with root package name */
        SparseArrayCompat<Boolean> f70484i;

        /* renamed from: j  reason: collision with root package name */
        LongSparseArray<Integer> f70485j;

        /* loaded from: classes5.dex */
        class a implements Parcelable.Creator<SavedState> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: b */
            public SavedState[] newArray(int i2) {
                return new SavedState[i2];
            }
        }

        /* synthetic */ SavedState(Parcel parcel, a aVar) {
            this(parcel);
        }

        private SparseArrayCompat<Boolean> a(Parcel parcel) {
            int readInt = parcel.readInt();
            if (readInt < 0) {
                return null;
            }
            SparseArrayCompat<Boolean> sparseArrayCompat = new SparseArrayCompat<>(readInt);
            b(sparseArrayCompat, parcel, readInt);
            return sparseArrayCompat;
        }

        private void b(SparseArrayCompat<Boolean> sparseArrayCompat, Parcel parcel, int i2) {
            while (i2 > 0) {
                int readInt = parcel.readInt();
                boolean z3 = true;
                if (parcel.readByte() != 1) {
                    z3 = false;
                }
                sparseArrayCompat.append(readInt, Boolean.valueOf(z3));
                i2--;
            }
        }

        private LongSparseArray<Integer> c(Parcel parcel) {
            int readInt = parcel.readInt();
            if (readInt <= 0) {
                return null;
            }
            LongSparseArray<Integer> longSparseArray = new LongSparseArray<>(readInt);
            d(longSparseArray, parcel, readInt);
            return longSparseArray;
        }

        private void d(LongSparseArray<Integer> longSparseArray, Parcel parcel, int i2) {
            while (i2 > 0) {
                longSparseArray.put(parcel.readLong(), Integer.valueOf(parcel.readInt()));
                i2--;
            }
        }

        private void e(SparseArrayCompat<Boolean> sparseArrayCompat, Parcel parcel) {
            if (sparseArrayCompat == null) {
                parcel.writeInt(-1);
                return;
            }
            int size = sparseArrayCompat.size();
            parcel.writeInt(size);
            for (int i2 = 0; i2 < size; i2++) {
                parcel.writeInt(sparseArrayCompat.keyAt(i2));
                parcel.writeByte(sparseArrayCompat.valueAt(i2).booleanValue() ? (byte) 1 : (byte) 0);
            }
        }

        private void f(LongSparseArray<Integer> longSparseArray, Parcel parcel) {
            int size = longSparseArray != null ? longSparseArray.size() : 0;
            parcel.writeInt(size);
            for (int i2 = 0; i2 < size; i2++) {
                parcel.writeLong(longSparseArray.keyAt(i2));
                parcel.writeInt(longSparseArray.valueAt(i2).intValue());
            }
        }

        public String toString() {
            return "AbsListView.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " selectedId=" + this.f70476a + " firstId=" + this.f70477b + " viewLeft=" + this.f70478c + " position=" + this.f70479d + " width=" + this.f70480e + " filter=" + this.f70481f + " checkState=" + this.f70484i + "}";
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            parcel.writeLong(this.f70476a);
            parcel.writeLong(this.f70477b);
            parcel.writeInt(this.f70478c);
            parcel.writeInt(this.f70479d);
            parcel.writeInt(this.f70480e);
            parcel.writeString(this.f70481f);
            parcel.writeByte(this.f70482g ? (byte) 1 : (byte) 0);
            parcel.writeInt(this.f70483h);
            e(this.f70484i, parcel);
            f(this.f70485j, parcel);
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        private SavedState(Parcel parcel) {
            super(parcel);
            this.f70476a = parcel.readLong();
            this.f70477b = parcel.readLong();
            this.f70478c = parcel.readInt();
            this.f70479d = parcel.readInt();
            this.f70480e = parcel.readInt();
            this.f70481f = parcel.readString();
            this.f70482g = parcel.readByte() != 0;
            this.f70483h = parcel.readInt();
            this.f70484i = a(parcel);
            this.f70485j = c(parcel);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ View f70486a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ j f70487b;

        a(View view, j jVar) {
            this.f70486a = view;
            this.f70487b = jVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            AbsHListView.this.R0 = -1;
            this.f70486a.setPressed(false);
            AbsHListView.this.setPressed(false);
            if (AbsHListView.this.f70552m) {
                return;
            }
            this.f70487b.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            AbsHListView absHListView = AbsHListView.this;
            if (absHListView.K0) {
                absHListView.L0 = false;
                absHListView.K0 = false;
                absHListView.setChildrenDrawnWithCacheEnabled(false);
                if ((AbsHListView.this.getPersistentDrawingCache() & 2) == 0) {
                    AbsHListView.this.setChildrenDrawingCacheEnabled(false);
                }
                if (AbsHListView.this.isAlwaysDrawnWithCacheEnabled()) {
                    return;
                }
                AbsHListView.this.invalidate();
            }
        }
    }

    /* loaded from: classes5.dex */
    public class c extends AdapterView<ListAdapter>.c {
        public c() {
            super();
        }

        @Override // it.sephiroth.android.library.widget.AdapterView.c
        public /* bridge */ /* synthetic */ void a() {
            super.a();
        }

        @Override // it.sephiroth.android.library.widget.AdapterView.c, android.database.DataSetObserver
        public void onChanged() {
            super.onChanged();
        }

        @Override // it.sephiroth.android.library.widget.AdapterView.c, android.database.DataSetObserver
        public void onInvalidated() {
            super.onInvalidated();
        }
    }

    /* loaded from: classes5.dex */
    private class d extends o implements Runnable {
        private d() {
            super(AbsHListView.this, null);
        }

        @Override // java.lang.Runnable
        public void run() {
            AbsHListView absHListView;
            int i2;
            boolean z3;
            if (!AbsHListView.this.isPressed() || (i2 = (absHListView = AbsHListView.this).f70555p) < 0) {
                return;
            }
            View childAt = absHListView.getChildAt(i2 - absHListView.f70540a);
            AbsHListView absHListView2 = AbsHListView.this;
            if (!absHListView2.f70552m) {
                if (b()) {
                    AbsHListView absHListView3 = AbsHListView.this;
                    z3 = absHListView3.u0(childAt, absHListView3.f70555p, absHListView3.f70556q);
                } else {
                    z3 = false;
                }
                if (z3) {
                    AbsHListView.this.setPressed(false);
                    childAt.setPressed(false);
                    return;
                }
                return;
            }
            absHListView2.setPressed(false);
            if (childAt != null) {
                childAt.setPressed(false);
            }
        }

        /* synthetic */ d(AbsHListView absHListView, a aVar) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public class e extends o implements Runnable {
        private e() {
            super(AbsHListView.this, null);
        }

        /* JADX WARN: Removed duplicated region for block: B:11:0x002c  */
        /* JADX WARN: Removed duplicated region for block: B:12:0x0038  */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void run() {
            /*
                r7 = this;
                it.sephiroth.android.library.widget.AbsHListView r0 = it.sephiroth.android.library.widget.AbsHListView.this
                int r1 = r0.M0
                int r2 = r0.f70540a
                int r1 = r1 - r2
                android.view.View r0 = r0.getChildAt(r1)
                if (r0 == 0) goto L3d
                it.sephiroth.android.library.widget.AbsHListView r1 = it.sephiroth.android.library.widget.AbsHListView.this
                int r2 = r1.M0
                android.widget.ListAdapter r1 = r1.f70461v0
                long r3 = r1.getItemId(r2)
                boolean r1 = r7.b()
                r5 = 0
                if (r1 == 0) goto L29
                it.sephiroth.android.library.widget.AbsHListView r1 = it.sephiroth.android.library.widget.AbsHListView.this
                boolean r6 = r1.f70552m
                if (r6 != 0) goto L29
                boolean r1 = r1.u0(r0, r2, r3)
                goto L2a
            L29:
                r1 = 0
            L2a:
                if (r1 == 0) goto L38
                it.sephiroth.android.library.widget.AbsHListView r1 = it.sephiroth.android.library.widget.AbsHListView.this
                r2 = -1
                r1.R0 = r2
                r1.setPressed(r5)
                r0.setPressed(r5)
                goto L3d
            L38:
                it.sephiroth.android.library.widget.AbsHListView r0 = it.sephiroth.android.library.widget.AbsHListView.this
                r1 = 2
                r0.R0 = r1
            L3d:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: it.sephiroth.android.library.widget.AbsHListView.e.run():void");
        }

        /* synthetic */ e(AbsHListView absHListView, a aVar) {
            this();
        }
    }

    /* loaded from: classes5.dex */
    final class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Drawable current;
            AbsHListView absHListView = AbsHListView.this;
            if (absHListView.R0 == 0) {
                absHListView.R0 = 1;
                View childAt = absHListView.getChildAt(absHListView.M0 - absHListView.f70540a);
                if (childAt == null || childAt.hasFocusable()) {
                    return;
                }
                AbsHListView absHListView2 = AbsHListView.this;
                absHListView2.f70457t0 = 0;
                if (!absHListView2.f70552m) {
                    childAt.setPressed(true);
                    AbsHListView.this.setPressed(true);
                    AbsHListView.this.p0();
                    AbsHListView absHListView3 = AbsHListView.this;
                    absHListView3.y0(absHListView3.M0, childAt);
                    AbsHListView.this.refreshDrawableState();
                    int longPressTimeout = ViewConfiguration.getLongPressTimeout();
                    boolean isLongClickable = AbsHListView.this.isLongClickable();
                    Drawable drawable = AbsHListView.this.f70467y0;
                    if (drawable != null && (current = drawable.getCurrent()) != null && (current instanceof TransitionDrawable)) {
                        if (isLongClickable) {
                            ((TransitionDrawable) current).startTransition(longPressTimeout);
                        } else {
                            ((TransitionDrawable) current).resetTransition();
                        }
                    }
                    if (isLongClickable) {
                        if (AbsHListView.this.f70440i1 == null) {
                            AbsHListView absHListView4 = AbsHListView.this;
                            absHListView4.f70440i1 = new e(absHListView4, null);
                        }
                        AbsHListView.this.f70440i1.a();
                        AbsHListView absHListView5 = AbsHListView.this;
                        absHListView5.postDelayed(absHListView5.f70440i1, longPressTimeout);
                        return;
                    }
                    AbsHListView.this.R0 = 2;
                    return;
                }
                absHListView2.R0 = 2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public class g implements Runnable {

        /* renamed from: e  reason: collision with root package name */
        private static final int f70494e = 40;

        /* renamed from: a  reason: collision with root package name */
        private final it.sephiroth.android.library.widget.c f70495a;

        /* renamed from: b  reason: collision with root package name */
        private int f70496b;

        /* renamed from: c  reason: collision with root package name */
        private final Runnable f70497c = new a();

        /* loaded from: classes5.dex */
        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                int i2 = AbsHListView.this.f70468y1;
                VelocityTracker velocityTracker = AbsHListView.this.U0;
                it.sephiroth.android.library.widget.c cVar = g.this.f70495a;
                if (velocityTracker == null || i2 == -1) {
                    return;
                }
                velocityTracker.computeCurrentVelocity(1000, AbsHListView.this.f70462v1);
                float f4 = -velocityTracker.getXVelocity(i2);
                if (Math.abs(f4) >= AbsHListView.this.f70460u1 && cVar.q(f4, 0.0f)) {
                    AbsHListView.this.postDelayed(this, 40L);
                    return;
                }
                g.this.c();
                AbsHListView absHListView = AbsHListView.this;
                absHListView.R0 = 3;
                absHListView.C0(1);
            }
        }

        g() {
            this.f70495a = new it.sephiroth.android.library.widget.c(AbsHListView.this.getContext());
        }

        void b(int i2) {
            this.f70495a.r(AbsHListView.this.getScrollX(), 0, AbsHListView.this.A1);
            int overScrollMode = AbsHListView.this.getOverScrollMode();
            if (overScrollMode != 0 && (overScrollMode != 1 || AbsHListView.this.T())) {
                AbsHListView absHListView = AbsHListView.this;
                absHListView.R0 = -1;
                k kVar = absHListView.W0;
                if (kVar != null) {
                    kVar.f();
                }
            } else {
                AbsHListView.this.R0 = 6;
                int g4 = (int) this.f70495a.g();
                if (i2 > 0) {
                    AbsHListView.this.B1.onAbsorb(g4);
                } else {
                    AbsHListView.this.C1.onAbsorb(g4);
                }
            }
            AbsHListView.this.invalidate();
            AbsHListView.this.K.b(this);
        }

        void c() {
            AbsHListView absHListView = AbsHListView.this;
            absHListView.R0 = -1;
            absHListView.removeCallbacks(this);
            AbsHListView.this.removeCallbacks(this.f70497c);
            AbsHListView.this.C0(0);
            AbsHListView.this.R();
            this.f70495a.a();
            AbsHListView.this.overScrollBy(0, 0, 0, 0, 0, 0, 0, 0, false);
        }

        void d() {
            AbsHListView.this.postDelayed(this.f70497c, 40L);
        }

        void e(int i2) {
            int i4 = i2 < 0 ? Integer.MAX_VALUE : 0;
            this.f70496b = i4;
            this.f70495a.w(null);
            this.f70495a.d(i4, 0, i2, 0, 0, Integer.MAX_VALUE, 0, Integer.MAX_VALUE);
            AbsHListView absHListView = AbsHListView.this;
            absHListView.R0 = 4;
            absHListView.K.b(this);
        }

        void f(int i2) {
            this.f70495a.w(null);
            this.f70495a.e(AbsHListView.this.getScrollX(), 0, i2, 0, Integer.MIN_VALUE, Integer.MAX_VALUE, 0, 0, AbsHListView.this.getWidth(), 0);
            AbsHListView absHListView = AbsHListView.this;
            absHListView.R0 = 6;
            absHListView.invalidate();
            AbsHListView.this.K.b(this);
        }

        void g(int i2, int i4, boolean z3) {
            int i5 = i2 < 0 ? Integer.MAX_VALUE : 0;
            this.f70496b = i5;
            this.f70495a.w(z3 ? AbsHListView.f70430p2 : null);
            this.f70495a.z(i5, 0, i2, 0, i4);
            AbsHListView absHListView = AbsHListView.this;
            absHListView.R0 = 4;
            absHListView.K.b(this);
        }

        void h() {
            if (this.f70495a.x(AbsHListView.this.getScrollX(), 0, 0, 0, 0, 0)) {
                AbsHListView absHListView = AbsHListView.this;
                absHListView.R0 = 6;
                absHListView.invalidate();
                AbsHListView.this.K.b(this);
                return;
            }
            AbsHListView absHListView2 = AbsHListView.this;
            absHListView2.R0 = -1;
            absHListView2.C0(0);
        }

        @Override // java.lang.Runnable
        public void run() {
            int max;
            int i2 = AbsHListView.this.R0;
            boolean z3 = false;
            if (i2 != 3) {
                if (i2 != 4) {
                    if (i2 != 6) {
                        c();
                        return;
                    }
                    it.sephiroth.android.library.widget.c cVar = this.f70495a;
                    if (cVar.b()) {
                        int scrollX = AbsHListView.this.getScrollX();
                        int h4 = cVar.h();
                        AbsHListView absHListView = AbsHListView.this;
                        if (!absHListView.overScrollBy(h4 - scrollX, 0, scrollX, 0, 0, 0, absHListView.A1, 0, false)) {
                            AbsHListView.this.invalidate();
                            AbsHListView.this.K.b(this);
                            return;
                        }
                        boolean z4 = scrollX <= 0 && h4 > 0;
                        if (scrollX >= 0 && h4 < 0) {
                            z3 = true;
                        }
                        if (!z4 && !z3) {
                            h();
                            return;
                        }
                        int g4 = (int) cVar.g();
                        if (z3) {
                            g4 = -g4;
                        }
                        cVar.a();
                        e(g4);
                        return;
                    }
                    c();
                    return;
                }
            } else if (this.f70495a.o()) {
                return;
            }
            AbsHListView absHListView2 = AbsHListView.this;
            if (absHListView2.f70552m) {
                absHListView2.p0();
            }
            AbsHListView absHListView3 = AbsHListView.this;
            if (absHListView3.f70558s != 0 && absHListView3.getChildCount() != 0) {
                it.sephiroth.android.library.widget.c cVar2 = this.f70495a;
                boolean b4 = cVar2.b();
                int h5 = cVar2.h();
                int i4 = this.f70496b - h5;
                if (i4 > 0) {
                    AbsHListView absHListView4 = AbsHListView.this;
                    absHListView4.M0 = absHListView4.f70540a;
                    AbsHListView.this.N0 = absHListView4.getChildAt(0).getLeft();
                    max = Math.min(((AbsHListView.this.getWidth() - AbsHListView.this.getPaddingRight()) - AbsHListView.this.getPaddingLeft()) - 1, i4);
                } else {
                    int childCount = AbsHListView.this.getChildCount() - 1;
                    AbsHListView absHListView5 = AbsHListView.this;
                    absHListView5.M0 = absHListView5.f70540a + childCount;
                    AbsHListView.this.N0 = absHListView5.getChildAt(childCount).getLeft();
                    max = Math.max(-(((AbsHListView.this.getWidth() - AbsHListView.this.getPaddingRight()) - AbsHListView.this.getPaddingLeft()) - 1), i4);
                }
                AbsHListView absHListView6 = AbsHListView.this;
                View childAt = absHListView6.getChildAt(absHListView6.M0 - absHListView6.f70540a);
                int left = childAt != null ? childAt.getLeft() : 0;
                boolean V0 = AbsHListView.this.V0(max, max);
                if (V0 && max != 0) {
                    z3 = true;
                }
                if (z3) {
                    if (childAt != null) {
                        AbsHListView absHListView7 = AbsHListView.this;
                        absHListView7.overScrollBy(-(max - (childAt.getLeft() - left)), 0, absHListView7.getScrollX(), 0, 0, 0, AbsHListView.this.A1, 0, false);
                    }
                    if (b4) {
                        b(max);
                        return;
                    }
                    return;
                } else if (b4 && !z3) {
                    if (V0) {
                        AbsHListView.this.invalidate();
                    }
                    this.f70496b = h5;
                    AbsHListView.this.K.b(this);
                    return;
                } else {
                    c();
                    return;
                }
            }
            c();
        }
    }

    @TargetApi(14)
    /* loaded from: classes5.dex */
    class h extends AccessibilityDelegateCompat {
        h() {
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            int k4 = AbsHListView.this.k(view);
            ListAdapter adapter = AbsHListView.this.getAdapter();
            if (k4 == -1 || adapter == null || !AbsHListView.this.isEnabled() || !adapter.isEnabled(k4)) {
                return;
            }
            if (k4 == AbsHListView.this.getSelectedItemPosition()) {
                accessibilityNodeInfoCompat.setSelected(true);
                accessibilityNodeInfoCompat.addAction(8);
            } else {
                accessibilityNodeInfoCompat.addAction(4);
            }
            if (AbsHListView.this.isClickable()) {
                accessibilityNodeInfoCompat.addAction(16);
                accessibilityNodeInfoCompat.setClickable(true);
            }
            if (AbsHListView.this.isLongClickable()) {
                accessibilityNodeInfoCompat.addAction(32);
                accessibilityNodeInfoCompat.setLongClickable(true);
            }
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public boolean performAccessibilityAction(View view, int i2, Bundle bundle) {
            if (super.performAccessibilityAction(view, i2, bundle)) {
                return true;
            }
            int k4 = AbsHListView.this.k(view);
            ListAdapter adapter = AbsHListView.this.getAdapter();
            if (k4 != -1 && adapter != null && AbsHListView.this.isEnabled() && adapter.isEnabled(k4)) {
                long j4 = AbsHListView.this.j(k4);
                if (i2 != 4) {
                    if (i2 == 8) {
                        if (AbsHListView.this.getSelectedItemPosition() == k4) {
                            AbsHListView.this.setSelection(-1);
                            return true;
                        }
                        return false;
                    } else if (i2 != 16) {
                        if (i2 == 32 && AbsHListView.this.isLongClickable()) {
                            return AbsHListView.this.u0(view, k4, j4);
                        }
                        return false;
                    } else if (AbsHListView.this.isClickable()) {
                        return AbsHListView.this.q(view, k4, j4);
                    } else {
                        return false;
                    }
                } else if (AbsHListView.this.getSelectedItemPosition() != k4) {
                    AbsHListView.this.setSelection(k4);
                    return true;
                }
            }
            return false;
        }
    }

    /* loaded from: classes5.dex */
    public interface i {

        /* renamed from: a  reason: collision with root package name */
        public static final int f70501a = 0;

        /* renamed from: b  reason: collision with root package name */
        public static final int f70502b = 1;

        /* renamed from: c  reason: collision with root package name */
        public static final int f70503c = 2;

        void a(AbsHListView absHListView, int i2, int i4, int i5);

        void b(AbsHListView absHListView, int i2);
    }

    /* loaded from: classes5.dex */
    private class j extends o implements Runnable {

        /* renamed from: c  reason: collision with root package name */
        int f70504c;

        private j() {
            super(AbsHListView.this, null);
        }

        @Override // java.lang.Runnable
        public void run() {
            AbsHListView absHListView = AbsHListView.this;
            if (absHListView.f70552m) {
                return;
            }
            ListAdapter listAdapter = absHListView.f70461v0;
            int i2 = this.f70504c;
            if (listAdapter == null || absHListView.f70558s <= 0 || i2 == -1 || i2 >= listAdapter.getCount() || !b()) {
                return;
            }
            AbsHListView absHListView2 = AbsHListView.this;
            View childAt = absHListView2.getChildAt(i2 - absHListView2.f70540a);
            if (childAt != null) {
                AbsHListView.this.q(childAt, i2, listAdapter.getItemId(i2));
            }
        }

        /* synthetic */ j(AbsHListView absHListView, a aVar) {
            this();
        }
    }

    /* loaded from: classes5.dex */
    public class k implements Runnable {

        /* renamed from: i  reason: collision with root package name */
        private static final int f70506i = 200;

        /* renamed from: j  reason: collision with root package name */
        private static final int f70507j = 1;

        /* renamed from: k  reason: collision with root package name */
        private static final int f70508k = 2;

        /* renamed from: l  reason: collision with root package name */
        private static final int f70509l = 3;

        /* renamed from: m  reason: collision with root package name */
        private static final int f70510m = 4;

        /* renamed from: n  reason: collision with root package name */
        private static final int f70511n = 5;

        /* renamed from: a  reason: collision with root package name */
        private int f70512a;

        /* renamed from: b  reason: collision with root package name */
        private int f70513b;

        /* renamed from: c  reason: collision with root package name */
        private int f70514c;

        /* renamed from: d  reason: collision with root package name */
        private int f70515d;

        /* renamed from: e  reason: collision with root package name */
        private int f70516e;

        /* renamed from: f  reason: collision with root package name */
        private final int f70517f;

        /* renamed from: g  reason: collision with root package name */
        private int f70518g;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes5.dex */
        public class a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ int f70520a;

            a(int i2) {
                this.f70520a = i2;
            }

            @Override // java.lang.Runnable
            public void run() {
                k.this.b(this.f70520a);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes5.dex */
        public class b implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ int f70522a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ int f70523b;

            b(int i2, int i4) {
                this.f70522a = i2;
                this.f70523b = i4;
            }

            @Override // java.lang.Runnable
            public void run() {
                k.this.c(this.f70522a, this.f70523b);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes5.dex */
        public class c implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ int f70525a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ int f70526b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ int f70527c;

            c(int i2, int i4, int i5) {
                this.f70525a = i2;
                this.f70526b = i4;
                this.f70527c = i5;
            }

            @Override // java.lang.Runnable
            public void run() {
                k.this.e(this.f70525a, this.f70526b, this.f70527c);
            }
        }

        k() {
            this.f70517f = ViewConfiguration.get(AbsHListView.this.getContext()).getScaledFadingEdgeLength();
        }

        void a(int i2, int i4, int i5) {
            AbsHListView absHListView = AbsHListView.this;
            int i6 = absHListView.f70540a;
            int childCount = (absHListView.getChildCount() + i6) - 1;
            AbsHListView absHListView2 = AbsHListView.this;
            int i7 = absHListView2.G0.left;
            int width = absHListView2.getWidth() - AbsHListView.this.G0.right;
            if (i2 < i6 || i2 > childCount) {
                StringBuilder sb = new StringBuilder();
                sb.append("scrollToVisible called with targetPos ");
                sb.append(i2);
                sb.append(" not visible [");
                sb.append(i6);
                sb.append(", ");
                sb.append(childCount);
                sb.append("]");
            }
            i4 = (i4 < i6 || i4 > childCount) ? -1 : -1;
            View childAt = AbsHListView.this.getChildAt(i2 - i6);
            int left = childAt.getLeft();
            int right = childAt.getRight();
            int i8 = right > width ? right - width : 0;
            if (left < i7) {
                i8 = left - i7;
            }
            if (i8 == 0) {
                return;
            }
            if (i4 >= 0) {
                View childAt2 = AbsHListView.this.getChildAt(i4 - i6);
                int left2 = childAt2.getLeft();
                int right2 = childAt2.getRight();
                int abs = Math.abs(i8);
                if (i8 < 0 && right2 + abs > width) {
                    i8 = Math.max(0, right2 - width);
                } else if (i8 > 0 && left2 - abs < i7) {
                    i8 = Math.min(0, left2 - i7);
                }
            }
            AbsHListView.this.M0(i8, i5);
        }

        void b(int i2) {
            int i4;
            f();
            AbsHListView absHListView = AbsHListView.this;
            if (absHListView.f70552m) {
                absHListView.f70458t1 = new a(i2);
                return;
            }
            int childCount = absHListView.getChildCount();
            if (childCount == 0) {
                return;
            }
            AbsHListView absHListView2 = AbsHListView.this;
            int i5 = absHListView2.f70540a;
            int i6 = (childCount + i5) - 1;
            int max = Math.max(0, Math.min(absHListView2.getCount() - 1, i2));
            if (max < i5) {
                i4 = (i5 - max) + 1;
                this.f70512a = 2;
            } else if (max > i6) {
                i4 = (max - i6) + 1;
                this.f70512a = 1;
            } else {
                a(max, -1, 200);
                return;
            }
            if (i4 > 0) {
                this.f70516e = 200 / i4;
            } else {
                this.f70516e = 200;
            }
            this.f70513b = max;
            this.f70514c = -1;
            this.f70515d = -1;
            AbsHListView.this.K.b(this);
        }

        /* JADX WARN: Removed duplicated region for block: B:32:0x0060  */
        /* JADX WARN: Removed duplicated region for block: B:33:0x0064  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        void c(int r7, int r8) {
            /*
                r6 = this;
                r6.f()
                r0 = -1
                if (r8 != r0) goto La
                r6.b(r7)
                return
            La:
                it.sephiroth.android.library.widget.AbsHListView r1 = it.sephiroth.android.library.widget.AbsHListView.this
                boolean r2 = r1.f70552m
                if (r2 == 0) goto L18
                it.sephiroth.android.library.widget.AbsHListView$k$b r0 = new it.sephiroth.android.library.widget.AbsHListView$k$b
                r0.<init>(r7, r8)
                r1.f70458t1 = r0
                return
            L18:
                int r1 = r1.getChildCount()
                if (r1 != 0) goto L1f
                return
            L1f:
                it.sephiroth.android.library.widget.AbsHListView r2 = it.sephiroth.android.library.widget.AbsHListView.this
                int r3 = r2.f70540a
                int r1 = r1 + r3
                r4 = 1
                int r1 = r1 - r4
                r5 = 0
                int r2 = r2.getCount()
                int r2 = r2 - r4
                int r7 = java.lang.Math.min(r2, r7)
                int r7 = java.lang.Math.max(r5, r7)
                r2 = 200(0xc8, float:2.8E-43)
                if (r7 >= r3) goto L4a
                int r1 = r1 - r8
                if (r1 >= r4) goto L3c
                return
            L3c:
                int r3 = r3 - r7
                int r3 = r3 + r4
                int r1 = r1 - r4
                if (r1 >= r3) goto L46
                r3 = 4
                r6.f70512a = r3
            L44:
                r3 = r1
                goto L5e
            L46:
                r1 = 2
                r6.f70512a = r1
                goto L5e
            L4a:
                if (r7 <= r1) goto L74
                int r3 = r8 - r3
                if (r3 >= r4) goto L51
                return
            L51:
                int r1 = r7 - r1
                int r1 = r1 + r4
                int r3 = r3 - r4
                if (r3 >= r1) goto L5b
                r1 = 3
                r6.f70512a = r1
                goto L5e
            L5b:
                r6.f70512a = r4
                goto L44
            L5e:
                if (r3 <= 0) goto L64
                int r2 = r2 / r3
                r6.f70516e = r2
                goto L66
            L64:
                r6.f70516e = r2
            L66:
                r6.f70513b = r7
                r6.f70514c = r8
                r6.f70515d = r0
                it.sephiroth.android.library.widget.AbsHListView r7 = it.sephiroth.android.library.widget.AbsHListView.this
                it.sephiroth.android.library.util.b$a r7 = r7.K
                r7.b(r6)
                return
            L74:
                r6.a(r7, r8, r2)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: it.sephiroth.android.library.widget.AbsHListView.k.c(int, int):void");
        }

        void d(int i2, int i4) {
            e(i2, i4, 200);
        }

        void e(int i2, int i4, int i5) {
            int i6;
            f();
            AbsHListView absHListView = AbsHListView.this;
            if (absHListView.f70552m) {
                absHListView.f70458t1 = new c(i2, i4, i5);
                return;
            }
            int childCount = absHListView.getChildCount();
            if (childCount == 0) {
                return;
            }
            int paddingLeft = i4 + AbsHListView.this.getPaddingLeft();
            int max = Math.max(0, Math.min(AbsHListView.this.getCount() - 1, i2));
            this.f70513b = max;
            this.f70518g = paddingLeft;
            this.f70514c = -1;
            this.f70515d = -1;
            this.f70512a = 5;
            AbsHListView absHListView2 = AbsHListView.this;
            int i7 = absHListView2.f70540a;
            int i8 = (i7 + childCount) - 1;
            if (max < i7) {
                i6 = i7 - max;
            } else if (max <= i8) {
                AbsHListView.this.N0(absHListView2.getChildAt(max - i7).getLeft() - paddingLeft, i5, false);
                return;
            } else {
                i6 = max - i8;
            }
            float f4 = i6 / childCount;
            if (f4 >= 1.0f) {
                i5 = (int) (i5 / f4);
            }
            this.f70516e = i5;
            this.f70515d = -1;
            absHListView2.K.b(this);
        }

        public void f() {
            AbsHListView.this.removeCallbacks(this);
        }

        @Override // java.lang.Runnable
        public void run() {
            int width = AbsHListView.this.getWidth();
            AbsHListView absHListView = AbsHListView.this;
            int i2 = absHListView.f70540a;
            int i4 = this.f70512a;
            if (i4 == 1) {
                int childCount = absHListView.getChildCount() - 1;
                int i5 = i2 + childCount;
                if (childCount < 0) {
                    return;
                }
                if (i5 == this.f70515d) {
                    AbsHListView.this.K.b(this);
                    return;
                }
                View childAt = AbsHListView.this.getChildAt(childCount);
                int width2 = childAt.getWidth();
                int left = width - childAt.getLeft();
                AbsHListView absHListView2 = AbsHListView.this;
                int i6 = absHListView2.f70558s - 1;
                int i7 = absHListView2.G0.right;
                if (i5 < i6) {
                    i7 = Math.max(i7, this.f70517f);
                }
                AbsHListView.this.N0((width2 - left) + i7, this.f70516e, true);
                this.f70515d = i5;
                if (i5 < this.f70513b) {
                    AbsHListView.this.K.b(this);
                    return;
                }
                return;
            }
            int i8 = 0;
            if (i4 == 2) {
                if (i2 == this.f70515d) {
                    absHListView.K.b(this);
                    return;
                }
                View childAt2 = absHListView.getChildAt(0);
                if (childAt2 == null) {
                    return;
                }
                AbsHListView.this.N0(childAt2.getLeft() - (i2 > 0 ? Math.max(this.f70517f, AbsHListView.this.G0.left) : AbsHListView.this.G0.left), this.f70516e, true);
                this.f70515d = i2;
                if (i2 > this.f70513b) {
                    AbsHListView.this.K.b(this);
                }
            } else if (i4 == 3) {
                int childCount2 = absHListView.getChildCount();
                if (i2 == this.f70514c || childCount2 <= 1) {
                    return;
                }
                int i9 = childCount2 + i2;
                AbsHListView absHListView3 = AbsHListView.this;
                if (i9 >= absHListView3.f70558s) {
                    return;
                }
                int i10 = i2 + 1;
                if (i10 == this.f70515d) {
                    absHListView3.K.b(this);
                    return;
                }
                View childAt3 = absHListView3.getChildAt(1);
                int width3 = childAt3.getWidth();
                int left2 = childAt3.getLeft();
                int max = Math.max(AbsHListView.this.G0.right, this.f70517f);
                if (i10 < this.f70514c) {
                    AbsHListView.this.N0(Math.max(0, (width3 + left2) - max), this.f70516e, true);
                    this.f70515d = i10;
                    AbsHListView.this.K.b(this);
                } else if (left2 > max) {
                    AbsHListView.this.N0(left2 - max, this.f70516e, true);
                }
            } else if (i4 == 4) {
                int childCount3 = absHListView.getChildCount() - 2;
                if (childCount3 < 0) {
                    return;
                }
                int i11 = i2 + childCount3;
                if (i11 == this.f70515d) {
                    AbsHListView.this.K.b(this);
                    return;
                }
                View childAt4 = AbsHListView.this.getChildAt(childCount3);
                int width4 = childAt4.getWidth();
                int left3 = childAt4.getLeft();
                int i12 = width - left3;
                int max2 = Math.max(AbsHListView.this.G0.left, this.f70517f);
                this.f70515d = i11;
                if (i11 > this.f70514c) {
                    AbsHListView.this.N0(-(i12 - max2), this.f70516e, true);
                    AbsHListView.this.K.b(this);
                    return;
                }
                int i13 = width - max2;
                int i14 = left3 + width4;
                if (i13 > i14) {
                    AbsHListView.this.N0(-(i13 - i14), this.f70516e, true);
                }
            } else if (i4 != 5) {
            } else {
                if (this.f70515d == i2) {
                    absHListView.K.b(this);
                    return;
                }
                this.f70515d = i2;
                int childCount4 = absHListView.getChildCount();
                int i15 = this.f70513b;
                int i16 = (i2 + childCount4) - 1;
                if (i15 < i2) {
                    i8 = (i2 - i15) + 1;
                } else if (i15 > i16) {
                    i8 = i15 - i16;
                }
                float min = Math.min(Math.abs(i8 / childCount4), 1.0f);
                if (i15 < i2) {
                    AbsHListView.this.N0((int) ((-AbsHListView.this.getWidth()) * min), (int) (this.f70516e * min), true);
                    AbsHListView.this.K.b(this);
                } else if (i15 > i16) {
                    AbsHListView.this.N0((int) (AbsHListView.this.getWidth() * min), (int) (this.f70516e * min), true);
                    AbsHListView.this.K.b(this);
                } else {
                    int left4 = AbsHListView.this.getChildAt(i15 - i2).getLeft() - this.f70518g;
                    AbsHListView.this.N0(left4, (int) (this.f70516e * (Math.abs(left4) / AbsHListView.this.getWidth())), true);
                }
            }
        }
    }

    /* loaded from: classes5.dex */
    public class l {

        /* renamed from: a  reason: collision with root package name */
        private m f70529a;

        /* renamed from: b  reason: collision with root package name */
        private int f70530b;

        /* renamed from: c  reason: collision with root package name */
        private View[] f70531c = new View[0];

        /* renamed from: d  reason: collision with root package name */
        private ArrayList<View>[] f70532d;

        /* renamed from: e  reason: collision with root package name */
        private int f70533e;

        /* renamed from: f  reason: collision with root package name */
        private ArrayList<View> f70534f;

        /* renamed from: g  reason: collision with root package name */
        private ArrayList<View> f70535g;

        /* renamed from: h  reason: collision with root package name */
        private SparseArrayCompat<View> f70536h;

        public l() {
        }

        @SuppressLint({"NewApi"})
        private void k() {
            int length = this.f70531c.length;
            int i2 = this.f70533e;
            ArrayList<View>[] arrayListArr = this.f70532d;
            int i4 = 0;
            for (int i5 = 0; i5 < i2; i5++) {
                ArrayList<View> arrayList = arrayListArr[i5];
                int size = arrayList.size();
                int i6 = size - length;
                int i7 = size - 1;
                int i8 = 0;
                while (i8 < i6) {
                    AbsHListView.this.removeDetachedView(arrayList.remove(i7), false);
                    i8++;
                    i7--;
                }
            }
            if (this.f70536h != null) {
                while (i4 < this.f70536h.size()) {
                    if (!this.f70536h.valueAt(i4).hasTransientState()) {
                        this.f70536h.removeAt(i4);
                        i4--;
                    }
                    i4++;
                }
            }
        }

        @SuppressLint({"NewApi"})
        public void c(View view, int i2) {
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            if (layoutParams == null) {
                return;
            }
            layoutParams.f70474d = i2;
            int i4 = layoutParams.f70471a;
            int i5 = Build.VERSION.SDK_INT;
            boolean z3 = i5 >= 16 && view.hasTransientState();
            if (q(i4) && !z3) {
                view.onStartTemporaryDetach();
                if (this.f70533e == 1) {
                    this.f70534f.add(view);
                } else {
                    this.f70532d[i4].add(view);
                }
                if (i5 >= 14) {
                    view.setAccessibilityDelegate(null);
                }
                m mVar = this.f70529a;
                if (mVar != null) {
                    mVar.a(view);
                    return;
                }
                return;
            }
            if (i4 != -2 || z3) {
                if (this.f70535g == null) {
                    this.f70535g = new ArrayList<>();
                }
                this.f70535g.add(view);
            }
            if (z3) {
                if (this.f70536h == null) {
                    this.f70536h = new SparseArrayCompat<>();
                }
                view.onStartTemporaryDetach();
                this.f70536h.put(i2, view);
            }
        }

        public void d() {
            int i2 = this.f70533e;
            if (i2 == 1) {
                ArrayList<View> arrayList = this.f70534f;
                int size = arrayList.size();
                for (int i4 = 0; i4 < size; i4++) {
                    AbsHListView.this.removeDetachedView(arrayList.remove((size - 1) - i4), false);
                }
            } else {
                for (int i5 = 0; i5 < i2; i5++) {
                    ArrayList<View> arrayList2 = this.f70532d[i5];
                    int size2 = arrayList2.size();
                    for (int i6 = 0; i6 < size2; i6++) {
                        AbsHListView.this.removeDetachedView(arrayList2.remove((size2 - 1) - i6), false);
                    }
                }
            }
            SparseArrayCompat<View> sparseArrayCompat = this.f70536h;
            if (sparseArrayCompat != null) {
                sparseArrayCompat.clear();
            }
        }

        void e() {
            SparseArrayCompat<View> sparseArrayCompat = this.f70536h;
            if (sparseArrayCompat != null) {
                sparseArrayCompat.clear();
            }
        }

        public void f(int i2, int i4) {
            if (this.f70531c.length < i2) {
                this.f70531c = new View[i2];
            }
            this.f70530b = i4;
            View[] viewArr = this.f70531c;
            for (int i5 = 0; i5 < i2; i5++) {
                View childAt = AbsHListView.this.getChildAt(i5);
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (layoutParams != null && layoutParams.f70471a != -2) {
                    viewArr[i5] = childAt;
                }
            }
        }

        public View g(int i2) {
            int i4 = i2 - this.f70530b;
            View[] viewArr = this.f70531c;
            if (i4 < 0 || i4 >= viewArr.length) {
                return null;
            }
            View view = viewArr[i4];
            viewArr[i4] = null;
            return view;
        }

        View h(int i2) {
            if (this.f70533e == 1) {
                return AbsHListView.H0(this.f70534f, i2);
            }
            int itemViewType = AbsHListView.this.f70461v0.getItemViewType(i2);
            if (itemViewType >= 0) {
                ArrayList<View>[] arrayListArr = this.f70532d;
                if (itemViewType < arrayListArr.length) {
                    return AbsHListView.H0(arrayListArr[itemViewType], i2);
                }
                return null;
            }
            return null;
        }

        View i(int i2) {
            int indexOfKey;
            SparseArrayCompat<View> sparseArrayCompat = this.f70536h;
            if (sparseArrayCompat != null && (indexOfKey = sparseArrayCompat.indexOfKey(i2)) >= 0) {
                View valueAt = this.f70536h.valueAt(indexOfKey);
                this.f70536h.removeAt(indexOfKey);
                return valueAt;
            }
            return null;
        }

        public void j() {
            int i2 = this.f70533e;
            if (i2 == 1) {
                ArrayList<View> arrayList = this.f70534f;
                int size = arrayList.size();
                for (int i4 = 0; i4 < size; i4++) {
                    arrayList.get(i4).forceLayout();
                }
            } else {
                for (int i5 = 0; i5 < i2; i5++) {
                    ArrayList<View> arrayList2 = this.f70532d[i5];
                    int size2 = arrayList2.size();
                    for (int i6 = 0; i6 < size2; i6++) {
                        arrayList2.get(i6).forceLayout();
                    }
                }
            }
            SparseArrayCompat<View> sparseArrayCompat = this.f70536h;
            if (sparseArrayCompat != null) {
                int size3 = sparseArrayCompat.size();
                for (int i7 = 0; i7 < size3; i7++) {
                    this.f70536h.valueAt(i7).forceLayout();
                }
            }
        }

        void l(List<View> list) {
            int i2 = this.f70533e;
            if (i2 == 1) {
                list.addAll(this.f70534f);
                return;
            }
            ArrayList<View>[] arrayListArr = this.f70532d;
            for (int i4 = 0; i4 < i2; i4++) {
                list.addAll(arrayListArr[i4]);
            }
        }

        public void m() {
            ArrayList<View> arrayList = this.f70535g;
            if (arrayList == null) {
                return;
            }
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                AbsHListView.this.removeDetachedView(this.f70535g.get(i2), false);
            }
            this.f70535g.clear();
        }

        @SuppressLint({"NewApi"})
        public void n() {
            View[] viewArr = this.f70531c;
            boolean z3 = this.f70529a != null;
            boolean z4 = this.f70533e > 1;
            ArrayList<View> arrayList = this.f70534f;
            for (int length = viewArr.length - 1; length >= 0; length--) {
                View view = viewArr[length];
                if (view != null) {
                    LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
                    int i2 = layoutParams.f70471a;
                    viewArr[length] = null;
                    int i4 = Build.VERSION.SDK_INT;
                    boolean z5 = i4 >= 16 && view.hasTransientState();
                    if (!q(i2) || z5) {
                        if (i2 != -2 || z5) {
                            AbsHListView.this.removeDetachedView(view, false);
                        }
                        if (z5) {
                            if (this.f70536h == null) {
                                this.f70536h = new SparseArrayCompat<>();
                            }
                            this.f70536h.put(this.f70530b + length, view);
                        }
                    } else {
                        if (z4) {
                            arrayList = this.f70532d[i2];
                        }
                        view.onStartTemporaryDetach();
                        layoutParams.f70474d = this.f70530b + length;
                        arrayList.add(view);
                        if (i4 >= 14) {
                            view.setAccessibilityDelegate(null);
                        }
                        if (z3) {
                            this.f70529a.a(view);
                        }
                    }
                }
            }
            k();
        }

        void o(int i2) {
            View[] viewArr;
            int i4 = this.f70533e;
            if (i4 == 1) {
                ArrayList<View> arrayList = this.f70534f;
                int size = arrayList.size();
                for (int i5 = 0; i5 < size; i5++) {
                    arrayList.get(i5).setDrawingCacheBackgroundColor(i2);
                }
            } else {
                for (int i6 = 0; i6 < i4; i6++) {
                    ArrayList<View> arrayList2 = this.f70532d[i6];
                    int size2 = arrayList2.size();
                    for (int i7 = 0; i7 < size2; i7++) {
                        arrayList2.get(i7).setDrawingCacheBackgroundColor(i2);
                    }
                }
            }
            for (View view : this.f70531c) {
                if (view != null) {
                    view.setDrawingCacheBackgroundColor(i2);
                }
            }
        }

        public void p(int i2) {
            if (i2 >= 1) {
                ArrayList<View>[] arrayListArr = new ArrayList[i2];
                for (int i4 = 0; i4 < i2; i4++) {
                    arrayListArr[i4] = new ArrayList<>();
                }
                this.f70533e = i2;
                this.f70534f = arrayListArr[0];
                this.f70532d = arrayListArr;
                return;
            }
            throw new IllegalArgumentException("Can't have a viewTypeCount < 1");
        }

        public boolean q(int i2) {
            return i2 >= 0;
        }
    }

    /* loaded from: classes5.dex */
    public interface m {
        void a(View view);
    }

    /* loaded from: classes5.dex */
    public interface n {
        void adjustListItemSelectionBounds(Rect rect);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public class o {

        /* renamed from: a  reason: collision with root package name */
        private int f70538a;

        private o() {
        }

        public void a() {
            this.f70538a = AbsHListView.this.getWindowAttachCount();
        }

        public boolean b() {
            return AbsHListView.this.hasWindowFocus() && AbsHListView.this.getWindowAttachCount() == this.f70538a;
        }

        /* synthetic */ o(AbsHListView absHListView, a aVar) {
            this();
        }
    }

    public AbsHListView(Context context) {
        super(context);
        this.f70445n0 = 0;
        this.f70457t0 = 0;
        this.f70465x0 = false;
        this.f70469z0 = -1;
        this.A0 = new Rect();
        this.B0 = new l();
        this.C0 = 0;
        this.D0 = 0;
        this.E0 = 0;
        this.F0 = 0;
        this.G0 = new Rect();
        this.H0 = 0;
        this.R0 = -1;
        this.X0 = 0;
        this.f70434c1 = true;
        this.f70436e1 = -1;
        this.f70437f1 = null;
        this.f70439h1 = -1;
        this.f70452q1 = 0;
        this.f70464w1 = 1.0f;
        this.f70466x1 = new boolean[1];
        this.f70468y1 = -1;
        this.F1 = 0;
        e0();
    }

    private void B0() {
        VelocityTracker velocityTracker = this.U0;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.U0 = null;
        }
    }

    static View H0(ArrayList<View> arrayList, int i4) {
        int size = arrayList.size();
        if (size > 0) {
            for (int i5 = 0; i5 < size; i5++) {
                View view = arrayList.get(i5);
                if (((LayoutParams) view.getLayoutParams()).f70474d == i4) {
                    arrayList.remove(i5);
                    return view;
                }
            }
            return arrayList.remove(size - 1);
        }
        return null;
    }

    private void I0(int i4) {
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int childCount;
        VelocityTracker velocityTracker;
        ViewParent parent;
        int i10 = i4 - this.P0;
        int i11 = i10 - this.T0;
        int i12 = this.S0;
        int i13 = i12 != Integer.MIN_VALUE ? i4 - i12 : i11;
        int i14 = this.R0;
        if (i14 == 3) {
            if (i4 != i12) {
                if (Math.abs(i10) > this.f70454r1 && (parent = getParent()) != null) {
                    parent.requestDisallowInterceptTouchEvent(true);
                }
                int i15 = this.M0;
                if (i15 >= 0) {
                    childCount = i15 - this.f70540a;
                } else {
                    childCount = getChildCount() / 2;
                }
                View childAt = getChildAt(childCount);
                int left = childAt != null ? childAt.getLeft() : 0;
                boolean V0 = i13 != 0 ? V0(i11, i13) : false;
                View childAt2 = getChildAt(childCount);
                if (childAt2 != null) {
                    int left2 = childAt2.getLeft();
                    if (V0) {
                        int i16 = (-i13) - (left2 - left);
                        overScrollBy(i16, 0, getScrollX(), 0, 0, 0, this.f70470z1, 0, true);
                        if (Math.abs(this.f70470z1) == Math.abs(getScrollX()) && (velocityTracker = this.U0) != null) {
                            velocityTracker.clear();
                        }
                        int overScrollMode = getOverScrollMode();
                        if (overScrollMode == 0 || (overScrollMode == 1 && !T())) {
                            this.F1 = 0;
                            this.R0 = 5;
                            if (i10 > 0) {
                                this.B1.onPull(i16 / getWidth());
                                if (!this.C1.isFinished()) {
                                    this.C1.onRelease();
                                }
                                invalidate();
                            } else if (i10 < 0) {
                                this.C1.onPull(i16 / getWidth());
                                if (!this.B1.isFinished()) {
                                    this.B1.onRelease();
                                }
                                invalidate();
                            }
                        }
                    }
                    this.P0 = i4;
                }
                this.S0 = i4;
            }
        } else if (i14 != 5 || i4 == i12) {
        } else {
            int scrollX = getScrollX();
            int i17 = scrollX - i13;
            int i18 = i4 > this.S0 ? 1 : -1;
            if (this.F1 == 0) {
                this.F1 = i18;
            }
            int i19 = -i13;
            if ((i17 >= 0 || scrollX < 0) && (i17 <= 0 || scrollX > 0)) {
                i5 = i19;
                i6 = 0;
            } else {
                int i20 = -scrollX;
                i6 = i13 + i20;
                i5 = i20;
            }
            if (i5 != 0) {
                i7 = i6;
                int i21 = i5;
                i8 = i18;
                overScrollBy(i5, 0, getScrollX(), 0, 0, 0, this.f70470z1, 0, true);
                int overScrollMode2 = getOverScrollMode();
                if (overScrollMode2 == 0 || (overScrollMode2 == 1 && !T())) {
                    if (i10 > 0) {
                        this.B1.onPull(i21 / getWidth());
                        if (!this.C1.isFinished()) {
                            this.C1.onRelease();
                        }
                        invalidate();
                    } else if (i10 < 0) {
                        this.C1.onPull(i21 / getWidth());
                        if (!this.B1.isFinished()) {
                            this.B1.onRelease();
                        }
                        invalidate();
                    }
                }
            } else {
                i7 = i6;
                i8 = i18;
            }
            if (i7 != 0) {
                if (getScrollX() != 0) {
                    i9 = 0;
                    this.K.c(0);
                    h0();
                } else {
                    i9 = 0;
                }
                V0(i7, i7);
                this.R0 = 3;
                int Y = Y(i4);
                this.T0 = i9;
                View childAt3 = getChildAt(Y - this.f70540a);
                this.N0 = childAt3 != null ? childAt3.getLeft() : 0;
                this.P0 = i4;
                this.M0 = Y;
            }
            this.S0 = i4;
            this.F1 = i8;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void R() {
        b.a aVar = this.K;
        if (aVar == null || aVar.a()) {
            return;
        }
        if (this.f70456s1 == null) {
            this.f70456s1 = new b();
        }
        post(this.f70456s1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean T() {
        int childCount = getChildCount();
        if (childCount == 0) {
            return true;
        }
        return childCount == this.f70558s && getChildAt(0).getLeft() >= this.G0.left && getChildAt(childCount - 1).getRight() <= getWidth() - this.G0.right;
    }

    private boolean T0(int i4) {
        int i5 = i4 - this.P0;
        int abs = Math.abs(i5);
        boolean z3 = getScrollX() != 0;
        if (z3 || abs > this.f70454r1) {
            V();
            if (z3) {
                this.R0 = 5;
                this.T0 = 0;
            } else {
                this.R0 = 3;
                this.T0 = i5 > 0 ? this.f70454r1 : -this.f70454r1;
            }
            Handler handler = getHandler();
            if (handler != null) {
                handler.removeCallbacks(this.f70440i1);
            }
            setPressed(false);
            View childAt = getChildAt(this.M0 - this.f70540a);
            if (childAt != null) {
                childAt.setPressed(false);
            }
            C0(1);
            ViewParent parent = getParent();
            if (parent != null) {
                parent.requestDisallowInterceptTouchEvent(true);
            }
            I0(i4);
            return true;
        }
        return false;
    }

    private void V() {
        b.a aVar;
        if (!this.Z0 || this.K0 || (aVar = this.K) == null || aVar.a()) {
            return;
        }
        setChildrenDrawnWithCacheEnabled(true);
        setChildrenDrawingCacheEnabled(true);
        this.L0 = true;
        this.K0 = true;
    }

    private void W(Canvas canvas) {
        if (this.A0.isEmpty()) {
            return;
        }
        Drawable drawable = this.f70467y0;
        drawable.setBounds(this.A0);
        drawable.draw(canvas);
    }

    private void W0() {
        int i4 = this.f70540a;
        int childCount = getChildCount();
        boolean z3 = Build.VERSION.SDK_INT >= 11;
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            int i6 = i4 + i5;
            if (childAt instanceof Checkable) {
                ((Checkable) childAt).setChecked(this.f70453r0.get(i6, Boolean.FALSE).booleanValue());
            } else if (z3) {
                childAt.setActivated(this.f70453r0.get(i6, Boolean.FALSE).booleanValue());
            }
        }
    }

    private void Z0() {
        setSelector(getResources().getDrawable(17301602));
    }

    private void a0() {
        EdgeEffectCompat edgeEffectCompat = this.B1;
        if (edgeEffectCompat != null) {
            edgeEffectCompat.finish();
            this.C1.finish();
        }
    }

    public static int c0(Rect rect, Rect rect2, int i4) {
        int width;
        int height;
        int width2;
        int i5;
        int height2;
        int i6;
        if (i4 == 1 || i4 == 2) {
            width = rect.right + (rect.width() / 2);
            height = (rect.height() / 2) + rect.top;
            width2 = rect2.left + (rect2.width() / 2);
            i5 = rect2.top;
            height2 = rect2.height() / 2;
        } else if (i4 != 17) {
            if (i4 == 33) {
                width = rect.left + (rect.width() / 2);
                height = rect.top;
                width2 = rect2.left + (rect2.width() / 2);
                i6 = rect2.bottom;
            } else if (i4 == 66) {
                width = rect.right;
                height = (rect.height() / 2) + rect.top;
                width2 = rect2.left;
                i5 = rect2.top;
                height2 = rect2.height() / 2;
            } else if (i4 == 130) {
                width = rect.left + (rect.width() / 2);
                height = rect.bottom;
                width2 = rect2.left + (rect2.width() / 2);
                i6 = rect2.top;
            } else {
                throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT, FOCUS_FORWARD, FOCUS_BACKWARD}.");
            }
            int i7 = width2 - width;
            int i8 = i6 - height;
            return (i8 * i8) + (i7 * i7);
        } else {
            width = rect.left;
            height = (rect.height() / 2) + rect.top;
            width2 = rect2.right;
            i5 = rect2.top;
            height2 = rect2.height() / 2;
        }
        i6 = height2 + i5;
        int i72 = width2 - width;
        int i82 = i6 - height;
        return (i82 * i82) + (i72 * i72);
    }

    private void e0() {
        if (Build.VERSION.SDK_INT < 10) {
            return;
        }
        setClickable(true);
        setFocusableInTouchMode(true);
        setWillNotDraw(false);
        setAlwaysDrawnWithCacheEnabled(false);
        setScrollingCacheEnabled(true);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(getContext());
        this.f70454r1 = viewConfiguration.getScaledTouchSlop();
        this.f70460u1 = viewConfiguration.getScaledMinimumFlingVelocity();
        this.f70462v1 = viewConfiguration.getScaledMaximumFlingVelocity();
        this.f70470z1 = viewConfiguration.getScaledOverscrollDistance();
        this.A1 = viewConfiguration.getScaledOverflingDistance();
        this.K = it.sephiroth.android.library.util.b.a(this);
    }

    private void f0() {
        VelocityTracker velocityTracker = this.U0;
        if (velocityTracker == null) {
            this.U0 = VelocityTracker.obtain();
        } else {
            velocityTracker.clear();
        }
    }

    private void g0() {
        if (this.U0 == null) {
            this.U0 = VelocityTracker.obtain();
        }
    }

    private void s0(MotionEvent motionEvent) {
        int action = (motionEvent.getAction() & MotionEventCompat.ACTION_POINTER_INDEX_MASK) >> 8;
        if (motionEvent.getPointerId(action) == this.f70468y1) {
            int i4 = action == 0 ? 1 : 0;
            this.P0 = (int) motionEvent.getX(i4);
            this.Q0 = (int) motionEvent.getY(i4);
            this.T0 = 0;
            this.f70468y1 = motionEvent.getPointerId(i4);
        }
    }

    private void x0(int i4, int i5, int i6, int i7) {
        this.A0.set(i4 - this.C0, i5 - this.D0, i6 + this.E0, i7 + this.F0);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int A0() {
        int i4 = this.f70555p;
        if (i4 < 0) {
            i4 = this.f70436e1;
        }
        return Math.min(Math.max(0, i4), this.f70558s - 1);
    }

    void C0(int i4) {
        i iVar;
        if (i4 == this.f70452q1 || (iVar = this.f70433b1) == null) {
            return;
        }
        this.f70452q1 = i4;
        iVar.b(this, i4);
    }

    void D0() {
        if (getChildCount() > 0) {
            E0();
            requestLayout();
            invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void E0() {
        removeAllViewsInLayout();
        this.f70540a = 0;
        this.f70552m = false;
        this.f70458t1 = null;
        this.f70545f = false;
        this.O1 = null;
        this.f70561v = -1;
        this.f70562w = Long.MIN_VALUE;
        setSelectedPositionInt(-1);
        setNextSelectedPositionInt(-1);
        this.X0 = 0;
        this.f70469z0 = -1;
        this.A0.setEmpty();
        invalidate();
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x00ab  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00d3 A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:57:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    boolean F0() {
        /*
            Method dump skipped, instructions count: 213
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: it.sephiroth.android.library.widget.AbsHListView.F0():boolean");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean G0() {
        if (this.f70555p >= 0 || !F0()) {
            return false;
        }
        Y0();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void J0(int i4, int i5) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean K0() {
        return (hasFocus() && !isInTouchMode()) || U0();
    }

    public boolean L0(float f4, float f5, int i4) {
        int w02 = w0((int) f4, (int) f5);
        if (w02 != -1) {
            long itemId = this.f70461v0.getItemId(w02);
            View childAt = getChildAt(w02 - this.f70540a);
            if (childAt != null) {
                this.f70437f1 = U(childAt, w02, itemId);
                return super.showContextMenuForChild(this);
            }
        }
        return L0(f4, f5, i4);
    }

    public void M0(int i4, int i5) {
        N0(i4, i5, false);
    }

    public void N0(int i4, int i5, boolean z3) {
        if (this.V0 == null) {
            this.V0 = new g();
        }
        int i6 = this.f70540a;
        int childCount = getChildCount();
        int i7 = i6 + childCount;
        int paddingLeft = getPaddingLeft();
        int width = getWidth() - getPaddingRight();
        if (i4 != 0 && this.f70558s != 0 && childCount != 0 && ((i6 != 0 || getChildAt(0).getLeft() != paddingLeft || i4 >= 0) && (i7 != this.f70558s || getChildAt(childCount - 1).getRight() != width || i4 <= 0))) {
            C0(2);
            this.V0.g(i4, i5, z3);
            return;
        }
        this.V0.c();
        k kVar = this.W0;
        if (kVar != null) {
            kVar.f();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void O0(int i4) {
        int lastVisiblePosition;
        View childAt;
        Rect rect;
        if (i4 < 0) {
            lastVisiblePosition = getFirstVisiblePosition();
        } else {
            lastVisiblePosition = i4 > 0 ? getLastVisiblePosition() : -1;
        }
        if (lastVisiblePosition <= -1 || (childAt = getChildAt(lastVisiblePosition - getFirstVisiblePosition())) == null) {
            return;
        }
        if (childAt.getGlobalVisibleRect(new Rect())) {
            float width = (rect.width() * rect.height()) / (childAt.getWidth() * childAt.getHeight());
            if (i4 < 0 && width < 0.75f) {
                lastVisiblePosition++;
            } else if (i4 > 0 && width < 0.75f) {
                lastVisiblePosition--;
            }
        }
        P0(Math.max(0, Math.min(getCount(), lastVisiblePosition + i4)));
    }

    public void P0(int i4) {
        if (this.W0 == null) {
            this.W0 = new k();
        }
        this.W0.b(i4);
    }

    public void Q() {
        SparseArrayCompat<Boolean> sparseArrayCompat = this.f70453r0;
        if (sparseArrayCompat != null) {
            sparseArrayCompat.clear();
        }
        LongSparseArray<Integer> longSparseArray = this.f70455s0;
        if (longSparseArray != null) {
            longSparseArray.clear();
        }
        this.f70451q0 = 0;
    }

    public void Q0(int i4, int i5) {
        if (this.W0 == null) {
            this.W0 = new k();
        }
        this.W0.c(i4, i5);
    }

    public void R0(int i4, int i5) {
        if (this.W0 == null) {
            this.W0 = new k();
        }
        this.W0.d(i4, i5);
    }

    void S() {
        Object obj;
        boolean z3;
        Object obj2;
        Object obj3;
        this.f70453r0.clear();
        int i4 = 0;
        boolean z4 = false;
        while (i4 < this.f70455s0.size()) {
            long keyAt = this.f70455s0.keyAt(i4);
            int intValue = this.f70455s0.valueAt(i4).intValue();
            if (keyAt != this.f70461v0.getItemId(intValue)) {
                int max = Math.max(0, intValue - 20);
                int min = Math.min(intValue + 20, this.f70558s);
                while (true) {
                    if (max >= min) {
                        z3 = false;
                        break;
                    } else if (keyAt == this.f70461v0.getItemId(max)) {
                        this.f70453r0.put(max, Boolean.TRUE);
                        this.f70455s0.setValueAt(i4, Integer.valueOf(max));
                        z3 = true;
                        break;
                    } else {
                        max++;
                    }
                }
                if (!z3) {
                    this.f70455s0.delete(keyAt);
                    i4--;
                    this.f70451q0--;
                    if (Build.VERSION.SDK_INT > 11 && (obj2 = this.f70447o0) != null && (obj3 = this.f70449p0) != null) {
                        ((y2.b) obj3).a((ActionMode) obj2, intValue, keyAt, false);
                    }
                    z4 = true;
                }
            } else {
                this.f70453r0.put(intValue, Boolean.TRUE);
            }
            i4++;
        }
        if (!z4 || (obj = this.f70447o0) == null || Build.VERSION.SDK_INT <= 11) {
            return;
        }
        ((ActionMode) obj).invalidate();
    }

    public void S0(int i4, int i5, int i6) {
        if (this.W0 == null) {
            this.W0 = new k();
        }
        this.W0.e(i4, i5, i6);
    }

    ContextMenu.ContextMenuInfo U(View view, int i4, long j4) {
        return new AdapterView.b(view, i4, j4);
    }

    boolean U0() {
        int i4 = this.R0;
        return i4 == 1 || i4 == 2;
    }

    boolean V0(int i4, int i5) {
        int min;
        int min2;
        int i6;
        int i7;
        int i8;
        int i9;
        int childCount = getChildCount();
        if (childCount == 0) {
            return true;
        }
        int left = getChildAt(0).getLeft();
        int i10 = childCount - 1;
        int right = getChildAt(i10).getRight();
        Rect rect = this.G0;
        int i11 = 0 - left;
        int width = right - (getWidth() - 0);
        int width2 = (getWidth() - getPaddingRight()) - getPaddingLeft();
        if (i4 < 0) {
            min = Math.max(-(width2 - 1), i4);
        } else {
            min = Math.min(width2 - 1, i4);
        }
        if (i5 < 0) {
            min2 = Math.max(-(width2 - 1), i5);
        } else {
            min2 = Math.min(width2 - 1, i5);
        }
        int i12 = this.f70540a;
        if (i12 == 0) {
            this.D1 = left - rect.left;
        } else {
            this.D1 += min2;
        }
        int i13 = i12 + childCount;
        int i14 = this.f70558s;
        if (i13 == i14) {
            this.E1 = rect.right + right;
        } else {
            this.E1 += min2;
        }
        boolean z3 = i12 == 0 && left >= rect.left && min2 >= 0;
        boolean z4 = i13 == i14 && right <= getWidth() - rect.right && min2 <= 0;
        if (z3 || z4) {
            return min2 != 0;
        }
        boolean z5 = min2 < 0;
        boolean isInTouchMode = isInTouchMode();
        if (isInTouchMode) {
            d0();
        }
        int headerViewsCount = getHeaderViewsCount();
        int footerViewsCount = this.f70558s - getFooterViewsCount();
        if (z5) {
            int i15 = -min2;
            int i16 = 0;
            i7 = 0;
            while (i16 < childCount) {
                View childAt = getChildAt(i16);
                if (childAt.getRight() >= i15) {
                    break;
                }
                i7++;
                int i17 = i12 + i16;
                if (i17 < headerViewsCount || i17 >= footerViewsCount) {
                    i9 = childCount;
                } else {
                    i9 = childCount;
                    this.B0.c(childAt, i17);
                }
                i16++;
                childCount = i9;
            }
            i6 = 0;
        } else {
            int width3 = getWidth() - min2;
            i6 = 0;
            i7 = 0;
            while (i10 >= 0) {
                View childAt2 = getChildAt(i10);
                if (childAt2.getLeft() <= width3) {
                    break;
                }
                i7++;
                int i18 = i12 + i10;
                if (i18 >= headerViewsCount && i18 < footerViewsCount) {
                    this.B0.c(childAt2, i18);
                }
                int i19 = i10;
                i10--;
                i6 = i19;
            }
        }
        this.O0 = this.N0 + min;
        this.A = true;
        if (i7 > 0) {
            detachViewsFromParent(i6, i7);
            this.B0.m();
        }
        if (!awakenScrollBars()) {
            invalidate();
        }
        r0(min2);
        if (z5) {
            this.f70540a += i7;
        }
        int abs = Math.abs(min2);
        if (i11 < abs || width < abs) {
            X(z5);
        }
        if (!isInTouchMode && (i8 = this.f70555p) != -1) {
            int i20 = i8 - this.f70540a;
            if (i20 >= 0 && i20 < getChildCount()) {
                y0(this.f70555p, getChildAt(i20));
            }
        } else {
            int i21 = this.f70469z0;
            if (i21 != -1) {
                int i22 = i21 - this.f70540a;
                if (i22 >= 0 && i22 < getChildCount()) {
                    y0(-1, getChildAt(i22));
                }
            } else {
                this.A0.setEmpty();
            }
        }
        this.A = false;
        j0();
        return false;
    }

    protected abstract void X(boolean z3);

    /* JADX INFO: Access modifiers changed from: protected */
    public void X0() {
        if (this.I0 != null) {
            boolean z3 = this.f70540a > 0;
            if (!z3 && getChildCount() > 0) {
                z3 = getChildAt(0).getLeft() < this.G0.left;
            }
            this.I0.setVisibility(z3 ? 0 : 4);
        }
        if (this.J0 != null) {
            int childCount = getChildCount();
            boolean z4 = this.f70540a + childCount < this.f70558s;
            if (!z4 && childCount > 0) {
                z4 = getChildAt(childCount - 1).getRight() > getRight() - this.G0.right;
            }
            this.J0.setVisibility(z4 ? 0 : 4);
        }
    }

    protected int Y(int i4) {
        int childCount = getChildCount();
        if (childCount == 0) {
            return -1;
        }
        int Z = Z(i4);
        return Z != -1 ? Z : (this.f70540a + childCount) - 1;
    }

    void Y0() {
        if (this.f70467y0 != null) {
            if (K0()) {
                this.f70467y0.setState(getDrawableState());
            } else {
                this.f70467y0.setState(f70431q2);
            }
        }
    }

    protected abstract int Z(int i4);

    @Override // android.view.ViewGroup, android.view.View
    public void addTouchables(ArrayList<View> arrayList) {
        int childCount = getChildCount();
        int i4 = this.f70540a;
        ListAdapter listAdapter = this.f70461v0;
        if (listAdapter == null) {
            return;
        }
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            if (listAdapter.isEnabled(i4 + i5)) {
                arrayList.add(childAt);
            }
            childAt.addTouchables(arrayList);
        }
    }

    @Override // android.view.ViewGroup
    /* renamed from: b0 */
    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    @Override // android.view.View
    public boolean checkInputConnectionProxy(View view) {
        return false;
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    @Override // android.view.View
    protected int computeHorizontalScrollExtent() {
        int childCount = getChildCount();
        if (childCount > 0) {
            if (this.f70434c1) {
                int i4 = childCount * 100;
                View childAt = getChildAt(0);
                int left = childAt.getLeft();
                int width = childAt.getWidth();
                if (width > 0) {
                    i4 += (left * 100) / width;
                }
                View childAt2 = getChildAt(childCount - 1);
                int right = childAt2.getRight();
                int width2 = childAt2.getWidth();
                return width2 > 0 ? i4 - (((right - getWidth()) * 100) / width2) : i4;
            }
            return 1;
        }
        return 0;
    }

    @Override // android.view.View
    protected int computeHorizontalScrollOffset() {
        int i4 = this.f70540a;
        int childCount = getChildCount();
        int i5 = 0;
        if (i4 >= 0 && childCount > 0) {
            if (this.f70434c1) {
                View childAt = getChildAt(0);
                int left = childAt.getLeft();
                int width = childAt.getWidth();
                if (width > 0) {
                    return Math.max(((i4 * 100) - ((left * 100) / width)) + ((int) ((getScrollX() / getWidth()) * this.f70558s * 100.0f)), 0);
                }
            } else {
                int i6 = this.f70558s;
                if (i4 != 0) {
                    i5 = i4 + childCount == i6 ? i6 : (childCount / 2) + i4;
                }
                return (int) (i4 + (childCount * (i5 / i6)));
            }
        }
        return 0;
    }

    @Override // android.view.View
    protected int computeHorizontalScrollRange() {
        if (this.f70434c1) {
            int max = Math.max(this.f70558s * 100, 0);
            return getScrollX() != 0 ? max + Math.abs((int) ((getScrollX() / getWidth()) * this.f70558s * 100.0f)) : max;
        }
        return this.f70558s;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void d0() {
        int i4 = this.f70555p;
        if (i4 != -1) {
            if (this.f70457t0 != 4) {
                this.f70436e1 = i4;
            }
            int i5 = this.f70553n;
            if (i5 >= 0 && i5 != i4) {
                this.f70436e1 = i5;
            }
            setSelectedPositionInt(-1);
            setNextSelectedPositionInt(-1);
            this.X0 = 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        boolean z3 = this.f70465x0;
        if (!z3) {
            W(canvas);
        }
        super.dispatchDraw(canvas);
        if (z3) {
            W(canvas);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchSetPressed(boolean z3) {
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        if (this.B1 != null) {
            int scrollX = getScrollX();
            if (!this.B1.isFinished()) {
                int save = canvas.save();
                Rect rect = this.G0;
                int i4 = rect.top + this.H1;
                int height = (getHeight() - i4) - (rect.bottom + this.I1);
                int min = Math.min(0, this.D1 + scrollX);
                canvas.rotate(-90.0f);
                canvas.translate((-getHeight()) + i4, min);
                this.B1.setSize(height, height);
                if (this.B1.draw(canvas)) {
                    invalidate();
                }
                canvas.restoreToCount(save);
            }
            if (this.C1.isFinished()) {
                return;
            }
            int save2 = canvas.save();
            Rect rect2 = this.G0;
            int i5 = rect2.left + this.H1;
            int height2 = (getHeight() - i5) - (rect2.right + this.I1);
            int max = Math.max(getWidth(), scrollX + this.E1);
            canvas.rotate(90.0f);
            canvas.translate(-i5, -max);
            this.C1.setSize(height2, height2);
            if (this.C1.draw(canvas)) {
                invalidate();
            }
            canvas.restoreToCount(save2);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        Y0();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-2, -1, 0);
    }

    @ViewDebug.ExportedProperty(category = "drawing")
    public int getCacheColorHint() {
        return this.f70448o1;
    }

    public int getCheckedItemCount() {
        return this.f70451q0;
    }

    public long[] getCheckedItemIds() {
        LongSparseArray<Integer> longSparseArray;
        if (this.f70445n0 == 0 || (longSparseArray = this.f70455s0) == null || this.f70461v0 == null) {
            return new long[0];
        }
        int size = longSparseArray.size();
        long[] jArr = new long[size];
        for (int i4 = 0; i4 < size; i4++) {
            jArr[i4] = longSparseArray.keyAt(i4);
        }
        return jArr;
    }

    public int getCheckedItemPosition() {
        SparseArrayCompat<Boolean> sparseArrayCompat;
        if (this.f70445n0 == 1 && (sparseArrayCompat = this.f70453r0) != null && sparseArrayCompat.size() == 1) {
            return this.f70453r0.keyAt(0);
        }
        return -1;
    }

    public SparseArrayCompat<Boolean> getCheckedItemPositions() {
        if (this.f70445n0 != 0) {
            return this.f70453r0;
        }
        return null;
    }

    public int getChoiceMode() {
        return this.f70445n0;
    }

    @Override // android.view.View
    protected ContextMenu.ContextMenuInfo getContextMenuInfo() {
        return this.f70437f1;
    }

    @Override // android.view.View
    public void getFocusedRect(Rect rect) {
        View selectedView = getSelectedView();
        if (selectedView != null && selectedView.getParent() == this) {
            selectedView.getFocusedRect(rect);
            offsetDescendantRectToMyCoords(selectedView, rect);
            return;
        }
        super.getFocusedRect(rect);
    }

    protected int getFooterViewsCount() {
        return 0;
    }

    protected int getHeaderViewsCount() {
        return 0;
    }

    protected float getHorizontalScrollFactor() {
        if (this.P1 == 0.0f) {
            TypedValue typedValue = new TypedValue();
            if (getContext().getTheme().resolveAttribute(R.attr.hlv_listPreferredItemWidth, typedValue, true)) {
                this.P1 = typedValue.getDimension(getContext().getResources().getDisplayMetrics());
            } else {
                throw new IllegalStateException("Expected theme to define hlv_listPreferredItemWidth.");
            }
        }
        return this.P1;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.View
    public int getHorizontalScrollbarHeight() {
        return super.getHorizontalScrollbarHeight();
    }

    @Override // android.view.View
    protected float getLeftFadingEdgeStrength() {
        int childCount = getChildCount();
        float leftFadingEdgeStrength = super.getLeftFadingEdgeStrength();
        if (childCount == 0) {
            return leftFadingEdgeStrength;
        }
        if (this.f70540a > 0) {
            return 1.0f;
        }
        int left = getChildAt(0).getLeft();
        return left < getPaddingLeft() ? (-(left - getPaddingLeft())) / getHorizontalFadingEdgeLength() : leftFadingEdgeStrength;
    }

    public int getListPaddingBottom() {
        return this.G0.bottom;
    }

    public int getListPaddingLeft() {
        return this.G0.left;
    }

    public int getListPaddingRight() {
        return this.G0.right;
    }

    public int getListPaddingTop() {
        return this.G0.top;
    }

    @Override // android.view.View
    protected float getRightFadingEdgeStrength() {
        int childCount = getChildCount();
        float rightFadingEdgeStrength = super.getRightFadingEdgeStrength();
        if (childCount == 0) {
            return rightFadingEdgeStrength;
        }
        if ((this.f70540a + childCount) - 1 < this.f70558s - 1) {
            return 1.0f;
        }
        int right = getChildAt(childCount - 1).getRight();
        int width = getWidth();
        return right > width - getPaddingRight() ? ((right - width) + getPaddingRight()) / getHorizontalFadingEdgeLength() : rightFadingEdgeStrength;
    }

    @Override // it.sephiroth.android.library.widget.AdapterView
    @ViewDebug.ExportedProperty
    public View getSelectedView() {
        int i4;
        if (this.f70558s <= 0 || (i4 = this.f70555p) < 0) {
            return null;
        }
        return getChildAt(i4 - this.f70540a);
    }

    public Drawable getSelector() {
        return this.f70467y0;
    }

    @Override // android.view.View
    public int getSolidColor() {
        return this.f70448o1;
    }

    public int getTranscriptMode() {
        return this.f70446n1;
    }

    @TargetApi(11)
    protected void h0() {
        if (this.K.a() && (getParent() instanceof View)) {
            ((View) getParent()).invalidate();
        }
    }

    public void i0() {
        this.f70552m = true;
        r();
        requestLayout();
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void j0() {
        i iVar = this.f70433b1;
        if (iVar != null) {
            iVar.a(this, this.f70540a, getChildCount(), this.f70558s);
        }
        onScrollChanged(0, 0, 0, 0);
    }

    @Override // android.view.ViewGroup, android.view.View
    @TargetApi(11)
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f70467y0;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
    }

    public boolean k0(int i4) {
        SparseArrayCompat<Boolean> sparseArrayCompat;
        if (this.f70445n0 == 0 || (sparseArrayCompat = this.f70453r0) == null) {
            return false;
        }
        return sparseArrayCompat.get(i4, Boolean.FALSE).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // it.sephiroth.android.library.widget.AdapterView
    public void l() {
        ListAdapter listAdapter;
        int i4 = this.f70558s;
        int i5 = this.N1;
        this.N1 = i4;
        if (this.f70445n0 != 0 && (listAdapter = this.f70461v0) != null && listAdapter.hasStableIds()) {
            S();
        }
        this.B0.e();
        if (i4 > 0) {
            if (this.f70545f) {
                this.f70545f = false;
                this.O1 = null;
                int i6 = this.f70446n1;
                if (i6 == 2) {
                    this.f70457t0 = 3;
                    return;
                }
                if (i6 == 1) {
                    if (this.G1) {
                        this.G1 = false;
                        this.f70457t0 = 3;
                        return;
                    }
                    int childCount = getChildCount();
                    int width = getWidth() - getPaddingRight();
                    View childAt = getChildAt(childCount - 1);
                    int bottom = childAt != null ? childAt.getBottom() : width;
                    if (this.f70540a + childCount >= i5 && bottom <= width) {
                        this.f70457t0 = 3;
                        return;
                    }
                    awakenScrollBars();
                }
                int i7 = this.f70546g;
                if (i7 != 0) {
                    if (i7 == 1) {
                        this.f70457t0 = 5;
                        this.f70542c = Math.min(Math.max(0, this.f70542c), i4 - 1);
                        return;
                    }
                } else if (isInTouchMode()) {
                    this.f70457t0 = 5;
                    this.f70542c = Math.min(Math.max(0, this.f70542c), i4 - 1);
                    return;
                } else {
                    int g4 = g();
                    if (g4 >= 0 && o(g4, true) == g4) {
                        this.f70542c = g4;
                        if (this.f70544e == getWidth()) {
                            this.f70457t0 = 5;
                        } else {
                            this.f70457t0 = 2;
                        }
                        setNextSelectedPositionInt(g4);
                        return;
                    }
                }
            }
            if (!isInTouchMode()) {
                int selectedItemPosition = getSelectedItemPosition();
                if (selectedItemPosition >= i4) {
                    selectedItemPosition = i4 - 1;
                }
                if (selectedItemPosition < 0) {
                    selectedItemPosition = 0;
                }
                int o3 = o(selectedItemPosition, true);
                if (o3 >= 0) {
                    setNextSelectedPositionInt(o3);
                    return;
                }
                int o4 = o(selectedItemPosition, false);
                if (o4 >= 0) {
                    setNextSelectedPositionInt(o4);
                    return;
                }
            } else if (this.f70436e1 >= 0) {
                return;
            }
        }
        this.f70457t0 = this.Y0 ? 3 : 1;
        this.f70555p = -1;
        this.f70556q = Long.MIN_VALUE;
        this.f70553n = -1;
        this.f70554o = Long.MIN_VALUE;
        this.f70545f = false;
        this.O1 = null;
        this.f70469z0 = -1;
        f();
    }

    @ViewDebug.ExportedProperty
    public boolean l0() {
        return this.Z0;
    }

    @ViewDebug.ExportedProperty
    public boolean m0() {
        return this.f70434c1;
    }

    public boolean n0() {
        return this.Y0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void o0() {
        if (isEnabled() && isClickable()) {
            Drawable drawable = this.f70467y0;
            Rect rect = this.A0;
            if (drawable != null) {
                if ((isFocused() || U0()) && !rect.isEmpty()) {
                    View childAt = getChildAt(this.f70555p - this.f70540a);
                    if (childAt != null) {
                        if (childAt.hasFocusable()) {
                            return;
                        }
                        childAt.setPressed(true);
                    }
                    setPressed(true);
                    boolean isLongClickable = isLongClickable();
                    Drawable current = drawable.getCurrent();
                    if (current != null && (current instanceof TransitionDrawable)) {
                        if (isLongClickable) {
                            ((TransitionDrawable) current).startTransition(ViewConfiguration.getLongPressTimeout());
                        } else {
                            ((TransitionDrawable) current).resetTransition();
                        }
                    }
                    if (!isLongClickable || this.f70552m) {
                        return;
                    }
                    if (this.f70442k1 == null) {
                        this.f70442k1 = new d(this, null);
                    }
                    this.f70442k1.a();
                    postDelayed(this.f70442k1, ViewConfiguration.getLongPressTimeout());
                }
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        getViewTreeObserver().addOnTouchModeChangeListener(this);
        if (this.f70461v0 != null && this.f70459u0 == null) {
            c cVar = new c();
            this.f70459u0 = cVar;
            this.f70461v0.registerDataSetObserver(cVar);
            this.f70552m = true;
            this.f70559t = this.f70558s;
            this.f70558s = this.f70461v0.getCount();
        }
        this.M1 = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    @SuppressLint({"Override"})
    protected int[] onCreateDrawableState(int i4) {
        if (this.f70450p1) {
            return super.onCreateDrawableState(i4);
        }
        int i5 = ViewGroup.ENABLED_STATE_SET[0];
        int[] onCreateDrawableState = super.onCreateDrawableState(i4 + 1);
        int length = onCreateDrawableState.length - 1;
        while (true) {
            if (length < 0) {
                length = -1;
                break;
            } else if (onCreateDrawableState[length] == i5) {
                break;
            } else {
                length--;
            }
        }
        if (length >= 0) {
            System.arraycopy(onCreateDrawableState, length + 1, onCreateDrawableState, length, (onCreateDrawableState.length - length) - 1);
        }
        return onCreateDrawableState;
    }

    @Override // android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // it.sephiroth.android.library.widget.AdapterView, android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        c cVar;
        super.onDetachedFromWindow();
        this.B0.d();
        getViewTreeObserver().removeOnTouchModeChangeListener(this);
        ListAdapter listAdapter = this.f70461v0;
        if (listAdapter != null && (cVar = this.f70459u0) != null) {
            listAdapter.unregisterDataSetObserver(cVar);
            this.f70459u0 = null;
        }
        g gVar = this.V0;
        if (gVar != null) {
            removeCallbacks(gVar);
        }
        k kVar = this.W0;
        if (kVar != null) {
            kVar.f();
        }
        Runnable runnable = this.f70456s1;
        if (runnable != null) {
            removeCallbacks(runnable);
        }
        j jVar = this.f70443l1;
        if (jVar != null) {
            removeCallbacks(jVar);
        }
        Runnable runnable2 = this.f70444m1;
        if (runnable2 != null) {
            removeCallbacks(runnable2);
            this.f70444m1 = null;
        }
        this.M1 = false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.View
    public void onFocusChanged(boolean z3, int i4, Rect rect) {
        ListAdapter listAdapter;
        super.onFocusChanged(z3, i4, rect);
        if (!z3 || this.f70555p >= 0 || isInTouchMode()) {
            return;
        }
        if (!this.M1 && (listAdapter = this.f70461v0) != null) {
            this.f70552m = true;
            this.f70559t = this.f70558s;
            this.f70558s = listAdapter.getCount();
        }
        F0();
    }

    @Override // android.view.View
    @TargetApi(12)
    public boolean onGenericMotionEvent(MotionEvent motionEvent) {
        if ((motionEvent.getSource() & 2) != 0 && motionEvent.getAction() == 8 && this.R0 == -1) {
            float axisValue = motionEvent.getAxisValue(10);
            if (axisValue != 0.0f) {
                int horizontalScrollFactor = (int) (axisValue * getHorizontalScrollFactor());
                if (!V0(horizontalScrollFactor, horizontalScrollFactor)) {
                    return true;
                }
            }
        }
        return super.onGenericMotionEvent(motionEvent);
    }

    @Override // it.sephiroth.android.library.widget.AdapterView, android.view.View
    @TargetApi(14)
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(AbsHListView.class.getName());
    }

    @Override // it.sephiroth.android.library.widget.AdapterView, android.view.View
    @SuppressLint({"Override"})
    @TargetApi(14)
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(AbsHListView.class.getName());
        if (isEnabled()) {
            if (getFirstVisiblePosition() > 0) {
                accessibilityNodeInfo.addAction(8192);
            }
            if (getLastVisiblePosition() < getCount() - 1) {
                accessibilityNodeInfo.addAction(4096);
            }
        }
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        k kVar = this.W0;
        if (kVar != null) {
            kVar.f();
        }
        if (this.M1) {
            int i4 = action & 255;
            if (i4 != 0) {
                if (i4 != 1) {
                    if (i4 != 2) {
                        if (i4 != 3) {
                            if (i4 == 6) {
                                s0(motionEvent);
                            }
                        }
                    } else if (this.R0 == 0) {
                        int findPointerIndex = motionEvent.findPointerIndex(this.f70468y1);
                        if (findPointerIndex == -1) {
                            this.f70468y1 = motionEvent.getPointerId(0);
                            findPointerIndex = 0;
                        }
                        g0();
                        this.U0.addMovement(motionEvent);
                        if (T0((int) motionEvent.getX(findPointerIndex))) {
                            return true;
                        }
                    }
                }
                this.R0 = -1;
                this.f70468y1 = -1;
                B0();
                C0(0);
            } else {
                int i5 = this.R0;
                if (i5 != 6 && i5 != 5) {
                    int x3 = (int) motionEvent.getX();
                    int y3 = (int) motionEvent.getY();
                    this.f70468y1 = motionEvent.getPointerId(0);
                    int Z = Z(x3);
                    if (i5 != 4 && Z >= 0) {
                        this.N0 = getChildAt(Z - this.f70540a).getLeft();
                        this.P0 = x3;
                        this.Q0 = y3;
                        this.M0 = Z;
                        this.R0 = 0;
                        R();
                    }
                    this.S0 = Integer.MIN_VALUE;
                    f0();
                    this.U0.addMovement(motionEvent);
                    if (i5 == 4) {
                        return true;
                    }
                } else {
                    this.T0 = 0;
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i4, KeyEvent keyEvent) {
        return false;
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i4, KeyEvent keyEvent) {
        int i5;
        ListAdapter listAdapter;
        if (i4 == 23 || i4 == 66) {
            if (!isEnabled()) {
                return true;
            }
            if (isClickable() && isPressed() && (i5 = this.f70555p) >= 0 && (listAdapter = this.f70461v0) != null && i5 < listAdapter.getCount()) {
                View childAt = getChildAt(this.f70555p - this.f70540a);
                if (childAt != null) {
                    q(childAt, this.f70555p, this.f70556q);
                    childAt.setPressed(false);
                }
                setPressed(false);
                return true;
            }
        }
        return super.onKeyUp(i4, keyEvent);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // it.sephiroth.android.library.widget.AdapterView, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z3, int i4, int i5, int i6, int i7) {
        super.onLayout(z3, i4, i5, i6, i7);
        this.f70548i = true;
        if (z3) {
            int childCount = getChildCount();
            for (int i8 = 0; i8 < childCount; i8++) {
                getChildAt(i8).forceLayout();
            }
            this.B0.j();
        }
        p0();
        this.f70548i = false;
        this.f70438g1 = (i6 - i4) / 3;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.View
    public void onMeasure(int i4, int i5) {
        if (this.f70467y0 == null) {
            Z0();
        }
        Rect rect = this.G0;
        rect.left = this.C0 + getPaddingLeft();
        rect.top = this.D0 + getPaddingTop();
        rect.right = this.E0 + getPaddingRight();
        rect.bottom = this.F0 + getPaddingBottom();
        boolean z3 = true;
        if (this.f70446n1 == 1) {
            int childCount = getChildCount();
            int width = getWidth() - getPaddingRight();
            View childAt = getChildAt(childCount - 1);
            this.G1 = (this.f70540a + childCount < this.N1 || (childAt != null ? childAt.getRight() : width) > width) ? false : false;
        }
    }

    @Override // android.view.View
    protected void onOverScrolled(int i4, int i5, boolean z3, boolean z4) {
        if (getScrollX() != i4) {
            onScrollChanged(i4, getScrollY(), getScrollX(), getScrollY());
            this.K.c(i4);
            h0();
            awakenScrollBars();
        }
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        Object obj;
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.f70552m = true;
        this.f70544e = savedState.f70480e;
        long j4 = savedState.f70476a;
        if (j4 >= 0) {
            this.f70545f = true;
            this.O1 = savedState;
            this.f70543d = j4;
            this.f70542c = savedState.f70479d;
            this.f70541b = savedState.f70478c;
            this.f70546g = 0;
        } else if (savedState.f70477b >= 0) {
            setSelectedPositionInt(-1);
            setNextSelectedPositionInt(-1);
            this.f70469z0 = -1;
            this.f70545f = true;
            this.O1 = savedState;
            this.f70543d = savedState.f70477b;
            this.f70542c = savedState.f70479d;
            this.f70541b = savedState.f70478c;
            this.f70546g = 1;
        }
        SparseArrayCompat<Boolean> sparseArrayCompat = savedState.f70484i;
        if (sparseArrayCompat != null) {
            this.f70453r0 = sparseArrayCompat;
        }
        LongSparseArray<Integer> longSparseArray = savedState.f70485j;
        if (longSparseArray != null) {
            this.f70455s0 = longSparseArray;
        }
        this.f70451q0 = savedState.f70483h;
        if (Build.VERSION.SDK_INT >= 11 && savedState.f70482g && this.f70445n0 == 3 && (obj = this.f70449p0) != null) {
            this.f70447o0 = startActionMode((y2.b) obj);
        }
        requestLayout();
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        SavedState savedState2 = this.O1;
        if (savedState2 != null) {
            savedState.f70476a = savedState2.f70476a;
            savedState.f70477b = savedState2.f70477b;
            savedState.f70478c = savedState2.f70478c;
            savedState.f70479d = savedState2.f70479d;
            savedState.f70480e = savedState2.f70480e;
            savedState.f70481f = savedState2.f70481f;
            savedState.f70482g = savedState2.f70482g;
            savedState.f70483h = savedState2.f70483h;
            savedState.f70484i = savedState2.f70484i;
            savedState.f70485j = savedState2.f70485j;
            return savedState;
        }
        boolean z3 = true;
        boolean z4 = getChildCount() > 0 && this.f70558s > 0;
        long selectedItemId = getSelectedItemId();
        savedState.f70476a = selectedItemId;
        savedState.f70480e = getWidth();
        if (selectedItemId >= 0) {
            savedState.f70478c = this.X0;
            savedState.f70479d = getSelectedItemPosition();
            savedState.f70477b = -1L;
        } else if (z4 && this.f70540a > 0) {
            savedState.f70478c = getChildAt(0).getLeft();
            int i4 = this.f70540a;
            int i5 = this.f70558s;
            if (i4 >= i5) {
                i4 = i5 - 1;
            }
            savedState.f70479d = i4;
            savedState.f70477b = this.f70461v0.getItemId(i4);
        } else {
            savedState.f70478c = 0;
            savedState.f70477b = -1L;
            savedState.f70479d = 0;
        }
        savedState.f70481f = null;
        savedState.f70482g = (Build.VERSION.SDK_INT < 11 || this.f70445n0 != 3 || this.f70447o0 == null) ? false : false;
        SparseArrayCompat<Boolean> sparseArrayCompat = this.f70453r0;
        if (sparseArrayCompat != null) {
            try {
                savedState.f70484i = sparseArrayCompat.m1clone();
            } catch (NoSuchMethodError e4) {
                e4.printStackTrace();
                savedState.f70484i = new SparseArrayCompat<>();
            }
        }
        if (this.f70455s0 != null) {
            LongSparseArray<Integer> longSparseArray = new LongSparseArray<>();
            int size = this.f70455s0.size();
            for (int i6 = 0; i6 < size; i6++) {
                longSparseArray.put(this.f70455s0.keyAt(i6), this.f70455s0.valueAt(i6));
            }
            savedState.f70485j = longSparseArray;
        }
        savedState.f70483h = this.f70451q0;
        return savedState;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.View
    public void onSizeChanged(int i4, int i5, int i6, int i7) {
        if (getChildCount() > 0) {
            this.f70552m = true;
            r();
        }
    }

    @Override // android.view.View
    @SuppressLint({"Override"})
    public boolean onTouchEvent(MotionEvent motionEvent) {
        Drawable current;
        int i4;
        int i5 = 0;
        if (!isEnabled()) {
            return isClickable() || isLongClickable();
        }
        k kVar = this.W0;
        if (kVar != null) {
            kVar.f();
        }
        if (this.M1) {
            int action = motionEvent.getAction();
            g0();
            this.U0.addMovement(motionEvent);
            int i6 = action & 255;
            if (i6 == 0) {
                if (this.R0 != 6) {
                    this.f70468y1 = motionEvent.getPointerId(0);
                    int x3 = (int) motionEvent.getX();
                    int y3 = (int) motionEvent.getY();
                    int w02 = w0(x3, y3);
                    if (!this.f70552m) {
                        if (this.R0 != 4 && w02 >= 0 && getAdapter().isEnabled(w02)) {
                            this.R0 = 0;
                            if (this.f70441j1 == null) {
                                this.f70441j1 = new f();
                            }
                            postDelayed(this.f70441j1, ViewConfiguration.getTapTimeout());
                        } else if (this.R0 == 4) {
                            V();
                            this.R0 = 3;
                            this.T0 = 0;
                            w02 = Z(x3);
                            this.V0.d();
                        }
                    }
                    if (w02 >= 0) {
                        this.N0 = getChildAt(w02 - this.f70540a).getLeft();
                    }
                    this.P0 = x3;
                    this.Q0 = y3;
                    this.M0 = w02;
                    this.S0 = Integer.MIN_VALUE;
                } else {
                    this.V0.c();
                    k kVar2 = this.W0;
                    if (kVar2 != null) {
                        kVar2.f();
                    }
                    this.R0 = 5;
                    this.Q0 = (int) motionEvent.getY();
                    int x4 = (int) motionEvent.getX();
                    this.S0 = x4;
                    this.P0 = x4;
                    this.T0 = 0;
                    this.f70468y1 = motionEvent.getPointerId(0);
                    this.F1 = 0;
                }
                if (t0(motionEvent) && this.R0 == 0) {
                    removeCallbacks(this.f70441j1);
                }
            } else if (i6 == 1) {
                int i7 = this.R0;
                if (i7 == 0 || i7 == 1 || i7 == 2) {
                    int i8 = this.M0;
                    View childAt = getChildAt(i8 - this.f70540a);
                    float x5 = motionEvent.getX();
                    boolean z3 = x5 > ((float) this.G0.left) && x5 < ((float) (getWidth() - this.G0.right));
                    if (childAt != null && !childAt.hasFocusable() && z3) {
                        if (this.R0 != 0) {
                            childAt.setPressed(false);
                        }
                        if (this.f70443l1 == null) {
                            this.f70443l1 = new j(this, null);
                        }
                        j jVar = this.f70443l1;
                        jVar.f70504c = i8;
                        jVar.a();
                        this.f70436e1 = i8;
                        int i9 = this.R0;
                        if (i9 != 0 && i9 != 1) {
                            if (!this.f70552m && this.f70461v0.isEnabled(i8)) {
                                jVar.run();
                            }
                        } else {
                            Handler handler = getHandler();
                            if (handler != null) {
                                handler.removeCallbacks(this.R0 == 0 ? this.f70441j1 : this.f70440i1);
                            }
                            this.f70457t0 = 0;
                            if (!this.f70552m && this.f70461v0.isEnabled(i8)) {
                                this.R0 = 1;
                                setSelectedPositionInt(this.M0);
                                p0();
                                childAt.setPressed(true);
                                y0(this.M0, childAt);
                                setPressed(true);
                                Drawable drawable = this.f70467y0;
                                if (drawable != null && (current = drawable.getCurrent()) != null && (current instanceof TransitionDrawable)) {
                                    ((TransitionDrawable) current).resetTransition();
                                }
                                Runnable runnable = this.f70444m1;
                                if (runnable != null) {
                                    removeCallbacks(runnable);
                                }
                                a aVar = new a(childAt, jVar);
                                this.f70444m1 = aVar;
                                postDelayed(aVar, ViewConfiguration.getPressedStateDuration());
                            } else {
                                this.R0 = -1;
                                Y0();
                            }
                            return true;
                        }
                    }
                    this.R0 = -1;
                    Y0();
                } else if (i7 == 3) {
                    int childCount = getChildCount();
                    if (childCount > 0) {
                        int left = getChildAt(0).getLeft();
                        int right = getChildAt(childCount - 1).getRight();
                        int i10 = this.G0.left;
                        int width = getWidth() - this.G0.right;
                        int i11 = this.f70540a;
                        if (i11 == 0 && left >= i10 && i11 + childCount < this.f70558s && right <= getWidth() - width) {
                            this.R0 = -1;
                            C0(0);
                        } else {
                            VelocityTracker velocityTracker = this.U0;
                            velocityTracker.computeCurrentVelocity(1000, this.f70462v1);
                            int xVelocity = (int) (velocityTracker.getXVelocity(this.f70468y1) * this.f70464w1);
                            if (Math.abs(xVelocity) > this.f70460u1 && (((i4 = this.f70540a) != 0 || left != i10 - this.f70470z1) && (i4 + childCount != this.f70558s || right != width + this.f70470z1))) {
                                if (this.V0 == null) {
                                    this.V0 = new g();
                                }
                                C0(2);
                                this.V0.e(-xVelocity);
                            } else {
                                this.R0 = -1;
                                C0(0);
                                g gVar = this.V0;
                                if (gVar != null) {
                                    gVar.c();
                                }
                                k kVar3 = this.W0;
                                if (kVar3 != null) {
                                    kVar3.f();
                                }
                            }
                        }
                    } else {
                        this.R0 = -1;
                        C0(0);
                    }
                } else if (i7 == 5) {
                    if (this.V0 == null) {
                        this.V0 = new g();
                    }
                    VelocityTracker velocityTracker2 = this.U0;
                    velocityTracker2.computeCurrentVelocity(1000, this.f70462v1);
                    int xVelocity2 = (int) velocityTracker2.getXVelocity(this.f70468y1);
                    C0(2);
                    if (Math.abs(xVelocity2) > this.f70460u1) {
                        this.V0.f(-xVelocity2);
                    } else {
                        this.V0.h();
                    }
                }
                setPressed(false);
                EdgeEffectCompat edgeEffectCompat = this.B1;
                if (edgeEffectCompat != null) {
                    edgeEffectCompat.onRelease();
                    this.C1.onRelease();
                }
                invalidate();
                Handler handler2 = getHandler();
                if (handler2 != null) {
                    handler2.removeCallbacks(this.f70440i1);
                }
                B0();
                this.f70468y1 = -1;
            } else if (i6 == 2) {
                int findPointerIndex = motionEvent.findPointerIndex(this.f70468y1);
                if (findPointerIndex == -1) {
                    this.f70468y1 = motionEvent.getPointerId(0);
                } else {
                    i5 = findPointerIndex;
                }
                int x6 = (int) motionEvent.getX(i5);
                if (this.f70552m) {
                    p0();
                }
                int i12 = this.R0;
                if (i12 == 0 || i12 == 1 || i12 == 2) {
                    T0(x6);
                } else if (i12 == 3 || i12 == 5) {
                    I0(x6);
                }
            } else if (i6 == 3) {
                int i13 = this.R0;
                if (i13 == 5) {
                    if (this.V0 == null) {
                        this.V0 = new g();
                    }
                    this.V0.h();
                } else if (i13 != 6) {
                    this.R0 = -1;
                    setPressed(false);
                    View childAt2 = getChildAt(this.M0 - this.f70540a);
                    if (childAt2 != null) {
                        childAt2.setPressed(false);
                    }
                    R();
                    Handler handler3 = getHandler();
                    if (handler3 != null) {
                        handler3.removeCallbacks(this.f70440i1);
                    }
                    B0();
                }
                EdgeEffectCompat edgeEffectCompat2 = this.B1;
                if (edgeEffectCompat2 != null) {
                    edgeEffectCompat2.onRelease();
                    this.C1.onRelease();
                }
                this.f70468y1 = -1;
            } else if (i6 == 5) {
                int actionIndex = motionEvent.getActionIndex();
                int pointerId = motionEvent.getPointerId(actionIndex);
                int x7 = (int) motionEvent.getX(actionIndex);
                int y4 = (int) motionEvent.getY(actionIndex);
                this.T0 = 0;
                this.f70468y1 = pointerId;
                this.P0 = x7;
                this.Q0 = y4;
                int w03 = w0(x7, y4);
                if (w03 >= 0) {
                    this.N0 = getChildAt(w03 - this.f70540a).getLeft();
                    this.M0 = w03;
                }
                this.S0 = x7;
            } else if (i6 == 6) {
                s0(motionEvent);
                int i14 = this.P0;
                int w04 = w0(i14, this.Q0);
                if (w04 >= 0) {
                    this.N0 = getChildAt(w04 - this.f70540a).getLeft();
                    this.M0 = w04;
                }
                this.S0 = i14;
            }
            return true;
        }
        return false;
    }

    @Override // android.view.ViewTreeObserver.OnTouchModeChangeListener
    public void onTouchModeChanged(boolean z3) {
        if (z3) {
            d0();
            if (getWidth() > 0 && getChildCount() > 0) {
                p0();
            }
            Y0();
            return;
        }
        int i4 = this.R0;
        if (i4 == 5 || i4 == 6) {
            g gVar = this.V0;
            if (gVar != null) {
                gVar.c();
            }
            k kVar = this.W0;
            if (kVar != null) {
                kVar.f();
            }
            if (getScrollX() != 0) {
                this.K.c(0);
                a0();
                invalidate();
            }
        }
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z3) {
        super.onWindowFocusChanged(z3);
        int i4 = !isInTouchMode();
        if (!z3) {
            setChildrenDrawingCacheEnabled(false);
            g gVar = this.V0;
            if (gVar != null) {
                removeCallbacks(gVar);
                this.V0.c();
                k kVar = this.W0;
                if (kVar != null) {
                    kVar.f();
                }
                if (getScrollX() != 0) {
                    this.K.c(0);
                    a0();
                    invalidate();
                }
            }
            if (i4 == 1) {
                this.f70436e1 = this.f70555p;
            }
        } else {
            int i5 = this.f70439h1;
            if (i4 != i5 && i5 != -1) {
                if (i4 == 1) {
                    F0();
                } else {
                    d0();
                    this.f70457t0 = 0;
                    p0();
                }
            }
        }
        this.f70439h1 = i4;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void p0() {
    }

    @Override // android.view.View
    @TargetApi(16)
    public boolean performAccessibilityAction(int i4, Bundle bundle) {
        if (super.performAccessibilityAction(i4, bundle)) {
            return true;
        }
        if (i4 != 4096) {
            if (i4 == 8192 && isEnabled() && this.f70540a > 0) {
                int width = getWidth();
                Rect rect = this.G0;
                M0(-((width - rect.left) - rect.right), 200);
                return true;
            }
            return false;
        } else if (!isEnabled() || getLastVisiblePosition() >= getCount() - 1) {
            return false;
        } else {
            int width2 = getWidth();
            Rect rect2 = this.G0;
            M0((width2 - rect2.left) - rect2.right, 200);
            return true;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x00da  */
    @Override // it.sephiroth.android.library.widget.AdapterView
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean q(android.view.View r10, int r11, long r12) {
        /*
            Method dump skipped, instructions count: 231
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: it.sephiroth.android.library.widget.AbsHListView.q(android.view.View, int, long):boolean");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @SuppressLint({"NewApi"})
    public View q0(int i4, boolean[] zArr) {
        View view;
        LayoutParams layoutParams;
        zArr[0] = false;
        View i5 = this.B0.i(i4);
        if (i5 != null) {
            return i5;
        }
        View h4 = this.B0.h(i4);
        if (h4 != null) {
            view = this.f70461v0.getView(i4, h4, this);
            if (Build.VERSION.SDK_INT >= 16 && view != 0 && view.getImportantForAccessibility() == 0) {
                view.setImportantForAccessibility(1);
            }
            if (view != h4) {
                this.B0.c(h4, i4);
                int i6 = this.f70448o1;
                if (i6 != 0) {
                    view.setDrawingCacheBackgroundColor(i6);
                }
            } else {
                zArr[0] = true;
                view.onFinishTemporaryDetach();
            }
        } else {
            view = this.f70461v0.getView(i4, null, this);
            if (Build.VERSION.SDK_INT >= 16 && view != 0 && view.getImportantForAccessibility() == 0) {
                view.setImportantForAccessibility(1);
            }
            int i7 = this.f70448o1;
            if (i7 != 0) {
                view.setDrawingCacheBackgroundColor(i7);
            }
        }
        if (this.f70463w0) {
            ViewGroup.LayoutParams layoutParams2 = view.getLayoutParams();
            if (layoutParams2 == null) {
                layoutParams = (LayoutParams) generateDefaultLayoutParams();
            } else if (!checkLayoutParams(layoutParams2)) {
                layoutParams = (LayoutParams) generateLayoutParams(layoutParams2);
            } else {
                layoutParams = (LayoutParams) layoutParams2;
            }
            layoutParams.f70475e = this.f70461v0.getItemId(i4);
            view.setLayoutParams(layoutParams);
        }
        if (this.f70560u.isEnabled() && this.J1 == null) {
            this.J1 = new h();
        }
        return view;
    }

    public void r0(int i4) {
        int childCount = getChildCount();
        for (int i5 = 0; i5 < childCount; i5++) {
            getChildAt(i5).offsetLeftAndRight(i4);
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z3) {
        if (z3) {
            B0();
        }
        super.requestDisallowInterceptTouchEvent(z3);
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        if (this.A || this.f70548i) {
            return;
        }
        super.requestLayout();
    }

    @Override // android.view.View, android.view.accessibility.AccessibilityEventSource
    public void sendAccessibilityEvent(int i4) {
        if (i4 == 4096) {
            int firstVisiblePosition = getFirstVisiblePosition();
            int lastVisiblePosition = getLastVisiblePosition();
            if (this.K1 == firstVisiblePosition && this.L1 == lastVisiblePosition) {
                return;
            }
            this.K1 = firstVisiblePosition;
            this.L1 = lastVisiblePosition;
        }
        super.sendAccessibilityEvent(i4);
    }

    public void setCacheColorHint(int i4) {
        if (i4 != this.f70448o1) {
            this.f70448o1 = i4;
            int childCount = getChildCount();
            for (int i5 = 0; i5 < childCount; i5++) {
                getChildAt(i5).setDrawingCacheBackgroundColor(i4);
            }
            this.B0.o(i4);
        }
    }

    @TargetApi(11)
    public void setChoiceMode(int i4) {
        ListAdapter listAdapter;
        Object obj;
        this.f70445n0 = i4;
        int i5 = Build.VERSION.SDK_INT;
        if (i5 >= 11 && (obj = this.f70447o0) != null) {
            if (i5 >= 11) {
                ((ActionMode) obj).finish();
            }
            this.f70447o0 = null;
        }
        if (this.f70445n0 != 0) {
            if (this.f70453r0 == null) {
                this.f70453r0 = new SparseArrayCompat<>();
            }
            if (this.f70455s0 == null && (listAdapter = this.f70461v0) != null && listAdapter.hasStableIds()) {
                this.f70455s0 = new LongSparseArray<>();
            }
            if (i5 < 11 || this.f70445n0 != 3) {
                return;
            }
            Q();
            setLongClickable(true);
        }
    }

    public void setDrawSelectorOnTop(boolean z3) {
        this.f70465x0 = z3;
    }

    public void setFriction(float f4) {
        if (this.V0 == null) {
            this.V0 = new g();
        }
        this.V0.f70495a.v(f4);
    }

    public void setItemChecked(int i4, boolean z3) {
        int i5 = this.f70445n0;
        if (i5 == 0) {
            return;
        }
        int i6 = Build.VERSION.SDK_INT;
        if (i6 >= 11 && z3 && i5 == 3 && this.f70447o0 == null) {
            Object obj = this.f70449p0;
            if (obj != null && ((y2.b) obj).b()) {
                this.f70447o0 = startActionMode((y2.b) this.f70449p0);
            } else {
                throw new IllegalStateException("AbsListView: attempted to start selection mode for CHOICE_MODE_MULTIPLE_MODAL but no choice mode callback was supplied. Call setMultiChoiceModeListener to set a callback.");
            }
        }
        int i7 = this.f70445n0;
        if (i7 != 2 && (i6 < 11 || i7 != 3)) {
            boolean z4 = this.f70455s0 != null && this.f70461v0.hasStableIds();
            if (z3 || k0(i4)) {
                this.f70453r0.clear();
                if (z4) {
                    this.f70455s0.clear();
                }
            }
            if (z3) {
                this.f70453r0.put(i4, Boolean.TRUE);
                if (z4) {
                    this.f70455s0.put(this.f70461v0.getItemId(i4), Integer.valueOf(i4));
                }
                this.f70451q0 = 1;
            } else if (this.f70453r0.size() == 0 || !this.f70453r0.valueAt(0).booleanValue()) {
                this.f70451q0 = 0;
            }
        } else {
            boolean booleanValue = this.f70453r0.get(i4, Boolean.FALSE).booleanValue();
            this.f70453r0.put(i4, Boolean.valueOf(z3));
            if (this.f70455s0 != null && this.f70461v0.hasStableIds()) {
                if (z3) {
                    this.f70455s0.put(this.f70461v0.getItemId(i4), Integer.valueOf(i4));
                } else {
                    this.f70455s0.delete(this.f70461v0.getItemId(i4));
                }
            }
            if (booleanValue != z3) {
                if (z3) {
                    this.f70451q0++;
                } else {
                    this.f70451q0--;
                }
            }
            if (this.f70447o0 != null) {
                ((y2.b) this.f70449p0).a((ActionMode) this.f70447o0, i4, this.f70461v0.getItemId(i4), z3);
            }
        }
        if (this.f70548i || this.A) {
            return;
        }
        this.f70552m = true;
        r();
        requestLayout();
    }

    @TargetApi(11)
    public void setMultiChoiceModeListener(y2.a aVar) {
        if (Build.VERSION.SDK_INT >= 11) {
            if (this.f70449p0 == null) {
                this.f70449p0 = new y2.b(this);
            }
            ((y2.b) this.f70449p0).c(aVar);
        }
    }

    public void setOnScrollListener(i iVar) {
        this.f70433b1 = iVar;
        j0();
    }

    public void setOverScrollEffectPadding(int i4, int i5) {
        this.H1 = i4;
        this.I1 = i5;
    }

    @Override // android.view.View
    public void setOverScrollMode(int i4) {
        if (i4 != 2) {
            if (this.B1 == null) {
                Context context = getContext();
                this.B1 = new EdgeEffectCompat(context);
                this.C1 = new EdgeEffectCompat(context);
            }
        } else {
            this.B1 = null;
            this.C1 = null;
        }
        super.setOverScrollMode(i4);
    }

    public void setRecyclerListener(m mVar) {
        this.B0.f70529a = mVar;
    }

    public void setScrollIndicators(View view, View view2) {
        this.I0 = view;
        this.J0 = view2;
    }

    public void setScrollingCacheEnabled(boolean z3) {
        if (this.Z0 && !z3) {
            R();
        }
        this.Z0 = z3;
    }

    public abstract void setSelectionInt(int i4);

    public void setSelector(int i4) {
        setSelector(getResources().getDrawable(i4));
    }

    public void setSmoothScrollbarEnabled(boolean z3) {
        this.f70434c1 = z3;
    }

    public void setStackFromRight(boolean z3) {
        if (this.Y0 != z3) {
            this.Y0 = z3;
            D0();
        }
    }

    public void setTranscriptMode(int i4) {
        this.f70446n1 = i4;
    }

    public void setVelocityScale(float f4) {
        this.f70464w1 = f4;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean showContextMenuForChild(View view) {
        int k4 = k(view);
        if (k4 >= 0) {
            long itemId = this.f70461v0.getItemId(k4);
            AdapterView.e eVar = this.f70551l;
            boolean a4 = eVar != null ? eVar.a(this, view, k4, itemId) : false;
            if (a4) {
                return a4;
            }
            this.f70437f1 = U(getChildAt(k4 - this.f70540a), k4, itemId);
            return super.showContextMenuForChild(view);
        }
        return false;
    }

    @TargetApi(14)
    protected boolean t0(MotionEvent motionEvent) {
        return Build.VERSION.SDK_INT >= 14 && (motionEvent.getButtonState() & 2) != 0 && L0(motionEvent.getX(), motionEvent.getY(), motionEvent.getMetaState());
    }

    boolean u0(View view, int i4, long j4) {
        if (Build.VERSION.SDK_INT >= 11 && this.f70445n0 == 3) {
            if (this.f70447o0 == null) {
                ActionMode startActionMode = startActionMode((y2.b) this.f70449p0);
                this.f70447o0 = startActionMode;
                if (startActionMode != null) {
                    setItemChecked(i4, true);
                    performHapticFeedback(0);
                }
            }
            return true;
        }
        AdapterView.e eVar = this.f70551l;
        boolean a4 = eVar != null ? eVar.a(this, view, i4, j4) : false;
        if (!a4) {
            this.f70437f1 = U(view, i4, j4);
            a4 = super.showContextMenuForChild(this);
        }
        if (a4) {
            performHapticFeedback(0);
        }
        return a4;
    }

    public long v0(int i4, int i5) {
        int w02 = w0(i4, i5);
        if (w02 >= 0) {
            return this.f70461v0.getItemId(w02);
        }
        return Long.MIN_VALUE;
    }

    @Override // android.view.View
    public boolean verifyDrawable(Drawable drawable) {
        return this.f70467y0 == drawable || super.verifyDrawable(drawable);
    }

    public int w0(int i4, int i5) {
        Rect rect = this.f70435d1;
        if (rect == null) {
            rect = new Rect();
            this.f70435d1 = rect;
        }
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            if (childAt.getVisibility() == 0) {
                childAt.getHitRect(rect);
                if (rect.contains(i4, i5)) {
                    return this.f70540a + childCount;
                }
            }
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void y0(int i4, View view) {
        if (i4 != -1) {
            this.f70469z0 = i4;
        }
        Rect rect = this.A0;
        rect.set(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        if (view instanceof n) {
            ((n) view).adjustListItemSelectionBounds(rect);
        }
        x0(rect.left, rect.top, rect.right, rect.bottom);
        boolean z3 = this.f70450p1;
        if (view.isEnabled() != z3) {
            this.f70450p1 = !z3;
            if (getSelectedItemPosition() != -1) {
                refreshDrawableState();
            }
        }
    }

    @SuppressLint({"NewApi"})
    public void z0(List<View> list) {
        int childCount = getChildCount();
        m mVar = this.B0.f70529a;
        for (int i4 = 0; i4 < childCount; i4++) {
            View childAt = getChildAt(i4);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            if (layoutParams != null && this.B0.q(layoutParams.f70471a)) {
                list.add(childAt);
                if (Build.VERSION.SDK_INT >= 14) {
                    childAt.setAccessibilityDelegate(null);
                }
                if (mVar != null) {
                    mVar.a(childAt);
                }
            }
        }
        this.B0.l(list);
        removeAllViewsInLayout();
    }

    /* loaded from: classes5.dex */
    public static class LayoutParams extends ViewGroup.LayoutParams {

        /* renamed from: a  reason: collision with root package name */
        public int f70471a;

        /* renamed from: b  reason: collision with root package name */
        public boolean f70472b;

        /* renamed from: c  reason: collision with root package name */
        public boolean f70473c;

        /* renamed from: d  reason: collision with root package name */
        public int f70474d;

        /* renamed from: e  reason: collision with root package name */
        public long f70475e;

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f70475e = -1L;
        }

        public LayoutParams(int i2, int i4) {
            super(i2, i4);
            this.f70475e = -1L;
        }

        public LayoutParams(int i2, int i4, int i5) {
            super(i2, i4);
            this.f70475e = -1L;
            this.f70471a = i5;
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f70475e = -1L;
        }
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new LayoutParams(layoutParams);
    }

    @Override // it.sephiroth.android.library.widget.AdapterView
    public void setAdapter(ListAdapter listAdapter) {
        if (listAdapter != null) {
            boolean hasStableIds = this.f70461v0.hasStableIds();
            this.f70463w0 = hasStableIds;
            if (this.f70445n0 != 0 && hasStableIds && this.f70455s0 == null) {
                this.f70455s0 = new LongSparseArray<>();
            }
        }
        SparseArrayCompat<Boolean> sparseArrayCompat = this.f70453r0;
        if (sparseArrayCompat != null) {
            sparseArrayCompat.clear();
        }
        LongSparseArray<Integer> longSparseArray = this.f70455s0;
        if (longSparseArray != null) {
            longSparseArray.clear();
        }
    }

    public void setSelector(Drawable drawable) {
        Drawable drawable2 = this.f70467y0;
        if (drawable2 != null) {
            drawable2.setCallback(null);
            unscheduleDrawable(this.f70467y0);
        }
        this.f70467y0 = drawable;
        Rect rect = new Rect();
        drawable.getPadding(rect);
        this.C0 = rect.left;
        this.D0 = rect.top;
        this.E0 = rect.right;
        this.F0 = rect.bottom;
        drawable.setCallback(this);
        Y0();
    }

    public AbsHListView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.hlv_absHListViewStyle);
    }

    public AbsHListView(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        int i5;
        boolean z3;
        boolean z4;
        int i6;
        int i7;
        boolean z5 = false;
        this.f70445n0 = 0;
        this.f70457t0 = 0;
        this.f70465x0 = false;
        this.f70469z0 = -1;
        this.A0 = new Rect();
        this.B0 = new l();
        this.C0 = 0;
        this.D0 = 0;
        this.E0 = 0;
        this.F0 = 0;
        this.G0 = new Rect();
        this.H0 = 0;
        this.R0 = -1;
        this.X0 = 0;
        boolean z6 = true;
        this.f70434c1 = true;
        this.f70436e1 = -1;
        Drawable drawable = null;
        this.f70437f1 = null;
        this.f70439h1 = -1;
        this.f70452q1 = 0;
        this.f70464w1 = 1.0f;
        this.f70466x1 = new boolean[1];
        this.f70468y1 = -1;
        this.F1 = 0;
        e0();
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, R.styleable.AbsHListView, i4, 0);
        if (obtainStyledAttributes != null) {
            drawable = obtainStyledAttributes.getDrawable(0);
            boolean z7 = obtainStyledAttributes.getBoolean(1, false);
            z4 = obtainStyledAttributes.getBoolean(6, false);
            boolean z8 = obtainStyledAttributes.getBoolean(2, true);
            i6 = obtainStyledAttributes.getInt(7, 0);
            i7 = obtainStyledAttributes.getColor(3, 0);
            boolean z9 = obtainStyledAttributes.getBoolean(5, true);
            int i8 = obtainStyledAttributes.getInt(4, 0);
            obtainStyledAttributes.recycle();
            i5 = i8;
            z5 = z7;
            z3 = z9;
            z6 = z8;
        } else {
            i5 = 0;
            z3 = true;
            z4 = false;
            i6 = 0;
            i7 = 0;
        }
        if (drawable != null) {
            setSelector(drawable);
        }
        this.f70465x0 = z5;
        setStackFromRight(z4);
        setScrollingCacheEnabled(z6);
        setTranscriptMode(i6);
        setCacheColorHint(i7);
        setSmoothScrollbarEnabled(z3);
        setChoiceMode(i5);
    }
}
