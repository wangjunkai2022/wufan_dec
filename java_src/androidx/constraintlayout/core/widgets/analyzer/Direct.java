package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.widgets.Barrier;
import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.ConstraintWidgetContainer;
import androidx.constraintlayout.core.widgets.Guideline;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes.dex */
public class Direct {

    /* renamed from: a  reason: collision with root package name */
    private static final boolean f2588a = false;

    /* renamed from: b  reason: collision with root package name */
    private static final boolean f2589b = false;

    /* renamed from: d  reason: collision with root package name */
    private static final boolean f2591d = true;

    /* renamed from: c  reason: collision with root package name */
    private static BasicMeasure.Measure f2590c = new BasicMeasure.Measure();

    /* renamed from: e  reason: collision with root package name */
    private static int f2592e = 0;

    /* renamed from: f  reason: collision with root package name */
    private static int f2593f = 0;

    private static boolean a(int i2, ConstraintWidget constraintWidget) {
        ConstraintWidget.DimensionBehaviour dimensionBehaviour;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour2;
        ConstraintWidget.DimensionBehaviour horizontalDimensionBehaviour = constraintWidget.getHorizontalDimensionBehaviour();
        ConstraintWidget.DimensionBehaviour verticalDimensionBehaviour = constraintWidget.getVerticalDimensionBehaviour();
        ConstraintWidgetContainer constraintWidgetContainer = constraintWidget.getParent() != null ? (ConstraintWidgetContainer) constraintWidget.getParent() : null;
        if (constraintWidgetContainer != null) {
            constraintWidgetContainer.getHorizontalDimensionBehaviour();
            ConstraintWidget.DimensionBehaviour dimensionBehaviour3 = ConstraintWidget.DimensionBehaviour.FIXED;
        }
        if (constraintWidgetContainer != null) {
            constraintWidgetContainer.getVerticalDimensionBehaviour();
            ConstraintWidget.DimensionBehaviour dimensionBehaviour4 = ConstraintWidget.DimensionBehaviour.FIXED;
        }
        ConstraintWidget.DimensionBehaviour dimensionBehaviour5 = ConstraintWidget.DimensionBehaviour.FIXED;
        boolean z3 = horizontalDimensionBehaviour == dimensionBehaviour5 || constraintWidget.isResolvedHorizontally() || horizontalDimensionBehaviour == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT || (horizontalDimensionBehaviour == (dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) && constraintWidget.mMatchConstraintDefaultWidth == 0 && constraintWidget.mDimensionRatio == 0.0f && constraintWidget.hasDanglingDimension(0)) || (horizontalDimensionBehaviour == dimensionBehaviour2 && constraintWidget.mMatchConstraintDefaultWidth == 1 && constraintWidget.hasResolvedTargets(0, constraintWidget.getWidth()));
        boolean z4 = verticalDimensionBehaviour == dimensionBehaviour5 || constraintWidget.isResolvedVertically() || verticalDimensionBehaviour == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT || (verticalDimensionBehaviour == (dimensionBehaviour = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) && constraintWidget.mMatchConstraintDefaultHeight == 0 && constraintWidget.mDimensionRatio == 0.0f && constraintWidget.hasDanglingDimension(1)) || (verticalDimensionBehaviour == dimensionBehaviour && constraintWidget.mMatchConstraintDefaultHeight == 1 && constraintWidget.hasResolvedTargets(1, constraintWidget.getHeight()));
        if (constraintWidget.mDimensionRatio <= 0.0f || !(z3 || z4)) {
            return z3 && z4;
        }
        return true;
    }

    private static void b(int i2, ConstraintWidget constraintWidget, BasicMeasure.Measurer measurer, boolean z3) {
        ConstraintAnchor constraintAnchor;
        ConstraintAnchor constraintAnchor2;
        ConstraintAnchor constraintAnchor3;
        ConstraintAnchor constraintAnchor4;
        if (constraintWidget.isHorizontalSolvingPassDone()) {
            return;
        }
        f2592e++;
        if (!(constraintWidget instanceof ConstraintWidgetContainer) && constraintWidget.isMeasureRequested()) {
            int i4 = i2 + 1;
            if (a(i4, constraintWidget)) {
                ConstraintWidgetContainer.measure(i4, constraintWidget, measurer, new BasicMeasure.Measure(), BasicMeasure.Measure.SELF_DIMENSIONS);
            }
        }
        ConstraintAnchor anchor = constraintWidget.getAnchor(ConstraintAnchor.Type.LEFT);
        ConstraintAnchor anchor2 = constraintWidget.getAnchor(ConstraintAnchor.Type.RIGHT);
        int finalValue = anchor.getFinalValue();
        int finalValue2 = anchor2.getFinalValue();
        if (anchor.getDependents() != null && anchor.hasFinalValue()) {
            Iterator<ConstraintAnchor> it2 = anchor.getDependents().iterator();
            while (it2.hasNext()) {
                ConstraintAnchor next = it2.next();
                ConstraintWidget constraintWidget2 = next.mOwner;
                int i5 = i2 + 1;
                boolean a4 = a(i5, constraintWidget2);
                if (constraintWidget2.isMeasureRequested() && a4) {
                    ConstraintWidgetContainer.measure(i5, constraintWidget2, measurer, new BasicMeasure.Measure(), BasicMeasure.Measure.SELF_DIMENSIONS);
                }
                boolean z4 = (next == constraintWidget2.mLeft && (constraintAnchor4 = constraintWidget2.mRight.mTarget) != null && constraintAnchor4.hasFinalValue()) || (next == constraintWidget2.mRight && (constraintAnchor3 = constraintWidget2.mLeft.mTarget) != null && constraintAnchor3.hasFinalValue());
                ConstraintWidget.DimensionBehaviour horizontalDimensionBehaviour = constraintWidget2.getHorizontalDimensionBehaviour();
                ConstraintWidget.DimensionBehaviour dimensionBehaviour = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                if (horizontalDimensionBehaviour == dimensionBehaviour && !a4) {
                    if (constraintWidget2.getHorizontalDimensionBehaviour() == dimensionBehaviour && constraintWidget2.mMatchConstraintMaxWidth >= 0 && constraintWidget2.mMatchConstraintMinWidth >= 0 && ((constraintWidget2.getVisibility() == 8 || (constraintWidget2.mMatchConstraintDefaultWidth == 0 && constraintWidget2.getDimensionRatio() == 0.0f)) && !constraintWidget2.isInHorizontalChain() && !constraintWidget2.isInVirtualLayout() && z4 && !constraintWidget2.isInHorizontalChain())) {
                        e(i5, constraintWidget, measurer, constraintWidget2, z3);
                    }
                } else if (!constraintWidget2.isMeasureRequested()) {
                    ConstraintAnchor constraintAnchor5 = constraintWidget2.mLeft;
                    if (next == constraintAnchor5 && constraintWidget2.mRight.mTarget == null) {
                        int margin = constraintAnchor5.getMargin() + finalValue;
                        constraintWidget2.setFinalHorizontal(margin, constraintWidget2.getWidth() + margin);
                        b(i5, constraintWidget2, measurer, z3);
                    } else {
                        ConstraintAnchor constraintAnchor6 = constraintWidget2.mRight;
                        if (next == constraintAnchor6 && constraintAnchor5.mTarget == null) {
                            int margin2 = finalValue - constraintAnchor6.getMargin();
                            constraintWidget2.setFinalHorizontal(margin2 - constraintWidget2.getWidth(), margin2);
                            b(i5, constraintWidget2, measurer, z3);
                        } else if (z4 && !constraintWidget2.isInHorizontalChain()) {
                            d(i5, measurer, constraintWidget2, z3);
                        }
                    }
                }
            }
        }
        if (constraintWidget instanceof Guideline) {
            return;
        }
        if (anchor2.getDependents() != null && anchor2.hasFinalValue()) {
            Iterator<ConstraintAnchor> it3 = anchor2.getDependents().iterator();
            while (it3.hasNext()) {
                ConstraintAnchor next2 = it3.next();
                ConstraintWidget constraintWidget3 = next2.mOwner;
                int i6 = i2 + 1;
                boolean a5 = a(i6, constraintWidget3);
                if (constraintWidget3.isMeasureRequested() && a5) {
                    ConstraintWidgetContainer.measure(i6, constraintWidget3, measurer, new BasicMeasure.Measure(), BasicMeasure.Measure.SELF_DIMENSIONS);
                }
                boolean z5 = (next2 == constraintWidget3.mLeft && (constraintAnchor2 = constraintWidget3.mRight.mTarget) != null && constraintAnchor2.hasFinalValue()) || (next2 == constraintWidget3.mRight && (constraintAnchor = constraintWidget3.mLeft.mTarget) != null && constraintAnchor.hasFinalValue());
                ConstraintWidget.DimensionBehaviour horizontalDimensionBehaviour2 = constraintWidget3.getHorizontalDimensionBehaviour();
                ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                if (horizontalDimensionBehaviour2 == dimensionBehaviour2 && !a5) {
                    if (constraintWidget3.getHorizontalDimensionBehaviour() == dimensionBehaviour2 && constraintWidget3.mMatchConstraintMaxWidth >= 0 && constraintWidget3.mMatchConstraintMinWidth >= 0 && (constraintWidget3.getVisibility() == 8 || (constraintWidget3.mMatchConstraintDefaultWidth == 0 && constraintWidget3.getDimensionRatio() == 0.0f))) {
                        if (!constraintWidget3.isInHorizontalChain() && !constraintWidget3.isInVirtualLayout() && z5 && !constraintWidget3.isInHorizontalChain()) {
                            e(i6, constraintWidget, measurer, constraintWidget3, z3);
                        }
                    }
                } else if (!constraintWidget3.isMeasureRequested()) {
                    ConstraintAnchor constraintAnchor7 = constraintWidget3.mLeft;
                    if (next2 == constraintAnchor7 && constraintWidget3.mRight.mTarget == null) {
                        int margin3 = constraintAnchor7.getMargin() + finalValue2;
                        constraintWidget3.setFinalHorizontal(margin3, constraintWidget3.getWidth() + margin3);
                        b(i6, constraintWidget3, measurer, z3);
                    } else {
                        ConstraintAnchor constraintAnchor8 = constraintWidget3.mRight;
                        if (next2 == constraintAnchor8 && constraintAnchor7.mTarget == null) {
                            int margin4 = finalValue2 - constraintAnchor8.getMargin();
                            constraintWidget3.setFinalHorizontal(margin4 - constraintWidget3.getWidth(), margin4);
                            b(i6, constraintWidget3, measurer, z3);
                        } else if (z5 && !constraintWidget3.isInHorizontalChain()) {
                            d(i6, measurer, constraintWidget3, z3);
                        }
                    }
                }
            }
        }
        constraintWidget.markHorizontalSolvingPassDone();
    }

    private static void c(int i2, Barrier barrier, BasicMeasure.Measurer measurer, int i4, boolean z3) {
        if (barrier.allSolved()) {
            if (i4 == 0) {
                b(i2 + 1, barrier, measurer, z3);
            } else {
                h(i2 + 1, barrier, measurer);
            }
        }
    }

    private static void d(int i2, BasicMeasure.Measurer measurer, ConstraintWidget constraintWidget, boolean z3) {
        float horizontalBiasPercent = constraintWidget.getHorizontalBiasPercent();
        int finalValue = constraintWidget.mLeft.mTarget.getFinalValue();
        int finalValue2 = constraintWidget.mRight.mTarget.getFinalValue();
        int margin = constraintWidget.mLeft.getMargin() + finalValue;
        int margin2 = finalValue2 - constraintWidget.mRight.getMargin();
        if (finalValue == finalValue2) {
            horizontalBiasPercent = 0.5f;
        } else {
            finalValue = margin;
            finalValue2 = margin2;
        }
        int width = constraintWidget.getWidth();
        int i4 = (finalValue2 - finalValue) - width;
        if (finalValue > finalValue2) {
            i4 = (finalValue - finalValue2) - width;
        }
        int i5 = ((int) (i4 > 0 ? (horizontalBiasPercent * i4) + 0.5f : horizontalBiasPercent * i4)) + finalValue;
        int i6 = i5 + width;
        if (finalValue > finalValue2) {
            i6 = i5 - width;
        }
        constraintWidget.setFinalHorizontal(i5, i6);
        b(i2 + 1, constraintWidget, measurer, z3);
    }

    private static void e(int i2, ConstraintWidget constraintWidget, BasicMeasure.Measurer measurer, ConstraintWidget constraintWidget2, boolean z3) {
        int width;
        float horizontalBiasPercent = constraintWidget2.getHorizontalBiasPercent();
        int finalValue = constraintWidget2.mLeft.mTarget.getFinalValue() + constraintWidget2.mLeft.getMargin();
        int finalValue2 = constraintWidget2.mRight.mTarget.getFinalValue() - constraintWidget2.mRight.getMargin();
        if (finalValue2 >= finalValue) {
            int width2 = constraintWidget2.getWidth();
            if (constraintWidget2.getVisibility() != 8) {
                int i4 = constraintWidget2.mMatchConstraintDefaultWidth;
                if (i4 == 2) {
                    if (constraintWidget instanceof ConstraintWidgetContainer) {
                        width = constraintWidget.getWidth();
                    } else {
                        width = constraintWidget.getParent().getWidth();
                    }
                    width2 = (int) (constraintWidget2.getHorizontalBiasPercent() * 0.5f * width);
                } else if (i4 == 0) {
                    width2 = finalValue2 - finalValue;
                }
                width2 = Math.max(constraintWidget2.mMatchConstraintMinWidth, width2);
                int i5 = constraintWidget2.mMatchConstraintMaxWidth;
                if (i5 > 0) {
                    width2 = Math.min(i5, width2);
                }
            }
            int i6 = finalValue + ((int) ((horizontalBiasPercent * ((finalValue2 - finalValue) - width2)) + 0.5f));
            constraintWidget2.setFinalHorizontal(i6, width2 + i6);
            b(i2 + 1, constraintWidget2, measurer, z3);
        }
    }

    private static void f(int i2, BasicMeasure.Measurer measurer, ConstraintWidget constraintWidget) {
        float verticalBiasPercent = constraintWidget.getVerticalBiasPercent();
        int finalValue = constraintWidget.mTop.mTarget.getFinalValue();
        int finalValue2 = constraintWidget.mBottom.mTarget.getFinalValue();
        int margin = constraintWidget.mTop.getMargin() + finalValue;
        int margin2 = finalValue2 - constraintWidget.mBottom.getMargin();
        if (finalValue == finalValue2) {
            verticalBiasPercent = 0.5f;
        } else {
            finalValue = margin;
            finalValue2 = margin2;
        }
        int height = constraintWidget.getHeight();
        int i4 = (finalValue2 - finalValue) - height;
        if (finalValue > finalValue2) {
            i4 = (finalValue - finalValue2) - height;
        }
        int i5 = (int) (i4 > 0 ? (verticalBiasPercent * i4) + 0.5f : verticalBiasPercent * i4);
        int i6 = finalValue + i5;
        int i7 = i6 + height;
        if (finalValue > finalValue2) {
            i6 = finalValue - i5;
            i7 = i6 - height;
        }
        constraintWidget.setFinalVertical(i6, i7);
        h(i2 + 1, constraintWidget, measurer);
    }

    private static void g(int i2, ConstraintWidget constraintWidget, BasicMeasure.Measurer measurer, ConstraintWidget constraintWidget2) {
        int height;
        float verticalBiasPercent = constraintWidget2.getVerticalBiasPercent();
        int finalValue = constraintWidget2.mTop.mTarget.getFinalValue() + constraintWidget2.mTop.getMargin();
        int finalValue2 = constraintWidget2.mBottom.mTarget.getFinalValue() - constraintWidget2.mBottom.getMargin();
        if (finalValue2 >= finalValue) {
            int height2 = constraintWidget2.getHeight();
            if (constraintWidget2.getVisibility() != 8) {
                int i4 = constraintWidget2.mMatchConstraintDefaultHeight;
                if (i4 == 2) {
                    if (constraintWidget instanceof ConstraintWidgetContainer) {
                        height = constraintWidget.getHeight();
                    } else {
                        height = constraintWidget.getParent().getHeight();
                    }
                    height2 = (int) (verticalBiasPercent * 0.5f * height);
                } else if (i4 == 0) {
                    height2 = finalValue2 - finalValue;
                }
                height2 = Math.max(constraintWidget2.mMatchConstraintMinHeight, height2);
                int i5 = constraintWidget2.mMatchConstraintMaxHeight;
                if (i5 > 0) {
                    height2 = Math.min(i5, height2);
                }
            }
            int i6 = finalValue + ((int) ((verticalBiasPercent * ((finalValue2 - finalValue) - height2)) + 0.5f));
            constraintWidget2.setFinalVertical(i6, height2 + i6);
            h(i2 + 1, constraintWidget2, measurer);
        }
    }

    private static void h(int i2, ConstraintWidget constraintWidget, BasicMeasure.Measurer measurer) {
        ConstraintAnchor constraintAnchor;
        ConstraintAnchor constraintAnchor2;
        ConstraintAnchor constraintAnchor3;
        ConstraintAnchor constraintAnchor4;
        if (constraintWidget.isVerticalSolvingPassDone()) {
            return;
        }
        f2593f++;
        if (!(constraintWidget instanceof ConstraintWidgetContainer) && constraintWidget.isMeasureRequested()) {
            int i4 = i2 + 1;
            if (a(i4, constraintWidget)) {
                ConstraintWidgetContainer.measure(i4, constraintWidget, measurer, new BasicMeasure.Measure(), BasicMeasure.Measure.SELF_DIMENSIONS);
            }
        }
        ConstraintAnchor anchor = constraintWidget.getAnchor(ConstraintAnchor.Type.TOP);
        ConstraintAnchor anchor2 = constraintWidget.getAnchor(ConstraintAnchor.Type.BOTTOM);
        int finalValue = anchor.getFinalValue();
        int finalValue2 = anchor2.getFinalValue();
        if (anchor.getDependents() != null && anchor.hasFinalValue()) {
            Iterator<ConstraintAnchor> it2 = anchor.getDependents().iterator();
            while (it2.hasNext()) {
                ConstraintAnchor next = it2.next();
                ConstraintWidget constraintWidget2 = next.mOwner;
                int i5 = i2 + 1;
                boolean a4 = a(i5, constraintWidget2);
                if (constraintWidget2.isMeasureRequested() && a4) {
                    ConstraintWidgetContainer.measure(i5, constraintWidget2, measurer, new BasicMeasure.Measure(), BasicMeasure.Measure.SELF_DIMENSIONS);
                }
                boolean z3 = (next == constraintWidget2.mTop && (constraintAnchor4 = constraintWidget2.mBottom.mTarget) != null && constraintAnchor4.hasFinalValue()) || (next == constraintWidget2.mBottom && (constraintAnchor3 = constraintWidget2.mTop.mTarget) != null && constraintAnchor3.hasFinalValue());
                ConstraintWidget.DimensionBehaviour verticalDimensionBehaviour = constraintWidget2.getVerticalDimensionBehaviour();
                ConstraintWidget.DimensionBehaviour dimensionBehaviour = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                if (verticalDimensionBehaviour == dimensionBehaviour && !a4) {
                    if (constraintWidget2.getVerticalDimensionBehaviour() == dimensionBehaviour && constraintWidget2.mMatchConstraintMaxHeight >= 0 && constraintWidget2.mMatchConstraintMinHeight >= 0 && (constraintWidget2.getVisibility() == 8 || (constraintWidget2.mMatchConstraintDefaultHeight == 0 && constraintWidget2.getDimensionRatio() == 0.0f))) {
                        if (!constraintWidget2.isInVerticalChain() && !constraintWidget2.isInVirtualLayout() && z3 && !constraintWidget2.isInVerticalChain()) {
                            g(i5, constraintWidget, measurer, constraintWidget2);
                        }
                    }
                } else if (!constraintWidget2.isMeasureRequested()) {
                    ConstraintAnchor constraintAnchor5 = constraintWidget2.mTop;
                    if (next == constraintAnchor5 && constraintWidget2.mBottom.mTarget == null) {
                        int margin = constraintAnchor5.getMargin() + finalValue;
                        constraintWidget2.setFinalVertical(margin, constraintWidget2.getHeight() + margin);
                        h(i5, constraintWidget2, measurer);
                    } else {
                        ConstraintAnchor constraintAnchor6 = constraintWidget2.mBottom;
                        if (next == constraintAnchor6 && constraintAnchor5.mTarget == null) {
                            int margin2 = finalValue - constraintAnchor6.getMargin();
                            constraintWidget2.setFinalVertical(margin2 - constraintWidget2.getHeight(), margin2);
                            h(i5, constraintWidget2, measurer);
                        } else if (z3 && !constraintWidget2.isInVerticalChain()) {
                            f(i5, measurer, constraintWidget2);
                        }
                    }
                }
            }
        }
        if (constraintWidget instanceof Guideline) {
            return;
        }
        if (anchor2.getDependents() != null && anchor2.hasFinalValue()) {
            Iterator<ConstraintAnchor> it3 = anchor2.getDependents().iterator();
            while (it3.hasNext()) {
                ConstraintAnchor next2 = it3.next();
                ConstraintWidget constraintWidget3 = next2.mOwner;
                int i6 = i2 + 1;
                boolean a5 = a(i6, constraintWidget3);
                if (constraintWidget3.isMeasureRequested() && a5) {
                    ConstraintWidgetContainer.measure(i6, constraintWidget3, measurer, new BasicMeasure.Measure(), BasicMeasure.Measure.SELF_DIMENSIONS);
                }
                boolean z4 = (next2 == constraintWidget3.mTop && (constraintAnchor2 = constraintWidget3.mBottom.mTarget) != null && constraintAnchor2.hasFinalValue()) || (next2 == constraintWidget3.mBottom && (constraintAnchor = constraintWidget3.mTop.mTarget) != null && constraintAnchor.hasFinalValue());
                ConstraintWidget.DimensionBehaviour verticalDimensionBehaviour2 = constraintWidget3.getVerticalDimensionBehaviour();
                ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                if (verticalDimensionBehaviour2 == dimensionBehaviour2 && !a5) {
                    if (constraintWidget3.getVerticalDimensionBehaviour() == dimensionBehaviour2 && constraintWidget3.mMatchConstraintMaxHeight >= 0 && constraintWidget3.mMatchConstraintMinHeight >= 0 && (constraintWidget3.getVisibility() == 8 || (constraintWidget3.mMatchConstraintDefaultHeight == 0 && constraintWidget3.getDimensionRatio() == 0.0f))) {
                        if (!constraintWidget3.isInVerticalChain() && !constraintWidget3.isInVirtualLayout() && z4 && !constraintWidget3.isInVerticalChain()) {
                            g(i6, constraintWidget, measurer, constraintWidget3);
                        }
                    }
                } else if (!constraintWidget3.isMeasureRequested()) {
                    ConstraintAnchor constraintAnchor7 = constraintWidget3.mTop;
                    if (next2 == constraintAnchor7 && constraintWidget3.mBottom.mTarget == null) {
                        int margin3 = constraintAnchor7.getMargin() + finalValue2;
                        constraintWidget3.setFinalVertical(margin3, constraintWidget3.getHeight() + margin3);
                        h(i6, constraintWidget3, measurer);
                    } else {
                        ConstraintAnchor constraintAnchor8 = constraintWidget3.mBottom;
                        if (next2 == constraintAnchor8 && constraintAnchor7.mTarget == null) {
                            int margin4 = finalValue2 - constraintAnchor8.getMargin();
                            constraintWidget3.setFinalVertical(margin4 - constraintWidget3.getHeight(), margin4);
                            h(i6, constraintWidget3, measurer);
                        } else if (z4 && !constraintWidget3.isInVerticalChain()) {
                            f(i6, measurer, constraintWidget3);
                        }
                    }
                }
            }
        }
        ConstraintAnchor anchor3 = constraintWidget.getAnchor(ConstraintAnchor.Type.BASELINE);
        if (anchor3.getDependents() != null && anchor3.hasFinalValue()) {
            int finalValue3 = anchor3.getFinalValue();
            Iterator<ConstraintAnchor> it4 = anchor3.getDependents().iterator();
            while (it4.hasNext()) {
                ConstraintAnchor next3 = it4.next();
                ConstraintWidget constraintWidget4 = next3.mOwner;
                int i7 = i2 + 1;
                boolean a6 = a(i7, constraintWidget4);
                if (constraintWidget4.isMeasureRequested() && a6) {
                    ConstraintWidgetContainer.measure(i7, constraintWidget4, measurer, new BasicMeasure.Measure(), BasicMeasure.Measure.SELF_DIMENSIONS);
                }
                if (constraintWidget4.getVerticalDimensionBehaviour() != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT || a6) {
                    if (!constraintWidget4.isMeasureRequested() && next3 == constraintWidget4.mBaseline) {
                        constraintWidget4.setFinalBaseline(next3.getMargin() + finalValue3);
                        h(i7, constraintWidget4, measurer);
                    }
                }
            }
        }
        constraintWidget.markVerticalSolvingPassDone();
    }

    public static String ls(int i2) {
        StringBuilder sb = new StringBuilder();
        for (int i4 = 0; i4 < i2; i4++) {
            sb.append("  ");
        }
        sb.append("+-(" + i2 + ") ");
        return sb.toString();
    }

    /* JADX WARN: Code restructure failed: missing block: B:106:0x01db, code lost:
        if (r6[r23].mTarget.mOwner == r0) goto L94;
     */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0125  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0155  */
    /* JADX WARN: Type inference failed for: r2v24 */
    /* JADX WARN: Type inference failed for: r2v43 */
    /* JADX WARN: Type inference failed for: r2v7, types: [int, boolean] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean solveChain(androidx.constraintlayout.core.widgets.ConstraintWidgetContainer r20, androidx.constraintlayout.core.LinearSystem r21, int r22, int r23, androidx.constraintlayout.core.widgets.ChainHead r24, boolean r25, boolean r26, boolean r27) {
        /*
            Method dump skipped, instructions count: 564
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.core.widgets.analyzer.Direct.solveChain(androidx.constraintlayout.core.widgets.ConstraintWidgetContainer, androidx.constraintlayout.core.LinearSystem, int, int, androidx.constraintlayout.core.widgets.ChainHead, boolean, boolean, boolean):boolean");
    }

    public static void solvingPass(ConstraintWidgetContainer constraintWidgetContainer, BasicMeasure.Measurer measurer) {
        ConstraintWidget.DimensionBehaviour horizontalDimensionBehaviour = constraintWidgetContainer.getHorizontalDimensionBehaviour();
        ConstraintWidget.DimensionBehaviour verticalDimensionBehaviour = constraintWidgetContainer.getVerticalDimensionBehaviour();
        f2592e = 0;
        f2593f = 0;
        constraintWidgetContainer.resetFinalResolution();
        ArrayList<ConstraintWidget> children = constraintWidgetContainer.getChildren();
        int size = children.size();
        for (int i2 = 0; i2 < size; i2++) {
            children.get(i2).resetFinalResolution();
        }
        boolean isRtl = constraintWidgetContainer.isRtl();
        if (horizontalDimensionBehaviour == ConstraintWidget.DimensionBehaviour.FIXED) {
            constraintWidgetContainer.setFinalHorizontal(0, constraintWidgetContainer.getWidth());
        } else {
            constraintWidgetContainer.setFinalLeft(0);
        }
        boolean z3 = false;
        boolean z4 = false;
        for (int i4 = 0; i4 < size; i4++) {
            ConstraintWidget constraintWidget = children.get(i4);
            if (constraintWidget instanceof Guideline) {
                Guideline guideline = (Guideline) constraintWidget;
                if (guideline.getOrientation() == 1) {
                    if (guideline.getRelativeBegin() != -1) {
                        guideline.setFinalValue(guideline.getRelativeBegin());
                    } else if (guideline.getRelativeEnd() != -1 && constraintWidgetContainer.isResolvedHorizontally()) {
                        guideline.setFinalValue(constraintWidgetContainer.getWidth() - guideline.getRelativeEnd());
                    } else if (constraintWidgetContainer.isResolvedHorizontally()) {
                        guideline.setFinalValue((int) ((guideline.getRelativePercent() * constraintWidgetContainer.getWidth()) + 0.5f));
                    }
                    z3 = true;
                }
            } else if ((constraintWidget instanceof Barrier) && ((Barrier) constraintWidget).getOrientation() == 0) {
                z4 = true;
            }
        }
        if (z3) {
            for (int i5 = 0; i5 < size; i5++) {
                ConstraintWidget constraintWidget2 = children.get(i5);
                if (constraintWidget2 instanceof Guideline) {
                    Guideline guideline2 = (Guideline) constraintWidget2;
                    if (guideline2.getOrientation() == 1) {
                        b(0, guideline2, measurer, isRtl);
                    }
                }
            }
        }
        b(0, constraintWidgetContainer, measurer, isRtl);
        if (z4) {
            for (int i6 = 0; i6 < size; i6++) {
                ConstraintWidget constraintWidget3 = children.get(i6);
                if (constraintWidget3 instanceof Barrier) {
                    Barrier barrier = (Barrier) constraintWidget3;
                    if (barrier.getOrientation() == 0) {
                        c(0, barrier, measurer, 0, isRtl);
                    }
                }
            }
        }
        if (verticalDimensionBehaviour == ConstraintWidget.DimensionBehaviour.FIXED) {
            constraintWidgetContainer.setFinalVertical(0, constraintWidgetContainer.getHeight());
        } else {
            constraintWidgetContainer.setFinalTop(0);
        }
        boolean z5 = false;
        boolean z6 = false;
        for (int i7 = 0; i7 < size; i7++) {
            ConstraintWidget constraintWidget4 = children.get(i7);
            if (constraintWidget4 instanceof Guideline) {
                Guideline guideline3 = (Guideline) constraintWidget4;
                if (guideline3.getOrientation() == 0) {
                    if (guideline3.getRelativeBegin() != -1) {
                        guideline3.setFinalValue(guideline3.getRelativeBegin());
                    } else if (guideline3.getRelativeEnd() != -1 && constraintWidgetContainer.isResolvedVertically()) {
                        guideline3.setFinalValue(constraintWidgetContainer.getHeight() - guideline3.getRelativeEnd());
                    } else if (constraintWidgetContainer.isResolvedVertically()) {
                        guideline3.setFinalValue((int) ((guideline3.getRelativePercent() * constraintWidgetContainer.getHeight()) + 0.5f));
                    }
                    z5 = true;
                }
            } else if ((constraintWidget4 instanceof Barrier) && ((Barrier) constraintWidget4).getOrientation() == 1) {
                z6 = true;
            }
        }
        if (z5) {
            for (int i8 = 0; i8 < size; i8++) {
                ConstraintWidget constraintWidget5 = children.get(i8);
                if (constraintWidget5 instanceof Guideline) {
                    Guideline guideline4 = (Guideline) constraintWidget5;
                    if (guideline4.getOrientation() == 0) {
                        h(1, guideline4, measurer);
                    }
                }
            }
        }
        h(0, constraintWidgetContainer, measurer);
        if (z6) {
            for (int i9 = 0; i9 < size; i9++) {
                ConstraintWidget constraintWidget6 = children.get(i9);
                if (constraintWidget6 instanceof Barrier) {
                    Barrier barrier2 = (Barrier) constraintWidget6;
                    if (barrier2.getOrientation() == 1) {
                        c(0, barrier2, measurer, 1, isRtl);
                    }
                }
            }
        }
        for (int i10 = 0; i10 < size; i10++) {
            ConstraintWidget constraintWidget7 = children.get(i10);
            if (constraintWidget7.isMeasureRequested() && a(0, constraintWidget7)) {
                ConstraintWidgetContainer.measure(0, constraintWidget7, measurer, f2590c, BasicMeasure.Measure.SELF_DIMENSIONS);
                if (constraintWidget7 instanceof Guideline) {
                    if (((Guideline) constraintWidget7).getOrientation() == 0) {
                        h(0, constraintWidget7, measurer);
                    } else {
                        b(0, constraintWidget7, measurer, isRtl);
                    }
                } else {
                    b(0, constraintWidget7, measurer, isRtl);
                    h(0, constraintWidget7, measurer);
                }
            }
        }
    }
}
