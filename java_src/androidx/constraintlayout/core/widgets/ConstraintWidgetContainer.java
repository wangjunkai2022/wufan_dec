package androidx.constraintlayout.core.widgets;

import androidx.constraintlayout.core.LinearSystem;
import androidx.constraintlayout.core.Metrics;
import androidx.constraintlayout.core.SolverVariable;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import androidx.constraintlayout.core.widgets.analyzer.DependencyGraph;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
/* loaded from: classes.dex */
public class ConstraintWidgetContainer extends WidgetContainer {
    private static final int M0 = 8;
    private static final boolean N0 = false;
    private static final boolean O0 = false;
    static final boolean P0 = false;
    static int Q0;
    int A0;
    ChainHead[] B0;
    ChainHead[] C0;
    private int D0;
    private boolean E0;
    private boolean F0;
    int G0;
    private WeakReference<ConstraintAnchor> H0;
    private WeakReference<ConstraintAnchor> I0;
    private WeakReference<ConstraintAnchor> J0;
    private WeakReference<ConstraintAnchor> K0;
    HashSet<ConstraintWidget> L0;
    public DependencyGraph mDependencyGraph;
    public boolean mGroupsWrapOptimized;
    public int mHorizontalChainsSize;
    public boolean mHorizontalWrapOptimized;
    public BasicMeasure.Measure mMeasure;
    public Metrics mMetrics;
    public boolean mSkipSolver;
    public int mVerticalChainsSize;
    public boolean mVerticalWrapOptimized;
    public int mWrapFixedHeight;
    public int mWrapFixedWidth;

    /* renamed from: s0  reason: collision with root package name */
    BasicMeasure f2511s0;

    /* renamed from: t0  reason: collision with root package name */
    private int f2512t0;

    /* renamed from: u0  reason: collision with root package name */
    protected BasicMeasure.Measurer f2513u0;

    /* renamed from: v0  reason: collision with root package name */
    private boolean f2514v0;

    /* renamed from: w0  reason: collision with root package name */
    protected LinearSystem f2515w0;

    /* renamed from: x0  reason: collision with root package name */
    int f2516x0;

    /* renamed from: y0  reason: collision with root package name */
    int f2517y0;

    /* renamed from: z0  reason: collision with root package name */
    int f2518z0;

    public ConstraintWidgetContainer() {
        this.f2511s0 = new BasicMeasure(this);
        this.mDependencyGraph = new DependencyGraph(this);
        this.f2513u0 = null;
        this.f2514v0 = false;
        this.f2515w0 = new LinearSystem();
        this.mHorizontalChainsSize = 0;
        this.mVerticalChainsSize = 0;
        this.B0 = new ChainHead[4];
        this.C0 = new ChainHead[4];
        this.mGroupsWrapOptimized = false;
        this.mHorizontalWrapOptimized = false;
        this.mVerticalWrapOptimized = false;
        this.mWrapFixedWidth = 0;
        this.mWrapFixedHeight = 0;
        this.D0 = 257;
        this.mSkipSolver = false;
        this.E0 = false;
        this.F0 = false;
        this.G0 = 0;
        this.H0 = null;
        this.I0 = null;
        this.J0 = null;
        this.K0 = null;
        this.L0 = new HashSet<>();
        this.mMeasure = new BasicMeasure.Measure();
    }

    private void s(ConstraintWidget constraintWidget) {
        int i2 = this.mHorizontalChainsSize + 1;
        ChainHead[] chainHeadArr = this.C0;
        if (i2 >= chainHeadArr.length) {
            this.C0 = (ChainHead[]) Arrays.copyOf(chainHeadArr, chainHeadArr.length * 2);
        }
        this.C0[this.mHorizontalChainsSize] = new ChainHead(constraintWidget, 0, isRtl());
        this.mHorizontalChainsSize++;
    }

    private void t(ConstraintAnchor constraintAnchor, SolverVariable solverVariable) {
        this.f2515w0.addGreaterThan(solverVariable, this.f2515w0.createObjectVariable(constraintAnchor), 0, 5);
    }

    private void u(ConstraintAnchor constraintAnchor, SolverVariable solverVariable) {
        this.f2515w0.addGreaterThan(this.f2515w0.createObjectVariable(constraintAnchor), solverVariable, 0, 5);
    }

    private void v(ConstraintWidget constraintWidget) {
        int i2 = this.mVerticalChainsSize + 1;
        ChainHead[] chainHeadArr = this.B0;
        if (i2 >= chainHeadArr.length) {
            this.B0 = (ChainHead[]) Arrays.copyOf(chainHeadArr, chainHeadArr.length * 2);
        }
        this.B0[this.mVerticalChainsSize] = new ChainHead(constraintWidget, 1, isRtl());
        this.mVerticalChainsSize++;
    }

    private void y() {
        this.mHorizontalChainsSize = 0;
        this.mVerticalChainsSize = 0;
    }

    public boolean addChildrenToSolver(LinearSystem linearSystem) {
        boolean optimizeFor = optimizeFor(64);
        addToSolver(linearSystem, optimizeFor);
        int size = this.mChildren.size();
        boolean z3 = false;
        for (int i2 = 0; i2 < size; i2++) {
            ConstraintWidget constraintWidget = this.mChildren.get(i2);
            constraintWidget.p(0, false);
            constraintWidget.p(1, false);
            if (constraintWidget instanceof Barrier) {
                z3 = true;
            }
        }
        if (z3) {
            for (int i4 = 0; i4 < size; i4++) {
                ConstraintWidget constraintWidget2 = this.mChildren.get(i4);
                if (constraintWidget2 instanceof Barrier) {
                    ((Barrier) constraintWidget2).r();
                }
            }
        }
        this.L0.clear();
        for (int i5 = 0; i5 < size; i5++) {
            ConstraintWidget constraintWidget3 = this.mChildren.get(i5);
            if (constraintWidget3.b()) {
                if (constraintWidget3 instanceof VirtualLayout) {
                    this.L0.add(constraintWidget3);
                } else {
                    constraintWidget3.addToSolver(linearSystem, optimizeFor);
                }
            }
        }
        while (this.L0.size() > 0) {
            int size2 = this.L0.size();
            Iterator<ConstraintWidget> it2 = this.L0.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                VirtualLayout virtualLayout = (VirtualLayout) it2.next();
                if (virtualLayout.contains(this.L0)) {
                    virtualLayout.addToSolver(linearSystem, optimizeFor);
                    this.L0.remove(virtualLayout);
                    break;
                }
            }
            if (size2 == this.L0.size()) {
                Iterator<ConstraintWidget> it3 = this.L0.iterator();
                while (it3.hasNext()) {
                    it3.next().addToSolver(linearSystem, optimizeFor);
                }
                this.L0.clear();
            }
        }
        if (LinearSystem.USE_DEPENDENCY_ORDERING) {
            HashSet<ConstraintWidget> hashSet = new HashSet<>();
            for (int i6 = 0; i6 < size; i6++) {
                ConstraintWidget constraintWidget4 = this.mChildren.get(i6);
                if (!constraintWidget4.b()) {
                    hashSet.add(constraintWidget4);
                }
            }
            addChildrenToSolverByDependency(this, linearSystem, hashSet, getHorizontalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT ? 0 : 1, false);
            Iterator<ConstraintWidget> it4 = hashSet.iterator();
            while (it4.hasNext()) {
                ConstraintWidget next = it4.next();
                Optimizer.a(this, linearSystem, next);
                next.addToSolver(linearSystem, optimizeFor);
            }
        } else {
            for (int i7 = 0; i7 < size; i7++) {
                ConstraintWidget constraintWidget5 = this.mChildren.get(i7);
                if (constraintWidget5 instanceof ConstraintWidgetContainer) {
                    ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr = constraintWidget5.mListDimensionBehaviors;
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour = dimensionBehaviourArr[0];
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = dimensionBehaviourArr[1];
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour3 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                    if (dimensionBehaviour == dimensionBehaviour3) {
                        constraintWidget5.setHorizontalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.FIXED);
                    }
                    if (dimensionBehaviour2 == dimensionBehaviour3) {
                        constraintWidget5.setVerticalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.FIXED);
                    }
                    constraintWidget5.addToSolver(linearSystem, optimizeFor);
                    if (dimensionBehaviour == dimensionBehaviour3) {
                        constraintWidget5.setHorizontalDimensionBehaviour(dimensionBehaviour);
                    }
                    if (dimensionBehaviour2 == dimensionBehaviour3) {
                        constraintWidget5.setVerticalDimensionBehaviour(dimensionBehaviour2);
                    }
                } else {
                    Optimizer.a(this, linearSystem, constraintWidget5);
                    if (!constraintWidget5.b()) {
                        constraintWidget5.addToSolver(linearSystem, optimizeFor);
                    }
                }
            }
        }
        if (this.mHorizontalChainsSize > 0) {
            Chain.applyChainConstraints(this, linearSystem, null, 0);
        }
        if (this.mVerticalChainsSize > 0) {
            Chain.applyChainConstraints(this, linearSystem, null, 1);
        }
        return true;
    }

    public void addHorizontalWrapMaxVariable(ConstraintAnchor constraintAnchor) {
        WeakReference<ConstraintAnchor> weakReference = this.K0;
        if (weakReference == null || weakReference.get() == null || constraintAnchor.getFinalValue() > this.K0.get().getFinalValue()) {
            this.K0 = new WeakReference<>(constraintAnchor);
        }
    }

    public void addHorizontalWrapMinVariable(ConstraintAnchor constraintAnchor) {
        WeakReference<ConstraintAnchor> weakReference = this.I0;
        if (weakReference == null || weakReference.get() == null || constraintAnchor.getFinalValue() > this.I0.get().getFinalValue()) {
            this.I0 = new WeakReference<>(constraintAnchor);
        }
    }

    public void defineTerminalWidgets() {
        this.mDependencyGraph.defineTerminalWidgets(getHorizontalDimensionBehaviour(), getVerticalDimensionBehaviour());
    }

    public boolean directMeasure(boolean z3) {
        return this.mDependencyGraph.directMeasure(z3);
    }

    public boolean directMeasureSetup(boolean z3) {
        return this.mDependencyGraph.directMeasureSetup(z3);
    }

    public boolean directMeasureWithOrientation(boolean z3, int i2) {
        return this.mDependencyGraph.directMeasureWithOrientation(z3, i2);
    }

    public void fillMetrics(Metrics metrics) {
        this.mMetrics = metrics;
        this.f2515w0.fillMetrics(metrics);
    }

    public ArrayList<Guideline> getHorizontalGuidelines() {
        ArrayList<Guideline> arrayList = new ArrayList<>();
        int size = this.mChildren.size();
        for (int i2 = 0; i2 < size; i2++) {
            ConstraintWidget constraintWidget = this.mChildren.get(i2);
            if (constraintWidget instanceof Guideline) {
                Guideline guideline = (Guideline) constraintWidget;
                if (guideline.getOrientation() == 0) {
                    arrayList.add(guideline);
                }
            }
        }
        return arrayList;
    }

    public BasicMeasure.Measurer getMeasurer() {
        return this.f2513u0;
    }

    public int getOptimizationLevel() {
        return this.D0;
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public void getSceneString(StringBuilder sb) {
        sb.append(this.stringId + ":{\n");
        sb.append("  actualWidth:" + this.f2507y);
        sb.append("\n");
        sb.append("  actualHeight:" + this.f2508z);
        sb.append("\n");
        Iterator<ConstraintWidget> it2 = getChildren().iterator();
        while (it2.hasNext()) {
            it2.next().getSceneString(sb);
            sb.append(",\n");
        }
        sb.append("}");
    }

    public LinearSystem getSystem() {
        return this.f2515w0;
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public String getType() {
        return "ConstraintLayout";
    }

    public ArrayList<Guideline> getVerticalGuidelines() {
        ArrayList<Guideline> arrayList = new ArrayList<>();
        int size = this.mChildren.size();
        for (int i2 = 0; i2 < size; i2++) {
            ConstraintWidget constraintWidget = this.mChildren.get(i2);
            if (constraintWidget instanceof Guideline) {
                Guideline guideline = (Guideline) constraintWidget;
                if (guideline.getOrientation() == 1) {
                    arrayList.add(guideline);
                }
            }
        }
        return arrayList;
    }

    public boolean handlesInternalConstraints() {
        return false;
    }

    public void invalidateGraph() {
        this.mDependencyGraph.invalidateGraph();
    }

    public void invalidateMeasures() {
        this.mDependencyGraph.invalidateMeasures();
    }

    public boolean isHeightMeasuredTooSmall() {
        return this.F0;
    }

    public boolean isRtl() {
        return this.f2514v0;
    }

    public boolean isWidthMeasuredTooSmall() {
        return this.E0;
    }

    /* JADX WARN: Removed duplicated region for block: B:157:0x031b  */
    /* JADX WARN: Removed duplicated region for block: B:158:0x031d  */
    /* JADX WARN: Type inference failed for: r6v3 */
    /* JADX WARN: Type inference failed for: r6v4, types: [boolean] */
    /* JADX WARN: Type inference failed for: r6v6 */
    @Override // androidx.constraintlayout.core.widgets.WidgetContainer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void layout() {
        /*
            Method dump skipped, instructions count: 826
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.core.widgets.ConstraintWidgetContainer.layout():void");
    }

    public long measure(int i2, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11) {
        this.f2516x0 = i10;
        this.f2517y0 = i11;
        return this.f2511s0.solverMeasure(this, i2, i10, i11, i4, i5, i6, i7, i8, i9);
    }

    public boolean optimizeFor(int i2) {
        return (this.D0 & i2) == i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void r(ConstraintWidget constraintWidget, int i2) {
        if (i2 == 0) {
            s(constraintWidget);
        } else if (i2 == 1) {
            v(constraintWidget);
        }
    }

    @Override // androidx.constraintlayout.core.widgets.WidgetContainer, androidx.constraintlayout.core.widgets.ConstraintWidget
    public void reset() {
        this.f2515w0.reset();
        this.f2516x0 = 0;
        this.f2518z0 = 0;
        this.f2517y0 = 0;
        this.A0 = 0;
        this.mSkipSolver = false;
        super.reset();
    }

    public void setMeasurer(BasicMeasure.Measurer measurer) {
        this.f2513u0 = measurer;
        this.mDependencyGraph.setMeasurer(measurer);
    }

    public void setOptimizationLevel(int i2) {
        this.D0 = i2;
        LinearSystem.USE_DEPENDENCY_ORDERING = optimizeFor(512);
    }

    public void setPadding(int i2, int i4, int i5, int i6) {
        this.f2516x0 = i2;
        this.f2517y0 = i4;
        this.f2518z0 = i5;
        this.A0 = i6;
    }

    public void setPass(int i2) {
        this.f2512t0 = i2;
    }

    public void setRtl(boolean z3) {
        this.f2514v0 = z3;
    }

    public boolean updateChildrenFromSolver(LinearSystem linearSystem, boolean[] zArr) {
        zArr[2] = false;
        boolean optimizeFor = optimizeFor(64);
        updateFromSolver(linearSystem, optimizeFor);
        int size = this.mChildren.size();
        boolean z3 = false;
        for (int i2 = 0; i2 < size; i2++) {
            ConstraintWidget constraintWidget = this.mChildren.get(i2);
            constraintWidget.updateFromSolver(linearSystem, optimizeFor);
            if (constraintWidget.hasDimensionOverride()) {
                z3 = true;
            }
        }
        return z3;
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public void updateFromRuns(boolean z3, boolean z4) {
        super.updateFromRuns(z3, z4);
        int size = this.mChildren.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.mChildren.get(i2).updateFromRuns(z3, z4);
        }
    }

    public void updateHierarchy() {
        this.f2511s0.updateHierarchy(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void w(ConstraintAnchor constraintAnchor) {
        WeakReference<ConstraintAnchor> weakReference = this.J0;
        if (weakReference == null || weakReference.get() == null || constraintAnchor.getFinalValue() > this.J0.get().getFinalValue()) {
            this.J0 = new WeakReference<>(constraintAnchor);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void x(ConstraintAnchor constraintAnchor) {
        WeakReference<ConstraintAnchor> weakReference = this.H0;
        if (weakReference == null || weakReference.get() == null || constraintAnchor.getFinalValue() > this.H0.get().getFinalValue()) {
            this.H0 = new WeakReference<>(constraintAnchor);
        }
    }

    public static boolean measure(int i2, ConstraintWidget constraintWidget, BasicMeasure.Measurer measurer, BasicMeasure.Measure measure, int i4) {
        int i5;
        int i6;
        if (measurer == null) {
            return false;
        }
        if (constraintWidget.getVisibility() != 8 && !(constraintWidget instanceof Guideline) && !(constraintWidget instanceof Barrier)) {
            measure.horizontalBehavior = constraintWidget.getHorizontalDimensionBehaviour();
            measure.verticalBehavior = constraintWidget.getVerticalDimensionBehaviour();
            measure.horizontalDimension = constraintWidget.getWidth();
            measure.verticalDimension = constraintWidget.getHeight();
            measure.measuredNeedsSolverPass = false;
            measure.measureStrategy = i4;
            ConstraintWidget.DimensionBehaviour dimensionBehaviour = measure.horizontalBehavior;
            ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
            boolean z3 = dimensionBehaviour == dimensionBehaviour2;
            boolean z4 = measure.verticalBehavior == dimensionBehaviour2;
            boolean z5 = z3 && constraintWidget.mDimensionRatio > 0.0f;
            boolean z6 = z4 && constraintWidget.mDimensionRatio > 0.0f;
            if (z3 && constraintWidget.hasDanglingDimension(0) && constraintWidget.mMatchConstraintDefaultWidth == 0 && !z5) {
                measure.horizontalBehavior = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                if (z4 && constraintWidget.mMatchConstraintDefaultHeight == 0) {
                    measure.horizontalBehavior = ConstraintWidget.DimensionBehaviour.FIXED;
                }
                z3 = false;
            }
            if (z4 && constraintWidget.hasDanglingDimension(1) && constraintWidget.mMatchConstraintDefaultHeight == 0 && !z6) {
                measure.verticalBehavior = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                if (z3 && constraintWidget.mMatchConstraintDefaultWidth == 0) {
                    measure.verticalBehavior = ConstraintWidget.DimensionBehaviour.FIXED;
                }
                z4 = false;
            }
            if (constraintWidget.isResolvedHorizontally()) {
                measure.horizontalBehavior = ConstraintWidget.DimensionBehaviour.FIXED;
                z3 = false;
            }
            if (constraintWidget.isResolvedVertically()) {
                measure.verticalBehavior = ConstraintWidget.DimensionBehaviour.FIXED;
                z4 = false;
            }
            if (z5) {
                if (constraintWidget.mResolvedMatchConstraintDefault[0] == 4) {
                    measure.horizontalBehavior = ConstraintWidget.DimensionBehaviour.FIXED;
                } else if (!z4) {
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour3 = measure.verticalBehavior;
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour4 = ConstraintWidget.DimensionBehaviour.FIXED;
                    if (dimensionBehaviour3 == dimensionBehaviour4) {
                        i6 = measure.verticalDimension;
                    } else {
                        measure.horizontalBehavior = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                        measurer.measure(constraintWidget, measure);
                        i6 = measure.measuredHeight;
                    }
                    measure.horizontalBehavior = dimensionBehaviour4;
                    measure.horizontalDimension = (int) (constraintWidget.getDimensionRatio() * i6);
                }
            }
            if (z6) {
                if (constraintWidget.mResolvedMatchConstraintDefault[1] == 4) {
                    measure.verticalBehavior = ConstraintWidget.DimensionBehaviour.FIXED;
                } else if (!z3) {
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour5 = measure.horizontalBehavior;
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour6 = ConstraintWidget.DimensionBehaviour.FIXED;
                    if (dimensionBehaviour5 == dimensionBehaviour6) {
                        i5 = measure.horizontalDimension;
                    } else {
                        measure.verticalBehavior = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                        measurer.measure(constraintWidget, measure);
                        i5 = measure.measuredWidth;
                    }
                    measure.verticalBehavior = dimensionBehaviour6;
                    if (constraintWidget.getDimensionRatioSide() == -1) {
                        measure.verticalDimension = (int) (i5 / constraintWidget.getDimensionRatio());
                    } else {
                        measure.verticalDimension = (int) (constraintWidget.getDimensionRatio() * i5);
                    }
                }
            }
            measurer.measure(constraintWidget, measure);
            constraintWidget.setWidth(measure.measuredWidth);
            constraintWidget.setHeight(measure.measuredHeight);
            constraintWidget.setHasBaseline(measure.measuredHasBaseline);
            constraintWidget.setBaselineDistance(measure.measuredBaseline);
            measure.measureStrategy = BasicMeasure.Measure.SELF_DIMENSIONS;
            return measure.measuredNeedsSolverPass;
        }
        measure.measuredWidth = 0;
        measure.measuredHeight = 0;
        return false;
    }

    public ConstraintWidgetContainer(int i2, int i4, int i5, int i6) {
        super(i2, i4, i5, i6);
        this.f2511s0 = new BasicMeasure(this);
        this.mDependencyGraph = new DependencyGraph(this);
        this.f2513u0 = null;
        this.f2514v0 = false;
        this.f2515w0 = new LinearSystem();
        this.mHorizontalChainsSize = 0;
        this.mVerticalChainsSize = 0;
        this.B0 = new ChainHead[4];
        this.C0 = new ChainHead[4];
        this.mGroupsWrapOptimized = false;
        this.mHorizontalWrapOptimized = false;
        this.mVerticalWrapOptimized = false;
        this.mWrapFixedWidth = 0;
        this.mWrapFixedHeight = 0;
        this.D0 = 257;
        this.mSkipSolver = false;
        this.E0 = false;
        this.F0 = false;
        this.G0 = 0;
        this.H0 = null;
        this.I0 = null;
        this.J0 = null;
        this.K0 = null;
        this.L0 = new HashSet<>();
        this.mMeasure = new BasicMeasure.Measure();
    }

    public ConstraintWidgetContainer(int i2, int i4) {
        super(i2, i4);
        this.f2511s0 = new BasicMeasure(this);
        this.mDependencyGraph = new DependencyGraph(this);
        this.f2513u0 = null;
        this.f2514v0 = false;
        this.f2515w0 = new LinearSystem();
        this.mHorizontalChainsSize = 0;
        this.mVerticalChainsSize = 0;
        this.B0 = new ChainHead[4];
        this.C0 = new ChainHead[4];
        this.mGroupsWrapOptimized = false;
        this.mHorizontalWrapOptimized = false;
        this.mVerticalWrapOptimized = false;
        this.mWrapFixedWidth = 0;
        this.mWrapFixedHeight = 0;
        this.D0 = 257;
        this.mSkipSolver = false;
        this.E0 = false;
        this.F0 = false;
        this.G0 = 0;
        this.H0 = null;
        this.I0 = null;
        this.J0 = null;
        this.K0 = null;
        this.L0 = new HashSet<>();
        this.mMeasure = new BasicMeasure.Measure();
    }

    public ConstraintWidgetContainer(String str, int i2, int i4) {
        super(i2, i4);
        this.f2511s0 = new BasicMeasure(this);
        this.mDependencyGraph = new DependencyGraph(this);
        this.f2513u0 = null;
        this.f2514v0 = false;
        this.f2515w0 = new LinearSystem();
        this.mHorizontalChainsSize = 0;
        this.mVerticalChainsSize = 0;
        this.B0 = new ChainHead[4];
        this.C0 = new ChainHead[4];
        this.mGroupsWrapOptimized = false;
        this.mHorizontalWrapOptimized = false;
        this.mVerticalWrapOptimized = false;
        this.mWrapFixedWidth = 0;
        this.mWrapFixedHeight = 0;
        this.D0 = 257;
        this.mSkipSolver = false;
        this.E0 = false;
        this.F0 = false;
        this.G0 = 0;
        this.H0 = null;
        this.I0 = null;
        this.J0 = null;
        this.K0 = null;
        this.L0 = new HashSet<>();
        this.mMeasure = new BasicMeasure.Measure();
        setDebugName(str);
    }
}
