package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.LinearSystem;
import androidx.constraintlayout.core.Metrics;
import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.ConstraintWidgetContainer;
import androidx.constraintlayout.core.widgets.Guideline;
import androidx.constraintlayout.core.widgets.Helper;
import androidx.constraintlayout.core.widgets.Optimizer;
import androidx.constraintlayout.core.widgets.VirtualLayout;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class BasicMeasure {
    public static final int AT_MOST = Integer.MIN_VALUE;
    public static final int EXACTLY = 1073741824;
    public static final int FIXED = -3;
    public static final int MATCH_PARENT = -1;
    public static final int UNSPECIFIED = 0;
    public static final int WRAP_CONTENT = -2;

    /* renamed from: d  reason: collision with root package name */
    private static final boolean f2564d = false;

    /* renamed from: e  reason: collision with root package name */
    private static final int f2565e = 30;

    /* renamed from: a  reason: collision with root package name */
    private final ArrayList<ConstraintWidget> f2566a = new ArrayList<>();

    /* renamed from: b  reason: collision with root package name */
    private Measure f2567b = new Measure();

    /* renamed from: c  reason: collision with root package name */
    private ConstraintWidgetContainer f2568c;

    /* loaded from: classes.dex */
    public static class Measure {
        public static int SELF_DIMENSIONS = 0;
        public static int TRY_GIVEN_DIMENSIONS = 1;
        public static int USE_GIVEN_DIMENSIONS = 2;
        public ConstraintWidget.DimensionBehaviour horizontalBehavior;
        public int horizontalDimension;
        public int measureStrategy;
        public int measuredBaseline;
        public boolean measuredHasBaseline;
        public int measuredHeight;
        public boolean measuredNeedsSolverPass;
        public int measuredWidth;
        public ConstraintWidget.DimensionBehaviour verticalBehavior;
        public int verticalDimension;
    }

    /* loaded from: classes.dex */
    public interface Measurer {
        void didMeasures();

        void measure(ConstraintWidget constraintWidget, Measure measure);
    }

    public BasicMeasure(ConstraintWidgetContainer constraintWidgetContainer) {
        this.f2568c = constraintWidgetContainer;
    }

    private boolean a(Measurer measurer, ConstraintWidget constraintWidget, int i2) {
        this.f2567b.horizontalBehavior = constraintWidget.getHorizontalDimensionBehaviour();
        this.f2567b.verticalBehavior = constraintWidget.getVerticalDimensionBehaviour();
        this.f2567b.horizontalDimension = constraintWidget.getWidth();
        this.f2567b.verticalDimension = constraintWidget.getHeight();
        Measure measure = this.f2567b;
        measure.measuredNeedsSolverPass = false;
        measure.measureStrategy = i2;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour = measure.horizontalBehavior;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
        boolean z3 = dimensionBehaviour == dimensionBehaviour2;
        boolean z4 = measure.verticalBehavior == dimensionBehaviour2;
        boolean z5 = z3 && constraintWidget.mDimensionRatio > 0.0f;
        boolean z6 = z4 && constraintWidget.mDimensionRatio > 0.0f;
        if (z5 && constraintWidget.mResolvedMatchConstraintDefault[0] == 4) {
            measure.horizontalBehavior = ConstraintWidget.DimensionBehaviour.FIXED;
        }
        if (z6 && constraintWidget.mResolvedMatchConstraintDefault[1] == 4) {
            measure.verticalBehavior = ConstraintWidget.DimensionBehaviour.FIXED;
        }
        measurer.measure(constraintWidget, measure);
        constraintWidget.setWidth(this.f2567b.measuredWidth);
        constraintWidget.setHeight(this.f2567b.measuredHeight);
        constraintWidget.setHasBaseline(this.f2567b.measuredHasBaseline);
        constraintWidget.setBaselineDistance(this.f2567b.measuredBaseline);
        Measure measure2 = this.f2567b;
        measure2.measureStrategy = Measure.SELF_DIMENSIONS;
        return measure2.measuredNeedsSolverPass;
    }

    /* JADX WARN: Code restructure failed: missing block: B:52:0x008e, code lost:
        if (r8 != r9) goto L58;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0095, code lost:
        if (r5.mDimensionRatio <= 0.0f) goto L58;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void b(androidx.constraintlayout.core.widgets.ConstraintWidgetContainer r13) {
        /*
            r12 = this;
            java.util.ArrayList<androidx.constraintlayout.core.widgets.ConstraintWidget> r0 = r13.mChildren
            int r0 = r0.size()
            r1 = 64
            boolean r1 = r13.optimizeFor(r1)
            androidx.constraintlayout.core.widgets.analyzer.BasicMeasure$Measurer r2 = r13.getMeasurer()
            r3 = 0
            r4 = 0
        L12:
            if (r4 >= r0) goto Lb0
            java.util.ArrayList<androidx.constraintlayout.core.widgets.ConstraintWidget> r5 = r13.mChildren
            java.lang.Object r5 = r5.get(r4)
            androidx.constraintlayout.core.widgets.ConstraintWidget r5 = (androidx.constraintlayout.core.widgets.ConstraintWidget) r5
            boolean r6 = r5 instanceof androidx.constraintlayout.core.widgets.Guideline
            if (r6 == 0) goto L22
            goto Lac
        L22:
            boolean r6 = r5 instanceof androidx.constraintlayout.core.widgets.Barrier
            if (r6 == 0) goto L28
            goto Lac
        L28:
            boolean r6 = r5.isInVirtualLayout()
            if (r6 == 0) goto L30
            goto Lac
        L30:
            if (r1 == 0) goto L48
            androidx.constraintlayout.core.widgets.analyzer.HorizontalWidgetRun r6 = r5.horizontalRun
            if (r6 == 0) goto L48
            androidx.constraintlayout.core.widgets.analyzer.VerticalWidgetRun r7 = r5.verticalRun
            if (r7 == 0) goto L48
            androidx.constraintlayout.core.widgets.analyzer.DimensionDependency r6 = r6.f2624d
            boolean r6 = r6.resolved
            if (r6 == 0) goto L48
            androidx.constraintlayout.core.widgets.analyzer.DimensionDependency r6 = r7.f2624d
            boolean r6 = r6.resolved
            if (r6 == 0) goto L48
            goto Lac
        L48:
            androidx.constraintlayout.core.widgets.ConstraintWidget$DimensionBehaviour r6 = r5.getDimensionBehaviour(r3)
            r7 = 1
            androidx.constraintlayout.core.widgets.ConstraintWidget$DimensionBehaviour r8 = r5.getDimensionBehaviour(r7)
            androidx.constraintlayout.core.widgets.ConstraintWidget$DimensionBehaviour r9 = androidx.constraintlayout.core.widgets.ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT
            if (r6 != r9) goto L61
            int r10 = r5.mMatchConstraintDefaultWidth
            if (r10 == r7) goto L61
            if (r8 != r9) goto L61
            int r10 = r5.mMatchConstraintDefaultHeight
            if (r10 == r7) goto L61
            r10 = 1
            goto L62
        L61:
            r10 = 0
        L62:
            if (r10 != 0) goto L98
            boolean r11 = r13.optimizeFor(r7)
            if (r11 == 0) goto L98
            boolean r11 = r5 instanceof androidx.constraintlayout.core.widgets.VirtualLayout
            if (r11 != 0) goto L98
            if (r6 != r9) goto L7d
            int r11 = r5.mMatchConstraintDefaultWidth
            if (r11 != 0) goto L7d
            if (r8 == r9) goto L7d
            boolean r11 = r5.isInHorizontalChain()
            if (r11 != 0) goto L7d
            r10 = 1
        L7d:
            if (r8 != r9) goto L8c
            int r11 = r5.mMatchConstraintDefaultHeight
            if (r11 != 0) goto L8c
            if (r6 == r9) goto L8c
            boolean r11 = r5.isInHorizontalChain()
            if (r11 != 0) goto L8c
            r10 = 1
        L8c:
            if (r6 == r9) goto L90
            if (r8 != r9) goto L98
        L90:
            float r6 = r5.mDimensionRatio
            r8 = 0
            int r6 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1))
            if (r6 <= 0) goto L98
            goto L99
        L98:
            r7 = r10
        L99:
            if (r7 == 0) goto L9c
            goto Lac
        L9c:
            int r6 = androidx.constraintlayout.core.widgets.analyzer.BasicMeasure.Measure.SELF_DIMENSIONS
            r12.a(r2, r5, r6)
            androidx.constraintlayout.core.Metrics r5 = r13.mMetrics
            if (r5 == 0) goto Lac
            long r6 = r5.measuredWidgets
            r8 = 1
            long r6 = r6 + r8
            r5.measuredWidgets = r6
        Lac:
            int r4 = r4 + 1
            goto L12
        Lb0:
            r2.didMeasures()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.core.widgets.analyzer.BasicMeasure.b(androidx.constraintlayout.core.widgets.ConstraintWidgetContainer):void");
    }

    private void c(ConstraintWidgetContainer constraintWidgetContainer, String str, int i2, int i4, int i5) {
        int minWidth = constraintWidgetContainer.getMinWidth();
        int minHeight = constraintWidgetContainer.getMinHeight();
        constraintWidgetContainer.setMinWidth(0);
        constraintWidgetContainer.setMinHeight(0);
        constraintWidgetContainer.setWidth(i4);
        constraintWidgetContainer.setHeight(i5);
        constraintWidgetContainer.setMinWidth(minWidth);
        constraintWidgetContainer.setMinHeight(minHeight);
        this.f2568c.setPass(i2);
        this.f2568c.layout();
    }

    public long solverMeasure(ConstraintWidgetContainer constraintWidgetContainer, int i2, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11) {
        boolean z3;
        int i12;
        int i13;
        boolean z4;
        int i14;
        Measurer measurer;
        int i15;
        int i16;
        int i17;
        boolean z5;
        Metrics metrics;
        Measurer measurer2 = constraintWidgetContainer.getMeasurer();
        int size = constraintWidgetContainer.mChildren.size();
        int width = constraintWidgetContainer.getWidth();
        int height = constraintWidgetContainer.getHeight();
        boolean enabled = Optimizer.enabled(i2, 128);
        boolean z6 = enabled || Optimizer.enabled(i2, 64);
        if (z6) {
            for (int i18 = 0; i18 < size; i18++) {
                ConstraintWidget constraintWidget = constraintWidgetContainer.mChildren.get(i18);
                ConstraintWidget.DimensionBehaviour horizontalDimensionBehaviour = constraintWidget.getHorizontalDimensionBehaviour();
                ConstraintWidget.DimensionBehaviour dimensionBehaviour = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                boolean z7 = (horizontalDimensionBehaviour == dimensionBehaviour) && (constraintWidget.getVerticalDimensionBehaviour() == dimensionBehaviour) && constraintWidget.getDimensionRatio() > 0.0f;
                if ((constraintWidget.isInHorizontalChain() && z7) || ((constraintWidget.isInVerticalChain() && z7) || (constraintWidget instanceof VirtualLayout) || constraintWidget.isInHorizontalChain() || constraintWidget.isInVerticalChain())) {
                    z6 = false;
                    break;
                }
            }
        }
        if (z6 && (metrics = LinearSystem.sMetrics) != null) {
            metrics.measures++;
        }
        boolean z8 = z6 & ((i6 == 1073741824 && i8 == 1073741824) || enabled);
        if (z8) {
            int min = Math.min(constraintWidgetContainer.getMaxWidth(), i7);
            int min2 = Math.min(constraintWidgetContainer.getMaxHeight(), i9);
            if (i6 == 1073741824 && constraintWidgetContainer.getWidth() != min) {
                constraintWidgetContainer.setWidth(min);
                constraintWidgetContainer.invalidateGraph();
            }
            if (i8 == 1073741824 && constraintWidgetContainer.getHeight() != min2) {
                constraintWidgetContainer.setHeight(min2);
                constraintWidgetContainer.invalidateGraph();
            }
            if (i6 == 1073741824 && i8 == 1073741824) {
                z3 = constraintWidgetContainer.directMeasure(enabled);
                i12 = 2;
            } else {
                boolean directMeasureSetup = constraintWidgetContainer.directMeasureSetup(enabled);
                if (i6 == 1073741824) {
                    directMeasureSetup &= constraintWidgetContainer.directMeasureWithOrientation(enabled, 0);
                    i12 = 1;
                } else {
                    i12 = 0;
                }
                if (i8 == 1073741824) {
                    z3 = constraintWidgetContainer.directMeasureWithOrientation(enabled, 1) & directMeasureSetup;
                    i12++;
                } else {
                    z3 = directMeasureSetup;
                }
            }
            if (z3) {
                constraintWidgetContainer.updateFromRuns(i6 == 1073741824, i8 == 1073741824);
            }
        } else {
            z3 = false;
            i12 = 0;
        }
        if (z3 && i12 == 2) {
            return 0L;
        }
        int optimizationLevel = constraintWidgetContainer.getOptimizationLevel();
        if (size > 0) {
            b(constraintWidgetContainer);
        }
        updateHierarchy(constraintWidgetContainer);
        int size2 = this.f2566a.size();
        if (size > 0) {
            c(constraintWidgetContainer, "First pass", 0, width, height);
        }
        if (size2 > 0) {
            ConstraintWidget.DimensionBehaviour horizontalDimensionBehaviour2 = constraintWidgetContainer.getHorizontalDimensionBehaviour();
            ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
            boolean z9 = horizontalDimensionBehaviour2 == dimensionBehaviour2;
            boolean z10 = constraintWidgetContainer.getVerticalDimensionBehaviour() == dimensionBehaviour2;
            int max = Math.max(constraintWidgetContainer.getWidth(), this.f2568c.getMinWidth());
            int max2 = Math.max(constraintWidgetContainer.getHeight(), this.f2568c.getMinHeight());
            int i19 = 0;
            boolean z11 = false;
            while (i19 < size2) {
                ConstraintWidget constraintWidget2 = this.f2566a.get(i19);
                if (constraintWidget2 instanceof VirtualLayout) {
                    int width2 = constraintWidget2.getWidth();
                    i15 = optimizationLevel;
                    int height2 = constraintWidget2.getHeight();
                    i16 = height;
                    boolean a4 = a(measurer2, constraintWidget2, Measure.TRY_GIVEN_DIMENSIONS) | z11;
                    Metrics metrics2 = constraintWidgetContainer.mMetrics;
                    i17 = width;
                    if (metrics2 != null) {
                        metrics2.measuredMatchWidgets++;
                    }
                    int width3 = constraintWidget2.getWidth();
                    int height3 = constraintWidget2.getHeight();
                    if (width3 != width2) {
                        constraintWidget2.setWidth(width3);
                        if (z9 && constraintWidget2.getRight() > max) {
                            max = Math.max(max, constraintWidget2.getRight() + constraintWidget2.getAnchor(ConstraintAnchor.Type.RIGHT).getMargin());
                        }
                        z5 = true;
                    } else {
                        z5 = a4;
                    }
                    if (height3 != height2) {
                        constraintWidget2.setHeight(height3);
                        if (z10 && constraintWidget2.getBottom() > max2) {
                            max2 = Math.max(max2, constraintWidget2.getBottom() + constraintWidget2.getAnchor(ConstraintAnchor.Type.BOTTOM).getMargin());
                        }
                        z5 = true;
                    }
                    z11 = z5 | ((VirtualLayout) constraintWidget2).needSolverPass();
                } else {
                    i15 = optimizationLevel;
                    i17 = width;
                    i16 = height;
                }
                i19++;
                optimizationLevel = i15;
                height = i16;
                width = i17;
            }
            int i20 = optimizationLevel;
            int i21 = width;
            int i22 = height;
            int i23 = 0;
            int i24 = 2;
            while (i23 < i24) {
                int i25 = 0;
                while (i25 < size2) {
                    ConstraintWidget constraintWidget3 = this.f2566a.get(i25);
                    if (((constraintWidget3 instanceof Helper) && !(constraintWidget3 instanceof VirtualLayout)) || (constraintWidget3 instanceof Guideline) || constraintWidget3.getVisibility() == 8 || ((z8 && constraintWidget3.horizontalRun.f2624d.resolved && constraintWidget3.verticalRun.f2624d.resolved) || (constraintWidget3 instanceof VirtualLayout))) {
                        z4 = z8;
                        i14 = size2;
                        measurer = measurer2;
                    } else {
                        int width4 = constraintWidget3.getWidth();
                        int height4 = constraintWidget3.getHeight();
                        int baselineDistance = constraintWidget3.getBaselineDistance();
                        int i26 = Measure.TRY_GIVEN_DIMENSIONS;
                        z4 = z8;
                        if (i23 == 1) {
                            i26 = Measure.USE_GIVEN_DIMENSIONS;
                        }
                        boolean a5 = a(measurer2, constraintWidget3, i26) | z11;
                        Metrics metrics3 = constraintWidgetContainer.mMetrics;
                        i14 = size2;
                        measurer = measurer2;
                        if (metrics3 != null) {
                            metrics3.measuredMatchWidgets++;
                        }
                        int width5 = constraintWidget3.getWidth();
                        int height5 = constraintWidget3.getHeight();
                        if (width5 != width4) {
                            constraintWidget3.setWidth(width5);
                            if (z9 && constraintWidget3.getRight() > max) {
                                max = Math.max(max, constraintWidget3.getRight() + constraintWidget3.getAnchor(ConstraintAnchor.Type.RIGHT).getMargin());
                            }
                            a5 = true;
                        }
                        if (height5 != height4) {
                            constraintWidget3.setHeight(height5);
                            if (z10 && constraintWidget3.getBottom() > max2) {
                                max2 = Math.max(max2, constraintWidget3.getBottom() + constraintWidget3.getAnchor(ConstraintAnchor.Type.BOTTOM).getMargin());
                            }
                            a5 = true;
                        }
                        z11 = (!constraintWidget3.hasBaseline() || baselineDistance == constraintWidget3.getBaselineDistance()) ? a5 : true;
                    }
                    i25++;
                    measurer2 = measurer;
                    z8 = z4;
                    size2 = i14;
                }
                boolean z12 = z8;
                int i27 = size2;
                Measurer measurer3 = measurer2;
                if (!z11) {
                    break;
                }
                i23++;
                c(constraintWidgetContainer, "intermediate pass", i23, i21, i22);
                measurer2 = measurer3;
                z8 = z12;
                size2 = i27;
                i24 = 2;
                z11 = false;
            }
            i13 = i20;
        } else {
            i13 = optimizationLevel;
        }
        constraintWidgetContainer.setOptimizationLevel(i13);
        return 0L;
    }

    public void updateHierarchy(ConstraintWidgetContainer constraintWidgetContainer) {
        this.f2566a.clear();
        int size = constraintWidgetContainer.mChildren.size();
        for (int i2 = 0; i2 < size; i2++) {
            ConstraintWidget constraintWidget = constraintWidgetContainer.mChildren.get(i2);
            ConstraintWidget.DimensionBehaviour horizontalDimensionBehaviour = constraintWidget.getHorizontalDimensionBehaviour();
            ConstraintWidget.DimensionBehaviour dimensionBehaviour = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
            if (horizontalDimensionBehaviour == dimensionBehaviour || constraintWidget.getVerticalDimensionBehaviour() == dimensionBehaviour) {
                this.f2566a.add(constraintWidget);
            }
        }
        constraintWidgetContainer.invalidateGraph();
    }
}
