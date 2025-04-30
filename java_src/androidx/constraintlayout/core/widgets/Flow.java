package androidx.constraintlayout.core.widgets;

import androidx.constraintlayout.core.LinearSystem;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import java.util.ArrayList;
import java.util.HashMap;
/* loaded from: classes.dex */
public class Flow extends VirtualLayout {
    public static final int HORIZONTAL_ALIGN_CENTER = 2;
    public static final int HORIZONTAL_ALIGN_END = 1;
    public static final int HORIZONTAL_ALIGN_START = 0;
    public static final int VERTICAL_ALIGN_BASELINE = 3;
    public static final int VERTICAL_ALIGN_BOTTOM = 1;
    public static final int VERTICAL_ALIGN_CENTER = 2;
    public static final int VERTICAL_ALIGN_TOP = 0;
    public static final int WRAP_ALIGNED = 2;
    public static final int WRAP_CHAIN = 1;
    public static final int WRAP_CHAIN_NEW = 3;
    public static final int WRAP_NONE = 0;

    /* renamed from: c1  reason: collision with root package name */
    private ConstraintWidget[] f2521c1;
    private int F0 = -1;
    private int G0 = -1;
    private int H0 = -1;
    private int I0 = -1;
    private int J0 = -1;
    private int K0 = -1;
    private float L0 = 0.5f;
    private float M0 = 0.5f;
    private float N0 = 0.5f;
    private float O0 = 0.5f;
    private float P0 = 0.5f;
    private float Q0 = 0.5f;
    private int R0 = 0;
    private int S0 = 0;
    private int T0 = 2;
    private int U0 = 2;
    private int V0 = 0;
    private int W0 = -1;
    private int X0 = 0;
    private ArrayList<WidgetsList> Y0 = new ArrayList<>();
    private ConstraintWidget[] Z0 = null;

    /* renamed from: a1  reason: collision with root package name */
    private ConstraintWidget[] f2519a1 = null;

    /* renamed from: b1  reason: collision with root package name */
    private int[] f2520b1 = null;

    /* renamed from: d1  reason: collision with root package name */
    private int f2522d1 = 0;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class WidgetsList {

        /* renamed from: a  reason: collision with root package name */
        private int f2523a;

        /* renamed from: d  reason: collision with root package name */
        private ConstraintAnchor f2526d;

        /* renamed from: e  reason: collision with root package name */
        private ConstraintAnchor f2527e;

        /* renamed from: f  reason: collision with root package name */
        private ConstraintAnchor f2528f;

        /* renamed from: g  reason: collision with root package name */
        private ConstraintAnchor f2529g;

        /* renamed from: h  reason: collision with root package name */
        private int f2530h;

        /* renamed from: i  reason: collision with root package name */
        private int f2531i;

        /* renamed from: j  reason: collision with root package name */
        private int f2532j;

        /* renamed from: k  reason: collision with root package name */
        private int f2533k;

        /* renamed from: q  reason: collision with root package name */
        private int f2539q;

        /* renamed from: b  reason: collision with root package name */
        private ConstraintWidget f2524b = null;

        /* renamed from: c  reason: collision with root package name */
        int f2525c = 0;

        /* renamed from: l  reason: collision with root package name */
        private int f2534l = 0;

        /* renamed from: m  reason: collision with root package name */
        private int f2535m = 0;

        /* renamed from: n  reason: collision with root package name */
        private int f2536n = 0;

        /* renamed from: o  reason: collision with root package name */
        private int f2537o = 0;

        /* renamed from: p  reason: collision with root package name */
        private int f2538p = 0;

        public WidgetsList(int i2, ConstraintAnchor constraintAnchor, ConstraintAnchor constraintAnchor2, ConstraintAnchor constraintAnchor3, ConstraintAnchor constraintAnchor4, int i4) {
            this.f2523a = 0;
            this.f2530h = 0;
            this.f2531i = 0;
            this.f2532j = 0;
            this.f2533k = 0;
            this.f2539q = 0;
            this.f2523a = i2;
            this.f2526d = constraintAnchor;
            this.f2527e = constraintAnchor2;
            this.f2528f = constraintAnchor3;
            this.f2529g = constraintAnchor4;
            this.f2530h = Flow.this.getPaddingLeft();
            this.f2531i = Flow.this.getPaddingTop();
            this.f2532j = Flow.this.getPaddingRight();
            this.f2533k = Flow.this.getPaddingBottom();
            this.f2539q = i4;
        }

        private void b() {
            this.f2534l = 0;
            this.f2535m = 0;
            this.f2524b = null;
            this.f2525c = 0;
            int i2 = this.f2537o;
            for (int i4 = 0; i4 < i2 && this.f2536n + i4 < Flow.this.f2522d1; i4++) {
                ConstraintWidget constraintWidget = Flow.this.f2521c1[this.f2536n + i4];
                if (this.f2523a != 0) {
                    int Q = Flow.this.Q(constraintWidget, this.f2539q);
                    int P = Flow.this.P(constraintWidget, this.f2539q);
                    int i5 = Flow.this.S0;
                    if (constraintWidget.getVisibility() == 8) {
                        i5 = 0;
                    }
                    this.f2535m += P + i5;
                    if (this.f2524b == null || this.f2525c < Q) {
                        this.f2524b = constraintWidget;
                        this.f2525c = Q;
                        this.f2534l = Q;
                    }
                } else {
                    int width = constraintWidget.getWidth();
                    int i6 = Flow.this.R0;
                    if (constraintWidget.getVisibility() == 8) {
                        i6 = 0;
                    }
                    this.f2534l += width + i6;
                    int P2 = Flow.this.P(constraintWidget, this.f2539q);
                    if (this.f2524b == null || this.f2525c < P2) {
                        this.f2524b = constraintWidget;
                        this.f2525c = P2;
                        this.f2535m = P2;
                    }
                }
            }
        }

        public void add(ConstraintWidget constraintWidget) {
            if (this.f2523a == 0) {
                int Q = Flow.this.Q(constraintWidget, this.f2539q);
                if (constraintWidget.getHorizontalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                    this.f2538p++;
                    Q = 0;
                }
                this.f2534l += Q + (constraintWidget.getVisibility() != 8 ? Flow.this.R0 : 0);
                int P = Flow.this.P(constraintWidget, this.f2539q);
                if (this.f2524b == null || this.f2525c < P) {
                    this.f2524b = constraintWidget;
                    this.f2525c = P;
                    this.f2535m = P;
                }
            } else {
                int Q2 = Flow.this.Q(constraintWidget, this.f2539q);
                int P2 = Flow.this.P(constraintWidget, this.f2539q);
                if (constraintWidget.getVerticalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                    this.f2538p++;
                    P2 = 0;
                }
                this.f2535m += P2 + (constraintWidget.getVisibility() != 8 ? Flow.this.S0 : 0);
                if (this.f2524b == null || this.f2525c < Q2) {
                    this.f2524b = constraintWidget;
                    this.f2525c = Q2;
                    this.f2534l = Q2;
                }
            }
            this.f2537o++;
        }

        public void clear() {
            this.f2525c = 0;
            this.f2524b = null;
            this.f2534l = 0;
            this.f2535m = 0;
            this.f2536n = 0;
            this.f2537o = 0;
            this.f2538p = 0;
        }

        public void createConstraints(boolean z3, int i2, boolean z4) {
            ConstraintWidget constraintWidget;
            float f4;
            float f5;
            int i4 = this.f2537o;
            for (int i5 = 0; i5 < i4 && this.f2536n + i5 < Flow.this.f2522d1; i5++) {
                ConstraintWidget constraintWidget2 = Flow.this.f2521c1[this.f2536n + i5];
                if (constraintWidget2 != null) {
                    constraintWidget2.resetAnchors();
                }
            }
            if (i4 == 0 || this.f2524b == null) {
                return;
            }
            boolean z5 = z4 && i2 == 0;
            int i6 = -1;
            int i7 = -1;
            for (int i8 = 0; i8 < i4; i8++) {
                int i9 = z3 ? (i4 - 1) - i8 : i8;
                if (this.f2536n + i9 >= Flow.this.f2522d1) {
                    break;
                }
                ConstraintWidget constraintWidget3 = Flow.this.f2521c1[this.f2536n + i9];
                if (constraintWidget3 != null && constraintWidget3.getVisibility() == 0) {
                    if (i6 == -1) {
                        i6 = i8;
                    }
                    i7 = i8;
                }
            }
            ConstraintWidget constraintWidget4 = null;
            if (this.f2523a == 0) {
                ConstraintWidget constraintWidget5 = this.f2524b;
                constraintWidget5.setVerticalChainStyle(Flow.this.G0);
                int i10 = this.f2531i;
                if (i2 > 0) {
                    i10 += Flow.this.S0;
                }
                constraintWidget5.mTop.connect(this.f2527e, i10);
                if (z4) {
                    constraintWidget5.mBottom.connect(this.f2529g, this.f2533k);
                }
                if (i2 > 0) {
                    this.f2527e.mOwner.mBottom.connect(constraintWidget5.mTop, 0);
                }
                if (Flow.this.U0 == 3 && !constraintWidget5.hasBaseline()) {
                    for (int i11 = 0; i11 < i4; i11++) {
                        int i12 = z3 ? (i4 - 1) - i11 : i11;
                        if (this.f2536n + i12 >= Flow.this.f2522d1) {
                            break;
                        }
                        constraintWidget = Flow.this.f2521c1[this.f2536n + i12];
                        if (constraintWidget.hasBaseline()) {
                            break;
                        }
                    }
                }
                constraintWidget = constraintWidget5;
                int i13 = 0;
                while (i13 < i4) {
                    int i14 = z3 ? (i4 - 1) - i13 : i13;
                    if (this.f2536n + i14 >= Flow.this.f2522d1) {
                        return;
                    }
                    ConstraintWidget constraintWidget6 = Flow.this.f2521c1[this.f2536n + i14];
                    if (constraintWidget6 == null) {
                        constraintWidget6 = constraintWidget4;
                    } else {
                        if (i13 == 0) {
                            constraintWidget6.connect(constraintWidget6.mLeft, this.f2526d, this.f2530h);
                        }
                        if (i14 == 0) {
                            int i15 = Flow.this.F0;
                            float f6 = Flow.this.L0;
                            if (z3) {
                                f6 = 1.0f - f6;
                            }
                            if (this.f2536n != 0 || Flow.this.H0 == -1) {
                                if (z4 && Flow.this.J0 != -1) {
                                    i15 = Flow.this.J0;
                                    if (z3) {
                                        f5 = Flow.this.P0;
                                        f4 = 1.0f - f5;
                                        f6 = f4;
                                    } else {
                                        f4 = Flow.this.P0;
                                        f6 = f4;
                                    }
                                }
                            } else {
                                i15 = Flow.this.H0;
                                if (z3) {
                                    f5 = Flow.this.N0;
                                    f4 = 1.0f - f5;
                                    f6 = f4;
                                } else {
                                    f4 = Flow.this.N0;
                                    f6 = f4;
                                }
                            }
                            constraintWidget6.setHorizontalChainStyle(i15);
                            constraintWidget6.setHorizontalBiasPercent(f6);
                        }
                        if (i13 == i4 - 1) {
                            constraintWidget6.connect(constraintWidget6.mRight, this.f2528f, this.f2532j);
                        }
                        if (constraintWidget4 != null) {
                            constraintWidget6.mLeft.connect(constraintWidget4.mRight, Flow.this.R0);
                            if (i13 == i6) {
                                constraintWidget6.mLeft.setGoneMargin(this.f2530h);
                            }
                            constraintWidget4.mRight.connect(constraintWidget6.mLeft, 0);
                            if (i13 == i7 + 1) {
                                constraintWidget4.mRight.setGoneMargin(this.f2532j);
                            }
                        }
                        if (constraintWidget6 != constraintWidget5) {
                            if (Flow.this.U0 != 3 || !constraintWidget.hasBaseline() || constraintWidget6 == constraintWidget || !constraintWidget6.hasBaseline()) {
                                int i16 = Flow.this.U0;
                                if (i16 == 0) {
                                    constraintWidget6.mTop.connect(constraintWidget5.mTop, 0);
                                } else if (i16 == 1) {
                                    constraintWidget6.mBottom.connect(constraintWidget5.mBottom, 0);
                                } else if (z5) {
                                    constraintWidget6.mTop.connect(this.f2527e, this.f2531i);
                                    constraintWidget6.mBottom.connect(this.f2529g, this.f2533k);
                                } else {
                                    constraintWidget6.mTop.connect(constraintWidget5.mTop, 0);
                                    constraintWidget6.mBottom.connect(constraintWidget5.mBottom, 0);
                                }
                            } else {
                                constraintWidget6.mBaseline.connect(constraintWidget.mBaseline, 0);
                            }
                            i13++;
                            constraintWidget4 = constraintWidget6;
                        }
                    }
                    i13++;
                    constraintWidget4 = constraintWidget6;
                }
                return;
            }
            ConstraintWidget constraintWidget7 = this.f2524b;
            constraintWidget7.setHorizontalChainStyle(Flow.this.F0);
            int i17 = this.f2530h;
            if (i2 > 0) {
                i17 += Flow.this.R0;
            }
            if (z3) {
                constraintWidget7.mRight.connect(this.f2528f, i17);
                if (z4) {
                    constraintWidget7.mLeft.connect(this.f2526d, this.f2532j);
                }
                if (i2 > 0) {
                    this.f2528f.mOwner.mLeft.connect(constraintWidget7.mRight, 0);
                }
            } else {
                constraintWidget7.mLeft.connect(this.f2526d, i17);
                if (z4) {
                    constraintWidget7.mRight.connect(this.f2528f, this.f2532j);
                }
                if (i2 > 0) {
                    this.f2526d.mOwner.mRight.connect(constraintWidget7.mLeft, 0);
                }
            }
            for (int i18 = 0; i18 < i4 && this.f2536n + i18 < Flow.this.f2522d1; i18++) {
                ConstraintWidget constraintWidget8 = Flow.this.f2521c1[this.f2536n + i18];
                if (constraintWidget8 != null) {
                    if (i18 == 0) {
                        constraintWidget8.connect(constraintWidget8.mTop, this.f2527e, this.f2531i);
                        int i19 = Flow.this.G0;
                        float f7 = Flow.this.M0;
                        if (this.f2536n != 0 || Flow.this.I0 == -1) {
                            if (z4 && Flow.this.K0 != -1) {
                                i19 = Flow.this.K0;
                                f7 = Flow.this.Q0;
                            }
                        } else {
                            i19 = Flow.this.I0;
                            f7 = Flow.this.O0;
                        }
                        constraintWidget8.setVerticalChainStyle(i19);
                        constraintWidget8.setVerticalBiasPercent(f7);
                    }
                    if (i18 == i4 - 1) {
                        constraintWidget8.connect(constraintWidget8.mBottom, this.f2529g, this.f2533k);
                    }
                    if (constraintWidget4 != null) {
                        constraintWidget8.mTop.connect(constraintWidget4.mBottom, Flow.this.S0);
                        if (i18 == i6) {
                            constraintWidget8.mTop.setGoneMargin(this.f2531i);
                        }
                        constraintWidget4.mBottom.connect(constraintWidget8.mTop, 0);
                        if (i18 == i7 + 1) {
                            constraintWidget4.mBottom.setGoneMargin(this.f2533k);
                        }
                    }
                    if (constraintWidget8 != constraintWidget7) {
                        if (z3) {
                            int i20 = Flow.this.T0;
                            if (i20 == 0) {
                                constraintWidget8.mRight.connect(constraintWidget7.mRight, 0);
                            } else if (i20 == 1) {
                                constraintWidget8.mLeft.connect(constraintWidget7.mLeft, 0);
                            } else if (i20 == 2) {
                                constraintWidget8.mLeft.connect(constraintWidget7.mLeft, 0);
                                constraintWidget8.mRight.connect(constraintWidget7.mRight, 0);
                            }
                        } else {
                            int i21 = Flow.this.T0;
                            if (i21 == 0) {
                                constraintWidget8.mLeft.connect(constraintWidget7.mLeft, 0);
                            } else if (i21 == 1) {
                                constraintWidget8.mRight.connect(constraintWidget7.mRight, 0);
                            } else if (i21 == 2) {
                                if (z5) {
                                    constraintWidget8.mLeft.connect(this.f2526d, this.f2530h);
                                    constraintWidget8.mRight.connect(this.f2528f, this.f2532j);
                                } else {
                                    constraintWidget8.mLeft.connect(constraintWidget7.mLeft, 0);
                                    constraintWidget8.mRight.connect(constraintWidget7.mRight, 0);
                                }
                            }
                            constraintWidget4 = constraintWidget8;
                        }
                    }
                    constraintWidget4 = constraintWidget8;
                }
            }
        }

        public int getHeight() {
            if (this.f2523a == 1) {
                return this.f2535m - Flow.this.S0;
            }
            return this.f2535m;
        }

        public int getWidth() {
            if (this.f2523a == 0) {
                return this.f2534l - Flow.this.R0;
            }
            return this.f2534l;
        }

        public void measureMatchConstraints(int i2) {
            int i4 = this.f2538p;
            if (i4 == 0) {
                return;
            }
            int i5 = this.f2537o;
            int i6 = i2 / i4;
            for (int i7 = 0; i7 < i5 && this.f2536n + i7 < Flow.this.f2522d1; i7++) {
                ConstraintWidget constraintWidget = Flow.this.f2521c1[this.f2536n + i7];
                if (this.f2523a == 0) {
                    if (constraintWidget != null && constraintWidget.getHorizontalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && constraintWidget.mMatchConstraintDefaultWidth == 0) {
                        Flow.this.r(constraintWidget, ConstraintWidget.DimensionBehaviour.FIXED, i6, constraintWidget.getVerticalDimensionBehaviour(), constraintWidget.getHeight());
                    }
                } else if (constraintWidget != null && constraintWidget.getVerticalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && constraintWidget.mMatchConstraintDefaultHeight == 0) {
                    Flow.this.r(constraintWidget, constraintWidget.getHorizontalDimensionBehaviour(), constraintWidget.getWidth(), ConstraintWidget.DimensionBehaviour.FIXED, i6);
                }
            }
            b();
        }

        public void setStartIndex(int i2) {
            this.f2536n = i2;
        }

        public void setup(int i2, ConstraintAnchor constraintAnchor, ConstraintAnchor constraintAnchor2, ConstraintAnchor constraintAnchor3, ConstraintAnchor constraintAnchor4, int i4, int i5, int i6, int i7, int i8) {
            this.f2523a = i2;
            this.f2526d = constraintAnchor;
            this.f2527e = constraintAnchor2;
            this.f2528f = constraintAnchor3;
            this.f2529g = constraintAnchor4;
            this.f2530h = i4;
            this.f2531i = i5;
            this.f2532j = i6;
            this.f2533k = i7;
            this.f2539q = i8;
        }
    }

    private void O(boolean z3) {
        ConstraintWidget constraintWidget;
        float f4;
        int i2;
        if (this.f2520b1 == null || this.f2519a1 == null || this.Z0 == null) {
            return;
        }
        for (int i4 = 0; i4 < this.f2522d1; i4++) {
            this.f2521c1[i4].resetAnchors();
        }
        int[] iArr = this.f2520b1;
        int i5 = iArr[0];
        int i6 = iArr[1];
        ConstraintWidget constraintWidget2 = null;
        float f5 = this.L0;
        int i7 = 0;
        while (i7 < i5) {
            if (z3) {
                i2 = (i5 - i7) - 1;
                f4 = 1.0f - this.L0;
            } else {
                f4 = f5;
                i2 = i7;
            }
            ConstraintWidget constraintWidget3 = this.f2519a1[i2];
            if (constraintWidget3 != null && constraintWidget3.getVisibility() != 8) {
                if (i7 == 0) {
                    constraintWidget3.connect(constraintWidget3.mLeft, this.mLeft, getPaddingLeft());
                    constraintWidget3.setHorizontalChainStyle(this.F0);
                    constraintWidget3.setHorizontalBiasPercent(f4);
                }
                if (i7 == i5 - 1) {
                    constraintWidget3.connect(constraintWidget3.mRight, this.mRight, getPaddingRight());
                }
                if (i7 > 0 && constraintWidget2 != null) {
                    constraintWidget3.connect(constraintWidget3.mLeft, constraintWidget2.mRight, this.R0);
                    constraintWidget2.connect(constraintWidget2.mRight, constraintWidget3.mLeft, 0);
                }
                constraintWidget2 = constraintWidget3;
            }
            i7++;
            f5 = f4;
        }
        for (int i8 = 0; i8 < i6; i8++) {
            ConstraintWidget constraintWidget4 = this.Z0[i8];
            if (constraintWidget4 != null && constraintWidget4.getVisibility() != 8) {
                if (i8 == 0) {
                    constraintWidget4.connect(constraintWidget4.mTop, this.mTop, getPaddingTop());
                    constraintWidget4.setVerticalChainStyle(this.G0);
                    constraintWidget4.setVerticalBiasPercent(this.M0);
                }
                if (i8 == i6 - 1) {
                    constraintWidget4.connect(constraintWidget4.mBottom, this.mBottom, getPaddingBottom());
                }
                if (i8 > 0 && constraintWidget2 != null) {
                    constraintWidget4.connect(constraintWidget4.mTop, constraintWidget2.mBottom, this.S0);
                    constraintWidget2.connect(constraintWidget2.mBottom, constraintWidget4.mTop, 0);
                }
                constraintWidget2 = constraintWidget4;
            }
        }
        for (int i9 = 0; i9 < i5; i9++) {
            for (int i10 = 0; i10 < i6; i10++) {
                int i11 = (i10 * i5) + i9;
                if (this.X0 == 1) {
                    i11 = (i9 * i6) + i10;
                }
                ConstraintWidget[] constraintWidgetArr = this.f2521c1;
                if (i11 < constraintWidgetArr.length && (constraintWidget = constraintWidgetArr[i11]) != null && constraintWidget.getVisibility() != 8) {
                    ConstraintWidget constraintWidget5 = this.f2519a1[i9];
                    ConstraintWidget constraintWidget6 = this.Z0[i10];
                    if (constraintWidget != constraintWidget5) {
                        constraintWidget.connect(constraintWidget.mLeft, constraintWidget5.mLeft, 0);
                        constraintWidget.connect(constraintWidget.mRight, constraintWidget5.mRight, 0);
                    }
                    if (constraintWidget != constraintWidget6) {
                        constraintWidget.connect(constraintWidget.mTop, constraintWidget6.mTop, 0);
                        constraintWidget.connect(constraintWidget.mBottom, constraintWidget6.mBottom, 0);
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int P(ConstraintWidget constraintWidget, int i2) {
        if (constraintWidget == null) {
            return 0;
        }
        if (constraintWidget.getVerticalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
            int i4 = constraintWidget.mMatchConstraintDefaultHeight;
            if (i4 == 0) {
                return 0;
            }
            if (i4 == 2) {
                int i5 = (int) (constraintWidget.mMatchConstraintPercentHeight * i2);
                if (i5 != constraintWidget.getHeight()) {
                    constraintWidget.setMeasureRequested(true);
                    r(constraintWidget, constraintWidget.getHorizontalDimensionBehaviour(), constraintWidget.getWidth(), ConstraintWidget.DimensionBehaviour.FIXED, i5);
                }
                return i5;
            } else if (i4 == 1) {
                return constraintWidget.getHeight();
            } else {
                if (i4 == 3) {
                    return (int) ((constraintWidget.getWidth() * constraintWidget.mDimensionRatio) + 0.5f);
                }
            }
        }
        return constraintWidget.getHeight();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int Q(ConstraintWidget constraintWidget, int i2) {
        if (constraintWidget == null) {
            return 0;
        }
        if (constraintWidget.getHorizontalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
            int i4 = constraintWidget.mMatchConstraintDefaultWidth;
            if (i4 == 0) {
                return 0;
            }
            if (i4 == 2) {
                int i5 = (int) (constraintWidget.mMatchConstraintPercentWidth * i2);
                if (i5 != constraintWidget.getWidth()) {
                    constraintWidget.setMeasureRequested(true);
                    r(constraintWidget, ConstraintWidget.DimensionBehaviour.FIXED, i5, constraintWidget.getVerticalDimensionBehaviour(), constraintWidget.getHeight());
                }
                return i5;
            } else if (i4 == 1) {
                return constraintWidget.getWidth();
            } else {
                if (i4 == 3) {
                    return (int) ((constraintWidget.getHeight() * constraintWidget.mDimensionRatio) + 0.5f);
                }
            }
        }
        return constraintWidget.getWidth();
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x0068  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:105:0x011b -> B:42:0x0063). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:106:0x011d -> B:42:0x0063). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:108:0x0123 -> B:42:0x0063). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:109:0x0125 -> B:42:0x0063). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void R(androidx.constraintlayout.core.widgets.ConstraintWidget[] r17, int r18, int r19, int r20, int[] r21) {
        /*
            Method dump skipped, instructions count: 306
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.core.widgets.Flow.R(androidx.constraintlayout.core.widgets.ConstraintWidget[], int, int, int, int[]):void");
    }

    private void S(ConstraintWidget[] constraintWidgetArr, int i2, int i4, int i5, int[] iArr) {
        int i6;
        int i7;
        int i8;
        ConstraintAnchor constraintAnchor;
        int paddingRight;
        ConstraintAnchor constraintAnchor2;
        int paddingBottom;
        int i9;
        if (i2 == 0) {
            return;
        }
        this.Y0.clear();
        WidgetsList widgetsList = new WidgetsList(i4, this.mLeft, this.mTop, this.mRight, this.mBottom, i5);
        this.Y0.add(widgetsList);
        if (i4 == 0) {
            i6 = 0;
            int i10 = 0;
            int i11 = 0;
            while (i11 < i2) {
                ConstraintWidget constraintWidget = constraintWidgetArr[i11];
                int Q = Q(constraintWidget, i5);
                if (constraintWidget.getHorizontalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                    i6++;
                }
                int i12 = i6;
                boolean z3 = (i10 == i5 || (this.R0 + i10) + Q > i5) && widgetsList.f2524b != null;
                if (!z3 && i11 > 0 && (i9 = this.W0) > 0 && i11 % i9 == 0) {
                    z3 = true;
                }
                if (z3) {
                    widgetsList = new WidgetsList(i4, this.mLeft, this.mTop, this.mRight, this.mBottom, i5);
                    widgetsList.setStartIndex(i11);
                    this.Y0.add(widgetsList);
                } else if (i11 > 0) {
                    i10 += this.R0 + Q;
                    widgetsList.add(constraintWidget);
                    i11++;
                    i6 = i12;
                }
                i10 = Q;
                widgetsList.add(constraintWidget);
                i11++;
                i6 = i12;
            }
        } else {
            i6 = 0;
            int i13 = 0;
            int i14 = 0;
            while (i14 < i2) {
                ConstraintWidget constraintWidget2 = constraintWidgetArr[i14];
                int P = P(constraintWidget2, i5);
                if (constraintWidget2.getVerticalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                    i6++;
                }
                int i15 = i6;
                boolean z4 = (i13 == i5 || (this.S0 + i13) + P > i5) && widgetsList.f2524b != null;
                if (!z4 && i14 > 0 && (i7 = this.W0) > 0 && i14 % i7 == 0) {
                    z4 = true;
                }
                if (z4) {
                    widgetsList = new WidgetsList(i4, this.mLeft, this.mTop, this.mRight, this.mBottom, i5);
                    widgetsList.setStartIndex(i14);
                    this.Y0.add(widgetsList);
                } else if (i14 > 0) {
                    i13 += this.S0 + P;
                    widgetsList.add(constraintWidget2);
                    i14++;
                    i6 = i15;
                }
                i13 = P;
                widgetsList.add(constraintWidget2);
                i14++;
                i6 = i15;
            }
        }
        int size = this.Y0.size();
        ConstraintAnchor constraintAnchor3 = this.mLeft;
        ConstraintAnchor constraintAnchor4 = this.mTop;
        ConstraintAnchor constraintAnchor5 = this.mRight;
        ConstraintAnchor constraintAnchor6 = this.mBottom;
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingRight2 = getPaddingRight();
        int paddingBottom2 = getPaddingBottom();
        ConstraintWidget.DimensionBehaviour horizontalDimensionBehaviour = getHorizontalDimensionBehaviour();
        ConstraintWidget.DimensionBehaviour dimensionBehaviour = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
        boolean z5 = horizontalDimensionBehaviour == dimensionBehaviour || getVerticalDimensionBehaviour() == dimensionBehaviour;
        if (i6 > 0 && z5) {
            for (int i16 = 0; i16 < size; i16++) {
                WidgetsList widgetsList2 = this.Y0.get(i16);
                if (i4 == 0) {
                    widgetsList2.measureMatchConstraints(i5 - widgetsList2.getWidth());
                } else {
                    widgetsList2.measureMatchConstraints(i5 - widgetsList2.getHeight());
                }
            }
        }
        int i17 = paddingTop;
        int i18 = paddingRight2;
        int i19 = 0;
        int i20 = 0;
        int i21 = 0;
        int i22 = paddingLeft;
        ConstraintAnchor constraintAnchor7 = constraintAnchor4;
        ConstraintAnchor constraintAnchor8 = constraintAnchor3;
        int i23 = paddingBottom2;
        while (i21 < size) {
            WidgetsList widgetsList3 = this.Y0.get(i21);
            if (i4 == 0) {
                if (i21 < size - 1) {
                    constraintAnchor2 = this.Y0.get(i21 + 1).f2524b.mTop;
                    paddingBottom = 0;
                } else {
                    constraintAnchor2 = this.mBottom;
                    paddingBottom = getPaddingBottom();
                }
                ConstraintAnchor constraintAnchor9 = widgetsList3.f2524b.mBottom;
                ConstraintAnchor constraintAnchor10 = constraintAnchor8;
                ConstraintAnchor constraintAnchor11 = constraintAnchor8;
                int i24 = i19;
                ConstraintAnchor constraintAnchor12 = constraintAnchor7;
                int i25 = i20;
                ConstraintAnchor constraintAnchor13 = constraintAnchor5;
                ConstraintAnchor constraintAnchor14 = constraintAnchor5;
                i8 = i21;
                widgetsList3.setup(i4, constraintAnchor10, constraintAnchor12, constraintAnchor13, constraintAnchor2, i22, i17, i18, paddingBottom, i5);
                int max = Math.max(i25, widgetsList3.getWidth());
                i19 = i24 + widgetsList3.getHeight();
                if (i8 > 0) {
                    i19 += this.S0;
                }
                constraintAnchor8 = constraintAnchor11;
                i20 = max;
                constraintAnchor7 = constraintAnchor9;
                i17 = 0;
                constraintAnchor = constraintAnchor14;
                int i26 = paddingBottom;
                constraintAnchor6 = constraintAnchor2;
                i23 = i26;
            } else {
                ConstraintAnchor constraintAnchor15 = constraintAnchor8;
                int i27 = i19;
                int i28 = i20;
                i8 = i21;
                if (i8 < size - 1) {
                    constraintAnchor = this.Y0.get(i8 + 1).f2524b.mLeft;
                    paddingRight = 0;
                } else {
                    constraintAnchor = this.mRight;
                    paddingRight = getPaddingRight();
                }
                ConstraintAnchor constraintAnchor16 = widgetsList3.f2524b.mRight;
                widgetsList3.setup(i4, constraintAnchor15, constraintAnchor7, constraintAnchor, constraintAnchor6, i22, i17, paddingRight, i23, i5);
                i20 = i28 + widgetsList3.getWidth();
                int max2 = Math.max(i27, widgetsList3.getHeight());
                if (i8 > 0) {
                    i20 += this.R0;
                }
                i19 = max2;
                i18 = paddingRight;
                constraintAnchor8 = constraintAnchor16;
                i22 = 0;
            }
            i21 = i8 + 1;
            constraintAnchor5 = constraintAnchor;
        }
        iArr[0] = i20;
        iArr[1] = i19;
    }

    private void T(ConstraintWidget[] constraintWidgetArr, int i2, int i4, int i5, int[] iArr) {
        int i6;
        int i7;
        int i8;
        ConstraintAnchor constraintAnchor;
        int paddingRight;
        ConstraintAnchor constraintAnchor2;
        int paddingBottom;
        int i9;
        if (i2 == 0) {
            return;
        }
        this.Y0.clear();
        WidgetsList widgetsList = new WidgetsList(i4, this.mLeft, this.mTop, this.mRight, this.mBottom, i5);
        this.Y0.add(widgetsList);
        if (i4 == 0) {
            int i10 = 0;
            i6 = 0;
            int i11 = 0;
            int i12 = 0;
            while (i12 < i2) {
                int i13 = i10 + 1;
                ConstraintWidget constraintWidget = constraintWidgetArr[i12];
                int Q = Q(constraintWidget, i5);
                if (constraintWidget.getHorizontalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                    i6++;
                }
                int i14 = i6;
                boolean z3 = (i11 == i5 || (this.R0 + i11) + Q > i5) && widgetsList.f2524b != null;
                if (!z3 && i12 > 0 && (i9 = this.W0) > 0 && i13 > i9) {
                    z3 = true;
                }
                if (z3) {
                    widgetsList = new WidgetsList(i4, this.mLeft, this.mTop, this.mRight, this.mBottom, i5);
                    widgetsList.setStartIndex(i12);
                    this.Y0.add(widgetsList);
                    i10 = i13;
                    i11 = Q;
                } else {
                    i11 = i12 > 0 ? i11 + this.R0 + Q : Q;
                    i10 = 0;
                }
                widgetsList.add(constraintWidget);
                i12++;
                i6 = i14;
            }
        } else {
            int i15 = 0;
            i6 = 0;
            int i16 = 0;
            while (i16 < i2) {
                ConstraintWidget constraintWidget2 = constraintWidgetArr[i16];
                int P = P(constraintWidget2, i5);
                if (constraintWidget2.getVerticalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                    i6++;
                }
                int i17 = i6;
                boolean z4 = (i15 == i5 || (this.S0 + i15) + P > i5) && widgetsList.f2524b != null;
                if (!z4 && i16 > 0 && (i7 = this.W0) > 0 && i7 < 0) {
                    z4 = true;
                }
                if (z4) {
                    widgetsList = new WidgetsList(i4, this.mLeft, this.mTop, this.mRight, this.mBottom, i5);
                    widgetsList.setStartIndex(i16);
                    this.Y0.add(widgetsList);
                } else if (i16 > 0) {
                    i15 += this.S0 + P;
                    widgetsList.add(constraintWidget2);
                    i16++;
                    i6 = i17;
                }
                i15 = P;
                widgetsList.add(constraintWidget2);
                i16++;
                i6 = i17;
            }
        }
        int size = this.Y0.size();
        ConstraintAnchor constraintAnchor3 = this.mLeft;
        ConstraintAnchor constraintAnchor4 = this.mTop;
        ConstraintAnchor constraintAnchor5 = this.mRight;
        ConstraintAnchor constraintAnchor6 = this.mBottom;
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingRight2 = getPaddingRight();
        int paddingBottom2 = getPaddingBottom();
        ConstraintWidget.DimensionBehaviour horizontalDimensionBehaviour = getHorizontalDimensionBehaviour();
        ConstraintWidget.DimensionBehaviour dimensionBehaviour = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
        boolean z5 = horizontalDimensionBehaviour == dimensionBehaviour || getVerticalDimensionBehaviour() == dimensionBehaviour;
        if (i6 > 0 && z5) {
            for (int i18 = 0; i18 < size; i18++) {
                WidgetsList widgetsList2 = this.Y0.get(i18);
                if (i4 == 0) {
                    widgetsList2.measureMatchConstraints(i5 - widgetsList2.getWidth());
                } else {
                    widgetsList2.measureMatchConstraints(i5 - widgetsList2.getHeight());
                }
            }
        }
        int i19 = paddingTop;
        int i20 = paddingRight2;
        int i21 = 0;
        int i22 = 0;
        int i23 = 0;
        int i24 = paddingLeft;
        ConstraintAnchor constraintAnchor7 = constraintAnchor4;
        ConstraintAnchor constraintAnchor8 = constraintAnchor3;
        int i25 = paddingBottom2;
        while (i23 < size) {
            WidgetsList widgetsList3 = this.Y0.get(i23);
            if (i4 == 0) {
                if (i23 < size - 1) {
                    constraintAnchor2 = this.Y0.get(i23 + 1).f2524b.mTop;
                    paddingBottom = 0;
                } else {
                    constraintAnchor2 = this.mBottom;
                    paddingBottom = getPaddingBottom();
                }
                ConstraintAnchor constraintAnchor9 = widgetsList3.f2524b.mBottom;
                ConstraintAnchor constraintAnchor10 = constraintAnchor8;
                ConstraintAnchor constraintAnchor11 = constraintAnchor8;
                int i26 = i21;
                ConstraintAnchor constraintAnchor12 = constraintAnchor7;
                int i27 = i22;
                ConstraintAnchor constraintAnchor13 = constraintAnchor5;
                ConstraintAnchor constraintAnchor14 = constraintAnchor5;
                i8 = i23;
                widgetsList3.setup(i4, constraintAnchor10, constraintAnchor12, constraintAnchor13, constraintAnchor2, i24, i19, i20, paddingBottom, i5);
                int max = Math.max(i27, widgetsList3.getWidth());
                i21 = i26 + widgetsList3.getHeight();
                if (i8 > 0) {
                    i21 += this.S0;
                }
                constraintAnchor8 = constraintAnchor11;
                i22 = max;
                constraintAnchor7 = constraintAnchor9;
                i19 = 0;
                constraintAnchor = constraintAnchor14;
                int i28 = paddingBottom;
                constraintAnchor6 = constraintAnchor2;
                i25 = i28;
            } else {
                ConstraintAnchor constraintAnchor15 = constraintAnchor8;
                int i29 = i21;
                int i30 = i22;
                i8 = i23;
                if (i8 < size - 1) {
                    constraintAnchor = this.Y0.get(i8 + 1).f2524b.mLeft;
                    paddingRight = 0;
                } else {
                    constraintAnchor = this.mRight;
                    paddingRight = getPaddingRight();
                }
                ConstraintAnchor constraintAnchor16 = widgetsList3.f2524b.mRight;
                widgetsList3.setup(i4, constraintAnchor15, constraintAnchor7, constraintAnchor, constraintAnchor6, i24, i19, paddingRight, i25, i5);
                i22 = i30 + widgetsList3.getWidth();
                int max2 = Math.max(i29, widgetsList3.getHeight());
                if (i8 > 0) {
                    i22 += this.R0;
                }
                i21 = max2;
                i20 = paddingRight;
                constraintAnchor8 = constraintAnchor16;
                i24 = 0;
            }
            i23 = i8 + 1;
            constraintAnchor5 = constraintAnchor;
        }
        iArr[0] = i22;
        iArr[1] = i21;
    }

    private void U(ConstraintWidget[] constraintWidgetArr, int i2, int i4, int i5, int[] iArr) {
        WidgetsList widgetsList;
        if (i2 == 0) {
            return;
        }
        if (this.Y0.size() == 0) {
            widgetsList = new WidgetsList(i4, this.mLeft, this.mTop, this.mRight, this.mBottom, i5);
            this.Y0.add(widgetsList);
        } else {
            WidgetsList widgetsList2 = this.Y0.get(0);
            widgetsList2.clear();
            widgetsList = widgetsList2;
            widgetsList.setup(i4, this.mLeft, this.mTop, this.mRight, this.mBottom, getPaddingLeft(), getPaddingTop(), getPaddingRight(), getPaddingBottom(), i5);
        }
        for (int i6 = 0; i6 < i2; i6++) {
            widgetsList.add(constraintWidgetArr[i6]);
        }
        iArr[0] = widgetsList.getWidth();
        iArr[1] = widgetsList.getHeight();
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public void addToSolver(LinearSystem linearSystem, boolean z3) {
        super.addToSolver(linearSystem, z3);
        boolean z4 = getParent() != null && ((ConstraintWidgetContainer) getParent()).isRtl();
        int i2 = this.V0;
        if (i2 != 0) {
            if (i2 == 1) {
                int size = this.Y0.size();
                int i4 = 0;
                while (i4 < size) {
                    this.Y0.get(i4).createConstraints(z4, i4, i4 == size + (-1));
                    i4++;
                }
            } else if (i2 == 2) {
                O(z4);
            } else if (i2 == 3) {
                int size2 = this.Y0.size();
                int i5 = 0;
                while (i5 < size2) {
                    this.Y0.get(i5).createConstraints(z4, i5, i5 == size2 + (-1));
                    i5++;
                }
            }
        } else if (this.Y0.size() > 0) {
            this.Y0.get(0).createConstraints(z4, 0, true);
        }
        t(false);
    }

    @Override // androidx.constraintlayout.core.widgets.HelperWidget, androidx.constraintlayout.core.widgets.ConstraintWidget
    public void copy(ConstraintWidget constraintWidget, HashMap<ConstraintWidget, ConstraintWidget> hashMap) {
        super.copy(constraintWidget, hashMap);
        Flow flow = (Flow) constraintWidget;
        this.F0 = flow.F0;
        this.G0 = flow.G0;
        this.H0 = flow.H0;
        this.I0 = flow.I0;
        this.J0 = flow.J0;
        this.K0 = flow.K0;
        this.L0 = flow.L0;
        this.M0 = flow.M0;
        this.N0 = flow.N0;
        this.O0 = flow.O0;
        this.P0 = flow.P0;
        this.Q0 = flow.Q0;
        this.R0 = flow.R0;
        this.S0 = flow.S0;
        this.T0 = flow.T0;
        this.U0 = flow.U0;
        this.V0 = flow.V0;
        this.W0 = flow.W0;
        this.X0 = flow.X0;
    }

    public float getMaxElementsWrap() {
        return this.W0;
    }

    /* JADX WARN: Removed duplicated region for block: B:58:0x00ea  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00ec  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x00f9  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x00fb  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0114  */
    @Override // androidx.constraintlayout.core.widgets.VirtualLayout
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void measure(int r19, int r20, int r21, int r22) {
        /*
            Method dump skipped, instructions count: 281
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.core.widgets.Flow.measure(int, int, int, int):void");
    }

    public void setFirstHorizontalBias(float f4) {
        this.N0 = f4;
    }

    public void setFirstHorizontalStyle(int i2) {
        this.H0 = i2;
    }

    public void setFirstVerticalBias(float f4) {
        this.O0 = f4;
    }

    public void setFirstVerticalStyle(int i2) {
        this.I0 = i2;
    }

    public void setHorizontalAlign(int i2) {
        this.T0 = i2;
    }

    public void setHorizontalBias(float f4) {
        this.L0 = f4;
    }

    public void setHorizontalGap(int i2) {
        this.R0 = i2;
    }

    public void setHorizontalStyle(int i2) {
        this.F0 = i2;
    }

    public void setLastHorizontalBias(float f4) {
        this.P0 = f4;
    }

    public void setLastHorizontalStyle(int i2) {
        this.J0 = i2;
    }

    public void setLastVerticalBias(float f4) {
        this.Q0 = f4;
    }

    public void setLastVerticalStyle(int i2) {
        this.K0 = i2;
    }

    public void setMaxElementsWrap(int i2) {
        this.W0 = i2;
    }

    public void setOrientation(int i2) {
        this.X0 = i2;
    }

    public void setVerticalAlign(int i2) {
        this.U0 = i2;
    }

    public void setVerticalBias(float f4) {
        this.M0 = f4;
    }

    public void setVerticalGap(int i2) {
        this.S0 = i2;
    }

    public void setVerticalStyle(int i2) {
        this.G0 = i2;
    }

    public void setWrapMode(int i2) {
        this.V0 = i2;
    }
}
