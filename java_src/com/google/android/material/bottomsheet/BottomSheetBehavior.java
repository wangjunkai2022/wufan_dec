package com.google.android.material.bottomsheet;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RestrictTo;
import androidx.annotation.StringRes;
import androidx.annotation.VisibleForTesting;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.math.MathUtils;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.view.accessibility.AccessibilityViewCommand;
import androidx.customview.view.AbsSavedState;
import androidx.customview.widget.ViewDragHelper;
import com.google.android.material.R;
import com.google.android.material.internal.w;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.m;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public class BottomSheetBehavior<V extends View> extends CoordinatorLayout.Behavior<V> {

    /* renamed from: d0  reason: collision with root package name */
    public static final int f14188d0 = 1;

    /* renamed from: e0  reason: collision with root package name */
    public static final int f14189e0 = 2;

    /* renamed from: f0  reason: collision with root package name */
    public static final int f14190f0 = 3;

    /* renamed from: g0  reason: collision with root package name */
    public static final int f14191g0 = 4;

    /* renamed from: h0  reason: collision with root package name */
    public static final int f14192h0 = 5;

    /* renamed from: i0  reason: collision with root package name */
    public static final int f14193i0 = 6;

    /* renamed from: j0  reason: collision with root package name */
    public static final int f14194j0 = -1;

    /* renamed from: k0  reason: collision with root package name */
    public static final int f14195k0 = 1;

    /* renamed from: l0  reason: collision with root package name */
    public static final int f14196l0 = 2;

    /* renamed from: m0  reason: collision with root package name */
    public static final int f14197m0 = 4;

    /* renamed from: n0  reason: collision with root package name */
    public static final int f14198n0 = 8;

    /* renamed from: o0  reason: collision with root package name */
    public static final int f14199o0 = -1;

    /* renamed from: p0  reason: collision with root package name */
    public static final int f14200p0 = 0;

    /* renamed from: q0  reason: collision with root package name */
    private static final String f14201q0 = "BottomSheetBehavior";

    /* renamed from: r0  reason: collision with root package name */
    private static final int f14202r0 = 500;

    /* renamed from: s0  reason: collision with root package name */
    private static final float f14203s0 = 0.5f;

    /* renamed from: t0  reason: collision with root package name */
    private static final float f14204t0 = 0.1f;

    /* renamed from: u0  reason: collision with root package name */
    private static final int f14205u0 = 500;

    /* renamed from: v0  reason: collision with root package name */
    private static final int f14206v0 = -1;

    /* renamed from: w0  reason: collision with root package name */
    private static final int f14207w0 = R.style.Widget_Design_BottomSheet_Modal;
    @Nullable
    private ValueAnimator A;
    int B;
    int C;
    int D;
    float E;
    int F;
    float G;
    boolean H;
    private boolean I;
    private boolean J;
    int K;
    int L;
    @Nullable
    ViewDragHelper M;
    private boolean N;
    private int O;
    private boolean P;
    private int Q;
    int R;
    int S;
    @Nullable
    WeakReference<V> T;
    @Nullable
    WeakReference<View> U;
    @NonNull
    private final ArrayList<f> V;
    @Nullable
    private VelocityTracker W;
    int X;
    private int Y;
    boolean Z;

    /* renamed from: a  reason: collision with root package name */
    private int f14208a;
    @Nullable

    /* renamed from: a0  reason: collision with root package name */
    private Map<View, Integer> f14209a0;

    /* renamed from: b  reason: collision with root package name */
    private boolean f14210b;

    /* renamed from: b0  reason: collision with root package name */
    private int f14211b0;

    /* renamed from: c  reason: collision with root package name */
    private boolean f14212c;

    /* renamed from: c0  reason: collision with root package name */
    private final ViewDragHelper.Callback f14213c0;

    /* renamed from: d  reason: collision with root package name */
    private float f14214d;

    /* renamed from: e  reason: collision with root package name */
    private int f14215e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f14216f;

    /* renamed from: g  reason: collision with root package name */
    private int f14217g;

    /* renamed from: h  reason: collision with root package name */
    private int f14218h;

    /* renamed from: i  reason: collision with root package name */
    private MaterialShapeDrawable f14219i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private ColorStateList f14220j;

    /* renamed from: k  reason: collision with root package name */
    private int f14221k;

    /* renamed from: l  reason: collision with root package name */
    private int f14222l;

    /* renamed from: m  reason: collision with root package name */
    private int f14223m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f14224n;

    /* renamed from: o  reason: collision with root package name */
    private boolean f14225o;

    /* renamed from: p  reason: collision with root package name */
    private boolean f14226p;

    /* renamed from: q  reason: collision with root package name */
    private boolean f14227q;

    /* renamed from: r  reason: collision with root package name */
    private boolean f14228r;

    /* renamed from: s  reason: collision with root package name */
    private boolean f14229s;

    /* renamed from: t  reason: collision with root package name */
    private boolean f14230t;

    /* renamed from: u  reason: collision with root package name */
    private boolean f14231u;

    /* renamed from: v  reason: collision with root package name */
    private int f14232v;

    /* renamed from: w  reason: collision with root package name */
    private int f14233w;

    /* renamed from: x  reason: collision with root package name */
    private m f14234x;

    /* renamed from: y  reason: collision with root package name */
    private boolean f14235y;

    /* renamed from: z  reason: collision with root package name */
    private final BottomSheetBehavior<V>.g f14236z;

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes.dex */
    public @interface SaveFlags {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes2.dex */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        /* renamed from: a  reason: collision with root package name */
        final int f14237a;

        /* renamed from: b  reason: collision with root package name */
        int f14238b;

        /* renamed from: c  reason: collision with root package name */
        boolean f14239c;

        /* renamed from: d  reason: collision with root package name */
        boolean f14240d;

        /* renamed from: e  reason: collision with root package name */
        boolean f14241e;

        /* loaded from: classes2.dex */
        class a implements Parcelable.ClassLoaderCreator<SavedState> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            @Nullable
            /* renamed from: a */
            public SavedState createFromParcel(@NonNull Parcel parcel) {
                return new SavedState(parcel, (ClassLoader) null);
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            @NonNull
            /* renamed from: b */
            public SavedState createFromParcel(@NonNull Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            @NonNull
            /* renamed from: c */
            public SavedState[] newArray(int i2) {
                return new SavedState[i2];
            }
        }

        public SavedState(@NonNull Parcel parcel) {
            this(parcel, (ClassLoader) null);
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(@NonNull Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            parcel.writeInt(this.f14237a);
            parcel.writeInt(this.f14238b);
            parcel.writeInt(this.f14239c ? 1 : 0);
            parcel.writeInt(this.f14240d ? 1 : 0);
            parcel.writeInt(this.f14241e ? 1 : 0);
        }

        public SavedState(@NonNull Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f14237a = parcel.readInt();
            this.f14238b = parcel.readInt();
            this.f14239c = parcel.readInt() == 1;
            this.f14240d = parcel.readInt() == 1;
            this.f14241e = parcel.readInt() == 1;
        }

        public SavedState(Parcelable parcelable, @NonNull BottomSheetBehavior<?> bottomSheetBehavior) {
            super(parcelable);
            this.f14237a = bottomSheetBehavior.K;
            this.f14238b = ((BottomSheetBehavior) bottomSheetBehavior).f14215e;
            this.f14239c = ((BottomSheetBehavior) bottomSheetBehavior).f14210b;
            this.f14240d = bottomSheetBehavior.H;
            this.f14241e = ((BottomSheetBehavior) bottomSheetBehavior).I;
        }

        @Deprecated
        public SavedState(Parcelable parcelable, int i2) {
            super(parcelable);
            this.f14237a = i2;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes.dex */
    public @interface StableState {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes.dex */
    public @interface State {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ View f14242a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f14243b;

        a(View view, int i2) {
            this.f14242a = view;
            this.f14243b = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            BottomSheetBehavior.this.z0(this.f14242a, this.f14243b, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class b implements ValueAnimator.AnimatorUpdateListener {
        b() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(@NonNull ValueAnimator valueAnimator) {
            float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            if (BottomSheetBehavior.this.f14219i != null) {
                BottomSheetBehavior.this.f14219i.p0(floatValue);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class c implements w.e {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f14246a;

        c(boolean z3) {
            this.f14246a = z3;
        }

        /* JADX WARN: Removed duplicated region for block: B:25:0x0089  */
        /* JADX WARN: Removed duplicated region for block: B:30:0x009a  */
        /* JADX WARN: Removed duplicated region for block: B:35:0x00a6  */
        /* JADX WARN: Removed duplicated region for block: B:38:0x00b4  */
        /* JADX WARN: Removed duplicated region for block: B:41:0x00c3  */
        @Override // com.google.android.material.internal.w.e
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public androidx.core.view.WindowInsetsCompat a(android.view.View r11, androidx.core.view.WindowInsetsCompat r12, com.google.android.material.internal.w.f r13) {
            /*
                r10 = this;
                int r0 = androidx.core.view.WindowInsetsCompat.Type.systemBars()
                androidx.core.graphics.Insets r0 = r12.getInsets(r0)
                int r1 = androidx.core.view.WindowInsetsCompat.Type.mandatorySystemGestures()
                androidx.core.graphics.Insets r1 = r12.getInsets(r1)
                com.google.android.material.bottomsheet.BottomSheetBehavior r2 = com.google.android.material.bottomsheet.BottomSheetBehavior.this
                int r3 = r0.top
                com.google.android.material.bottomsheet.BottomSheetBehavior.j(r2, r3)
                boolean r2 = com.google.android.material.internal.w.k(r11)
                int r3 = r11.getPaddingBottom()
                int r4 = r11.getPaddingLeft()
                int r5 = r11.getPaddingRight()
                com.google.android.material.bottomsheet.BottomSheetBehavior r6 = com.google.android.material.bottomsheet.BottomSheetBehavior.this
                boolean r6 = com.google.android.material.bottomsheet.BottomSheetBehavior.k(r6)
                if (r6 == 0) goto L41
                com.google.android.material.bottomsheet.BottomSheetBehavior r3 = com.google.android.material.bottomsheet.BottomSheetBehavior.this
                int r6 = r12.getSystemWindowInsetBottom()
                com.google.android.material.bottomsheet.BottomSheetBehavior.m(r3, r6)
                int r3 = r13.f15232d
                com.google.android.material.bottomsheet.BottomSheetBehavior r6 = com.google.android.material.bottomsheet.BottomSheetBehavior.this
                int r6 = com.google.android.material.bottomsheet.BottomSheetBehavior.l(r6)
                int r3 = r3 + r6
            L41:
                com.google.android.material.bottomsheet.BottomSheetBehavior r6 = com.google.android.material.bottomsheet.BottomSheetBehavior.this
                boolean r6 = com.google.android.material.bottomsheet.BottomSheetBehavior.n(r6)
                if (r6 == 0) goto L53
                if (r2 == 0) goto L4e
                int r4 = r13.f15231c
                goto L50
            L4e:
                int r4 = r13.f15229a
            L50:
                int r6 = r0.left
                int r4 = r4 + r6
            L53:
                com.google.android.material.bottomsheet.BottomSheetBehavior r6 = com.google.android.material.bottomsheet.BottomSheetBehavior.this
                boolean r6 = com.google.android.material.bottomsheet.BottomSheetBehavior.o(r6)
                if (r6 == 0) goto L66
                if (r2 == 0) goto L60
                int r13 = r13.f15229a
                goto L62
            L60:
                int r13 = r13.f15231c
            L62:
                int r2 = r0.right
                int r5 = r13 + r2
            L66:
                android.view.ViewGroup$LayoutParams r13 = r11.getLayoutParams()
                android.view.ViewGroup$MarginLayoutParams r13 = (android.view.ViewGroup.MarginLayoutParams) r13
                com.google.android.material.bottomsheet.BottomSheetBehavior r2 = com.google.android.material.bottomsheet.BottomSheetBehavior.this
                boolean r2 = com.google.android.material.bottomsheet.BottomSheetBehavior.p(r2)
                r6 = 0
                r7 = 1
                if (r2 == 0) goto L80
                int r2 = r13.leftMargin
                int r8 = r0.left
                if (r2 == r8) goto L80
                r13.leftMargin = r8
                r2 = 1
                goto L81
            L80:
                r2 = 0
            L81:
                com.google.android.material.bottomsheet.BottomSheetBehavior r8 = com.google.android.material.bottomsheet.BottomSheetBehavior.this
                boolean r8 = com.google.android.material.bottomsheet.BottomSheetBehavior.q(r8)
                if (r8 == 0) goto L92
                int r8 = r13.rightMargin
                int r9 = r0.right
                if (r8 == r9) goto L92
                r13.rightMargin = r9
                r2 = 1
            L92:
                com.google.android.material.bottomsheet.BottomSheetBehavior r8 = com.google.android.material.bottomsheet.BottomSheetBehavior.this
                boolean r8 = com.google.android.material.bottomsheet.BottomSheetBehavior.b(r8)
                if (r8 == 0) goto La3
                int r8 = r13.topMargin
                int r0 = r0.top
                if (r8 == r0) goto La3
                r13.topMargin = r0
                goto La4
            La3:
                r7 = r2
            La4:
                if (r7 == 0) goto La9
                r11.setLayoutParams(r13)
            La9:
                int r13 = r11.getPaddingTop()
                r11.setPadding(r4, r13, r5, r3)
                boolean r11 = r10.f14246a
                if (r11 == 0) goto Lbb
                com.google.android.material.bottomsheet.BottomSheetBehavior r11 = com.google.android.material.bottomsheet.BottomSheetBehavior.this
                int r13 = r1.bottom
                com.google.android.material.bottomsheet.BottomSheetBehavior.c(r11, r13)
            Lbb:
                com.google.android.material.bottomsheet.BottomSheetBehavior r11 = com.google.android.material.bottomsheet.BottomSheetBehavior.this
                boolean r11 = com.google.android.material.bottomsheet.BottomSheetBehavior.k(r11)
                if (r11 != 0) goto Lc7
                boolean r11 = r10.f14246a
                if (r11 == 0) goto Lcc
            Lc7:
                com.google.android.material.bottomsheet.BottomSheetBehavior r11 = com.google.android.material.bottomsheet.BottomSheetBehavior.this
                com.google.android.material.bottomsheet.BottomSheetBehavior.d(r11, r6)
            Lcc:
                return r12
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.bottomsheet.BottomSheetBehavior.c.a(android.view.View, androidx.core.view.WindowInsetsCompat, com.google.android.material.internal.w$f):androidx.core.view.WindowInsetsCompat");
        }
    }

    /* loaded from: classes2.dex */
    class d extends ViewDragHelper.Callback {

        /* renamed from: a  reason: collision with root package name */
        private long f14248a;

        d() {
        }

        private boolean a(@NonNull View view) {
            int top = view.getTop();
            BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
            return top > (bottomSheetBehavior.S + bottomSheetBehavior.E()) / 2;
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public int clampViewPositionHorizontal(@NonNull View view, int i2, int i4) {
            return view.getLeft();
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public int clampViewPositionVertical(@NonNull View view, int i2, int i4) {
            int E = BottomSheetBehavior.this.E();
            BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
            return MathUtils.clamp(i2, E, bottomSheetBehavior.H ? bottomSheetBehavior.S : bottomSheetBehavior.F);
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public int getViewVerticalDragRange(@NonNull View view) {
            BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
            if (bottomSheetBehavior.H) {
                return bottomSheetBehavior.S;
            }
            return bottomSheetBehavior.F;
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public void onViewDragStateChanged(int i2) {
            if (i2 == 1 && BottomSheetBehavior.this.J) {
                BottomSheetBehavior.this.r0(1);
            }
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public void onViewPositionChanged(@NonNull View view, int i2, int i4, int i5, int i6) {
            BottomSheetBehavior.this.A(i4);
        }

        /* JADX WARN: Code restructure failed: missing block: B:10:0x0035, code lost:
            if (r11.u0(r4, (r10 * 100.0f) / r11.S) != false) goto L5;
         */
        /* JADX WARN: Code restructure failed: missing block: B:13:0x003c, code lost:
            if (r10 > r8.f14249b.D) goto L6;
         */
        /* JADX WARN: Code restructure failed: missing block: B:30:0x008c, code lost:
            if (java.lang.Math.abs(r9.getTop() - r8.f14249b.E()) < java.lang.Math.abs(r9.getTop() - r8.f14249b.D)) goto L5;
         */
        /* JADX WARN: Code restructure failed: missing block: B:43:0x00ca, code lost:
            if (r8.f14249b.x0() == false) goto L6;
         */
        /* JADX WARN: Code restructure failed: missing block: B:48:0x00ec, code lost:
            if (java.lang.Math.abs(r10 - r8.f14249b.C) < java.lang.Math.abs(r10 - r8.f14249b.F)) goto L5;
         */
        /* JADX WARN: Code restructure failed: missing block: B:56:0x0108, code lost:
            if (r8.f14249b.x0() != false) goto L13;
         */
        /* JADX WARN: Code restructure failed: missing block: B:61:0x0122, code lost:
            if (r8.f14249b.x0() == false) goto L6;
         */
        @Override // androidx.customview.widget.ViewDragHelper.Callback
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void onViewReleased(@androidx.annotation.NonNull android.view.View r9, float r10, float r11) {
            /*
                Method dump skipped, instructions count: 303
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.bottomsheet.BottomSheetBehavior.d.onViewReleased(android.view.View, float, float):void");
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public boolean tryCaptureView(@NonNull View view, int i2) {
            BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
            int i4 = bottomSheetBehavior.K;
            if (i4 == 1 || bottomSheetBehavior.Z) {
                return false;
            }
            if (i4 == 3 && bottomSheetBehavior.X == i2) {
                WeakReference<View> weakReference = bottomSheetBehavior.U;
                View view2 = weakReference != null ? weakReference.get() : null;
                if (view2 != null && view2.canScrollVertically(-1)) {
                    return false;
                }
            }
            this.f14248a = System.currentTimeMillis();
            WeakReference<V> weakReference2 = BottomSheetBehavior.this.T;
            return weakReference2 != null && weakReference2.get() == view;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class e implements AccessibilityViewCommand {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f14250a;

        e(int i2) {
            this.f14250a = i2;
        }

        @Override // androidx.core.view.accessibility.AccessibilityViewCommand
        public boolean perform(@NonNull View view, @Nullable AccessibilityViewCommand.CommandArguments commandArguments) {
            BottomSheetBehavior.this.q0(this.f14250a);
            return true;
        }
    }

    /* loaded from: classes2.dex */
    public static abstract class f {
        void a(@NonNull View view) {
        }

        public abstract void b(@NonNull View view, float f4);

        public abstract void c(@NonNull View view, int i2);
    }

    public BottomSheetBehavior() {
        this.f14208a = 0;
        this.f14210b = true;
        this.f14212c = false;
        this.f14221k = -1;
        this.f14222l = -1;
        this.f14236z = new g(this, null);
        this.E = 0.5f;
        this.G = -1.0f;
        this.J = true;
        this.K = 4;
        this.L = 4;
        this.V = new ArrayList<>();
        this.f14211b0 = -1;
        this.f14213c0 = new d();
    }

    private void A0() {
        V v3;
        WeakReference<V> weakReference = this.T;
        if (weakReference == null || (v3 = weakReference.get()) == null) {
            return;
        }
        ViewCompat.removeAccessibilityAction(v3, 524288);
        ViewCompat.removeAccessibilityAction(v3, 262144);
        ViewCompat.removeAccessibilityAction(v3, 1048576);
        int i2 = this.f14211b0;
        if (i2 != -1) {
            ViewCompat.removeAccessibilityAction(v3, i2);
        }
        if (!this.f14210b && this.K != 6) {
            this.f14211b0 = r(v3, R.string.bottomsheet_action_expand_halfway, 6);
        }
        if (this.H && this.K != 5) {
            Y(v3, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_DISMISS, 5);
        }
        int i4 = this.K;
        if (i4 == 3) {
            Y(v3, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_COLLAPSE, this.f14210b ? 4 : 6);
        } else if (i4 == 4) {
            Y(v3, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_EXPAND, this.f14210b ? 3 : 6);
        } else if (i4 != 6) {
        } else {
            Y(v3, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_COLLAPSE, 4);
            Y(v3, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_EXPAND, 3);
        }
    }

    private void B0(int i2) {
        ValueAnimator valueAnimator;
        if (i2 == 2) {
            return;
        }
        boolean z3 = i2 == 3;
        if (this.f14235y != z3) {
            this.f14235y = z3;
            if (this.f14219i == null || (valueAnimator = this.A) == null) {
                return;
            }
            if (valueAnimator.isRunning()) {
                this.A.reverse();
                return;
            }
            float f4 = z3 ? 0.0f : 1.0f;
            this.A.setFloatValues(1.0f - f4, f4);
            this.A.start();
        }
    }

    @NonNull
    public static <V extends View> BottomSheetBehavior<V> C(@NonNull V v3) {
        ViewGroup.LayoutParams layoutParams = v3.getLayoutParams();
        if (layoutParams instanceof CoordinatorLayout.LayoutParams) {
            CoordinatorLayout.Behavior behavior = ((CoordinatorLayout.LayoutParams) layoutParams).getBehavior();
            if (behavior instanceof BottomSheetBehavior) {
                return (BottomSheetBehavior) behavior;
            }
            throw new IllegalArgumentException("The view is not associated with BottomSheetBehavior");
        }
        throw new IllegalArgumentException("The view is not a child of CoordinatorLayout");
    }

    private void C0(boolean z3) {
        Map<View, Integer> map;
        WeakReference<V> weakReference = this.T;
        if (weakReference == null) {
            return;
        }
        ViewParent parent = weakReference.get().getParent();
        if (parent instanceof CoordinatorLayout) {
            CoordinatorLayout coordinatorLayout = (CoordinatorLayout) parent;
            int childCount = coordinatorLayout.getChildCount();
            if (Build.VERSION.SDK_INT >= 16 && z3) {
                if (this.f14209a0 != null) {
                    return;
                }
                this.f14209a0 = new HashMap(childCount);
            }
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = coordinatorLayout.getChildAt(i2);
                if (childAt != this.T.get()) {
                    if (z3) {
                        if (Build.VERSION.SDK_INT >= 16) {
                            this.f14209a0.put(childAt, Integer.valueOf(childAt.getImportantForAccessibility()));
                        }
                        if (this.f14212c) {
                            ViewCompat.setImportantForAccessibility(childAt, 4);
                        }
                    } else if (this.f14212c && (map = this.f14209a0) != null && map.containsKey(childAt)) {
                        ViewCompat.setImportantForAccessibility(childAt, this.f14209a0.get(childAt).intValue());
                    }
                }
            }
            if (!z3) {
                this.f14209a0 = null;
            } else if (this.f14212c) {
                this.T.get().sendAccessibilityEvent(8);
            }
        }
    }

    private int D(int i2, int i4, int i5, int i6) {
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i2, i4, i6);
        if (i5 == -1) {
            return childMeasureSpec;
        }
        int mode = View.MeasureSpec.getMode(childMeasureSpec);
        int size = View.MeasureSpec.getSize(childMeasureSpec);
        if (mode != 1073741824) {
            if (size != 0) {
                i5 = Math.min(size, i5);
            }
            return View.MeasureSpec.makeMeasureSpec(i5, Integer.MIN_VALUE);
        }
        return View.MeasureSpec.makeMeasureSpec(Math.min(size, i5), 1073741824);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void D0(boolean z3) {
        V v3;
        if (this.T != null) {
            t();
            if (this.K != 4 || (v3 = this.T.get()) == null) {
                return;
            }
            if (z3) {
                q0(4);
            } else {
                v3.requestLayout();
            }
        }
    }

    private int P(int i2) {
        if (i2 != 3) {
            if (i2 != 4) {
                if (i2 != 5) {
                    if (i2 == 6) {
                        return this.D;
                    }
                    throw new IllegalArgumentException("Invalid state to get top offset: " + i2);
                }
                return this.S;
            }
            return this.F;
        }
        return E();
    }

    private float Q() {
        VelocityTracker velocityTracker = this.W;
        if (velocityTracker == null) {
            return 0.0f;
        }
        velocityTracker.computeCurrentVelocity(1000, this.f14214d);
        return this.W.getYVelocity(this.X);
    }

    private boolean V(V v3) {
        ViewParent parent = v3.getParent();
        return parent != null && parent.isLayoutRequested() && ViewCompat.isAttachedToWindow(v3);
    }

    private void Y(V v3, AccessibilityNodeInfoCompat.AccessibilityActionCompat accessibilityActionCompat, int i2) {
        ViewCompat.replaceAccessibilityAction(v3, accessibilityActionCompat, null, w(i2));
    }

    private void Z() {
        this.X = -1;
        VelocityTracker velocityTracker = this.W;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.W = null;
        }
    }

    private void a0(@NonNull SavedState savedState) {
        int i2 = this.f14208a;
        if (i2 == 0) {
            return;
        }
        if (i2 == -1 || (i2 & 1) == 1) {
            this.f14215e = savedState.f14238b;
        }
        if (i2 == -1 || (i2 & 2) == 2) {
            this.f14210b = savedState.f14239c;
        }
        if (i2 == -1 || (i2 & 4) == 4) {
            this.H = savedState.f14240d;
        }
        if (i2 == -1 || (i2 & 8) == 8) {
            this.I = savedState.f14241e;
        }
    }

    private void b0(V v3, Runnable runnable) {
        if (V(v3)) {
            v3.post(runnable);
        } else {
            runnable.run();
        }
    }

    private int r(V v3, @StringRes int i2, int i4) {
        return ViewCompat.addAccessibilityAction(v3, v3.getResources().getString(i2), w(i4));
    }

    private void t() {
        int v3 = v();
        if (this.f14210b) {
            this.F = Math.max(this.S - v3, this.C);
        } else {
            this.F = this.S - v3;
        }
    }

    private void t0(@NonNull View view) {
        boolean z3 = (Build.VERSION.SDK_INT < 29 || T() || this.f14216f) ? false : true;
        if (this.f14225o || this.f14226p || this.f14227q || this.f14229s || this.f14230t || this.f14231u || z3) {
            w.d(view, new c(z3));
        }
    }

    private void u() {
        this.D = (int) (this.S * (1.0f - this.E));
    }

    private int v() {
        int i2;
        if (this.f14216f) {
            return Math.min(Math.max(this.f14217g, this.S - ((this.R * 9) / 16)), this.Q) + this.f14232v;
        }
        if (!this.f14224n && !this.f14225o && (i2 = this.f14223m) > 0) {
            return Math.max(this.f14215e, i2 + this.f14218h);
        }
        return this.f14215e + this.f14232v;
    }

    private boolean v0() {
        return this.M != null && (this.J || this.K == 1);
    }

    private AccessibilityViewCommand w(int i2) {
        return new e(i2);
    }

    private void x(@NonNull Context context) {
        if (this.f14234x == null) {
            return;
        }
        MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable(this.f14234x);
        this.f14219i = materialShapeDrawable;
        materialShapeDrawable.Z(context);
        ColorStateList colorStateList = this.f14220j;
        if (colorStateList != null) {
            this.f14219i.o0(colorStateList);
            return;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(16842801, typedValue, true);
        this.f14219i.setTint(typedValue.data);
    }

    private void y() {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.A = ofFloat;
        ofFloat.setDuration(500L);
        this.A.addUpdateListener(new b());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void z0(View view, int i2, boolean z3) {
        int P = P(i2);
        ViewDragHelper viewDragHelper = this.M;
        if (viewDragHelper != null && (!z3 ? !viewDragHelper.smoothSlideViewTo(view, view.getLeft(), P) : !viewDragHelper.settleCapturedViewAt(view.getLeft(), P))) {
            r0(2);
            B0(i2);
            this.f14236z.c(i2);
            return;
        }
        r0(i2);
    }

    void A(int i2) {
        float f4;
        float f5;
        V v3 = this.T.get();
        if (v3 == null || this.V.isEmpty()) {
            return;
        }
        int i4 = this.F;
        if (i2 <= i4 && i4 != E()) {
            int i5 = this.F;
            f4 = i5 - i2;
            f5 = i5 - E();
        } else {
            int i6 = this.F;
            f4 = i6 - i2;
            f5 = this.S - i6;
        }
        float f6 = f4 / f5;
        for (int i7 = 0; i7 < this.V.size(); i7++) {
            this.V.get(i7).b(v3, f6);
        }
    }

    @Nullable
    @VisibleForTesting
    View B(View view) {
        if (ViewCompat.isNestedScrollingEnabled(view)) {
            return view;
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View B = B(viewGroup.getChildAt(i2));
                if (B != null) {
                    return B;
                }
            }
            return null;
        }
        return null;
    }

    public int E() {
        if (this.f14210b) {
            return this.C;
        }
        return Math.max(this.B, this.f14228r ? 0 : this.f14233w);
    }

    @FloatRange(from = 0.0d, to = 1.0d)
    public float F() {
        return this.E;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public int G() {
        return this.L;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public MaterialShapeDrawable H() {
        return this.f14219i;
    }

    @Px
    public int I() {
        return this.f14222l;
    }

    @Px
    public int J() {
        return this.f14221k;
    }

    public int K() {
        if (this.f14216f) {
            return -1;
        }
        return this.f14215e;
    }

    @VisibleForTesting
    int L() {
        return this.f14217g;
    }

    public int M() {
        return this.f14208a;
    }

    public boolean N() {
        return this.I;
    }

    public int O() {
        return this.K;
    }

    public boolean R() {
        return this.J;
    }

    public boolean S() {
        return this.f14210b;
    }

    public boolean T() {
        return this.f14224n;
    }

    public boolean U() {
        return this.H;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public boolean W() {
        return true;
    }

    public void X(@NonNull f fVar) {
        this.V.remove(fVar);
    }

    @Deprecated
    public void c0(f fVar) {
        this.V.clear();
        if (fVar != null) {
            this.V.add(fVar);
        }
    }

    public void d0(boolean z3) {
        this.J = z3;
    }

    public void e0(int i2) {
        if (i2 >= 0) {
            this.B = i2;
            return;
        }
        throw new IllegalArgumentException("offset must be greater than or equal to 0");
    }

    public void f0(boolean z3) {
        if (this.f14210b == z3) {
            return;
        }
        this.f14210b = z3;
        if (this.T != null) {
            t();
        }
        r0((this.f14210b && this.K == 6) ? 3 : this.K);
        A0();
    }

    public void g0(boolean z3) {
        this.f14224n = z3;
    }

    public void h0(@FloatRange(from = 0.0d, fromInclusive = false, to = 1.0d, toInclusive = false) float f4) {
        if (f4 > 0.0f && f4 < 1.0f) {
            this.E = f4;
            if (this.T != null) {
                u();
                return;
            }
            return;
        }
        throw new IllegalArgumentException("ratio must be a float value between 0 and 1");
    }

    public void i0(boolean z3) {
        if (this.H != z3) {
            this.H = z3;
            if (!z3 && this.K == 5) {
                q0(4);
            }
            A0();
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void j0(boolean z3) {
        this.H = z3;
    }

    public void k0(@Px int i2) {
        this.f14222l = i2;
    }

    public void l0(@Px int i2) {
        this.f14221k = i2;
    }

    public void m0(int i2) {
        n0(i2, false);
    }

    public final void n0(int i2, boolean z3) {
        boolean z4 = true;
        if (i2 == -1) {
            if (!this.f14216f) {
                this.f14216f = true;
            }
            z4 = false;
        } else {
            if (this.f14216f || this.f14215e != i2) {
                this.f14216f = false;
                this.f14215e = Math.max(0, i2);
            }
            z4 = false;
        }
        if (z4) {
            D0(z3);
        }
    }

    public void o0(int i2) {
        this.f14208a = i2;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public void onAttachedToLayoutParams(@NonNull CoordinatorLayout.LayoutParams layoutParams) {
        super.onAttachedToLayoutParams(layoutParams);
        this.T = null;
        this.M = null;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public void onDetachedFromLayoutParams() {
        super.onDetachedFromLayoutParams();
        this.T = null;
        this.M = null;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onInterceptTouchEvent(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v3, @NonNull MotionEvent motionEvent) {
        ViewDragHelper viewDragHelper;
        if (v3.isShown() && this.J) {
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked == 0) {
                Z();
            }
            if (this.W == null) {
                this.W = VelocityTracker.obtain();
            }
            this.W.addMovement(motionEvent);
            if (actionMasked == 0) {
                int x3 = (int) motionEvent.getX();
                this.Y = (int) motionEvent.getY();
                if (this.K != 2) {
                    WeakReference<View> weakReference = this.U;
                    View view = weakReference != null ? weakReference.get() : null;
                    if (view != null && coordinatorLayout.isPointInChildBounds(view, x3, this.Y)) {
                        this.X = motionEvent.getPointerId(motionEvent.getActionIndex());
                        this.Z = true;
                    }
                }
                this.N = this.X == -1 && !coordinatorLayout.isPointInChildBounds(v3, x3, this.Y);
            } else if (actionMasked == 1 || actionMasked == 3) {
                this.Z = false;
                this.X = -1;
                if (this.N) {
                    this.N = false;
                    return false;
                }
            }
            if (this.N || (viewDragHelper = this.M) == null || !viewDragHelper.shouldInterceptTouchEvent(motionEvent)) {
                WeakReference<View> weakReference2 = this.U;
                View view2 = weakReference2 != null ? weakReference2.get() : null;
                return (actionMasked != 2 || view2 == null || this.N || this.K == 1 || coordinatorLayout.isPointInChildBounds(view2, (int) motionEvent.getX(), (int) motionEvent.getY()) || this.M == null || Math.abs(((float) this.Y) - motionEvent.getY()) <= ((float) this.M.getTouchSlop())) ? false : true;
            }
            return true;
        }
        this.N = true;
        return false;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onLayoutChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v3, int i2) {
        if (ViewCompat.getFitsSystemWindows(coordinatorLayout) && !ViewCompat.getFitsSystemWindows(v3)) {
            v3.setFitsSystemWindows(true);
        }
        if (this.T == null) {
            this.f14217g = coordinatorLayout.getResources().getDimensionPixelSize(R.dimen.design_bottom_sheet_peek_height_min);
            t0(v3);
            this.T = new WeakReference<>(v3);
            MaterialShapeDrawable materialShapeDrawable = this.f14219i;
            if (materialShapeDrawable != null) {
                ViewCompat.setBackground(v3, materialShapeDrawable);
                MaterialShapeDrawable materialShapeDrawable2 = this.f14219i;
                float f4 = this.G;
                if (f4 == -1.0f) {
                    f4 = ViewCompat.getElevation(v3);
                }
                materialShapeDrawable2.n0(f4);
                boolean z3 = this.K == 3;
                this.f14235y = z3;
                this.f14219i.p0(z3 ? 0.0f : 1.0f);
            } else {
                ColorStateList colorStateList = this.f14220j;
                if (colorStateList != null) {
                    ViewCompat.setBackgroundTintList(v3, colorStateList);
                }
            }
            A0();
            if (ViewCompat.getImportantForAccessibility(v3) == 0) {
                ViewCompat.setImportantForAccessibility(v3, 1);
            }
        }
        if (this.M == null) {
            this.M = ViewDragHelper.create(coordinatorLayout, this.f14213c0);
        }
        int top = v3.getTop();
        coordinatorLayout.onLayoutChild(v3, i2);
        this.R = coordinatorLayout.getWidth();
        this.S = coordinatorLayout.getHeight();
        int height = v3.getHeight();
        this.Q = height;
        int i4 = this.S;
        int i5 = i4 - height;
        int i6 = this.f14233w;
        if (i5 < i6) {
            if (this.f14228r) {
                this.Q = i4;
            } else {
                this.Q = i4 - i6;
            }
        }
        this.C = Math.max(0, i4 - this.Q);
        u();
        t();
        int i7 = this.K;
        if (i7 == 3) {
            ViewCompat.offsetTopAndBottom(v3, E());
        } else if (i7 == 6) {
            ViewCompat.offsetTopAndBottom(v3, this.D);
        } else if (this.H && i7 == 5) {
            ViewCompat.offsetTopAndBottom(v3, this.S);
        } else if (i7 == 4) {
            ViewCompat.offsetTopAndBottom(v3, this.F);
        } else if (i7 == 1 || i7 == 2) {
            ViewCompat.offsetTopAndBottom(v3, top - v3.getTop());
        }
        this.U = new WeakReference<>(B(v3));
        for (int i8 = 0; i8 < this.V.size(); i8++) {
            this.V.get(i8).a(v3);
        }
        return true;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onMeasureChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v3, int i2, int i4, int i5, int i6) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) v3.getLayoutParams();
        v3.measure(D(i2, coordinatorLayout.getPaddingLeft() + coordinatorLayout.getPaddingRight() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i4, this.f14221k, marginLayoutParams.width), D(i5, coordinatorLayout.getPaddingTop() + coordinatorLayout.getPaddingBottom() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + i6, this.f14222l, marginLayoutParams.height));
        return true;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onNestedPreFling(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v3, @NonNull View view, float f4, float f5) {
        WeakReference<View> weakReference;
        if (W() && (weakReference = this.U) != null && view == weakReference.get()) {
            return this.K != 3 || super.onNestedPreFling(coordinatorLayout, v3, view, f4, f5);
        }
        return false;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public void onNestedPreScroll(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v3, @NonNull View view, int i2, int i4, @NonNull int[] iArr, int i5) {
        if (i5 == 1) {
            return;
        }
        WeakReference<View> weakReference = this.U;
        View view2 = weakReference != null ? weakReference.get() : null;
        if (!W() || view == view2) {
            int top = v3.getTop();
            int i6 = top - i4;
            if (i4 > 0) {
                if (i6 < E()) {
                    iArr[1] = top - E();
                    ViewCompat.offsetTopAndBottom(v3, -iArr[1]);
                    r0(3);
                } else if (!this.J) {
                    return;
                } else {
                    iArr[1] = i4;
                    ViewCompat.offsetTopAndBottom(v3, -i4);
                    r0(1);
                }
            } else if (i4 < 0 && !view.canScrollVertically(-1)) {
                int i7 = this.F;
                if (i6 > i7 && !this.H) {
                    iArr[1] = top - i7;
                    ViewCompat.offsetTopAndBottom(v3, -iArr[1]);
                    r0(4);
                } else if (!this.J) {
                    return;
                } else {
                    iArr[1] = i4;
                    ViewCompat.offsetTopAndBottom(v3, -i4);
                    r0(1);
                }
            }
            A(v3.getTop());
            this.O = i4;
            this.P = true;
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public void onNestedScroll(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v3, @NonNull View view, int i2, int i4, int i5, int i6, int i7, @NonNull int[] iArr) {
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public void onRestoreInstanceState(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v3, @NonNull Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(coordinatorLayout, v3, savedState.getSuperState());
        a0(savedState);
        int i2 = savedState.f14237a;
        if (i2 != 1 && i2 != 2) {
            this.K = i2;
            this.L = i2;
            return;
        }
        this.K = 4;
        this.L = 4;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    @NonNull
    public Parcelable onSaveInstanceState(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v3) {
        return new SavedState(super.onSaveInstanceState(coordinatorLayout, v3), (BottomSheetBehavior<?>) this);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onStartNestedScroll(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v3, @NonNull View view, @NonNull View view2, int i2, int i4) {
        this.O = 0;
        this.P = false;
        return (i2 & 2) != 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0036, code lost:
        if (r4.getTop() <= r2.D) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0065, code lost:
        if (java.lang.Math.abs(r3 - r2.C) < java.lang.Math.abs(r3 - r2.F)) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x007b, code lost:
        if (x0() != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x008b, code lost:
        if (java.lang.Math.abs(r3 - r1) < java.lang.Math.abs(r3 - r2.F)) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00a7, code lost:
        if (java.lang.Math.abs(r3 - r2.D) < java.lang.Math.abs(r3 - r2.F)) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00a9, code lost:
        r0 = 6;
     */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onStopNestedScroll(@androidx.annotation.NonNull androidx.coordinatorlayout.widget.CoordinatorLayout r3, @androidx.annotation.NonNull V r4, @androidx.annotation.NonNull android.view.View r5, int r6) {
        /*
            r2 = this;
            int r3 = r4.getTop()
            int r6 = r2.E()
            r0 = 3
            if (r3 != r6) goto Lf
            r2.r0(r0)
            return
        Lf:
            boolean r3 = r2.W()
            if (r3 == 0) goto L24
            java.lang.ref.WeakReference<android.view.View> r3 = r2.U
            if (r3 == 0) goto L23
            java.lang.Object r3 = r3.get()
            if (r5 != r3) goto L23
            boolean r3 = r2.P
            if (r3 != 0) goto L24
        L23:
            return
        L24:
            int r3 = r2.O
            r5 = 6
            r6 = 4
            if (r3 <= 0) goto L3a
            boolean r3 = r2.f14210b
            if (r3 == 0) goto L30
            goto Laa
        L30:
            int r3 = r4.getTop()
            int r6 = r2.D
            if (r3 <= r6) goto Laa
            goto La9
        L3a:
            boolean r3 = r2.H
            if (r3 == 0) goto L4a
            float r3 = r2.Q()
            boolean r3 = r2.w0(r4, r3)
            if (r3 == 0) goto L4a
            r0 = 5
            goto Laa
        L4a:
            int r3 = r2.O
            if (r3 != 0) goto L8e
            int r3 = r4.getTop()
            boolean r1 = r2.f14210b
            if (r1 == 0) goto L68
            int r5 = r2.C
            int r5 = r3 - r5
            int r5 = java.lang.Math.abs(r5)
            int r1 = r2.F
            int r3 = r3 - r1
            int r3 = java.lang.Math.abs(r3)
            if (r5 >= r3) goto L92
            goto Laa
        L68:
            int r1 = r2.D
            if (r3 >= r1) goto L7e
            int r1 = r2.F
            int r1 = r3 - r1
            int r1 = java.lang.Math.abs(r1)
            if (r3 >= r1) goto L77
            goto Laa
        L77:
            boolean r3 = r2.x0()
            if (r3 == 0) goto La9
            goto L92
        L7e:
            int r0 = r3 - r1
            int r0 = java.lang.Math.abs(r0)
            int r1 = r2.F
            int r3 = r3 - r1
            int r3 = java.lang.Math.abs(r3)
            if (r0 >= r3) goto L92
            goto La9
        L8e:
            boolean r3 = r2.f14210b
            if (r3 == 0) goto L94
        L92:
            r0 = 4
            goto Laa
        L94:
            int r3 = r4.getTop()
            int r0 = r2.D
            int r0 = r3 - r0
            int r0 = java.lang.Math.abs(r0)
            int r1 = r2.F
            int r3 = r3 - r1
            int r3 = java.lang.Math.abs(r3)
            if (r0 >= r3) goto L92
        La9:
            r0 = 6
        Laa:
            r3 = 0
            r2.z0(r4, r0, r3)
            r2.P = r3
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.bottomsheet.BottomSheetBehavior.onStopNestedScroll(androidx.coordinatorlayout.widget.CoordinatorLayout, android.view.View, android.view.View, int):void");
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onTouchEvent(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v3, @NonNull MotionEvent motionEvent) {
        if (v3.isShown()) {
            int actionMasked = motionEvent.getActionMasked();
            if (this.K == 1 && actionMasked == 0) {
                return true;
            }
            if (v0()) {
                this.M.processTouchEvent(motionEvent);
            }
            if (actionMasked == 0) {
                Z();
            }
            if (this.W == null) {
                this.W = VelocityTracker.obtain();
            }
            this.W.addMovement(motionEvent);
            if (v0() && actionMasked == 2 && !this.N && Math.abs(this.Y - motionEvent.getY()) > this.M.getTouchSlop()) {
                this.M.captureChildView(v3, motionEvent.getPointerId(motionEvent.getActionIndex()));
            }
            return !this.N;
        }
        return false;
    }

    public void p0(boolean z3) {
        this.I = z3;
    }

    public void q0(int i2) {
        if (i2 != 1 && i2 != 2) {
            if (!this.H && i2 == 5) {
                StringBuilder sb = new StringBuilder();
                sb.append("Cannot set state: ");
                sb.append(i2);
                return;
            }
            int i4 = (i2 == 6 && this.f14210b && P(i2) <= this.C) ? 3 : i2;
            WeakReference<V> weakReference = this.T;
            if (weakReference != null && weakReference.get() != null) {
                V v3 = this.T.get();
                b0(v3, new a(v3, i4));
                return;
            }
            r0(i2);
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("STATE_");
        sb2.append(i2 == 1 ? "DRAGGING" : "SETTLING");
        sb2.append(" should not be set externally.");
        throw new IllegalArgumentException(sb2.toString());
    }

    void r0(int i2) {
        V v3;
        if (this.K == i2) {
            return;
        }
        this.K = i2;
        if (i2 == 4 || i2 == 3 || i2 == 6 || (this.H && i2 == 5)) {
            this.L = i2;
        }
        WeakReference<V> weakReference = this.T;
        if (weakReference == null || (v3 = weakReference.get()) == null) {
            return;
        }
        if (i2 == 3) {
            C0(true);
        } else if (i2 == 6 || i2 == 5 || i2 == 4) {
            C0(false);
        }
        B0(i2);
        for (int i4 = 0; i4 < this.V.size(); i4++) {
            this.V.get(i4).c(v3, i2);
        }
        A0();
    }

    public void s(@NonNull f fVar) {
        if (this.V.contains(fVar)) {
            return;
        }
        this.V.add(fVar);
    }

    public void s0(boolean z3) {
        this.f14212c = z3;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public boolean u0(long j4, @FloatRange(from = 0.0d, to = 100.0d) float f4) {
        return false;
    }

    boolean w0(@NonNull View view, float f4) {
        if (this.I) {
            return true;
        }
        if (view.getTop() < this.F) {
            return false;
        }
        return Math.abs((((float) view.getTop()) + (f4 * 0.1f)) - ((float) this.F)) / ((float) v()) > 0.5f;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public boolean x0() {
        return false;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public boolean y0() {
        return true;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    @VisibleForTesting
    public void z() {
        this.A = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class g {

        /* renamed from: a  reason: collision with root package name */
        private int f14252a;

        /* renamed from: b  reason: collision with root package name */
        private boolean f14253b;

        /* renamed from: c  reason: collision with root package name */
        private final Runnable f14254c;

        /* loaded from: classes2.dex */
        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                g.this.f14253b = false;
                ViewDragHelper viewDragHelper = BottomSheetBehavior.this.M;
                if (viewDragHelper != null && viewDragHelper.continueSettling(true)) {
                    g gVar = g.this;
                    gVar.c(gVar.f14252a);
                    return;
                }
                g gVar2 = g.this;
                BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
                if (bottomSheetBehavior.K == 2) {
                    bottomSheetBehavior.r0(gVar2.f14252a);
                }
            }
        }

        private g() {
            this.f14254c = new a();
        }

        void c(int i2) {
            WeakReference<V> weakReference = BottomSheetBehavior.this.T;
            if (weakReference == null || weakReference.get() == null) {
                return;
            }
            this.f14252a = i2;
            if (this.f14253b) {
                return;
            }
            ViewCompat.postOnAnimation(BottomSheetBehavior.this.T.get(), this.f14254c);
            this.f14253b = true;
        }

        /* synthetic */ g(BottomSheetBehavior bottomSheetBehavior, a aVar) {
            this();
        }
    }

    public BottomSheetBehavior(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        int i2;
        this.f14208a = 0;
        this.f14210b = true;
        this.f14212c = false;
        this.f14221k = -1;
        this.f14222l = -1;
        this.f14236z = new g(this, null);
        this.E = 0.5f;
        this.G = -1.0f;
        this.J = true;
        this.K = 4;
        this.L = 4;
        this.V = new ArrayList<>();
        this.f14211b0 = -1;
        this.f14213c0 = new d();
        this.f14218h = context.getResources().getDimensionPixelSize(R.dimen.mtrl_min_touch_target_size);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.BottomSheetBehavior_Layout);
        int i4 = R.styleable.BottomSheetBehavior_Layout_backgroundTint;
        if (obtainStyledAttributes.hasValue(i4)) {
            this.f14220j = com.google.android.material.resources.c.a(context, obtainStyledAttributes, i4);
        }
        if (obtainStyledAttributes.hasValue(R.styleable.BottomSheetBehavior_Layout_shapeAppearance)) {
            this.f14234x = m.e(context, attributeSet, R.attr.bottomSheetStyle, f14207w0).m();
        }
        x(context);
        y();
        if (Build.VERSION.SDK_INT >= 21) {
            this.G = obtainStyledAttributes.getDimension(R.styleable.BottomSheetBehavior_Layout_android_elevation, -1.0f);
        }
        int i5 = R.styleable.BottomSheetBehavior_Layout_android_maxWidth;
        if (obtainStyledAttributes.hasValue(i5)) {
            l0(obtainStyledAttributes.getDimensionPixelSize(i5, -1));
        }
        int i6 = R.styleable.BottomSheetBehavior_Layout_android_maxHeight;
        if (obtainStyledAttributes.hasValue(i6)) {
            k0(obtainStyledAttributes.getDimensionPixelSize(i6, -1));
        }
        int i7 = R.styleable.BottomSheetBehavior_Layout_behavior_peekHeight;
        TypedValue peekValue = obtainStyledAttributes.peekValue(i7);
        if (peekValue != null && (i2 = peekValue.data) == -1) {
            m0(i2);
        } else {
            m0(obtainStyledAttributes.getDimensionPixelSize(i7, -1));
        }
        i0(obtainStyledAttributes.getBoolean(R.styleable.BottomSheetBehavior_Layout_behavior_hideable, false));
        g0(obtainStyledAttributes.getBoolean(R.styleable.BottomSheetBehavior_Layout_gestureInsetBottomIgnored, false));
        f0(obtainStyledAttributes.getBoolean(R.styleable.BottomSheetBehavior_Layout_behavior_fitToContents, true));
        p0(obtainStyledAttributes.getBoolean(R.styleable.BottomSheetBehavior_Layout_behavior_skipCollapsed, false));
        d0(obtainStyledAttributes.getBoolean(R.styleable.BottomSheetBehavior_Layout_behavior_draggable, true));
        o0(obtainStyledAttributes.getInt(R.styleable.BottomSheetBehavior_Layout_behavior_saveFlags, 0));
        h0(obtainStyledAttributes.getFloat(R.styleable.BottomSheetBehavior_Layout_behavior_halfExpandedRatio, 0.5f));
        int i8 = R.styleable.BottomSheetBehavior_Layout_behavior_expandedOffset;
        TypedValue peekValue2 = obtainStyledAttributes.peekValue(i8);
        if (peekValue2 != null && peekValue2.type == 16) {
            e0(peekValue2.data);
        } else {
            e0(obtainStyledAttributes.getDimensionPixelOffset(i8, 0));
        }
        this.f14225o = obtainStyledAttributes.getBoolean(R.styleable.BottomSheetBehavior_Layout_paddingBottomSystemWindowInsets, false);
        this.f14226p = obtainStyledAttributes.getBoolean(R.styleable.BottomSheetBehavior_Layout_paddingLeftSystemWindowInsets, false);
        this.f14227q = obtainStyledAttributes.getBoolean(R.styleable.BottomSheetBehavior_Layout_paddingRightSystemWindowInsets, false);
        this.f14228r = obtainStyledAttributes.getBoolean(R.styleable.BottomSheetBehavior_Layout_paddingTopSystemWindowInsets, true);
        this.f14229s = obtainStyledAttributes.getBoolean(R.styleable.BottomSheetBehavior_Layout_marginLeftSystemWindowInsets, false);
        this.f14230t = obtainStyledAttributes.getBoolean(R.styleable.BottomSheetBehavior_Layout_marginRightSystemWindowInsets, false);
        this.f14231u = obtainStyledAttributes.getBoolean(R.styleable.BottomSheetBehavior_Layout_marginTopSystemWindowInsets, false);
        obtainStyledAttributes.recycle();
        this.f14214d = ViewConfiguration.get(context).getScaledMaximumFlingVelocity();
    }
}
