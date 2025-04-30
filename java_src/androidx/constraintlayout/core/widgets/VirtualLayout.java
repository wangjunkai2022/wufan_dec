package androidx.constraintlayout.core.widgets;

import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import java.util.HashSet;
/* loaded from: classes.dex */
public class VirtualLayout extends HelperWidget {

    /* renamed from: s0  reason: collision with root package name */
    private int f2556s0 = 0;

    /* renamed from: t0  reason: collision with root package name */
    private int f2557t0 = 0;

    /* renamed from: u0  reason: collision with root package name */
    private int f2558u0 = 0;

    /* renamed from: v0  reason: collision with root package name */
    private int f2559v0 = 0;

    /* renamed from: w0  reason: collision with root package name */
    private int f2560w0 = 0;

    /* renamed from: x0  reason: collision with root package name */
    private int f2561x0 = 0;

    /* renamed from: y0  reason: collision with root package name */
    private int f2562y0 = 0;

    /* renamed from: z0  reason: collision with root package name */
    private int f2563z0 = 0;
    private boolean A0 = false;
    private int B0 = 0;
    private int C0 = 0;
    protected BasicMeasure.Measure D0 = new BasicMeasure.Measure();
    BasicMeasure.Measurer E0 = null;

    public void applyRtl(boolean z3) {
        int i2 = this.f2560w0;
        if (i2 > 0 || this.f2561x0 > 0) {
            if (z3) {
                this.f2562y0 = this.f2561x0;
                this.f2563z0 = i2;
                return;
            }
            this.f2562y0 = i2;
            this.f2563z0 = this.f2561x0;
        }
    }

    public void captureWidgets() {
        for (int i2 = 0; i2 < this.mWidgetsCount; i2++) {
            ConstraintWidget constraintWidget = this.mWidgets[i2];
            if (constraintWidget != null) {
                constraintWidget.setInVirtualLayout(true);
            }
        }
    }

    public boolean contains(HashSet<ConstraintWidget> hashSet) {
        for (int i2 = 0; i2 < this.mWidgetsCount; i2++) {
            if (hashSet.contains(this.mWidgets[i2])) {
                return true;
            }
        }
        return false;
    }

    public int getMeasuredHeight() {
        return this.C0;
    }

    public int getMeasuredWidth() {
        return this.B0;
    }

    public int getPaddingBottom() {
        return this.f2557t0;
    }

    public int getPaddingLeft() {
        return this.f2562y0;
    }

    public int getPaddingRight() {
        return this.f2563z0;
    }

    public int getPaddingTop() {
        return this.f2556s0;
    }

    public void measure(int i2, int i4, int i5, int i6) {
    }

    public boolean needSolverPass() {
        return this.A0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void r(ConstraintWidget constraintWidget, ConstraintWidget.DimensionBehaviour dimensionBehaviour, int i2, ConstraintWidget.DimensionBehaviour dimensionBehaviour2, int i4) {
        while (this.E0 == null && getParent() != null) {
            this.E0 = ((ConstraintWidgetContainer) getParent()).getMeasurer();
        }
        BasicMeasure.Measure measure = this.D0;
        measure.horizontalBehavior = dimensionBehaviour;
        measure.verticalBehavior = dimensionBehaviour2;
        measure.horizontalDimension = i2;
        measure.verticalDimension = i4;
        this.E0.measure(constraintWidget, measure);
        constraintWidget.setWidth(this.D0.measuredWidth);
        constraintWidget.setHeight(this.D0.measuredHeight);
        constraintWidget.setHasBaseline(this.D0.measuredHasBaseline);
        constraintWidget.setBaselineDistance(this.D0.measuredBaseline);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean s() {
        ConstraintWidget constraintWidget = this.mParent;
        BasicMeasure.Measurer measurer = constraintWidget != null ? ((ConstraintWidgetContainer) constraintWidget).getMeasurer() : null;
        if (measurer == null) {
            return false;
        }
        int i2 = 0;
        while (true) {
            boolean z3 = true;
            if (i2 >= this.mWidgetsCount) {
                return true;
            }
            ConstraintWidget constraintWidget2 = this.mWidgets[i2];
            if (constraintWidget2 != null && !(constraintWidget2 instanceof Guideline)) {
                ConstraintWidget.DimensionBehaviour dimensionBehaviour = constraintWidget2.getDimensionBehaviour(0);
                ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = constraintWidget2.getDimensionBehaviour(1);
                ConstraintWidget.DimensionBehaviour dimensionBehaviour3 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                if (!((dimensionBehaviour != dimensionBehaviour3 || constraintWidget2.mMatchConstraintDefaultWidth == 1 || dimensionBehaviour2 != dimensionBehaviour3 || constraintWidget2.mMatchConstraintDefaultHeight == 1) ? false : false)) {
                    if (dimensionBehaviour == dimensionBehaviour3) {
                        dimensionBehaviour = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                    }
                    if (dimensionBehaviour2 == dimensionBehaviour3) {
                        dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                    }
                    BasicMeasure.Measure measure = this.D0;
                    measure.horizontalBehavior = dimensionBehaviour;
                    measure.verticalBehavior = dimensionBehaviour2;
                    measure.horizontalDimension = constraintWidget2.getWidth();
                    this.D0.verticalDimension = constraintWidget2.getHeight();
                    measurer.measure(constraintWidget2, this.D0);
                    constraintWidget2.setWidth(this.D0.measuredWidth);
                    constraintWidget2.setHeight(this.D0.measuredHeight);
                    constraintWidget2.setBaselineDistance(this.D0.measuredBaseline);
                }
            }
            i2++;
        }
    }

    public void setMeasure(int i2, int i4) {
        this.B0 = i2;
        this.C0 = i4;
    }

    public void setPadding(int i2) {
        this.f2558u0 = i2;
        this.f2556s0 = i2;
        this.f2559v0 = i2;
        this.f2557t0 = i2;
        this.f2560w0 = i2;
        this.f2561x0 = i2;
    }

    public void setPaddingBottom(int i2) {
        this.f2557t0 = i2;
    }

    public void setPaddingEnd(int i2) {
        this.f2561x0 = i2;
    }

    public void setPaddingLeft(int i2) {
        this.f2558u0 = i2;
        this.f2562y0 = i2;
    }

    public void setPaddingRight(int i2) {
        this.f2559v0 = i2;
        this.f2563z0 = i2;
    }

    public void setPaddingStart(int i2) {
        this.f2560w0 = i2;
        this.f2562y0 = i2;
        this.f2563z0 = i2;
    }

    public void setPaddingTop(int i2) {
        this.f2556s0 = i2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void t(boolean z3) {
        this.A0 = z3;
    }

    @Override // androidx.constraintlayout.core.widgets.HelperWidget, androidx.constraintlayout.core.widgets.Helper
    public void updateConstraints(ConstraintWidgetContainer constraintWidgetContainer) {
        captureWidgets();
    }
}
