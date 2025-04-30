package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
/* loaded from: classes.dex */
public abstract class WidgetRun implements Dependency {

    /* renamed from: a  reason: collision with root package name */
    ConstraintWidget f2621a;

    /* renamed from: b  reason: collision with root package name */
    RunGroup f2622b;

    /* renamed from: c  reason: collision with root package name */
    protected ConstraintWidget.DimensionBehaviour f2623c;
    public int matchConstraintsType;

    /* renamed from: d  reason: collision with root package name */
    DimensionDependency f2624d = new DimensionDependency(this);
    public int orientation = 0;

    /* renamed from: e  reason: collision with root package name */
    boolean f2625e = false;
    public DependencyNode start = new DependencyNode(this);
    public DependencyNode end = new DependencyNode(this);

    /* renamed from: f  reason: collision with root package name */
    protected RunType f2626f = RunType.NONE;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.constraintlayout.core.widgets.analyzer.WidgetRun$1  reason: invalid class name */
    /* loaded from: classes.dex */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f2627a;

        static {
            int[] iArr = new int[ConstraintAnchor.Type.values().length];
            f2627a = iArr;
            try {
                iArr[ConstraintAnchor.Type.LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f2627a[ConstraintAnchor.Type.RIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f2627a[ConstraintAnchor.Type.TOP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f2627a[ConstraintAnchor.Type.BASELINE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f2627a[ConstraintAnchor.Type.BOTTOM.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* loaded from: classes.dex */
    enum RunType {
        NONE,
        START,
        END,
        CENTER
    }

    public WidgetRun(ConstraintWidget constraintWidget) {
        this.f2621a = constraintWidget;
    }

    private void i(int i2, int i4) {
        int i5;
        int i6 = this.matchConstraintsType;
        if (i6 == 0) {
            this.f2624d.resolve(e(i4, i2));
        } else if (i6 == 1) {
            this.f2624d.resolve(Math.min(e(this.f2624d.wrapValue, i2), i4));
        } else if (i6 == 2) {
            ConstraintWidget parent = this.f2621a.getParent();
            if (parent != null) {
                DimensionDependency dimensionDependency = (i2 == 0 ? parent.horizontalRun : parent.verticalRun).f2624d;
                if (dimensionDependency.resolved) {
                    ConstraintWidget constraintWidget = this.f2621a;
                    this.f2624d.resolve(e((int) ((dimensionDependency.value * (i2 == 0 ? constraintWidget.mMatchConstraintPercentWidth : constraintWidget.mMatchConstraintPercentHeight)) + 0.5f), i2));
                }
            }
        } else if (i6 != 3) {
        } else {
            ConstraintWidget constraintWidget2 = this.f2621a;
            WidgetRun widgetRun = constraintWidget2.horizontalRun;
            ConstraintWidget.DimensionBehaviour dimensionBehaviour = widgetRun.f2623c;
            ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
            if (dimensionBehaviour == dimensionBehaviour2 && widgetRun.matchConstraintsType == 3) {
                VerticalWidgetRun verticalWidgetRun = constraintWidget2.verticalRun;
                if (verticalWidgetRun.f2623c == dimensionBehaviour2 && verticalWidgetRun.matchConstraintsType == 3) {
                    return;
                }
            }
            if (i2 == 0) {
                widgetRun = constraintWidget2.verticalRun;
            }
            if (widgetRun.f2624d.resolved) {
                float dimensionRatio = constraintWidget2.getDimensionRatio();
                if (i2 == 1) {
                    i5 = (int) ((widgetRun.f2624d.value / dimensionRatio) + 0.5f);
                } else {
                    i5 = (int) ((dimensionRatio * widgetRun.f2624d.value) + 0.5f);
                }
                this.f2624d.resolve(i5);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(DependencyNode dependencyNode, DependencyNode dependencyNode2, int i2) {
        dependencyNode.f2587g.add(dependencyNode2);
        dependencyNode.f2583c = i2;
        dependencyNode2.f2586f.add(dependencyNode);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void applyToWidget();

    /* JADX INFO: Access modifiers changed from: protected */
    public final void b(DependencyNode dependencyNode, DependencyNode dependencyNode2, int i2, DimensionDependency dimensionDependency) {
        dependencyNode.f2587g.add(dependencyNode2);
        dependencyNode.f2587g.add(this.f2624d);
        dependencyNode.f2584d = i2;
        dependencyNode.f2585e = dimensionDependency;
        dependencyNode2.f2586f.add(dependencyNode);
        dimensionDependency.f2586f.add(dependencyNode);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void c();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void d();

    /* JADX INFO: Access modifiers changed from: protected */
    public final int e(int i2, int i4) {
        int max;
        if (i4 == 0) {
            ConstraintWidget constraintWidget = this.f2621a;
            int i5 = constraintWidget.mMatchConstraintMaxWidth;
            max = Math.max(constraintWidget.mMatchConstraintMinWidth, i2);
            if (i5 > 0) {
                max = Math.min(i5, i2);
            }
            if (max == i2) {
                return i2;
            }
        } else {
            ConstraintWidget constraintWidget2 = this.f2621a;
            int i6 = constraintWidget2.mMatchConstraintMaxHeight;
            max = Math.max(constraintWidget2.mMatchConstraintMinHeight, i2);
            if (i6 > 0) {
                max = Math.min(i6, i2);
            }
            if (max == i2) {
                return i2;
            }
        }
        return max;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final DependencyNode f(ConstraintAnchor constraintAnchor) {
        ConstraintAnchor constraintAnchor2 = constraintAnchor.mTarget;
        if (constraintAnchor2 == null) {
            return null;
        }
        ConstraintWidget constraintWidget = constraintAnchor2.mOwner;
        int i2 = AnonymousClass1.f2627a[constraintAnchor2.mType.ordinal()];
        if (i2 != 1) {
            if (i2 != 2) {
                if (i2 != 3) {
                    if (i2 != 4) {
                        if (i2 != 5) {
                            return null;
                        }
                        return constraintWidget.verticalRun.end;
                    }
                    return constraintWidget.verticalRun.baseline;
                }
                return constraintWidget.verticalRun.start;
            }
            return constraintWidget.horizontalRun.end;
        }
        return constraintWidget.horizontalRun.start;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final DependencyNode g(ConstraintAnchor constraintAnchor, int i2) {
        ConstraintAnchor constraintAnchor2 = constraintAnchor.mTarget;
        if (constraintAnchor2 == null) {
            return null;
        }
        ConstraintWidget constraintWidget = constraintAnchor2.mOwner;
        WidgetRun widgetRun = i2 == 0 ? constraintWidget.horizontalRun : constraintWidget.verticalRun;
        int i4 = AnonymousClass1.f2627a[constraintAnchor2.mType.ordinal()];
        if (i4 != 1) {
            if (i4 != 2) {
                if (i4 != 3) {
                    if (i4 != 5) {
                        return null;
                    }
                }
            }
            return widgetRun.end;
        }
        return widgetRun.start;
    }

    public long getWrapDimension() {
        DimensionDependency dimensionDependency = this.f2624d;
        if (dimensionDependency.resolved) {
            return dimensionDependency.value;
        }
        return 0L;
    }

    abstract void h();

    public boolean isCenterConnection() {
        int size = this.start.f2587g.size();
        int i2 = 0;
        for (int i4 = 0; i4 < size; i4++) {
            if (this.start.f2587g.get(i4).f2581a != this) {
                i2++;
            }
        }
        int size2 = this.end.f2587g.size();
        for (int i5 = 0; i5 < size2; i5++) {
            if (this.end.f2587g.get(i5).f2581a != this) {
                i2++;
            }
        }
        return i2 >= 2;
    }

    public boolean isDimensionResolved() {
        return this.f2624d.resolved;
    }

    public boolean isResolved() {
        return this.f2625e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract boolean j();

    /* JADX INFO: Access modifiers changed from: protected */
    public void k(Dependency dependency, ConstraintAnchor constraintAnchor, ConstraintAnchor constraintAnchor2, int i2) {
        DependencyNode f4 = f(constraintAnchor);
        DependencyNode f5 = f(constraintAnchor2);
        if (f4.resolved && f5.resolved) {
            int margin = f4.value + constraintAnchor.getMargin();
            int margin2 = f5.value - constraintAnchor2.getMargin();
            int i4 = margin2 - margin;
            if (!this.f2624d.resolved && this.f2623c == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                i(i2, i4);
            }
            DimensionDependency dimensionDependency = this.f2624d;
            if (dimensionDependency.resolved) {
                if (dimensionDependency.value == i4) {
                    this.start.resolve(margin);
                    this.end.resolve(margin2);
                    return;
                }
                ConstraintWidget constraintWidget = this.f2621a;
                float horizontalBiasPercent = i2 == 0 ? constraintWidget.getHorizontalBiasPercent() : constraintWidget.getVerticalBiasPercent();
                if (f4 == f5) {
                    margin = f4.value;
                    margin2 = f5.value;
                    horizontalBiasPercent = 0.5f;
                }
                this.start.resolve((int) (margin + 0.5f + (((margin2 - margin) - this.f2624d.value) * horizontalBiasPercent)));
                this.end.resolve(this.start.value + this.f2624d.value);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void l(Dependency dependency) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void m(Dependency dependency) {
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.Dependency
    public void update(Dependency dependency) {
    }

    public long wrapSize(int i2) {
        int i4;
        DimensionDependency dimensionDependency = this.f2624d;
        if (dimensionDependency.resolved) {
            long j4 = dimensionDependency.value;
            if (isCenterConnection()) {
                i4 = this.start.f2583c - this.end.f2583c;
            } else if (i2 == 0) {
                i4 = this.start.f2583c;
            } else {
                return j4 - this.end.f2583c;
            }
            return j4 + i4;
        }
        return 0L;
    }
}
