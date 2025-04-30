package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.widgets.Barrier;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.analyzer.DependencyNode;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class HelperReferences extends WidgetRun {
    public HelperReferences(ConstraintWidget constraintWidget) {
        super(constraintWidget);
    }

    private void n(DependencyNode dependencyNode) {
        this.start.f2586f.add(dependencyNode);
        dependencyNode.f2587g.add(this.start);
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    public void applyToWidget() {
        ConstraintWidget constraintWidget = this.f2621a;
        if (constraintWidget instanceof Barrier) {
            int barrierType = ((Barrier) constraintWidget).getBarrierType();
            if (barrierType != 0 && barrierType != 1) {
                this.f2621a.setY(this.start.value);
            } else {
                this.f2621a.setX(this.start.value);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    public void c() {
        ConstraintWidget constraintWidget = this.f2621a;
        if (constraintWidget instanceof Barrier) {
            this.start.delegateToWidgetRun = true;
            Barrier barrier = (Barrier) constraintWidget;
            int barrierType = barrier.getBarrierType();
            boolean allowsGoneWidget = barrier.getAllowsGoneWidget();
            int i2 = 0;
            if (barrierType == 0) {
                this.start.f2582b = DependencyNode.Type.LEFT;
                while (i2 < barrier.mWidgetsCount) {
                    ConstraintWidget constraintWidget2 = barrier.mWidgets[i2];
                    if (allowsGoneWidget || constraintWidget2.getVisibility() != 8) {
                        DependencyNode dependencyNode = constraintWidget2.horizontalRun.start;
                        dependencyNode.f2586f.add(this.start);
                        this.start.f2587g.add(dependencyNode);
                    }
                    i2++;
                }
                n(this.f2621a.horizontalRun.start);
                n(this.f2621a.horizontalRun.end);
            } else if (barrierType == 1) {
                this.start.f2582b = DependencyNode.Type.RIGHT;
                while (i2 < barrier.mWidgetsCount) {
                    ConstraintWidget constraintWidget3 = barrier.mWidgets[i2];
                    if (allowsGoneWidget || constraintWidget3.getVisibility() != 8) {
                        DependencyNode dependencyNode2 = constraintWidget3.horizontalRun.end;
                        dependencyNode2.f2586f.add(this.start);
                        this.start.f2587g.add(dependencyNode2);
                    }
                    i2++;
                }
                n(this.f2621a.horizontalRun.start);
                n(this.f2621a.horizontalRun.end);
            } else if (barrierType == 2) {
                this.start.f2582b = DependencyNode.Type.TOP;
                while (i2 < barrier.mWidgetsCount) {
                    ConstraintWidget constraintWidget4 = barrier.mWidgets[i2];
                    if (allowsGoneWidget || constraintWidget4.getVisibility() != 8) {
                        DependencyNode dependencyNode3 = constraintWidget4.verticalRun.start;
                        dependencyNode3.f2586f.add(this.start);
                        this.start.f2587g.add(dependencyNode3);
                    }
                    i2++;
                }
                n(this.f2621a.verticalRun.start);
                n(this.f2621a.verticalRun.end);
            } else if (barrierType != 3) {
            } else {
                this.start.f2582b = DependencyNode.Type.BOTTOM;
                while (i2 < barrier.mWidgetsCount) {
                    ConstraintWidget constraintWidget5 = barrier.mWidgets[i2];
                    if (allowsGoneWidget || constraintWidget5.getVisibility() != 8) {
                        DependencyNode dependencyNode4 = constraintWidget5.verticalRun.end;
                        dependencyNode4.f2586f.add(this.start);
                        this.start.f2587g.add(dependencyNode4);
                    }
                    i2++;
                }
                n(this.f2621a.verticalRun.start);
                n(this.f2621a.verticalRun.end);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    public void d() {
        this.f2622b = null;
        this.start.clear();
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    void h() {
        this.start.resolved = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    public boolean j() {
        return false;
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun, androidx.constraintlayout.core.widgets.analyzer.Dependency
    public void update(Dependency dependency) {
        Barrier barrier = (Barrier) this.f2621a;
        int barrierType = barrier.getBarrierType();
        int i2 = 0;
        int i4 = -1;
        for (DependencyNode dependencyNode : this.start.f2587g) {
            int i5 = dependencyNode.value;
            if (i4 == -1 || i5 < i4) {
                i4 = i5;
            }
            if (i2 < i5) {
                i2 = i5;
            }
        }
        if (barrierType != 0 && barrierType != 2) {
            this.start.resolve(i2 + barrier.getMargin());
        } else {
            this.start.resolve(i4 + barrier.getMargin());
        }
    }
}
