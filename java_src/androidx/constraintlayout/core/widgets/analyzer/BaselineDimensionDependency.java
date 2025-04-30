package androidx.constraintlayout.core.widgets.analyzer;
/* loaded from: classes.dex */
class BaselineDimensionDependency extends DimensionDependency {
    public BaselineDimensionDependency(WidgetRun widgetRun) {
        super(widgetRun);
    }

    public void update(DependencyNode dependencyNode) {
        WidgetRun widgetRun = this.f2581a;
        ((VerticalWidgetRun) widgetRun).baseline.f2583c = widgetRun.f2621a.getBaselineDistance();
        this.resolved = true;
    }
}
