package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.Helper;
import androidx.constraintlayout.core.widgets.analyzer.DependencyNode;
import androidx.constraintlayout.core.widgets.analyzer.WidgetRun;
/* loaded from: classes.dex */
public class VerticalWidgetRun extends WidgetRun {
    public DependencyNode baseline;

    /* renamed from: g  reason: collision with root package name */
    DimensionDependency f2603g;

    /* renamed from: androidx.constraintlayout.core.widgets.analyzer.VerticalWidgetRun$1  reason: invalid class name */
    /* loaded from: classes.dex */
    static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f2604a;

        static {
            int[] iArr = new int[WidgetRun.RunType.values().length];
            f2604a = iArr;
            try {
                iArr[WidgetRun.RunType.START.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f2604a[WidgetRun.RunType.END.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f2604a[WidgetRun.RunType.CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public VerticalWidgetRun(ConstraintWidget constraintWidget) {
        super(constraintWidget);
        DependencyNode dependencyNode = new DependencyNode(this);
        this.baseline = dependencyNode;
        this.f2603g = null;
        this.start.f2582b = DependencyNode.Type.TOP;
        this.end.f2582b = DependencyNode.Type.BOTTOM;
        dependencyNode.f2582b = DependencyNode.Type.BASELINE;
        this.orientation = 1;
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    public void applyToWidget() {
        DependencyNode dependencyNode = this.start;
        if (dependencyNode.resolved) {
            this.f2621a.setY(dependencyNode.value);
        }
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    void c() {
        ConstraintWidget parent;
        ConstraintWidget parent2;
        ConstraintWidget constraintWidget = this.f2621a;
        if (constraintWidget.measured) {
            this.f2624d.resolve(constraintWidget.getHeight());
        }
        if (!this.f2624d.resolved) {
            this.f2623c = this.f2621a.getVerticalDimensionBehaviour();
            if (this.f2621a.hasBaseline()) {
                this.f2603g = new BaselineDimensionDependency(this);
            }
            ConstraintWidget.DimensionBehaviour dimensionBehaviour = this.f2623c;
            if (dimensionBehaviour != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                if (dimensionBehaviour == ConstraintWidget.DimensionBehaviour.MATCH_PARENT && (parent2 = this.f2621a.getParent()) != null && parent2.getVerticalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.FIXED) {
                    int height = (parent2.getHeight() - this.f2621a.mTop.getMargin()) - this.f2621a.mBottom.getMargin();
                    a(this.start, parent2.verticalRun.start, this.f2621a.mTop.getMargin());
                    a(this.end, parent2.verticalRun.end, -this.f2621a.mBottom.getMargin());
                    this.f2624d.resolve(height);
                    return;
                } else if (this.f2623c == ConstraintWidget.DimensionBehaviour.FIXED) {
                    this.f2624d.resolve(this.f2621a.getHeight());
                }
            }
        } else if (this.f2623c == ConstraintWidget.DimensionBehaviour.MATCH_PARENT && (parent = this.f2621a.getParent()) != null && parent.getVerticalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.FIXED) {
            a(this.start, parent.verticalRun.start, this.f2621a.mTop.getMargin());
            a(this.end, parent.verticalRun.end, -this.f2621a.mBottom.getMargin());
            return;
        }
        DimensionDependency dimensionDependency = this.f2624d;
        boolean z3 = dimensionDependency.resolved;
        if (z3) {
            ConstraintWidget constraintWidget2 = this.f2621a;
            if (constraintWidget2.measured) {
                ConstraintAnchor[] constraintAnchorArr = constraintWidget2.mListAnchors;
                if (constraintAnchorArr[2].mTarget != null && constraintAnchorArr[3].mTarget != null) {
                    if (constraintWidget2.isInVerticalChain()) {
                        this.start.f2583c = this.f2621a.mListAnchors[2].getMargin();
                        this.end.f2583c = -this.f2621a.mListAnchors[3].getMargin();
                    } else {
                        DependencyNode f4 = f(this.f2621a.mListAnchors[2]);
                        if (f4 != null) {
                            a(this.start, f4, this.f2621a.mListAnchors[2].getMargin());
                        }
                        DependencyNode f5 = f(this.f2621a.mListAnchors[3]);
                        if (f5 != null) {
                            a(this.end, f5, -this.f2621a.mListAnchors[3].getMargin());
                        }
                        this.start.delegateToWidgetRun = true;
                        this.end.delegateToWidgetRun = true;
                    }
                    if (this.f2621a.hasBaseline()) {
                        a(this.baseline, this.start, this.f2621a.getBaselineDistance());
                        return;
                    }
                    return;
                } else if (constraintAnchorArr[2].mTarget != null) {
                    DependencyNode f6 = f(constraintAnchorArr[2]);
                    if (f6 != null) {
                        a(this.start, f6, this.f2621a.mListAnchors[2].getMargin());
                        a(this.end, this.start, this.f2624d.value);
                        if (this.f2621a.hasBaseline()) {
                            a(this.baseline, this.start, this.f2621a.getBaselineDistance());
                            return;
                        }
                        return;
                    }
                    return;
                } else if (constraintAnchorArr[3].mTarget != null) {
                    DependencyNode f7 = f(constraintAnchorArr[3]);
                    if (f7 != null) {
                        a(this.end, f7, -this.f2621a.mListAnchors[3].getMargin());
                        a(this.start, this.end, -this.f2624d.value);
                    }
                    if (this.f2621a.hasBaseline()) {
                        a(this.baseline, this.start, this.f2621a.getBaselineDistance());
                        return;
                    }
                    return;
                } else if (constraintAnchorArr[4].mTarget != null) {
                    DependencyNode f8 = f(constraintAnchorArr[4]);
                    if (f8 != null) {
                        a(this.baseline, f8, 0);
                        a(this.start, this.baseline, -this.f2621a.getBaselineDistance());
                        a(this.end, this.start, this.f2624d.value);
                        return;
                    }
                    return;
                } else if ((constraintWidget2 instanceof Helper) || constraintWidget2.getParent() == null || this.f2621a.getAnchor(ConstraintAnchor.Type.CENTER).mTarget != null) {
                    return;
                } else {
                    a(this.start, this.f2621a.getParent().verticalRun.start, this.f2621a.getY());
                    a(this.end, this.start, this.f2624d.value);
                    if (this.f2621a.hasBaseline()) {
                        a(this.baseline, this.start, this.f2621a.getBaselineDistance());
                        return;
                    }
                    return;
                }
            }
        }
        if (!z3 && this.f2623c == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
            ConstraintWidget constraintWidget3 = this.f2621a;
            int i2 = constraintWidget3.mMatchConstraintDefaultHeight;
            if (i2 != 2) {
                if (i2 == 3 && !constraintWidget3.isInVerticalChain()) {
                    ConstraintWidget constraintWidget4 = this.f2621a;
                    if (constraintWidget4.mMatchConstraintDefaultWidth != 3) {
                        DimensionDependency dimensionDependency2 = constraintWidget4.horizontalRun.f2624d;
                        this.f2624d.f2587g.add(dimensionDependency2);
                        dimensionDependency2.f2586f.add(this.f2624d);
                        DimensionDependency dimensionDependency3 = this.f2624d;
                        dimensionDependency3.delegateToWidgetRun = true;
                        dimensionDependency3.f2586f.add(this.start);
                        this.f2624d.f2586f.add(this.end);
                    }
                }
            } else {
                ConstraintWidget parent3 = constraintWidget3.getParent();
                if (parent3 != null) {
                    DimensionDependency dimensionDependency4 = parent3.verticalRun.f2624d;
                    this.f2624d.f2587g.add(dimensionDependency4);
                    dimensionDependency4.f2586f.add(this.f2624d);
                    DimensionDependency dimensionDependency5 = this.f2624d;
                    dimensionDependency5.delegateToWidgetRun = true;
                    dimensionDependency5.f2586f.add(this.start);
                    this.f2624d.f2586f.add(this.end);
                }
            }
        } else {
            dimensionDependency.addDependency(this);
        }
        ConstraintWidget constraintWidget5 = this.f2621a;
        ConstraintAnchor[] constraintAnchorArr2 = constraintWidget5.mListAnchors;
        if (constraintAnchorArr2[2].mTarget != null && constraintAnchorArr2[3].mTarget != null) {
            if (constraintWidget5.isInVerticalChain()) {
                this.start.f2583c = this.f2621a.mListAnchors[2].getMargin();
                this.end.f2583c = -this.f2621a.mListAnchors[3].getMargin();
            } else {
                DependencyNode f9 = f(this.f2621a.mListAnchors[2]);
                DependencyNode f10 = f(this.f2621a.mListAnchors[3]);
                if (f9 != null) {
                    f9.addDependency(this);
                }
                if (f10 != null) {
                    f10.addDependency(this);
                }
                this.f2626f = WidgetRun.RunType.CENTER;
            }
            if (this.f2621a.hasBaseline()) {
                b(this.baseline, this.start, 1, this.f2603g);
            }
        } else if (constraintAnchorArr2[2].mTarget != null) {
            DependencyNode f11 = f(constraintAnchorArr2[2]);
            if (f11 != null) {
                a(this.start, f11, this.f2621a.mListAnchors[2].getMargin());
                b(this.end, this.start, 1, this.f2624d);
                if (this.f2621a.hasBaseline()) {
                    b(this.baseline, this.start, 1, this.f2603g);
                }
                ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = this.f2623c;
                ConstraintWidget.DimensionBehaviour dimensionBehaviour3 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                if (dimensionBehaviour2 == dimensionBehaviour3 && this.f2621a.getDimensionRatio() > 0.0f) {
                    HorizontalWidgetRun horizontalWidgetRun = this.f2621a.horizontalRun;
                    if (horizontalWidgetRun.f2623c == dimensionBehaviour3) {
                        horizontalWidgetRun.f2624d.f2586f.add(this.f2624d);
                        this.f2624d.f2587g.add(this.f2621a.horizontalRun.f2624d);
                        this.f2624d.updateDelegate = this;
                    }
                }
            }
        } else if (constraintAnchorArr2[3].mTarget != null) {
            DependencyNode f12 = f(constraintAnchorArr2[3]);
            if (f12 != null) {
                a(this.end, f12, -this.f2621a.mListAnchors[3].getMargin());
                b(this.start, this.end, -1, this.f2624d);
                if (this.f2621a.hasBaseline()) {
                    b(this.baseline, this.start, 1, this.f2603g);
                }
            }
        } else if (constraintAnchorArr2[4].mTarget != null) {
            DependencyNode f13 = f(constraintAnchorArr2[4]);
            if (f13 != null) {
                a(this.baseline, f13, 0);
                b(this.start, this.baseline, -1, this.f2603g);
                b(this.end, this.start, 1, this.f2624d);
            }
        } else if (!(constraintWidget5 instanceof Helper) && constraintWidget5.getParent() != null) {
            a(this.start, this.f2621a.getParent().verticalRun.start, this.f2621a.getY());
            b(this.end, this.start, 1, this.f2624d);
            if (this.f2621a.hasBaseline()) {
                b(this.baseline, this.start, 1, this.f2603g);
            }
            ConstraintWidget.DimensionBehaviour dimensionBehaviour4 = this.f2623c;
            ConstraintWidget.DimensionBehaviour dimensionBehaviour5 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
            if (dimensionBehaviour4 == dimensionBehaviour5 && this.f2621a.getDimensionRatio() > 0.0f) {
                HorizontalWidgetRun horizontalWidgetRun2 = this.f2621a.horizontalRun;
                if (horizontalWidgetRun2.f2623c == dimensionBehaviour5) {
                    horizontalWidgetRun2.f2624d.f2586f.add(this.f2624d);
                    this.f2624d.f2587g.add(this.f2621a.horizontalRun.f2624d);
                    this.f2624d.updateDelegate = this;
                }
            }
        }
        if (this.f2624d.f2587g.size() == 0) {
            this.f2624d.readyToSolve = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    public void d() {
        this.f2622b = null;
        this.start.clear();
        this.end.clear();
        this.baseline.clear();
        this.f2624d.clear();
        this.f2625e = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    public void h() {
        this.f2625e = false;
        this.start.clear();
        this.start.resolved = false;
        this.end.clear();
        this.end.resolved = false;
        this.baseline.clear();
        this.baseline.resolved = false;
        this.f2624d.resolved = false;
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    boolean j() {
        return this.f2623c != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT || this.f2621a.mMatchConstraintDefaultHeight == 0;
    }

    public String toString() {
        return "VerticalRun " + this.f2621a.getDebugName();
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun, androidx.constraintlayout.core.widgets.analyzer.Dependency
    public void update(Dependency dependency) {
        DimensionDependency dimensionDependency;
        float f4;
        float dimensionRatio;
        float f5;
        int i2;
        ConstraintWidget constraintWidget;
        int i4 = AnonymousClass1.f2604a[this.f2626f.ordinal()];
        if (i4 == 1) {
            m(dependency);
        } else if (i4 == 2) {
            l(dependency);
        } else if (i4 == 3) {
            ConstraintWidget constraintWidget2 = this.f2621a;
            k(dependency, constraintWidget2.mTop, constraintWidget2.mBottom, 1);
            return;
        }
        DimensionDependency dimensionDependency2 = this.f2624d;
        if (dimensionDependency2.readyToSolve && !dimensionDependency2.resolved && this.f2623c == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
            ConstraintWidget constraintWidget3 = this.f2621a;
            int i5 = constraintWidget3.mMatchConstraintDefaultHeight;
            if (i5 != 2) {
                if (i5 == 3 && constraintWidget3.horizontalRun.f2624d.resolved) {
                    int dimensionRatioSide = constraintWidget3.getDimensionRatioSide();
                    if (dimensionRatioSide == -1) {
                        ConstraintWidget constraintWidget4 = this.f2621a;
                        f4 = constraintWidget4.horizontalRun.f2624d.value;
                        dimensionRatio = constraintWidget4.getDimensionRatio();
                    } else if (dimensionRatioSide == 0) {
                        f5 = constraintWidget.horizontalRun.f2624d.value * this.f2621a.getDimensionRatio();
                        i2 = (int) (f5 + 0.5f);
                        this.f2624d.resolve(i2);
                    } else if (dimensionRatioSide == 1) {
                        ConstraintWidget constraintWidget5 = this.f2621a;
                        f4 = constraintWidget5.horizontalRun.f2624d.value;
                        dimensionRatio = constraintWidget5.getDimensionRatio();
                    } else {
                        i2 = 0;
                        this.f2624d.resolve(i2);
                    }
                    f5 = f4 / dimensionRatio;
                    i2 = (int) (f5 + 0.5f);
                    this.f2624d.resolve(i2);
                }
            } else {
                ConstraintWidget parent = constraintWidget3.getParent();
                if (parent != null) {
                    if (parent.verticalRun.f2624d.resolved) {
                        this.f2624d.resolve((int) ((dimensionDependency.value * this.f2621a.mMatchConstraintPercentHeight) + 0.5f));
                    }
                }
            }
        }
        DependencyNode dependencyNode = this.start;
        if (dependencyNode.readyToSolve) {
            DependencyNode dependencyNode2 = this.end;
            if (dependencyNode2.readyToSolve) {
                if (dependencyNode.resolved && dependencyNode2.resolved && this.f2624d.resolved) {
                    return;
                }
                if (!this.f2624d.resolved && this.f2623c == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                    ConstraintWidget constraintWidget6 = this.f2621a;
                    if (constraintWidget6.mMatchConstraintDefaultWidth == 0 && !constraintWidget6.isInVerticalChain()) {
                        int i6 = this.start.f2587g.get(0).value;
                        DependencyNode dependencyNode3 = this.start;
                        int i7 = i6 + dependencyNode3.f2583c;
                        int i8 = this.end.f2587g.get(0).value + this.end.f2583c;
                        dependencyNode3.resolve(i7);
                        this.end.resolve(i8);
                        this.f2624d.resolve(i8 - i7);
                        return;
                    }
                }
                if (!this.f2624d.resolved && this.f2623c == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && this.matchConstraintsType == 1 && this.start.f2587g.size() > 0 && this.end.f2587g.size() > 0) {
                    int i9 = (this.end.f2587g.get(0).value + this.end.f2583c) - (this.start.f2587g.get(0).value + this.start.f2583c);
                    DimensionDependency dimensionDependency3 = this.f2624d;
                    int i10 = dimensionDependency3.wrapValue;
                    if (i9 < i10) {
                        dimensionDependency3.resolve(i9);
                    } else {
                        dimensionDependency3.resolve(i10);
                    }
                }
                if (this.f2624d.resolved && this.start.f2587g.size() > 0 && this.end.f2587g.size() > 0) {
                    DependencyNode dependencyNode4 = this.start.f2587g.get(0);
                    DependencyNode dependencyNode5 = this.end.f2587g.get(0);
                    int i11 = dependencyNode4.value + this.start.f2583c;
                    int i12 = dependencyNode5.value + this.end.f2583c;
                    float verticalBiasPercent = this.f2621a.getVerticalBiasPercent();
                    if (dependencyNode4 == dependencyNode5) {
                        i11 = dependencyNode4.value;
                        i12 = dependencyNode5.value;
                        verticalBiasPercent = 0.5f;
                    }
                    this.start.resolve((int) (i11 + 0.5f + (((i12 - i11) - this.f2624d.value) * verticalBiasPercent)));
                    this.end.resolve(this.start.value + this.f2624d.value);
                }
            }
        }
    }
}
