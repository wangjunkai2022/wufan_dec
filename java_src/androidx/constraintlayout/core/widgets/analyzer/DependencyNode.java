package androidx.constraintlayout.core.widgets.analyzer;

import com.j256.ormlite.stmt.query.SimpleComparison;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class DependencyNode implements Dependency {

    /* renamed from: a  reason: collision with root package name */
    WidgetRun f2581a;

    /* renamed from: c  reason: collision with root package name */
    int f2583c;
    public int value;
    public Dependency updateDelegate = null;
    public boolean delegateToWidgetRun = false;
    public boolean readyToSolve = false;

    /* renamed from: b  reason: collision with root package name */
    Type f2582b = Type.UNKNOWN;

    /* renamed from: d  reason: collision with root package name */
    int f2584d = 1;

    /* renamed from: e  reason: collision with root package name */
    DimensionDependency f2585e = null;
    public boolean resolved = false;

    /* renamed from: f  reason: collision with root package name */
    List<Dependency> f2586f = new ArrayList();

    /* renamed from: g  reason: collision with root package name */
    List<DependencyNode> f2587g = new ArrayList();

    /* loaded from: classes.dex */
    enum Type {
        UNKNOWN,
        HORIZONTAL_DIMENSION,
        VERTICAL_DIMENSION,
        LEFT,
        RIGHT,
        TOP,
        BOTTOM,
        BASELINE
    }

    public DependencyNode(WidgetRun widgetRun) {
        this.f2581a = widgetRun;
    }

    public void addDependency(Dependency dependency) {
        this.f2586f.add(dependency);
        if (this.resolved) {
            dependency.update(dependency);
        }
    }

    public void clear() {
        this.f2587g.clear();
        this.f2586f.clear();
        this.resolved = false;
        this.value = 0;
        this.readyToSolve = false;
        this.delegateToWidgetRun = false;
    }

    public String name() {
        String str;
        String debugName = this.f2581a.f2621a.getDebugName();
        Type type = this.f2582b;
        if (type != Type.LEFT && type != Type.RIGHT) {
            str = debugName + "_VERTICAL";
        } else {
            str = debugName + "_HORIZONTAL";
        }
        return str + ":" + this.f2582b.name();
    }

    public void resolve(int i2) {
        if (this.resolved) {
            return;
        }
        this.resolved = true;
        this.value = i2;
        for (Dependency dependency : this.f2586f) {
            dependency.update(dependency);
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f2581a.f2621a.getDebugName());
        sb.append(":");
        sb.append(this.f2582b);
        sb.append("(");
        sb.append(this.resolved ? Integer.valueOf(this.value) : "unresolved");
        sb.append(") <t=");
        sb.append(this.f2587g.size());
        sb.append(":d=");
        sb.append(this.f2586f.size());
        sb.append(SimpleComparison.GREATER_THAN_OPERATION);
        return sb.toString();
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.Dependency
    public void update(Dependency dependency) {
        for (DependencyNode dependencyNode : this.f2587g) {
            if (!dependencyNode.resolved) {
                return;
            }
        }
        this.readyToSolve = true;
        Dependency dependency2 = this.updateDelegate;
        if (dependency2 != null) {
            dependency2.update(this);
        }
        if (this.delegateToWidgetRun) {
            this.f2581a.update(this);
            return;
        }
        DependencyNode dependencyNode2 = null;
        int i2 = 0;
        for (DependencyNode dependencyNode3 : this.f2587g) {
            if (!(dependencyNode3 instanceof DimensionDependency)) {
                i2++;
                dependencyNode2 = dependencyNode3;
            }
        }
        if (dependencyNode2 != null && i2 == 1 && dependencyNode2.resolved) {
            DimensionDependency dimensionDependency = this.f2585e;
            if (dimensionDependency != null) {
                if (!dimensionDependency.resolved) {
                    return;
                }
                this.f2583c = this.f2584d * dimensionDependency.value;
            }
            resolve(dependencyNode2.value + this.f2583c);
        }
        Dependency dependency3 = this.updateDelegate;
        if (dependency3 != null) {
            dependency3.update(this);
        }
    }
}
