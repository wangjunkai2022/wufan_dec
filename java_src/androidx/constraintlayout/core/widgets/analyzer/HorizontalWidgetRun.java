package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.Helper;
import androidx.constraintlayout.core.widgets.analyzer.DependencyNode;
import androidx.constraintlayout.core.widgets.analyzer.WidgetRun;
/* loaded from: classes.dex */
public class HorizontalWidgetRun extends WidgetRun {

    /* renamed from: g  reason: collision with root package name */
    private static int[] f2596g = new int[2];

    /* renamed from: androidx.constraintlayout.core.widgets.analyzer.HorizontalWidgetRun$1  reason: invalid class name */
    /* loaded from: classes.dex */
    static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f2597a;

        static {
            int[] iArr = new int[WidgetRun.RunType.values().length];
            f2597a = iArr;
            try {
                iArr[WidgetRun.RunType.START.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f2597a[WidgetRun.RunType.END.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f2597a[WidgetRun.RunType.CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public HorizontalWidgetRun(ConstraintWidget constraintWidget) {
        super(constraintWidget);
        this.start.f2582b = DependencyNode.Type.LEFT;
        this.end.f2582b = DependencyNode.Type.RIGHT;
        this.orientation = 0;
    }

    private void n(int[] iArr, int i2, int i4, int i5, int i6, float f4, int i7) {
        int i8 = i4 - i2;
        int i9 = i6 - i5;
        if (i7 != -1) {
            if (i7 == 0) {
                iArr[0] = (int) ((i9 * f4) + 0.5f);
                iArr[1] = i9;
                return;
            } else if (i7 != 1) {
                return;
            } else {
                iArr[0] = i8;
                iArr[1] = (int) ((i8 * f4) + 0.5f);
                return;
            }
        }
        int i10 = (int) ((i9 * f4) + 0.5f);
        int i11 = (int) ((i8 / f4) + 0.5f);
        if (i10 <= i8) {
            iArr[0] = i10;
            iArr[1] = i9;
        } else if (i11 <= i9) {
            iArr[0] = i8;
            iArr[1] = i11;
        }
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    public void applyToWidget() {
        DependencyNode dependencyNode = this.start;
        if (dependencyNode.resolved) {
            this.f2621a.setX(dependencyNode.value);
        }
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    void c() {
        ConstraintWidget parent;
        ConstraintWidget parent2;
        ConstraintWidget constraintWidget = this.f2621a;
        if (constraintWidget.measured) {
            this.f2624d.resolve(constraintWidget.getWidth());
        }
        if (!this.f2624d.resolved) {
            ConstraintWidget.DimensionBehaviour horizontalDimensionBehaviour = this.f2621a.getHorizontalDimensionBehaviour();
            this.f2623c = horizontalDimensionBehaviour;
            if (horizontalDimensionBehaviour != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                ConstraintWidget.DimensionBehaviour dimensionBehaviour = ConstraintWidget.DimensionBehaviour.MATCH_PARENT;
                if (horizontalDimensionBehaviour == dimensionBehaviour && (parent2 = this.f2621a.getParent()) != null && (parent2.getHorizontalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.FIXED || parent2.getHorizontalDimensionBehaviour() == dimensionBehaviour)) {
                    int width = (parent2.getWidth() - this.f2621a.mLeft.getMargin()) - this.f2621a.mRight.getMargin();
                    a(this.start, parent2.horizontalRun.start, this.f2621a.mLeft.getMargin());
                    a(this.end, parent2.horizontalRun.end, -this.f2621a.mRight.getMargin());
                    this.f2624d.resolve(width);
                    return;
                } else if (this.f2623c == ConstraintWidget.DimensionBehaviour.FIXED) {
                    this.f2624d.resolve(this.f2621a.getWidth());
                }
            }
        } else {
            ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = this.f2623c;
            ConstraintWidget.DimensionBehaviour dimensionBehaviour3 = ConstraintWidget.DimensionBehaviour.MATCH_PARENT;
            if (dimensionBehaviour2 == dimensionBehaviour3 && (parent = this.f2621a.getParent()) != null && (parent.getHorizontalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.FIXED || parent.getHorizontalDimensionBehaviour() == dimensionBehaviour3)) {
                a(this.start, parent.horizontalRun.start, this.f2621a.mLeft.getMargin());
                a(this.end, parent.horizontalRun.end, -this.f2621a.mRight.getMargin());
                return;
            }
        }
        DimensionDependency dimensionDependency = this.f2624d;
        if (dimensionDependency.resolved) {
            ConstraintWidget constraintWidget2 = this.f2621a;
            if (constraintWidget2.measured) {
                ConstraintAnchor[] constraintAnchorArr = constraintWidget2.mListAnchors;
                if (constraintAnchorArr[0].mTarget != null && constraintAnchorArr[1].mTarget != null) {
                    if (constraintWidget2.isInHorizontalChain()) {
                        this.start.f2583c = this.f2621a.mListAnchors[0].getMargin();
                        this.end.f2583c = -this.f2621a.mListAnchors[1].getMargin();
                        return;
                    }
                    DependencyNode f4 = f(this.f2621a.mListAnchors[0]);
                    if (f4 != null) {
                        a(this.start, f4, this.f2621a.mListAnchors[0].getMargin());
                    }
                    DependencyNode f5 = f(this.f2621a.mListAnchors[1]);
                    if (f5 != null) {
                        a(this.end, f5, -this.f2621a.mListAnchors[1].getMargin());
                    }
                    this.start.delegateToWidgetRun = true;
                    this.end.delegateToWidgetRun = true;
                    return;
                } else if (constraintAnchorArr[0].mTarget != null) {
                    DependencyNode f6 = f(constraintAnchorArr[0]);
                    if (f6 != null) {
                        a(this.start, f6, this.f2621a.mListAnchors[0].getMargin());
                        a(this.end, this.start, this.f2624d.value);
                        return;
                    }
                    return;
                } else if (constraintAnchorArr[1].mTarget != null) {
                    DependencyNode f7 = f(constraintAnchorArr[1]);
                    if (f7 != null) {
                        a(this.end, f7, -this.f2621a.mListAnchors[1].getMargin());
                        a(this.start, this.end, -this.f2624d.value);
                        return;
                    }
                    return;
                } else if ((constraintWidget2 instanceof Helper) || constraintWidget2.getParent() == null || this.f2621a.getAnchor(ConstraintAnchor.Type.CENTER).mTarget != null) {
                    return;
                } else {
                    a(this.start, this.f2621a.getParent().horizontalRun.start, this.f2621a.getX());
                    a(this.end, this.start, this.f2624d.value);
                    return;
                }
            }
        }
        if (this.f2623c == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
            ConstraintWidget constraintWidget3 = this.f2621a;
            int i2 = constraintWidget3.mMatchConstraintDefaultWidth;
            if (i2 == 2) {
                ConstraintWidget parent3 = constraintWidget3.getParent();
                if (parent3 != null) {
                    DimensionDependency dimensionDependency2 = parent3.verticalRun.f2624d;
                    this.f2624d.f2587g.add(dimensionDependency2);
                    dimensionDependency2.f2586f.add(this.f2624d);
                    DimensionDependency dimensionDependency3 = this.f2624d;
                    dimensionDependency3.delegateToWidgetRun = true;
                    dimensionDependency3.f2586f.add(this.start);
                    this.f2624d.f2586f.add(this.end);
                }
            } else if (i2 == 3) {
                if (constraintWidget3.mMatchConstraintDefaultHeight == 3) {
                    this.start.updateDelegate = this;
                    this.end.updateDelegate = this;
                    VerticalWidgetRun verticalWidgetRun = constraintWidget3.verticalRun;
                    verticalWidgetRun.start.updateDelegate = this;
                    verticalWidgetRun.end.updateDelegate = this;
                    dimensionDependency.updateDelegate = this;
                    if (constraintWidget3.isInVerticalChain()) {
                        this.f2624d.f2587g.add(this.f2621a.verticalRun.f2624d);
                        this.f2621a.verticalRun.f2624d.f2586f.add(this.f2624d);
                        VerticalWidgetRun verticalWidgetRun2 = this.f2621a.verticalRun;
                        verticalWidgetRun2.f2624d.updateDelegate = this;
                        this.f2624d.f2587g.add(verticalWidgetRun2.start);
                        this.f2624d.f2587g.add(this.f2621a.verticalRun.end);
                        this.f2621a.verticalRun.start.f2586f.add(this.f2624d);
                        this.f2621a.verticalRun.end.f2586f.add(this.f2624d);
                    } else if (this.f2621a.isInHorizontalChain()) {
                        this.f2621a.verticalRun.f2624d.f2587g.add(this.f2624d);
                        this.f2624d.f2586f.add(this.f2621a.verticalRun.f2624d);
                    } else {
                        this.f2621a.verticalRun.f2624d.f2587g.add(this.f2624d);
                    }
                } else {
                    DimensionDependency dimensionDependency4 = constraintWidget3.verticalRun.f2624d;
                    dimensionDependency.f2587g.add(dimensionDependency4);
                    dimensionDependency4.f2586f.add(this.f2624d);
                    this.f2621a.verticalRun.start.f2586f.add(this.f2624d);
                    this.f2621a.verticalRun.end.f2586f.add(this.f2624d);
                    DimensionDependency dimensionDependency5 = this.f2624d;
                    dimensionDependency5.delegateToWidgetRun = true;
                    dimensionDependency5.f2586f.add(this.start);
                    this.f2624d.f2586f.add(this.end);
                    this.start.f2587g.add(this.f2624d);
                    this.end.f2587g.add(this.f2624d);
                }
            }
        }
        ConstraintWidget constraintWidget4 = this.f2621a;
        ConstraintAnchor[] constraintAnchorArr2 = constraintWidget4.mListAnchors;
        if (constraintAnchorArr2[0].mTarget != null && constraintAnchorArr2[1].mTarget != null) {
            if (constraintWidget4.isInHorizontalChain()) {
                this.start.f2583c = this.f2621a.mListAnchors[0].getMargin();
                this.end.f2583c = -this.f2621a.mListAnchors[1].getMargin();
                return;
            }
            DependencyNode f8 = f(this.f2621a.mListAnchors[0]);
            DependencyNode f9 = f(this.f2621a.mListAnchors[1]);
            if (f8 != null) {
                f8.addDependency(this);
            }
            if (f9 != null) {
                f9.addDependency(this);
            }
            this.f2626f = WidgetRun.RunType.CENTER;
        } else if (constraintAnchorArr2[0].mTarget != null) {
            DependencyNode f10 = f(constraintAnchorArr2[0]);
            if (f10 != null) {
                a(this.start, f10, this.f2621a.mListAnchors[0].getMargin());
                b(this.end, this.start, 1, this.f2624d);
            }
        } else if (constraintAnchorArr2[1].mTarget != null) {
            DependencyNode f11 = f(constraintAnchorArr2[1]);
            if (f11 != null) {
                a(this.end, f11, -this.f2621a.mListAnchors[1].getMargin());
                b(this.start, this.end, -1, this.f2624d);
            }
        } else if ((constraintWidget4 instanceof Helper) || constraintWidget4.getParent() == null) {
        } else {
            a(this.start, this.f2621a.getParent().horizontalRun.start, this.f2621a.getX());
            b(this.end, this.start, 1, this.f2624d);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    public void d() {
        this.f2622b = null;
        this.start.clear();
        this.end.clear();
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
        this.f2624d.resolved = false;
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    boolean j() {
        return this.f2623c != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT || this.f2621a.mMatchConstraintDefaultWidth == 0;
    }

    public String toString() {
        return "HorizontalRun " + this.f2621a.getDebugName();
    }

    /* JADX WARN: Code restructure failed: missing block: B:119:0x02bc, code lost:
        if (r14 != 1) goto L131;
     */
    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun, androidx.constraintlayout.core.widgets.analyzer.Dependency
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void update(androidx.constraintlayout.core.widgets.analyzer.Dependency r17) {
        /*
            Method dump skipped, instructions count: 1095
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.core.widgets.analyzer.HorizontalWidgetRun.update(androidx.constraintlayout.core.widgets.analyzer.Dependency):void");
    }
}
