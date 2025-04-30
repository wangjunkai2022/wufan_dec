package androidx.constraintlayout.core.widgets;

import androidx.constraintlayout.core.Cache;
import androidx.constraintlayout.core.LinearSystem;
import androidx.constraintlayout.core.SolverVariable;
import androidx.constraintlayout.core.state.WidgetFrame;
import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.analyzer.ChainRun;
import androidx.constraintlayout.core.widgets.analyzer.DependencyNode;
import androidx.constraintlayout.core.widgets.analyzer.HorizontalWidgetRun;
import androidx.constraintlayout.core.widgets.analyzer.VerticalWidgetRun;
import androidx.constraintlayout.core.widgets.analyzer.WidgetRun;
import com.join.mgps.activity.SimulatorExitPlayActivity_;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
/* loaded from: classes.dex */
public class ConstraintWidget {
    public static final int ANCHOR_BASELINE = 4;
    public static final int ANCHOR_BOTTOM = 3;
    public static final int ANCHOR_LEFT = 0;
    public static final int ANCHOR_RIGHT = 1;
    public static final int ANCHOR_TOP = 2;
    public static final int BOTH = 2;
    public static final int CHAIN_PACKED = 2;
    public static final int CHAIN_SPREAD = 0;
    public static final int CHAIN_SPREAD_INSIDE = 1;
    public static float DEFAULT_BIAS = 0.5f;
    public static final int GONE = 8;
    public static final int HORIZONTAL = 0;
    public static final int INVISIBLE = 4;
    public static final int MATCH_CONSTRAINT_PERCENT = 2;
    public static final int MATCH_CONSTRAINT_RATIO = 3;
    public static final int MATCH_CONSTRAINT_RATIO_RESOLVED = 4;
    public static final int MATCH_CONSTRAINT_SPREAD = 0;
    public static final int MATCH_CONSTRAINT_WRAP = 1;
    public static final int UNKNOWN = -1;
    public static final int VERTICAL = 1;
    public static final int VISIBLE = 0;
    public static final int WRAP_BEHAVIOR_HORIZONTAL_ONLY = 1;
    public static final int WRAP_BEHAVIOR_INCLUDED = 0;
    public static final int WRAP_BEHAVIOR_SKIPPED = 3;
    public static final int WRAP_BEHAVIOR_VERTICAL_ONLY = 2;

    /* renamed from: l0  reason: collision with root package name */
    private static final boolean f2465l0 = false;

    /* renamed from: m0  reason: collision with root package name */
    protected static final int f2466m0 = 1;

    /* renamed from: n0  reason: collision with root package name */
    protected static final int f2467n0 = 2;

    /* renamed from: o0  reason: collision with root package name */
    private static final boolean f2468o0 = false;

    /* renamed from: p0  reason: collision with root package name */
    private static final int f2469p0 = -2;

    /* renamed from: q0  reason: collision with root package name */
    static final int f2470q0 = 0;

    /* renamed from: r0  reason: collision with root package name */
    static final int f2471r0 = 1;
    protected int A;
    protected int B;
    protected int C;
    int D;
    int E;
    protected int F;
    protected int G;
    int H;
    protected int I;
    protected int J;
    float K;
    float L;
    private Object M;
    private int N;
    private int O;
    private boolean P;
    private String Q;
    private String R;
    int S;
    int T;
    int U;
    int V;
    boolean W;
    boolean X;
    boolean Y;
    boolean Z;

    /* renamed from: a  reason: collision with root package name */
    boolean f2472a;

    /* renamed from: a0  reason: collision with root package name */
    boolean f2473a0;

    /* renamed from: b  reason: collision with root package name */
    private boolean f2474b;

    /* renamed from: b0  reason: collision with root package name */
    boolean f2475b0;

    /* renamed from: c  reason: collision with root package name */
    private boolean f2476c;

    /* renamed from: c0  reason: collision with root package name */
    boolean f2477c0;

    /* renamed from: d  reason: collision with root package name */
    private boolean f2478d;

    /* renamed from: d0  reason: collision with root package name */
    int f2479d0;

    /* renamed from: e  reason: collision with root package name */
    private int f2480e;

    /* renamed from: e0  reason: collision with root package name */
    int f2481e0;

    /* renamed from: f  reason: collision with root package name */
    private int f2482f;

    /* renamed from: f0  reason: collision with root package name */
    boolean f2483f0;
    public WidgetFrame frame;

    /* renamed from: g  reason: collision with root package name */
    private boolean f2484g;

    /* renamed from: g0  reason: collision with root package name */
    boolean f2485g0;

    /* renamed from: h  reason: collision with root package name */
    private boolean f2486h;

    /* renamed from: h0  reason: collision with root package name */
    protected ConstraintWidget[] f2487h0;
    public ChainRun horizontalChainRun;
    public int horizontalGroup;
    public HorizontalWidgetRun horizontalRun;

    /* renamed from: i  reason: collision with root package name */
    private boolean f2488i;

    /* renamed from: i0  reason: collision with root package name */
    protected ConstraintWidget[] f2489i0;
    public boolean[] isTerminalWidget;

    /* renamed from: j  reason: collision with root package name */
    private boolean f2490j;

    /* renamed from: j0  reason: collision with root package name */
    ConstraintWidget f2491j0;

    /* renamed from: k  reason: collision with root package name */
    private int f2492k;

    /* renamed from: k0  reason: collision with root package name */
    ConstraintWidget f2493k0;

    /* renamed from: l  reason: collision with root package name */
    int f2494l;

    /* renamed from: m  reason: collision with root package name */
    float f2495m;
    public ConstraintAnchor mBaseline;
    public ConstraintAnchor mBottom;
    public ConstraintAnchor mCenter;
    public float mDimensionRatio;
    public int mHorizontalResolution;
    public boolean mIsHeightWrapContent;
    public boolean mIsWidthWrapContent;
    public ConstraintAnchor mLeft;
    public ConstraintAnchor[] mListAnchors;
    public DimensionBehaviour[] mListDimensionBehaviors;
    public int mMatchConstraintDefaultHeight;
    public int mMatchConstraintDefaultWidth;
    public int mMatchConstraintMaxHeight;
    public int mMatchConstraintMaxWidth;
    public int mMatchConstraintMinHeight;
    public int mMatchConstraintMinWidth;
    public float mMatchConstraintPercentHeight;
    public float mMatchConstraintPercentWidth;
    public ConstraintWidget mParent;
    public int[] mResolvedMatchConstraintDefault;
    public ConstraintAnchor mRight;
    public ConstraintAnchor mTop;
    public int mVerticalResolution;
    public float[] mWeight;
    public boolean measured;

    /* renamed from: n  reason: collision with root package name */
    private int[] f2496n;

    /* renamed from: o  reason: collision with root package name */
    private float f2497o;

    /* renamed from: p  reason: collision with root package name */
    private boolean f2498p;

    /* renamed from: q  reason: collision with root package name */
    private boolean f2499q;

    /* renamed from: r  reason: collision with root package name */
    private boolean f2500r;
    public WidgetRun[] run;

    /* renamed from: s  reason: collision with root package name */
    private int f2501s;
    public String stringId;

    /* renamed from: t  reason: collision with root package name */
    private int f2502t;

    /* renamed from: u  reason: collision with root package name */
    ConstraintAnchor f2503u;

    /* renamed from: v  reason: collision with root package name */
    ConstraintAnchor f2504v;
    public ChainRun verticalChainRun;
    public int verticalGroup;
    public VerticalWidgetRun verticalRun;

    /* renamed from: w  reason: collision with root package name */
    protected ArrayList<ConstraintAnchor> f2505w;

    /* renamed from: x  reason: collision with root package name */
    private boolean[] f2506x;

    /* renamed from: y  reason: collision with root package name */
    int f2507y;

    /* renamed from: z  reason: collision with root package name */
    int f2508z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.constraintlayout.core.widgets.ConstraintWidget$1  reason: invalid class name */
    /* loaded from: classes.dex */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f2509a;

        /* renamed from: b  reason: collision with root package name */
        static final /* synthetic */ int[] f2510b;

        static {
            int[] iArr = new int[DimensionBehaviour.values().length];
            f2510b = iArr;
            try {
                iArr[DimensionBehaviour.FIXED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f2510b[DimensionBehaviour.WRAP_CONTENT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f2510b[DimensionBehaviour.MATCH_PARENT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f2510b[DimensionBehaviour.MATCH_CONSTRAINT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            int[] iArr2 = new int[ConstraintAnchor.Type.values().length];
            f2509a = iArr2;
            try {
                iArr2[ConstraintAnchor.Type.LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f2509a[ConstraintAnchor.Type.TOP.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f2509a[ConstraintAnchor.Type.RIGHT.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f2509a[ConstraintAnchor.Type.BOTTOM.ordinal()] = 4;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f2509a[ConstraintAnchor.Type.BASELINE.ordinal()] = 5;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f2509a[ConstraintAnchor.Type.CENTER.ordinal()] = 6;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f2509a[ConstraintAnchor.Type.CENTER_X.ordinal()] = 7;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f2509a[ConstraintAnchor.Type.CENTER_Y.ordinal()] = 8;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f2509a[ConstraintAnchor.Type.NONE.ordinal()] = 9;
            } catch (NoSuchFieldError unused13) {
            }
        }
    }

    /* loaded from: classes.dex */
    public enum DimensionBehaviour {
        FIXED,
        WRAP_CONTENT,
        MATCH_CONSTRAINT,
        MATCH_PARENT
    }

    public ConstraintWidget() {
        this.measured = false;
        this.run = new WidgetRun[2];
        this.horizontalRun = null;
        this.verticalRun = null;
        this.isTerminalWidget = new boolean[]{true, true};
        this.f2472a = false;
        this.f2474b = true;
        this.f2476c = false;
        this.f2478d = true;
        this.f2480e = -1;
        this.f2482f = -1;
        this.frame = new WidgetFrame(this);
        this.f2484g = false;
        this.f2486h = false;
        this.f2488i = false;
        this.f2490j = false;
        this.mHorizontalResolution = -1;
        this.mVerticalResolution = -1;
        this.f2492k = 0;
        this.mMatchConstraintDefaultWidth = 0;
        this.mMatchConstraintDefaultHeight = 0;
        this.mResolvedMatchConstraintDefault = new int[2];
        this.mMatchConstraintMinWidth = 0;
        this.mMatchConstraintMaxWidth = 0;
        this.mMatchConstraintPercentWidth = 1.0f;
        this.mMatchConstraintMinHeight = 0;
        this.mMatchConstraintMaxHeight = 0;
        this.mMatchConstraintPercentHeight = 1.0f;
        this.f2494l = -1;
        this.f2495m = 1.0f;
        this.f2496n = new int[]{Integer.MAX_VALUE, Integer.MAX_VALUE};
        this.f2497o = 0.0f;
        this.f2498p = false;
        this.f2500r = false;
        this.f2501s = 0;
        this.f2502t = 0;
        this.mLeft = new ConstraintAnchor(this, ConstraintAnchor.Type.LEFT);
        this.mTop = new ConstraintAnchor(this, ConstraintAnchor.Type.TOP);
        this.mRight = new ConstraintAnchor(this, ConstraintAnchor.Type.RIGHT);
        this.mBottom = new ConstraintAnchor(this, ConstraintAnchor.Type.BOTTOM);
        this.mBaseline = new ConstraintAnchor(this, ConstraintAnchor.Type.BASELINE);
        this.f2503u = new ConstraintAnchor(this, ConstraintAnchor.Type.CENTER_X);
        this.f2504v = new ConstraintAnchor(this, ConstraintAnchor.Type.CENTER_Y);
        ConstraintAnchor constraintAnchor = new ConstraintAnchor(this, ConstraintAnchor.Type.CENTER);
        this.mCenter = constraintAnchor;
        this.mListAnchors = new ConstraintAnchor[]{this.mLeft, this.mRight, this.mTop, this.mBottom, this.mBaseline, constraintAnchor};
        this.f2505w = new ArrayList<>();
        this.f2506x = new boolean[2];
        DimensionBehaviour dimensionBehaviour = DimensionBehaviour.FIXED;
        this.mListDimensionBehaviors = new DimensionBehaviour[]{dimensionBehaviour, dimensionBehaviour};
        this.mParent = null;
        this.f2507y = 0;
        this.f2508z = 0;
        this.mDimensionRatio = 0.0f;
        this.A = -1;
        this.B = 0;
        this.C = 0;
        this.D = 0;
        this.E = 0;
        this.F = 0;
        this.G = 0;
        this.H = 0;
        float f4 = DEFAULT_BIAS;
        this.K = f4;
        this.L = f4;
        this.N = 0;
        this.O = 0;
        this.P = false;
        this.Q = null;
        this.R = null;
        this.f2477c0 = false;
        this.f2479d0 = 0;
        this.f2481e0 = 0;
        this.mWeight = new float[]{-1.0f, -1.0f};
        this.f2487h0 = new ConstraintWidget[]{null, null};
        this.f2489i0 = new ConstraintWidget[]{null, null};
        this.f2491j0 = null;
        this.f2493k0 = null;
        this.horizontalGroup = -1;
        this.verticalGroup = -1;
        a();
    }

    private void a() {
        this.f2505w.add(this.mLeft);
        this.f2505w.add(this.mTop);
        this.f2505w.add(this.mRight);
        this.f2505w.add(this.mBottom);
        this.f2505w.add(this.f2503u);
        this.f2505w.add(this.f2504v);
        this.f2505w.add(this.mCenter);
        this.f2505w.add(this.mBaseline);
    }

    /* JADX WARN: Removed duplicated region for block: B:115:0x01ec  */
    /* JADX WARN: Removed duplicated region for block: B:239:0x03a3 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:244:0x03b0  */
    /* JADX WARN: Removed duplicated region for block: B:252:0x03f4  */
    /* JADX WARN: Removed duplicated region for block: B:255:0x0404  */
    /* JADX WARN: Removed duplicated region for block: B:259:0x040d  */
    /* JADX WARN: Removed duplicated region for block: B:268:0x042e  */
    /* JADX WARN: Removed duplicated region for block: B:270:0x0432 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:281:0x044b  */
    /* JADX WARN: Removed duplicated region for block: B:312:0x0494  */
    /* JADX WARN: Removed duplicated region for block: B:319:0x04a6 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:332:0x04cc A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:351:0x04fc  */
    /* JADX WARN: Removed duplicated region for block: B:353:0x0508 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:381:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:384:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00a1  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00a6  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00bf  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00eb  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void c(androidx.constraintlayout.core.LinearSystem r32, boolean r33, boolean r34, boolean r35, boolean r36, androidx.constraintlayout.core.SolverVariable r37, androidx.constraintlayout.core.SolverVariable r38, androidx.constraintlayout.core.widgets.ConstraintWidget.DimensionBehaviour r39, boolean r40, androidx.constraintlayout.core.widgets.ConstraintAnchor r41, androidx.constraintlayout.core.widgets.ConstraintAnchor r42, int r43, int r44, int r45, int r46, float r47, boolean r48, boolean r49, boolean r50, boolean r51, boolean r52, int r53, int r54, int r55, int r56, float r57, boolean r58) {
        /*
            Method dump skipped, instructions count: 1352
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.core.widgets.ConstraintWidget.c(androidx.constraintlayout.core.LinearSystem, boolean, boolean, boolean, boolean, androidx.constraintlayout.core.SolverVariable, androidx.constraintlayout.core.SolverVariable, androidx.constraintlayout.core.widgets.ConstraintWidget$DimensionBehaviour, boolean, androidx.constraintlayout.core.widgets.ConstraintAnchor, androidx.constraintlayout.core.widgets.ConstraintAnchor, int, int, int, int, float, boolean, boolean, boolean, boolean, boolean, int, int, int, int, float, boolean):void");
    }

    private void g(StringBuilder sb, String str, int i2, int i4, int i5, int i6, int i7, int i8, float f4, float f5) {
        sb.append(str);
        sb.append(" :  {\n");
        l(sb, "      size", i2, 0);
        l(sb, "      min", i4, 0);
        l(sb, "      max", i5, Integer.MAX_VALUE);
        l(sb, "      matchMin", i7, 0);
        l(sb, "      matchDef", i8, 0);
        k(sb, "      matchPercent", f4, 1.0f);
        sb.append("    },\n");
    }

    private void h(StringBuilder sb, String str, ConstraintAnchor constraintAnchor) {
        if (constraintAnchor.mTarget == null) {
            return;
        }
        sb.append("    ");
        sb.append(str);
        sb.append(" : [ '");
        sb.append(constraintAnchor.mTarget);
        sb.append("'");
        if (constraintAnchor.f2462d != Integer.MIN_VALUE || constraintAnchor.mMargin != 0) {
            sb.append(",");
            sb.append(constraintAnchor.mMargin);
            if (constraintAnchor.f2462d != Integer.MIN_VALUE) {
                sb.append(",");
                sb.append(constraintAnchor.f2462d);
                sb.append(",");
            }
        }
        sb.append(" ] ,\n");
    }

    private boolean i(int i2) {
        int i4 = i2 * 2;
        ConstraintAnchor[] constraintAnchorArr = this.mListAnchors;
        if (constraintAnchorArr[i4].mTarget != null && constraintAnchorArr[i4].mTarget.mTarget != constraintAnchorArr[i4]) {
            int i5 = i4 + 1;
            if (constraintAnchorArr[i5].mTarget != null && constraintAnchorArr[i5].mTarget.mTarget == constraintAnchorArr[i5]) {
                return true;
            }
        }
        return false;
    }

    private void j(StringBuilder sb, String str, ConstraintAnchor constraintAnchor) {
        if (constraintAnchor.mTarget == null) {
            return;
        }
        sb.append(str);
        sb.append(" : [ '");
        sb.append(constraintAnchor.mTarget);
        sb.append("',");
        sb.append(constraintAnchor.mMargin);
        sb.append(",");
        sb.append(constraintAnchor.f2462d);
        sb.append(",");
        sb.append(" ] ,\n");
    }

    private void k(StringBuilder sb, String str, float f4, float f5) {
        if (f4 == f5) {
            return;
        }
        sb.append(str);
        sb.append(" :   ");
        sb.append(f4);
        sb.append(",\n");
    }

    private void l(StringBuilder sb, String str, int i2, int i4) {
        if (i2 == i4) {
            return;
        }
        sb.append(str);
        sb.append(" :   ");
        sb.append(i2);
        sb.append(",\n");
    }

    private void m(StringBuilder sb, ConstraintAnchor constraintAnchor, float f4) {
        if (constraintAnchor.mTarget == null) {
            return;
        }
        sb.append("circle : [ '");
        sb.append(constraintAnchor.mTarget);
        sb.append("',");
        sb.append(constraintAnchor.mMargin);
        sb.append(",");
        sb.append(f4);
        sb.append(",");
        sb.append(" ] ,\n");
    }

    private void n(StringBuilder sb, String str, float f4, int i2) {
        if (f4 == 0.0f) {
            return;
        }
        sb.append(str);
        sb.append(" :  [");
        sb.append(f4);
        sb.append(",");
        sb.append(i2);
        sb.append("");
        sb.append("],\n");
    }

    private void o(StringBuilder sb, String str, int i2, int i4, int i5, int i6, int i7, int i8, float f4, float f5) {
        sb.append(str);
        sb.append(" :  {\n");
        l(sb, "size", i2, Integer.MIN_VALUE);
        l(sb, "min", i4, 0);
        l(sb, SimulatorExitPlayActivity_.G, i5, Integer.MAX_VALUE);
        l(sb, "matchMin", i7, 0);
        l(sb, "matchDef", i8, 0);
        l(sb, "matchPercent", i8, 1);
        sb.append("},\n");
    }

    public void addChildrenToSolverByDependency(ConstraintWidgetContainer constraintWidgetContainer, LinearSystem linearSystem, HashSet<ConstraintWidget> hashSet, int i2, boolean z3) {
        if (z3) {
            if (!hashSet.contains(this)) {
                return;
            }
            Optimizer.a(constraintWidgetContainer, linearSystem, this);
            hashSet.remove(this);
            addToSolver(linearSystem, constraintWidgetContainer.optimizeFor(64));
        }
        if (i2 == 0) {
            HashSet<ConstraintAnchor> dependents = this.mLeft.getDependents();
            if (dependents != null) {
                Iterator<ConstraintAnchor> it2 = dependents.iterator();
                while (it2.hasNext()) {
                    it2.next().mOwner.addChildrenToSolverByDependency(constraintWidgetContainer, linearSystem, hashSet, i2, true);
                }
            }
            HashSet<ConstraintAnchor> dependents2 = this.mRight.getDependents();
            if (dependents2 != null) {
                Iterator<ConstraintAnchor> it3 = dependents2.iterator();
                while (it3.hasNext()) {
                    it3.next().mOwner.addChildrenToSolverByDependency(constraintWidgetContainer, linearSystem, hashSet, i2, true);
                }
                return;
            }
            return;
        }
        HashSet<ConstraintAnchor> dependents3 = this.mTop.getDependents();
        if (dependents3 != null) {
            Iterator<ConstraintAnchor> it4 = dependents3.iterator();
            while (it4.hasNext()) {
                it4.next().mOwner.addChildrenToSolverByDependency(constraintWidgetContainer, linearSystem, hashSet, i2, true);
            }
        }
        HashSet<ConstraintAnchor> dependents4 = this.mBottom.getDependents();
        if (dependents4 != null) {
            Iterator<ConstraintAnchor> it5 = dependents4.iterator();
            while (it5.hasNext()) {
                it5.next().mOwner.addChildrenToSolverByDependency(constraintWidgetContainer, linearSystem, hashSet, i2, true);
            }
        }
        HashSet<ConstraintAnchor> dependents5 = this.mBaseline.getDependents();
        if (dependents5 != null) {
            Iterator<ConstraintAnchor> it6 = dependents5.iterator();
            while (it6.hasNext()) {
                it6.next().mOwner.addChildrenToSolverByDependency(constraintWidgetContainer, linearSystem, hashSet, i2, true);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x0194  */
    /* JADX WARN: Removed duplicated region for block: B:103:0x019e  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x020e  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x0219  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x0221  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x022c  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x022e  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x0237  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x0239  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x0256  */
    /* JADX WARN: Removed duplicated region for block: B:190:0x02dd  */
    /* JADX WARN: Removed duplicated region for block: B:194:0x02f4  */
    /* JADX WARN: Removed duplicated region for block: B:198:0x02fe  */
    /* JADX WARN: Removed duplicated region for block: B:201:0x0303  */
    /* JADX WARN: Removed duplicated region for block: B:208:0x0318  */
    /* JADX WARN: Removed duplicated region for block: B:213:0x0321  */
    /* JADX WARN: Removed duplicated region for block: B:214:0x0324  */
    /* JADX WARN: Removed duplicated region for block: B:217:0x033d  */
    /* JADX WARN: Removed duplicated region for block: B:228:0x0356  */
    /* JADX WARN: Removed duplicated region for block: B:237:0x03a0  */
    /* JADX WARN: Removed duplicated region for block: B:240:0x03b0  */
    /* JADX WARN: Removed duplicated region for block: B:241:0x03b8  */
    /* JADX WARN: Removed duplicated region for block: B:244:0x03be  */
    /* JADX WARN: Removed duplicated region for block: B:245:0x03c7  */
    /* JADX WARN: Removed duplicated region for block: B:248:0x03eb  */
    /* JADX WARN: Removed duplicated region for block: B:249:0x03ee  */
    /* JADX WARN: Removed duplicated region for block: B:253:0x0463  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x005c  */
    /* JADX WARN: Removed duplicated region for block: B:270:0x04c7  */
    /* JADX WARN: Removed duplicated region for block: B:274:0x04db  */
    /* JADX WARN: Removed duplicated region for block: B:275:0x04dd  */
    /* JADX WARN: Removed duplicated region for block: B:277:0x04e0  */
    /* JADX WARN: Removed duplicated region for block: B:312:0x057b  */
    /* JADX WARN: Removed duplicated region for block: B:313:0x057e  */
    /* JADX WARN: Removed duplicated region for block: B:317:0x05c4  */
    /* JADX WARN: Removed duplicated region for block: B:321:0x05ef  */
    /* JADX WARN: Removed duplicated region for block: B:324:0x05f9  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00ad  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00ee  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x00fd  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0105  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0127  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x015a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void addToSolver(androidx.constraintlayout.core.LinearSystem r54, boolean r55) {
        /*
            Method dump skipped, instructions count: 1567
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.core.widgets.ConstraintWidget.addToSolver(androidx.constraintlayout.core.LinearSystem, boolean):void");
    }

    public boolean allowedInBarrier() {
        return this.O != 8;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean b() {
        return (this instanceof VirtualLayout) || (this instanceof Guideline);
    }

    public void connect(ConstraintAnchor constraintAnchor, ConstraintAnchor constraintAnchor2, int i2) {
        if (constraintAnchor.getOwner() == this) {
            connect(constraintAnchor.getType(), constraintAnchor2.getOwner(), constraintAnchor2.getType(), i2);
        }
    }

    public void connectCircularConstraint(ConstraintWidget constraintWidget, float f4, int i2) {
        ConstraintAnchor.Type type = ConstraintAnchor.Type.CENTER;
        immediateConnect(type, constraintWidget, type, i2, 0);
        this.f2497o = f4;
    }

    public void copy(ConstraintWidget constraintWidget, HashMap<ConstraintWidget, ConstraintWidget> hashMap) {
        this.mHorizontalResolution = constraintWidget.mHorizontalResolution;
        this.mVerticalResolution = constraintWidget.mVerticalResolution;
        this.mMatchConstraintDefaultWidth = constraintWidget.mMatchConstraintDefaultWidth;
        this.mMatchConstraintDefaultHeight = constraintWidget.mMatchConstraintDefaultHeight;
        int[] iArr = this.mResolvedMatchConstraintDefault;
        int[] iArr2 = constraintWidget.mResolvedMatchConstraintDefault;
        iArr[0] = iArr2[0];
        iArr[1] = iArr2[1];
        this.mMatchConstraintMinWidth = constraintWidget.mMatchConstraintMinWidth;
        this.mMatchConstraintMaxWidth = constraintWidget.mMatchConstraintMaxWidth;
        this.mMatchConstraintMinHeight = constraintWidget.mMatchConstraintMinHeight;
        this.mMatchConstraintMaxHeight = constraintWidget.mMatchConstraintMaxHeight;
        this.mMatchConstraintPercentHeight = constraintWidget.mMatchConstraintPercentHeight;
        this.mIsWidthWrapContent = constraintWidget.mIsWidthWrapContent;
        this.mIsHeightWrapContent = constraintWidget.mIsHeightWrapContent;
        this.f2494l = constraintWidget.f2494l;
        this.f2495m = constraintWidget.f2495m;
        int[] iArr3 = constraintWidget.f2496n;
        this.f2496n = Arrays.copyOf(iArr3, iArr3.length);
        this.f2497o = constraintWidget.f2497o;
        this.f2498p = constraintWidget.f2498p;
        this.f2499q = constraintWidget.f2499q;
        this.mLeft.reset();
        this.mTop.reset();
        this.mRight.reset();
        this.mBottom.reset();
        this.mBaseline.reset();
        this.f2503u.reset();
        this.f2504v.reset();
        this.mCenter.reset();
        this.mListDimensionBehaviors = (DimensionBehaviour[]) Arrays.copyOf(this.mListDimensionBehaviors, 2);
        this.mParent = this.mParent == null ? null : hashMap.get(constraintWidget.mParent);
        this.f2507y = constraintWidget.f2507y;
        this.f2508z = constraintWidget.f2508z;
        this.mDimensionRatio = constraintWidget.mDimensionRatio;
        this.A = constraintWidget.A;
        this.B = constraintWidget.B;
        this.C = constraintWidget.C;
        this.D = constraintWidget.D;
        this.E = constraintWidget.E;
        this.F = constraintWidget.F;
        this.G = constraintWidget.G;
        this.H = constraintWidget.H;
        this.I = constraintWidget.I;
        this.J = constraintWidget.J;
        this.K = constraintWidget.K;
        this.L = constraintWidget.L;
        this.M = constraintWidget.M;
        this.N = constraintWidget.N;
        this.O = constraintWidget.O;
        this.P = constraintWidget.P;
        this.Q = constraintWidget.Q;
        this.R = constraintWidget.R;
        this.S = constraintWidget.S;
        this.T = constraintWidget.T;
        this.U = constraintWidget.U;
        this.V = constraintWidget.V;
        this.W = constraintWidget.W;
        this.X = constraintWidget.X;
        this.Y = constraintWidget.Y;
        this.Z = constraintWidget.Z;
        this.f2473a0 = constraintWidget.f2473a0;
        this.f2475b0 = constraintWidget.f2475b0;
        this.f2479d0 = constraintWidget.f2479d0;
        this.f2481e0 = constraintWidget.f2481e0;
        this.f2483f0 = constraintWidget.f2483f0;
        this.f2485g0 = constraintWidget.f2485g0;
        float[] fArr = this.mWeight;
        float[] fArr2 = constraintWidget.mWeight;
        fArr[0] = fArr2[0];
        fArr[1] = fArr2[1];
        ConstraintWidget[] constraintWidgetArr = this.f2487h0;
        ConstraintWidget[] constraintWidgetArr2 = constraintWidget.f2487h0;
        constraintWidgetArr[0] = constraintWidgetArr2[0];
        constraintWidgetArr[1] = constraintWidgetArr2[1];
        ConstraintWidget[] constraintWidgetArr3 = this.f2489i0;
        ConstraintWidget[] constraintWidgetArr4 = constraintWidget.f2489i0;
        constraintWidgetArr3[0] = constraintWidgetArr4[0];
        constraintWidgetArr3[1] = constraintWidgetArr4[1];
        ConstraintWidget constraintWidget2 = constraintWidget.f2491j0;
        this.f2491j0 = constraintWidget2 == null ? null : hashMap.get(constraintWidget2);
        ConstraintWidget constraintWidget3 = constraintWidget.f2493k0;
        this.f2493k0 = constraintWidget3 != null ? hashMap.get(constraintWidget3) : null;
    }

    public void createObjectVariables(LinearSystem linearSystem) {
        linearSystem.createObjectVariable(this.mLeft);
        linearSystem.createObjectVariable(this.mTop);
        linearSystem.createObjectVariable(this.mRight);
        linearSystem.createObjectVariable(this.mBottom);
        if (this.H > 0) {
            linearSystem.createObjectVariable(this.mBaseline);
        }
    }

    int d(int i2) {
        if (i2 == 0) {
            return this.D;
        }
        if (i2 == 1) {
            return this.E;
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int e() {
        return this.B + this.F;
    }

    public void ensureMeasureRequested() {
        this.f2474b = true;
    }

    public void ensureWidgetRuns() {
        if (this.horizontalRun == null) {
            this.horizontalRun = new HorizontalWidgetRun(this);
        }
        if (this.verticalRun == null) {
            this.verticalRun = new VerticalWidgetRun(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int f() {
        return this.C + this.G;
    }

    public ConstraintAnchor getAnchor(ConstraintAnchor.Type type) {
        switch (AnonymousClass1.f2509a[type.ordinal()]) {
            case 1:
                return this.mLeft;
            case 2:
                return this.mTop;
            case 3:
                return this.mRight;
            case 4:
                return this.mBottom;
            case 5:
                return this.mBaseline;
            case 6:
                return this.mCenter;
            case 7:
                return this.f2503u;
            case 8:
                return this.f2504v;
            case 9:
                return null;
            default:
                throw new AssertionError(type.name());
        }
    }

    public ArrayList<ConstraintAnchor> getAnchors() {
        return this.f2505w;
    }

    public int getBaselineDistance() {
        return this.H;
    }

    public float getBiasPercent(int i2) {
        if (i2 == 0) {
            return this.K;
        }
        if (i2 == 1) {
            return this.L;
        }
        return -1.0f;
    }

    public int getBottom() {
        return getY() + this.f2508z;
    }

    public Object getCompanionWidget() {
        return this.M;
    }

    public int getContainerItemSkip() {
        return this.N;
    }

    public String getDebugName() {
        return this.Q;
    }

    public DimensionBehaviour getDimensionBehaviour(int i2) {
        if (i2 == 0) {
            return getHorizontalDimensionBehaviour();
        }
        if (i2 == 1) {
            return getVerticalDimensionBehaviour();
        }
        return null;
    }

    public float getDimensionRatio() {
        return this.mDimensionRatio;
    }

    public int getDimensionRatioSide() {
        return this.A;
    }

    public boolean getHasBaseline() {
        return this.f2498p;
    }

    public int getHeight() {
        if (this.O == 8) {
            return 0;
        }
        return this.f2508z;
    }

    public float getHorizontalBiasPercent() {
        return this.K;
    }

    public ConstraintWidget getHorizontalChainControlWidget() {
        if (isInHorizontalChain()) {
            ConstraintWidget constraintWidget = this;
            ConstraintWidget constraintWidget2 = null;
            while (constraintWidget2 == null && constraintWidget != null) {
                ConstraintAnchor anchor = constraintWidget.getAnchor(ConstraintAnchor.Type.LEFT);
                ConstraintAnchor target = anchor == null ? null : anchor.getTarget();
                ConstraintWidget owner = target == null ? null : target.getOwner();
                if (owner == getParent()) {
                    return constraintWidget;
                }
                ConstraintAnchor target2 = owner == null ? null : owner.getAnchor(ConstraintAnchor.Type.RIGHT).getTarget();
                if (target2 == null || target2.getOwner() == constraintWidget) {
                    constraintWidget = owner;
                } else {
                    constraintWidget2 = constraintWidget;
                }
            }
            return constraintWidget2;
        }
        return null;
    }

    public int getHorizontalChainStyle() {
        return this.f2479d0;
    }

    public DimensionBehaviour getHorizontalDimensionBehaviour() {
        return this.mListDimensionBehaviors[0];
    }

    public int getHorizontalMargin() {
        ConstraintAnchor constraintAnchor = this.mLeft;
        int i2 = constraintAnchor != null ? 0 + constraintAnchor.mMargin : 0;
        ConstraintAnchor constraintAnchor2 = this.mRight;
        return constraintAnchor2 != null ? i2 + constraintAnchor2.mMargin : i2;
    }

    public int getLastHorizontalMeasureSpec() {
        return this.f2501s;
    }

    public int getLastVerticalMeasureSpec() {
        return this.f2502t;
    }

    public int getLeft() {
        return getX();
    }

    public int getLength(int i2) {
        if (i2 == 0) {
            return getWidth();
        }
        if (i2 == 1) {
            return getHeight();
        }
        return 0;
    }

    public int getMaxHeight() {
        return this.f2496n[1];
    }

    public int getMaxWidth() {
        return this.f2496n[0];
    }

    public int getMinHeight() {
        return this.J;
    }

    public int getMinWidth() {
        return this.I;
    }

    public ConstraintWidget getNextChainMember(int i2) {
        ConstraintAnchor constraintAnchor;
        ConstraintAnchor constraintAnchor2;
        if (i2 != 0) {
            if (i2 == 1 && (constraintAnchor2 = (constraintAnchor = this.mBottom).mTarget) != null && constraintAnchor2.mTarget == constraintAnchor) {
                return constraintAnchor2.mOwner;
            }
            return null;
        }
        ConstraintAnchor constraintAnchor3 = this.mRight;
        ConstraintAnchor constraintAnchor4 = constraintAnchor3.mTarget;
        if (constraintAnchor4 == null || constraintAnchor4.mTarget != constraintAnchor3) {
            return null;
        }
        return constraintAnchor4.mOwner;
    }

    public int getOptimizerWrapHeight() {
        int i2;
        int i4 = this.f2508z;
        if (this.mListDimensionBehaviors[1] == DimensionBehaviour.MATCH_CONSTRAINT) {
            if (this.mMatchConstraintDefaultHeight == 1) {
                i2 = Math.max(this.mMatchConstraintMinHeight, i4);
            } else {
                i2 = this.mMatchConstraintMinHeight;
                if (i2 > 0) {
                    this.f2508z = i2;
                } else {
                    i2 = 0;
                }
            }
            int i5 = this.mMatchConstraintMaxHeight;
            return (i5 <= 0 || i5 >= i2) ? i2 : i5;
        }
        return i4;
    }

    public int getOptimizerWrapWidth() {
        int i2;
        int i4 = this.f2507y;
        if (this.mListDimensionBehaviors[0] == DimensionBehaviour.MATCH_CONSTRAINT) {
            if (this.mMatchConstraintDefaultWidth == 1) {
                i2 = Math.max(this.mMatchConstraintMinWidth, i4);
            } else {
                i2 = this.mMatchConstraintMinWidth;
                if (i2 > 0) {
                    this.f2507y = i2;
                } else {
                    i2 = 0;
                }
            }
            int i5 = this.mMatchConstraintMaxWidth;
            return (i5 <= 0 || i5 >= i2) ? i2 : i5;
        }
        return i4;
    }

    public ConstraintWidget getParent() {
        return this.mParent;
    }

    public ConstraintWidget getPreviousChainMember(int i2) {
        ConstraintAnchor constraintAnchor;
        ConstraintAnchor constraintAnchor2;
        if (i2 != 0) {
            if (i2 == 1 && (constraintAnchor2 = (constraintAnchor = this.mTop).mTarget) != null && constraintAnchor2.mTarget == constraintAnchor) {
                return constraintAnchor2.mOwner;
            }
            return null;
        }
        ConstraintAnchor constraintAnchor3 = this.mLeft;
        ConstraintAnchor constraintAnchor4 = constraintAnchor3.mTarget;
        if (constraintAnchor4 == null || constraintAnchor4.mTarget != constraintAnchor3) {
            return null;
        }
        return constraintAnchor4.mOwner;
    }

    public int getRight() {
        return getX() + this.f2507y;
    }

    public WidgetRun getRun(int i2) {
        if (i2 == 0) {
            return this.horizontalRun;
        }
        if (i2 == 1) {
            return this.verticalRun;
        }
        return null;
    }

    public void getSceneString(StringBuilder sb) {
        sb.append("  " + this.stringId + ":{\n");
        StringBuilder sb2 = new StringBuilder();
        sb2.append("    actualWidth:");
        sb2.append(this.f2507y);
        sb.append(sb2.toString());
        sb.append("\n");
        sb.append("    actualHeight:" + this.f2508z);
        sb.append("\n");
        sb.append("    actualLeft:" + this.B);
        sb.append("\n");
        sb.append("    actualTop:" + this.C);
        sb.append("\n");
        h(sb, "left", this.mLeft);
        h(sb, "top", this.mTop);
        h(sb, "right", this.mRight);
        h(sb, "bottom", this.mBottom);
        h(sb, "baseline", this.mBaseline);
        h(sb, "centerX", this.f2503u);
        h(sb, "centerY", this.f2504v);
        g(sb, "    width", this.f2507y, this.I, this.f2496n[0], this.f2480e, this.mMatchConstraintMinWidth, this.mMatchConstraintDefaultWidth, this.mMatchConstraintPercentWidth, this.mWeight[0]);
        g(sb, "    height", this.f2508z, this.J, this.f2496n[1], this.f2482f, this.mMatchConstraintMinHeight, this.mMatchConstraintDefaultHeight, this.mMatchConstraintPercentHeight, this.mWeight[1]);
        n(sb, "    dimensionRatio", this.mDimensionRatio, this.A);
        k(sb, "    horizontalBias", this.K, DEFAULT_BIAS);
        k(sb, "    verticalBias", this.L, DEFAULT_BIAS);
        l(sb, "    horizontalChainStyle", this.f2479d0, 0);
        l(sb, "    verticalChainStyle", this.f2481e0, 0);
        sb.append("  }");
    }

    public int getTop() {
        return getY();
    }

    public String getType() {
        return this.R;
    }

    public float getVerticalBiasPercent() {
        return this.L;
    }

    public ConstraintWidget getVerticalChainControlWidget() {
        if (isInVerticalChain()) {
            ConstraintWidget constraintWidget = this;
            ConstraintWidget constraintWidget2 = null;
            while (constraintWidget2 == null && constraintWidget != null) {
                ConstraintAnchor anchor = constraintWidget.getAnchor(ConstraintAnchor.Type.TOP);
                ConstraintAnchor target = anchor == null ? null : anchor.getTarget();
                ConstraintWidget owner = target == null ? null : target.getOwner();
                if (owner == getParent()) {
                    return constraintWidget;
                }
                ConstraintAnchor target2 = owner == null ? null : owner.getAnchor(ConstraintAnchor.Type.BOTTOM).getTarget();
                if (target2 == null || target2.getOwner() == constraintWidget) {
                    constraintWidget = owner;
                } else {
                    constraintWidget2 = constraintWidget;
                }
            }
            return constraintWidget2;
        }
        return null;
    }

    public int getVerticalChainStyle() {
        return this.f2481e0;
    }

    public DimensionBehaviour getVerticalDimensionBehaviour() {
        return this.mListDimensionBehaviors[1];
    }

    public int getVerticalMargin() {
        int i2 = this.mLeft != null ? 0 + this.mTop.mMargin : 0;
        return this.mRight != null ? i2 + this.mBottom.mMargin : i2;
    }

    public int getVisibility() {
        return this.O;
    }

    public int getWidth() {
        if (this.O == 8) {
            return 0;
        }
        return this.f2507y;
    }

    public int getWrapBehaviorInParent() {
        return this.f2492k;
    }

    public int getX() {
        ConstraintWidget constraintWidget = this.mParent;
        if (constraintWidget != null && (constraintWidget instanceof ConstraintWidgetContainer)) {
            return ((ConstraintWidgetContainer) constraintWidget).f2516x0 + this.B;
        }
        return this.B;
    }

    public int getY() {
        ConstraintWidget constraintWidget = this.mParent;
        if (constraintWidget != null && (constraintWidget instanceof ConstraintWidgetContainer)) {
            return ((ConstraintWidgetContainer) constraintWidget).f2517y0 + this.C;
        }
        return this.C;
    }

    public boolean hasBaseline() {
        return this.f2498p;
    }

    public boolean hasDanglingDimension(int i2) {
        if (i2 == 0) {
            return (this.mLeft.mTarget != null ? 1 : 0) + (this.mRight.mTarget != null ? 1 : 0) < 2;
        }
        return ((this.mTop.mTarget != null ? 1 : 0) + (this.mBottom.mTarget != null ? 1 : 0)) + (this.mBaseline.mTarget != null ? 1 : 0) < 2;
    }

    public boolean hasDependencies() {
        int size = this.f2505w.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (this.f2505w.get(i2).hasDependents()) {
                return true;
            }
        }
        return false;
    }

    public boolean hasDimensionOverride() {
        return (this.f2480e == -1 && this.f2482f == -1) ? false : true;
    }

    public boolean hasResolvedTargets(int i2, int i4) {
        ConstraintAnchor constraintAnchor;
        ConstraintAnchor constraintAnchor2;
        if (i2 == 0) {
            ConstraintAnchor constraintAnchor3 = this.mLeft.mTarget;
            return constraintAnchor3 != null && constraintAnchor3.hasFinalValue() && (constraintAnchor2 = this.mRight.mTarget) != null && constraintAnchor2.hasFinalValue() && (this.mRight.mTarget.getFinalValue() - this.mRight.getMargin()) - (this.mLeft.mTarget.getFinalValue() + this.mLeft.getMargin()) >= i4;
        }
        ConstraintAnchor constraintAnchor4 = this.mTop.mTarget;
        return constraintAnchor4 != null && constraintAnchor4.hasFinalValue() && (constraintAnchor = this.mBottom.mTarget) != null && constraintAnchor.hasFinalValue() && (this.mBottom.mTarget.getFinalValue() - this.mBottom.getMargin()) - (this.mTop.mTarget.getFinalValue() + this.mTop.getMargin()) >= i4;
        return false;
    }

    public void immediateConnect(ConstraintAnchor.Type type, ConstraintWidget constraintWidget, ConstraintAnchor.Type type2, int i2, int i4) {
        getAnchor(type).connect(constraintWidget.getAnchor(type2), i2, i4, true);
    }

    public boolean isAnimated() {
        return this.P;
    }

    public boolean isHeightWrapContent() {
        return this.mIsHeightWrapContent;
    }

    public boolean isHorizontalSolvingPassDone() {
        return this.f2488i;
    }

    public boolean isInBarrier(int i2) {
        return this.f2506x[i2];
    }

    public boolean isInHorizontalChain() {
        ConstraintAnchor constraintAnchor = this.mLeft;
        ConstraintAnchor constraintAnchor2 = constraintAnchor.mTarget;
        if (constraintAnchor2 == null || constraintAnchor2.mTarget != constraintAnchor) {
            ConstraintAnchor constraintAnchor3 = this.mRight;
            ConstraintAnchor constraintAnchor4 = constraintAnchor3.mTarget;
            return constraintAnchor4 != null && constraintAnchor4.mTarget == constraintAnchor3;
        }
        return true;
    }

    public boolean isInPlaceholder() {
        return this.f2499q;
    }

    public boolean isInVerticalChain() {
        ConstraintAnchor constraintAnchor = this.mTop;
        ConstraintAnchor constraintAnchor2 = constraintAnchor.mTarget;
        if (constraintAnchor2 == null || constraintAnchor2.mTarget != constraintAnchor) {
            ConstraintAnchor constraintAnchor3 = this.mBottom;
            ConstraintAnchor constraintAnchor4 = constraintAnchor3.mTarget;
            return constraintAnchor4 != null && constraintAnchor4.mTarget == constraintAnchor3;
        }
        return true;
    }

    public boolean isInVirtualLayout() {
        return this.f2500r;
    }

    public boolean isMeasureRequested() {
        return this.f2474b && this.O != 8;
    }

    public boolean isResolvedHorizontally() {
        return this.f2484g || (this.mLeft.hasFinalValue() && this.mRight.hasFinalValue());
    }

    public boolean isResolvedVertically() {
        return this.f2486h || (this.mTop.hasFinalValue() && this.mBottom.hasFinalValue());
    }

    public boolean isRoot() {
        return this.mParent == null;
    }

    public boolean isSpreadHeight() {
        return this.mMatchConstraintDefaultHeight == 0 && this.mDimensionRatio == 0.0f && this.mMatchConstraintMinHeight == 0 && this.mMatchConstraintMaxHeight == 0 && this.mListDimensionBehaviors[1] == DimensionBehaviour.MATCH_CONSTRAINT;
    }

    public boolean isSpreadWidth() {
        return this.mMatchConstraintDefaultWidth == 0 && this.mDimensionRatio == 0.0f && this.mMatchConstraintMinWidth == 0 && this.mMatchConstraintMaxWidth == 0 && this.mListDimensionBehaviors[0] == DimensionBehaviour.MATCH_CONSTRAINT;
    }

    public boolean isVerticalSolvingPassDone() {
        return this.f2490j;
    }

    public boolean isWidthWrapContent() {
        return this.mIsWidthWrapContent;
    }

    public void markHorizontalSolvingPassDone() {
        this.f2488i = true;
    }

    public void markVerticalSolvingPassDone() {
        this.f2490j = true;
    }

    public boolean oppositeDimensionDependsOn(int i2) {
        char c4 = i2 == 0 ? (char) 1 : (char) 0;
        DimensionBehaviour[] dimensionBehaviourArr = this.mListDimensionBehaviors;
        DimensionBehaviour dimensionBehaviour = dimensionBehaviourArr[i2];
        DimensionBehaviour dimensionBehaviour2 = dimensionBehaviourArr[c4];
        DimensionBehaviour dimensionBehaviour3 = DimensionBehaviour.MATCH_CONSTRAINT;
        return dimensionBehaviour == dimensionBehaviour3 && dimensionBehaviour2 == dimensionBehaviour3;
    }

    public boolean oppositeDimensionsTied() {
        DimensionBehaviour[] dimensionBehaviourArr = this.mListDimensionBehaviors;
        DimensionBehaviour dimensionBehaviour = dimensionBehaviourArr[0];
        DimensionBehaviour dimensionBehaviour2 = DimensionBehaviour.MATCH_CONSTRAINT;
        return dimensionBehaviour == dimensionBehaviour2 && dimensionBehaviourArr[1] == dimensionBehaviour2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void p(int i2, boolean z3) {
        this.f2506x[i2] = z3;
    }

    void q(int i2, int i4) {
        if (i4 == 0) {
            this.D = i2;
        } else if (i4 == 1) {
            this.E = i2;
        }
    }

    public void reset() {
        this.mLeft.reset();
        this.mTop.reset();
        this.mRight.reset();
        this.mBottom.reset();
        this.mBaseline.reset();
        this.f2503u.reset();
        this.f2504v.reset();
        this.mCenter.reset();
        this.mParent = null;
        this.f2497o = 0.0f;
        this.f2507y = 0;
        this.f2508z = 0;
        this.mDimensionRatio = 0.0f;
        this.A = -1;
        this.B = 0;
        this.C = 0;
        this.F = 0;
        this.G = 0;
        this.H = 0;
        this.I = 0;
        this.J = 0;
        float f4 = DEFAULT_BIAS;
        this.K = f4;
        this.L = f4;
        DimensionBehaviour[] dimensionBehaviourArr = this.mListDimensionBehaviors;
        DimensionBehaviour dimensionBehaviour = DimensionBehaviour.FIXED;
        dimensionBehaviourArr[0] = dimensionBehaviour;
        dimensionBehaviourArr[1] = dimensionBehaviour;
        this.M = null;
        this.N = 0;
        this.O = 0;
        this.R = null;
        this.f2473a0 = false;
        this.f2475b0 = false;
        this.f2479d0 = 0;
        this.f2481e0 = 0;
        this.f2483f0 = false;
        this.f2485g0 = false;
        float[] fArr = this.mWeight;
        fArr[0] = -1.0f;
        fArr[1] = -1.0f;
        this.mHorizontalResolution = -1;
        this.mVerticalResolution = -1;
        int[] iArr = this.f2496n;
        iArr[0] = Integer.MAX_VALUE;
        iArr[1] = Integer.MAX_VALUE;
        this.mMatchConstraintDefaultWidth = 0;
        this.mMatchConstraintDefaultHeight = 0;
        this.mMatchConstraintPercentWidth = 1.0f;
        this.mMatchConstraintPercentHeight = 1.0f;
        this.mMatchConstraintMaxWidth = Integer.MAX_VALUE;
        this.mMatchConstraintMaxHeight = Integer.MAX_VALUE;
        this.mMatchConstraintMinWidth = 0;
        this.mMatchConstraintMinHeight = 0;
        this.f2472a = false;
        this.f2494l = -1;
        this.f2495m = 1.0f;
        this.f2477c0 = false;
        boolean[] zArr = this.isTerminalWidget;
        zArr[0] = true;
        zArr[1] = true;
        this.f2500r = false;
        boolean[] zArr2 = this.f2506x;
        zArr2[0] = false;
        zArr2[1] = false;
        this.f2474b = true;
        int[] iArr2 = this.mResolvedMatchConstraintDefault;
        iArr2[0] = 0;
        iArr2[1] = 0;
        this.f2480e = -1;
        this.f2482f = -1;
    }

    public void resetAllConstraints() {
        resetAnchors();
        setVerticalBiasPercent(DEFAULT_BIAS);
        setHorizontalBiasPercent(DEFAULT_BIAS);
    }

    public void resetAnchor(ConstraintAnchor constraintAnchor) {
        if (getParent() != null && (getParent() instanceof ConstraintWidgetContainer) && ((ConstraintWidgetContainer) getParent()).handlesInternalConstraints()) {
            return;
        }
        ConstraintAnchor anchor = getAnchor(ConstraintAnchor.Type.LEFT);
        ConstraintAnchor anchor2 = getAnchor(ConstraintAnchor.Type.RIGHT);
        ConstraintAnchor anchor3 = getAnchor(ConstraintAnchor.Type.TOP);
        ConstraintAnchor anchor4 = getAnchor(ConstraintAnchor.Type.BOTTOM);
        ConstraintAnchor anchor5 = getAnchor(ConstraintAnchor.Type.CENTER);
        ConstraintAnchor anchor6 = getAnchor(ConstraintAnchor.Type.CENTER_X);
        ConstraintAnchor anchor7 = getAnchor(ConstraintAnchor.Type.CENTER_Y);
        if (constraintAnchor == anchor5) {
            if (anchor.isConnected() && anchor2.isConnected() && anchor.getTarget() == anchor2.getTarget()) {
                anchor.reset();
                anchor2.reset();
            }
            if (anchor3.isConnected() && anchor4.isConnected() && anchor3.getTarget() == anchor4.getTarget()) {
                anchor3.reset();
                anchor4.reset();
            }
            this.K = 0.5f;
            this.L = 0.5f;
        } else if (constraintAnchor == anchor6) {
            if (anchor.isConnected() && anchor2.isConnected() && anchor.getTarget().getOwner() == anchor2.getTarget().getOwner()) {
                anchor.reset();
                anchor2.reset();
            }
            this.K = 0.5f;
        } else if (constraintAnchor == anchor7) {
            if (anchor3.isConnected() && anchor4.isConnected() && anchor3.getTarget().getOwner() == anchor4.getTarget().getOwner()) {
                anchor3.reset();
                anchor4.reset();
            }
            this.L = 0.5f;
        } else if (constraintAnchor != anchor && constraintAnchor != anchor2) {
            if ((constraintAnchor == anchor3 || constraintAnchor == anchor4) && anchor3.isConnected() && anchor3.getTarget() == anchor4.getTarget()) {
                anchor5.reset();
            }
        } else if (anchor.isConnected() && anchor.getTarget() == anchor2.getTarget()) {
            anchor5.reset();
        }
        constraintAnchor.reset();
    }

    public void resetAnchors() {
        ConstraintWidget parent = getParent();
        if (parent != null && (parent instanceof ConstraintWidgetContainer) && ((ConstraintWidgetContainer) getParent()).handlesInternalConstraints()) {
            return;
        }
        int size = this.f2505w.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.f2505w.get(i2).reset();
        }
    }

    public void resetFinalResolution() {
        this.f2484g = false;
        this.f2486h = false;
        this.f2488i = false;
        this.f2490j = false;
        int size = this.f2505w.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.f2505w.get(i2).resetFinalResolution();
        }
    }

    public void resetSolverVariables(Cache cache) {
        this.mLeft.resetSolverVariable(cache);
        this.mTop.resetSolverVariable(cache);
        this.mRight.resetSolverVariable(cache);
        this.mBottom.resetSolverVariable(cache);
        this.mBaseline.resetSolverVariable(cache);
        this.mCenter.resetSolverVariable(cache);
        this.f2503u.resetSolverVariable(cache);
        this.f2504v.resetSolverVariable(cache);
    }

    public void resetSolvingPassFlag() {
        this.f2488i = false;
        this.f2490j = false;
    }

    public StringBuilder serialize(StringBuilder sb) {
        sb.append("{\n");
        j(sb, "left", this.mLeft);
        j(sb, "top", this.mTop);
        j(sb, "right", this.mRight);
        j(sb, "bottom", this.mBottom);
        j(sb, "baseline", this.mBaseline);
        j(sb, "centerX", this.f2503u);
        j(sb, "centerY", this.f2504v);
        m(sb, this.mCenter, this.f2497o);
        o(sb, "width", this.f2507y, this.I, this.f2496n[0], this.f2480e, this.mMatchConstraintMinWidth, this.mMatchConstraintDefaultWidth, this.mMatchConstraintPercentWidth, this.mWeight[0]);
        o(sb, "height", this.f2508z, this.J, this.f2496n[1], this.f2482f, this.mMatchConstraintMinHeight, this.mMatchConstraintDefaultHeight, this.mMatchConstraintPercentHeight, this.mWeight[1]);
        n(sb, "dimensionRatio", this.mDimensionRatio, this.A);
        k(sb, "horizontalBias", this.K, DEFAULT_BIAS);
        k(sb, "verticalBias", this.L, DEFAULT_BIAS);
        sb.append("}\n");
        return sb;
    }

    public void setAnimated(boolean z3) {
        this.P = z3;
    }

    public void setBaselineDistance(int i2) {
        this.H = i2;
        this.f2498p = i2 > 0;
    }

    public void setCompanionWidget(Object obj) {
        this.M = obj;
    }

    public void setContainerItemSkip(int i2) {
        if (i2 >= 0) {
            this.N = i2;
        } else {
            this.N = 0;
        }
    }

    public void setDebugName(String str) {
        this.Q = str;
    }

    public void setDebugSolverName(LinearSystem linearSystem, String str) {
        this.Q = str;
        SolverVariable createObjectVariable = linearSystem.createObjectVariable(this.mLeft);
        SolverVariable createObjectVariable2 = linearSystem.createObjectVariable(this.mTop);
        SolverVariable createObjectVariable3 = linearSystem.createObjectVariable(this.mRight);
        SolverVariable createObjectVariable4 = linearSystem.createObjectVariable(this.mBottom);
        createObjectVariable.setName(str + ".left");
        createObjectVariable2.setName(str + ".top");
        createObjectVariable3.setName(str + ".right");
        createObjectVariable4.setName(str + ".bottom");
        SolverVariable createObjectVariable5 = linearSystem.createObjectVariable(this.mBaseline);
        createObjectVariable5.setName(str + ".baseline");
    }

    public void setDimension(int i2, int i4) {
        this.f2507y = i2;
        int i5 = this.I;
        if (i2 < i5) {
            this.f2507y = i5;
        }
        this.f2508z = i4;
        int i6 = this.J;
        if (i4 < i6) {
            this.f2508z = i6;
        }
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x0084 -> B:39:0x0085). Please submit an issue!!! */
    public void setDimensionRatio(String str) {
        float f4;
        int i2 = 0;
        if (str != null && str.length() != 0) {
            int i4 = -1;
            int length = str.length();
            int indexOf = str.indexOf(44);
            int i5 = 0;
            if (indexOf > 0 && indexOf < length - 1) {
                String substring = str.substring(0, indexOf);
                if (substring.equalsIgnoreCase("W")) {
                    i4 = 0;
                } else if (substring.equalsIgnoreCase("H")) {
                    i4 = 1;
                }
                i5 = indexOf + 1;
            }
            int indexOf2 = str.indexOf(58);
            if (indexOf2 >= 0 && indexOf2 < length - 1) {
                String substring2 = str.substring(i5, indexOf2);
                String substring3 = str.substring(indexOf2 + 1);
                if (substring2.length() > 0 && substring3.length() > 0) {
                    float parseFloat = Float.parseFloat(substring2);
                    float parseFloat2 = Float.parseFloat(substring3);
                    if (parseFloat > 0.0f && parseFloat2 > 0.0f) {
                        if (i4 == 1) {
                            f4 = Math.abs(parseFloat2 / parseFloat);
                        } else {
                            f4 = Math.abs(parseFloat / parseFloat2);
                        }
                    }
                }
                f4 = 0.0f;
            } else {
                String substring4 = str.substring(i5);
                if (substring4.length() > 0) {
                    f4 = Float.parseFloat(substring4);
                }
                f4 = 0.0f;
            }
            i2 = (f4 > i2 ? 1 : (f4 == i2 ? 0 : -1));
            if (i2 > 0) {
                this.mDimensionRatio = f4;
                this.A = i4;
                return;
            }
            return;
        }
        this.mDimensionRatio = 0.0f;
    }

    public void setFinalBaseline(int i2) {
        if (this.f2498p) {
            int i4 = i2 - this.H;
            int i5 = this.f2508z + i4;
            this.C = i4;
            this.mTop.setFinalValue(i4);
            this.mBottom.setFinalValue(i5);
            this.mBaseline.setFinalValue(i2);
            this.f2486h = true;
        }
    }

    public void setFinalFrame(int i2, int i4, int i5, int i6, int i7, int i8) {
        setFrame(i2, i4, i5, i6);
        setBaselineDistance(i7);
        if (i8 == 0) {
            this.f2484g = true;
            this.f2486h = false;
        } else if (i8 == 1) {
            this.f2484g = false;
            this.f2486h = true;
        } else if (i8 == 2) {
            this.f2484g = true;
            this.f2486h = true;
        } else {
            this.f2484g = false;
            this.f2486h = false;
        }
    }

    public void setFinalHorizontal(int i2, int i4) {
        if (this.f2484g) {
            return;
        }
        this.mLeft.setFinalValue(i2);
        this.mRight.setFinalValue(i4);
        this.B = i2;
        this.f2507y = i4 - i2;
        this.f2484g = true;
    }

    public void setFinalLeft(int i2) {
        this.mLeft.setFinalValue(i2);
        this.B = i2;
    }

    public void setFinalTop(int i2) {
        this.mTop.setFinalValue(i2);
        this.C = i2;
    }

    public void setFinalVertical(int i2, int i4) {
        if (this.f2486h) {
            return;
        }
        this.mTop.setFinalValue(i2);
        this.mBottom.setFinalValue(i4);
        this.C = i2;
        this.f2508z = i4 - i2;
        if (this.f2498p) {
            this.mBaseline.setFinalValue(i2 + this.H);
        }
        this.f2486h = true;
    }

    public void setFrame(int i2, int i4, int i5, int i6) {
        int i7;
        int i8;
        int i9 = i5 - i2;
        int i10 = i6 - i4;
        this.B = i2;
        this.C = i4;
        if (this.O == 8) {
            this.f2507y = 0;
            this.f2508z = 0;
            return;
        }
        DimensionBehaviour[] dimensionBehaviourArr = this.mListDimensionBehaviors;
        DimensionBehaviour dimensionBehaviour = dimensionBehaviourArr[0];
        DimensionBehaviour dimensionBehaviour2 = DimensionBehaviour.FIXED;
        if (dimensionBehaviour == dimensionBehaviour2 && i9 < (i8 = this.f2507y)) {
            i9 = i8;
        }
        if (dimensionBehaviourArr[1] == dimensionBehaviour2 && i10 < (i7 = this.f2508z)) {
            i10 = i7;
        }
        this.f2507y = i9;
        this.f2508z = i10;
        int i11 = this.J;
        if (i10 < i11) {
            this.f2508z = i11;
        }
        int i12 = this.I;
        if (i9 < i12) {
            this.f2507y = i12;
        }
        int i13 = this.mMatchConstraintMaxWidth;
        if (i13 > 0 && dimensionBehaviourArr[0] == DimensionBehaviour.MATCH_CONSTRAINT) {
            this.f2507y = Math.min(this.f2507y, i13);
        }
        int i14 = this.mMatchConstraintMaxHeight;
        if (i14 > 0 && this.mListDimensionBehaviors[1] == DimensionBehaviour.MATCH_CONSTRAINT) {
            this.f2508z = Math.min(this.f2508z, i14);
        }
        int i15 = this.f2507y;
        if (i9 != i15) {
            this.f2480e = i15;
        }
        int i16 = this.f2508z;
        if (i10 != i16) {
            this.f2482f = i16;
        }
    }

    public void setGoneMargin(ConstraintAnchor.Type type, int i2) {
        int i4 = AnonymousClass1.f2509a[type.ordinal()];
        if (i4 == 1) {
            this.mLeft.f2462d = i2;
        } else if (i4 == 2) {
            this.mTop.f2462d = i2;
        } else if (i4 == 3) {
            this.mRight.f2462d = i2;
        } else if (i4 == 4) {
            this.mBottom.f2462d = i2;
        } else if (i4 != 5) {
        } else {
            this.mBaseline.f2462d = i2;
        }
    }

    public void setHasBaseline(boolean z3) {
        this.f2498p = z3;
    }

    public void setHeight(int i2) {
        this.f2508z = i2;
        int i4 = this.J;
        if (i2 < i4) {
            this.f2508z = i4;
        }
    }

    public void setHeightWrapContent(boolean z3) {
        this.mIsHeightWrapContent = z3;
    }

    public void setHorizontalBiasPercent(float f4) {
        this.K = f4;
    }

    public void setHorizontalChainStyle(int i2) {
        this.f2479d0 = i2;
    }

    public void setHorizontalDimension(int i2, int i4) {
        this.B = i2;
        int i5 = i4 - i2;
        this.f2507y = i5;
        int i6 = this.I;
        if (i5 < i6) {
            this.f2507y = i6;
        }
    }

    public void setHorizontalDimensionBehaviour(DimensionBehaviour dimensionBehaviour) {
        this.mListDimensionBehaviors[0] = dimensionBehaviour;
    }

    public void setHorizontalMatchStyle(int i2, int i4, int i5, float f4) {
        this.mMatchConstraintDefaultWidth = i2;
        this.mMatchConstraintMinWidth = i4;
        if (i5 == Integer.MAX_VALUE) {
            i5 = 0;
        }
        this.mMatchConstraintMaxWidth = i5;
        this.mMatchConstraintPercentWidth = f4;
        if (f4 <= 0.0f || f4 >= 1.0f || i2 != 0) {
            return;
        }
        this.mMatchConstraintDefaultWidth = 2;
    }

    public void setHorizontalWeight(float f4) {
        this.mWeight[0] = f4;
    }

    public void setInPlaceholder(boolean z3) {
        this.f2499q = z3;
    }

    public void setInVirtualLayout(boolean z3) {
        this.f2500r = z3;
    }

    public void setLastMeasureSpec(int i2, int i4) {
        this.f2501s = i2;
        this.f2502t = i4;
        setMeasureRequested(false);
    }

    public void setLength(int i2, int i4) {
        if (i4 == 0) {
            setWidth(i2);
        } else if (i4 == 1) {
            setHeight(i2);
        }
    }

    public void setMaxHeight(int i2) {
        this.f2496n[1] = i2;
    }

    public void setMaxWidth(int i2) {
        this.f2496n[0] = i2;
    }

    public void setMeasureRequested(boolean z3) {
        this.f2474b = z3;
    }

    public void setMinHeight(int i2) {
        if (i2 < 0) {
            this.J = 0;
        } else {
            this.J = i2;
        }
    }

    public void setMinWidth(int i2) {
        if (i2 < 0) {
            this.I = 0;
        } else {
            this.I = i2;
        }
    }

    public void setOffset(int i2, int i4) {
        this.F = i2;
        this.G = i4;
    }

    public void setOrigin(int i2, int i4) {
        this.B = i2;
        this.C = i4;
    }

    public void setParent(ConstraintWidget constraintWidget) {
        this.mParent = constraintWidget;
    }

    public void setType(String str) {
        this.R = str;
    }

    public void setVerticalBiasPercent(float f4) {
        this.L = f4;
    }

    public void setVerticalChainStyle(int i2) {
        this.f2481e0 = i2;
    }

    public void setVerticalDimension(int i2, int i4) {
        this.C = i2;
        int i5 = i4 - i2;
        this.f2508z = i5;
        int i6 = this.J;
        if (i5 < i6) {
            this.f2508z = i6;
        }
    }

    public void setVerticalDimensionBehaviour(DimensionBehaviour dimensionBehaviour) {
        this.mListDimensionBehaviors[1] = dimensionBehaviour;
    }

    public void setVerticalMatchStyle(int i2, int i4, int i5, float f4) {
        this.mMatchConstraintDefaultHeight = i2;
        this.mMatchConstraintMinHeight = i4;
        if (i5 == Integer.MAX_VALUE) {
            i5 = 0;
        }
        this.mMatchConstraintMaxHeight = i5;
        this.mMatchConstraintPercentHeight = f4;
        if (f4 <= 0.0f || f4 >= 1.0f || i2 != 0) {
            return;
        }
        this.mMatchConstraintDefaultHeight = 2;
    }

    public void setVerticalWeight(float f4) {
        this.mWeight[1] = f4;
    }

    public void setVisibility(int i2) {
        this.O = i2;
    }

    public void setWidth(int i2) {
        this.f2507y = i2;
        int i4 = this.I;
        if (i2 < i4) {
            this.f2507y = i4;
        }
    }

    public void setWidthWrapContent(boolean z3) {
        this.mIsWidthWrapContent = z3;
    }

    public void setWrapBehaviorInParent(int i2) {
        if (i2 < 0 || i2 > 3) {
            return;
        }
        this.f2492k = i2;
    }

    public void setX(int i2) {
        this.B = i2;
    }

    public void setY(int i2) {
        this.C = i2;
    }

    public void setupDimensionRatio(boolean z3, boolean z4, boolean z5, boolean z6) {
        if (this.f2494l == -1) {
            if (z5 && !z6) {
                this.f2494l = 0;
            } else if (!z5 && z6) {
                this.f2494l = 1;
                if (this.A == -1) {
                    this.f2495m = 1.0f / this.f2495m;
                }
            }
        }
        if (this.f2494l == 0 && (!this.mTop.isConnected() || !this.mBottom.isConnected())) {
            this.f2494l = 1;
        } else if (this.f2494l == 1 && (!this.mLeft.isConnected() || !this.mRight.isConnected())) {
            this.f2494l = 0;
        }
        if (this.f2494l == -1 && (!this.mTop.isConnected() || !this.mBottom.isConnected() || !this.mLeft.isConnected() || !this.mRight.isConnected())) {
            if (this.mTop.isConnected() && this.mBottom.isConnected()) {
                this.f2494l = 0;
            } else if (this.mLeft.isConnected() && this.mRight.isConnected()) {
                this.f2495m = 1.0f / this.f2495m;
                this.f2494l = 1;
            }
        }
        if (this.f2494l == -1) {
            int i2 = this.mMatchConstraintMinWidth;
            if (i2 > 0 && this.mMatchConstraintMinHeight == 0) {
                this.f2494l = 0;
            } else if (i2 != 0 || this.mMatchConstraintMinHeight <= 0) {
            } else {
                this.f2495m = 1.0f / this.f2495m;
                this.f2494l = 1;
            }
        }
    }

    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        String str2 = "";
        if (this.R != null) {
            str = "type: " + this.R + " ";
        } else {
            str = "";
        }
        sb.append(str);
        if (this.Q != null) {
            str2 = "id: " + this.Q + " ";
        }
        sb.append(str2);
        sb.append("(");
        sb.append(this.B);
        sb.append(", ");
        sb.append(this.C);
        sb.append(") - (");
        sb.append(this.f2507y);
        sb.append(" x ");
        sb.append(this.f2508z);
        sb.append(")");
        return sb.toString();
    }

    public void updateFromRuns(boolean z3, boolean z4) {
        int i2;
        int i4;
        boolean isResolved = z3 & this.horizontalRun.isResolved();
        boolean isResolved2 = z4 & this.verticalRun.isResolved();
        HorizontalWidgetRun horizontalWidgetRun = this.horizontalRun;
        int i5 = horizontalWidgetRun.start.value;
        VerticalWidgetRun verticalWidgetRun = this.verticalRun;
        int i6 = verticalWidgetRun.start.value;
        int i7 = horizontalWidgetRun.end.value;
        int i8 = verticalWidgetRun.end.value;
        int i9 = i8 - i6;
        if (i7 - i5 < 0 || i9 < 0 || i5 == Integer.MIN_VALUE || i5 == Integer.MAX_VALUE || i6 == Integer.MIN_VALUE || i6 == Integer.MAX_VALUE || i7 == Integer.MIN_VALUE || i7 == Integer.MAX_VALUE || i8 == Integer.MIN_VALUE || i8 == Integer.MAX_VALUE) {
            i7 = 0;
            i5 = 0;
            i8 = 0;
            i6 = 0;
        }
        int i10 = i7 - i5;
        int i11 = i8 - i6;
        if (isResolved) {
            this.B = i5;
        }
        if (isResolved2) {
            this.C = i6;
        }
        if (this.O == 8) {
            this.f2507y = 0;
            this.f2508z = 0;
            return;
        }
        if (isResolved) {
            if (this.mListDimensionBehaviors[0] == DimensionBehaviour.FIXED && i10 < (i4 = this.f2507y)) {
                i10 = i4;
            }
            this.f2507y = i10;
            int i12 = this.I;
            if (i10 < i12) {
                this.f2507y = i12;
            }
        }
        if (isResolved2) {
            if (this.mListDimensionBehaviors[1] == DimensionBehaviour.FIXED && i11 < (i2 = this.f2508z)) {
                i11 = i2;
            }
            this.f2508z = i11;
            int i13 = this.J;
            if (i11 < i13) {
                this.f2508z = i13;
            }
        }
    }

    public void updateFromSolver(LinearSystem linearSystem, boolean z3) {
        VerticalWidgetRun verticalWidgetRun;
        HorizontalWidgetRun horizontalWidgetRun;
        int objectVariableValue = linearSystem.getObjectVariableValue(this.mLeft);
        int objectVariableValue2 = linearSystem.getObjectVariableValue(this.mTop);
        int objectVariableValue3 = linearSystem.getObjectVariableValue(this.mRight);
        int objectVariableValue4 = linearSystem.getObjectVariableValue(this.mBottom);
        if (z3 && (horizontalWidgetRun = this.horizontalRun) != null) {
            DependencyNode dependencyNode = horizontalWidgetRun.start;
            if (dependencyNode.resolved) {
                DependencyNode dependencyNode2 = horizontalWidgetRun.end;
                if (dependencyNode2.resolved) {
                    objectVariableValue = dependencyNode.value;
                    objectVariableValue3 = dependencyNode2.value;
                }
            }
        }
        if (z3 && (verticalWidgetRun = this.verticalRun) != null) {
            DependencyNode dependencyNode3 = verticalWidgetRun.start;
            if (dependencyNode3.resolved) {
                DependencyNode dependencyNode4 = verticalWidgetRun.end;
                if (dependencyNode4.resolved) {
                    objectVariableValue2 = dependencyNode3.value;
                    objectVariableValue4 = dependencyNode4.value;
                }
            }
        }
        int i2 = objectVariableValue4 - objectVariableValue2;
        if (objectVariableValue3 - objectVariableValue < 0 || i2 < 0 || objectVariableValue == Integer.MIN_VALUE || objectVariableValue == Integer.MAX_VALUE || objectVariableValue2 == Integer.MIN_VALUE || objectVariableValue2 == Integer.MAX_VALUE || objectVariableValue3 == Integer.MIN_VALUE || objectVariableValue3 == Integer.MAX_VALUE || objectVariableValue4 == Integer.MIN_VALUE || objectVariableValue4 == Integer.MAX_VALUE) {
            objectVariableValue4 = 0;
            objectVariableValue = 0;
            objectVariableValue2 = 0;
            objectVariableValue3 = 0;
        }
        setFrame(objectVariableValue, objectVariableValue2, objectVariableValue3, objectVariableValue4);
    }

    public void connect(ConstraintAnchor.Type type, ConstraintWidget constraintWidget, ConstraintAnchor.Type type2) {
        connect(type, constraintWidget, type2, 0);
    }

    public void connect(ConstraintAnchor.Type type, ConstraintWidget constraintWidget, ConstraintAnchor.Type type2, int i2) {
        ConstraintAnchor.Type type3;
        ConstraintAnchor.Type type4;
        boolean z3;
        ConstraintAnchor.Type type5 = ConstraintAnchor.Type.CENTER;
        if (type == type5) {
            if (type2 == type5) {
                ConstraintAnchor.Type type6 = ConstraintAnchor.Type.LEFT;
                ConstraintAnchor anchor = getAnchor(type6);
                ConstraintAnchor.Type type7 = ConstraintAnchor.Type.RIGHT;
                ConstraintAnchor anchor2 = getAnchor(type7);
                ConstraintAnchor.Type type8 = ConstraintAnchor.Type.TOP;
                ConstraintAnchor anchor3 = getAnchor(type8);
                ConstraintAnchor.Type type9 = ConstraintAnchor.Type.BOTTOM;
                ConstraintAnchor anchor4 = getAnchor(type9);
                boolean z4 = true;
                if ((anchor == null || !anchor.isConnected()) && (anchor2 == null || !anchor2.isConnected())) {
                    connect(type6, constraintWidget, type6, 0);
                    connect(type7, constraintWidget, type7, 0);
                    z3 = true;
                } else {
                    z3 = false;
                }
                if ((anchor3 == null || !anchor3.isConnected()) && (anchor4 == null || !anchor4.isConnected())) {
                    connect(type8, constraintWidget, type8, 0);
                    connect(type9, constraintWidget, type9, 0);
                } else {
                    z4 = false;
                }
                if (z3 && z4) {
                    getAnchor(type5).connect(constraintWidget.getAnchor(type5), 0);
                    return;
                } else if (z3) {
                    ConstraintAnchor.Type type10 = ConstraintAnchor.Type.CENTER_X;
                    getAnchor(type10).connect(constraintWidget.getAnchor(type10), 0);
                    return;
                } else if (z4) {
                    ConstraintAnchor.Type type11 = ConstraintAnchor.Type.CENTER_Y;
                    getAnchor(type11).connect(constraintWidget.getAnchor(type11), 0);
                    return;
                } else {
                    return;
                }
            }
            ConstraintAnchor.Type type12 = ConstraintAnchor.Type.LEFT;
            if (type2 != type12 && type2 != ConstraintAnchor.Type.RIGHT) {
                ConstraintAnchor.Type type13 = ConstraintAnchor.Type.TOP;
                if (type2 == type13 || type2 == ConstraintAnchor.Type.BOTTOM) {
                    connect(type13, constraintWidget, type2, 0);
                    connect(ConstraintAnchor.Type.BOTTOM, constraintWidget, type2, 0);
                    getAnchor(type5).connect(constraintWidget.getAnchor(type2), 0);
                    return;
                }
                return;
            }
            connect(type12, constraintWidget, type2, 0);
            connect(ConstraintAnchor.Type.RIGHT, constraintWidget, type2, 0);
            getAnchor(type5).connect(constraintWidget.getAnchor(type2), 0);
            return;
        }
        ConstraintAnchor.Type type14 = ConstraintAnchor.Type.CENTER_X;
        if (type == type14 && (type2 == (type4 = ConstraintAnchor.Type.LEFT) || type2 == ConstraintAnchor.Type.RIGHT)) {
            ConstraintAnchor anchor5 = getAnchor(type4);
            ConstraintAnchor anchor6 = constraintWidget.getAnchor(type2);
            ConstraintAnchor anchor7 = getAnchor(ConstraintAnchor.Type.RIGHT);
            anchor5.connect(anchor6, 0);
            anchor7.connect(anchor6, 0);
            getAnchor(type14).connect(anchor6, 0);
            return;
        }
        ConstraintAnchor.Type type15 = ConstraintAnchor.Type.CENTER_Y;
        if (type == type15 && (type2 == (type3 = ConstraintAnchor.Type.TOP) || type2 == ConstraintAnchor.Type.BOTTOM)) {
            ConstraintAnchor anchor8 = constraintWidget.getAnchor(type2);
            getAnchor(type3).connect(anchor8, 0);
            getAnchor(ConstraintAnchor.Type.BOTTOM).connect(anchor8, 0);
            getAnchor(type15).connect(anchor8, 0);
        } else if (type == type14 && type2 == type14) {
            ConstraintAnchor.Type type16 = ConstraintAnchor.Type.LEFT;
            getAnchor(type16).connect(constraintWidget.getAnchor(type16), 0);
            ConstraintAnchor.Type type17 = ConstraintAnchor.Type.RIGHT;
            getAnchor(type17).connect(constraintWidget.getAnchor(type17), 0);
            getAnchor(type14).connect(constraintWidget.getAnchor(type2), 0);
        } else if (type == type15 && type2 == type15) {
            ConstraintAnchor.Type type18 = ConstraintAnchor.Type.TOP;
            getAnchor(type18).connect(constraintWidget.getAnchor(type18), 0);
            ConstraintAnchor.Type type19 = ConstraintAnchor.Type.BOTTOM;
            getAnchor(type19).connect(constraintWidget.getAnchor(type19), 0);
            getAnchor(type15).connect(constraintWidget.getAnchor(type2), 0);
        } else {
            ConstraintAnchor anchor9 = getAnchor(type);
            ConstraintAnchor anchor10 = constraintWidget.getAnchor(type2);
            if (anchor9.isValidConnection(anchor10)) {
                ConstraintAnchor.Type type20 = ConstraintAnchor.Type.BASELINE;
                if (type == type20) {
                    ConstraintAnchor anchor11 = getAnchor(ConstraintAnchor.Type.TOP);
                    ConstraintAnchor anchor12 = getAnchor(ConstraintAnchor.Type.BOTTOM);
                    if (anchor11 != null) {
                        anchor11.reset();
                    }
                    if (anchor12 != null) {
                        anchor12.reset();
                    }
                } else if (type != ConstraintAnchor.Type.TOP && type != ConstraintAnchor.Type.BOTTOM) {
                    if (type == ConstraintAnchor.Type.LEFT || type == ConstraintAnchor.Type.RIGHT) {
                        ConstraintAnchor anchor13 = getAnchor(type5);
                        if (anchor13.getTarget() != anchor10) {
                            anchor13.reset();
                        }
                        ConstraintAnchor opposite = getAnchor(type).getOpposite();
                        ConstraintAnchor anchor14 = getAnchor(type14);
                        if (anchor14.isConnected()) {
                            opposite.reset();
                            anchor14.reset();
                        }
                    }
                } else {
                    ConstraintAnchor anchor15 = getAnchor(type20);
                    if (anchor15 != null) {
                        anchor15.reset();
                    }
                    ConstraintAnchor anchor16 = getAnchor(type5);
                    if (anchor16.getTarget() != anchor10) {
                        anchor16.reset();
                    }
                    ConstraintAnchor opposite2 = getAnchor(type).getOpposite();
                    ConstraintAnchor anchor17 = getAnchor(type15);
                    if (anchor17.isConnected()) {
                        opposite2.reset();
                        anchor17.reset();
                    }
                }
                anchor9.connect(anchor10, i2);
            }
        }
    }

    public void setDimensionRatio(float f4, int i2) {
        this.mDimensionRatio = f4;
        this.A = i2;
    }

    public void setFrame(int i2, int i4, int i5) {
        if (i5 == 0) {
            setHorizontalDimension(i2, i4);
        } else if (i5 == 1) {
            setVerticalDimension(i2, i4);
        }
    }

    public ConstraintWidget(String str) {
        this.measured = false;
        this.run = new WidgetRun[2];
        this.horizontalRun = null;
        this.verticalRun = null;
        this.isTerminalWidget = new boolean[]{true, true};
        this.f2472a = false;
        this.f2474b = true;
        this.f2476c = false;
        this.f2478d = true;
        this.f2480e = -1;
        this.f2482f = -1;
        this.frame = new WidgetFrame(this);
        this.f2484g = false;
        this.f2486h = false;
        this.f2488i = false;
        this.f2490j = false;
        this.mHorizontalResolution = -1;
        this.mVerticalResolution = -1;
        this.f2492k = 0;
        this.mMatchConstraintDefaultWidth = 0;
        this.mMatchConstraintDefaultHeight = 0;
        this.mResolvedMatchConstraintDefault = new int[2];
        this.mMatchConstraintMinWidth = 0;
        this.mMatchConstraintMaxWidth = 0;
        this.mMatchConstraintPercentWidth = 1.0f;
        this.mMatchConstraintMinHeight = 0;
        this.mMatchConstraintMaxHeight = 0;
        this.mMatchConstraintPercentHeight = 1.0f;
        this.f2494l = -1;
        this.f2495m = 1.0f;
        this.f2496n = new int[]{Integer.MAX_VALUE, Integer.MAX_VALUE};
        this.f2497o = 0.0f;
        this.f2498p = false;
        this.f2500r = false;
        this.f2501s = 0;
        this.f2502t = 0;
        this.mLeft = new ConstraintAnchor(this, ConstraintAnchor.Type.LEFT);
        this.mTop = new ConstraintAnchor(this, ConstraintAnchor.Type.TOP);
        this.mRight = new ConstraintAnchor(this, ConstraintAnchor.Type.RIGHT);
        this.mBottom = new ConstraintAnchor(this, ConstraintAnchor.Type.BOTTOM);
        this.mBaseline = new ConstraintAnchor(this, ConstraintAnchor.Type.BASELINE);
        this.f2503u = new ConstraintAnchor(this, ConstraintAnchor.Type.CENTER_X);
        this.f2504v = new ConstraintAnchor(this, ConstraintAnchor.Type.CENTER_Y);
        ConstraintAnchor constraintAnchor = new ConstraintAnchor(this, ConstraintAnchor.Type.CENTER);
        this.mCenter = constraintAnchor;
        this.mListAnchors = new ConstraintAnchor[]{this.mLeft, this.mRight, this.mTop, this.mBottom, this.mBaseline, constraintAnchor};
        this.f2505w = new ArrayList<>();
        this.f2506x = new boolean[2];
        DimensionBehaviour dimensionBehaviour = DimensionBehaviour.FIXED;
        this.mListDimensionBehaviors = new DimensionBehaviour[]{dimensionBehaviour, dimensionBehaviour};
        this.mParent = null;
        this.f2507y = 0;
        this.f2508z = 0;
        this.mDimensionRatio = 0.0f;
        this.A = -1;
        this.B = 0;
        this.C = 0;
        this.D = 0;
        this.E = 0;
        this.F = 0;
        this.G = 0;
        this.H = 0;
        float f4 = DEFAULT_BIAS;
        this.K = f4;
        this.L = f4;
        this.N = 0;
        this.O = 0;
        this.P = false;
        this.Q = null;
        this.R = null;
        this.f2477c0 = false;
        this.f2479d0 = 0;
        this.f2481e0 = 0;
        this.mWeight = new float[]{-1.0f, -1.0f};
        this.f2487h0 = new ConstraintWidget[]{null, null};
        this.f2489i0 = new ConstraintWidget[]{null, null};
        this.f2491j0 = null;
        this.f2493k0 = null;
        this.horizontalGroup = -1;
        this.verticalGroup = -1;
        a();
        setDebugName(str);
    }

    public ConstraintWidget(int i2, int i4, int i5, int i6) {
        this.measured = false;
        this.run = new WidgetRun[2];
        this.horizontalRun = null;
        this.verticalRun = null;
        this.isTerminalWidget = new boolean[]{true, true};
        this.f2472a = false;
        this.f2474b = true;
        this.f2476c = false;
        this.f2478d = true;
        this.f2480e = -1;
        this.f2482f = -1;
        this.frame = new WidgetFrame(this);
        this.f2484g = false;
        this.f2486h = false;
        this.f2488i = false;
        this.f2490j = false;
        this.mHorizontalResolution = -1;
        this.mVerticalResolution = -1;
        this.f2492k = 0;
        this.mMatchConstraintDefaultWidth = 0;
        this.mMatchConstraintDefaultHeight = 0;
        this.mResolvedMatchConstraintDefault = new int[2];
        this.mMatchConstraintMinWidth = 0;
        this.mMatchConstraintMaxWidth = 0;
        this.mMatchConstraintPercentWidth = 1.0f;
        this.mMatchConstraintMinHeight = 0;
        this.mMatchConstraintMaxHeight = 0;
        this.mMatchConstraintPercentHeight = 1.0f;
        this.f2494l = -1;
        this.f2495m = 1.0f;
        this.f2496n = new int[]{Integer.MAX_VALUE, Integer.MAX_VALUE};
        this.f2497o = 0.0f;
        this.f2498p = false;
        this.f2500r = false;
        this.f2501s = 0;
        this.f2502t = 0;
        this.mLeft = new ConstraintAnchor(this, ConstraintAnchor.Type.LEFT);
        this.mTop = new ConstraintAnchor(this, ConstraintAnchor.Type.TOP);
        this.mRight = new ConstraintAnchor(this, ConstraintAnchor.Type.RIGHT);
        this.mBottom = new ConstraintAnchor(this, ConstraintAnchor.Type.BOTTOM);
        this.mBaseline = new ConstraintAnchor(this, ConstraintAnchor.Type.BASELINE);
        this.f2503u = new ConstraintAnchor(this, ConstraintAnchor.Type.CENTER_X);
        this.f2504v = new ConstraintAnchor(this, ConstraintAnchor.Type.CENTER_Y);
        ConstraintAnchor constraintAnchor = new ConstraintAnchor(this, ConstraintAnchor.Type.CENTER);
        this.mCenter = constraintAnchor;
        this.mListAnchors = new ConstraintAnchor[]{this.mLeft, this.mRight, this.mTop, this.mBottom, this.mBaseline, constraintAnchor};
        this.f2505w = new ArrayList<>();
        this.f2506x = new boolean[2];
        DimensionBehaviour dimensionBehaviour = DimensionBehaviour.FIXED;
        this.mListDimensionBehaviors = new DimensionBehaviour[]{dimensionBehaviour, dimensionBehaviour};
        this.mParent = null;
        this.f2507y = 0;
        this.f2508z = 0;
        this.mDimensionRatio = 0.0f;
        this.A = -1;
        this.B = 0;
        this.C = 0;
        this.D = 0;
        this.E = 0;
        this.F = 0;
        this.G = 0;
        this.H = 0;
        float f4 = DEFAULT_BIAS;
        this.K = f4;
        this.L = f4;
        this.N = 0;
        this.O = 0;
        this.P = false;
        this.Q = null;
        this.R = null;
        this.f2477c0 = false;
        this.f2479d0 = 0;
        this.f2481e0 = 0;
        this.mWeight = new float[]{-1.0f, -1.0f};
        this.f2487h0 = new ConstraintWidget[]{null, null};
        this.f2489i0 = new ConstraintWidget[]{null, null};
        this.f2491j0 = null;
        this.f2493k0 = null;
        this.horizontalGroup = -1;
        this.verticalGroup = -1;
        this.B = i2;
        this.C = i4;
        this.f2507y = i5;
        this.f2508z = i6;
        a();
    }

    public ConstraintWidget(String str, int i2, int i4, int i5, int i6) {
        this(i2, i4, i5, i6);
        setDebugName(str);
    }

    public ConstraintWidget(int i2, int i4) {
        this(0, 0, i2, i4);
    }

    public ConstraintWidget(String str, int i2, int i4) {
        this(i2, i4);
        setDebugName(str);
    }
}
