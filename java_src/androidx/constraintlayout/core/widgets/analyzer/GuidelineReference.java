package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.Guideline;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class GuidelineReference extends WidgetRun {
    public GuidelineReference(ConstraintWidget constraintWidget) {
        super(constraintWidget);
        constraintWidget.horizontalRun.d();
        constraintWidget.verticalRun.d();
        this.orientation = ((Guideline) constraintWidget).getOrientation();
    }

    private void n(DependencyNode dependencyNode) {
        this.start.f2586f.add(dependencyNode);
        dependencyNode.f2587g.add(this.start);
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    public void applyToWidget() {
        if (((Guideline) this.f2621a).getOrientation() == 1) {
            this.f2621a.setX(this.start.value);
        } else {
            this.f2621a.setY(this.start.value);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    public void c() {
        Guideline guideline = (Guideline) this.f2621a;
        int relativeBegin = guideline.getRelativeBegin();
        int relativeEnd = guideline.getRelativeEnd();
        guideline.getRelativePercent();
        if (guideline.getOrientation() == 1) {
            if (relativeBegin != -1) {
                this.start.f2587g.add(this.f2621a.mParent.horizontalRun.start);
                this.f2621a.mParent.horizontalRun.start.f2586f.add(this.start);
                this.start.f2583c = relativeBegin;
            } else if (relativeEnd != -1) {
                this.start.f2587g.add(this.f2621a.mParent.horizontalRun.end);
                this.f2621a.mParent.horizontalRun.end.f2586f.add(this.start);
                this.start.f2583c = -relativeEnd;
            } else {
                DependencyNode dependencyNode = this.start;
                dependencyNode.delegateToWidgetRun = true;
                dependencyNode.f2587g.add(this.f2621a.mParent.horizontalRun.end);
                this.f2621a.mParent.horizontalRun.end.f2586f.add(this.start);
            }
            n(this.f2621a.horizontalRun.start);
            n(this.f2621a.horizontalRun.end);
            return;
        }
        if (relativeBegin != -1) {
            this.start.f2587g.add(this.f2621a.mParent.verticalRun.start);
            this.f2621a.mParent.verticalRun.start.f2586f.add(this.start);
            this.start.f2583c = relativeBegin;
        } else if (relativeEnd != -1) {
            this.start.f2587g.add(this.f2621a.mParent.verticalRun.end);
            this.f2621a.mParent.verticalRun.end.f2586f.add(this.start);
            this.start.f2583c = -relativeEnd;
        } else {
            DependencyNode dependencyNode2 = this.start;
            dependencyNode2.delegateToWidgetRun = true;
            dependencyNode2.f2587g.add(this.f2621a.mParent.verticalRun.end);
            this.f2621a.mParent.verticalRun.end.f2586f.add(this.start);
        }
        n(this.f2621a.verticalRun.start);
        n(this.f2621a.verticalRun.end);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    public void d() {
        this.start.clear();
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    void h() {
        this.start.resolved = false;
        this.end.resolved = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    public boolean j() {
        return false;
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun, androidx.constraintlayout.core.widgets.analyzer.Dependency
    public void update(Dependency dependency) {
        DependencyNode dependencyNode = this.start;
        if (dependencyNode.readyToSolve && !dependencyNode.resolved) {
            this.start.resolve((int) ((dependencyNode.f2587g.get(0).value * ((Guideline) this.f2621a).getRelativePercent()) + 0.5f));
        }
    }
}
