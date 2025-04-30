package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.widgets.ConstraintWidgetContainer;
import java.util.ArrayList;
import java.util.Iterator;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class RunGroup {
    public static final int BASELINE = 2;
    public static final int END = 1;
    public static final int START = 0;
    public static int index;

    /* renamed from: a  reason: collision with root package name */
    WidgetRun f2598a;

    /* renamed from: b  reason: collision with root package name */
    WidgetRun f2599b;

    /* renamed from: d  reason: collision with root package name */
    int f2601d;

    /* renamed from: e  reason: collision with root package name */
    int f2602e;
    public int position = 0;
    public boolean dual = false;

    /* renamed from: c  reason: collision with root package name */
    ArrayList<WidgetRun> f2600c = new ArrayList<>();

    public RunGroup(WidgetRun widgetRun, int i2) {
        this.f2598a = null;
        this.f2599b = null;
        this.f2601d = 0;
        int i4 = index;
        this.f2601d = i4;
        index = i4 + 1;
        this.f2598a = widgetRun;
        this.f2599b = widgetRun;
        this.f2602e = i2;
    }

    private boolean a(WidgetRun widgetRun, int i2) {
        DependencyNode dependencyNode;
        WidgetRun widgetRun2;
        DependencyNode dependencyNode2;
        WidgetRun widgetRun3;
        if (widgetRun.f2621a.isTerminalWidget[i2]) {
            for (Dependency dependency : widgetRun.start.f2586f) {
                if ((dependency instanceof DependencyNode) && (widgetRun3 = (dependencyNode2 = (DependencyNode) dependency).f2581a) != widgetRun && dependencyNode2 == widgetRun3.start) {
                    if (widgetRun instanceof ChainRun) {
                        Iterator<WidgetRun> it2 = ((ChainRun) widgetRun).f2569g.iterator();
                        while (it2.hasNext()) {
                            a(it2.next(), i2);
                        }
                    } else if (!(widgetRun instanceof HelperReferences)) {
                        widgetRun.f2621a.isTerminalWidget[i2] = false;
                    }
                    a(dependencyNode2.f2581a, i2);
                }
            }
            for (Dependency dependency2 : widgetRun.end.f2586f) {
                if ((dependency2 instanceof DependencyNode) && (widgetRun2 = (dependencyNode = (DependencyNode) dependency2).f2581a) != widgetRun && dependencyNode == widgetRun2.start) {
                    if (widgetRun instanceof ChainRun) {
                        Iterator<WidgetRun> it3 = ((ChainRun) widgetRun).f2569g.iterator();
                        while (it3.hasNext()) {
                            a(it3.next(), i2);
                        }
                    } else if (!(widgetRun instanceof HelperReferences)) {
                        widgetRun.f2621a.isTerminalWidget[i2] = false;
                    }
                    a(dependencyNode.f2581a, i2);
                }
            }
            return false;
        }
        return false;
    }

    private long b(DependencyNode dependencyNode, long j4) {
        WidgetRun widgetRun = dependencyNode.f2581a;
        if (widgetRun instanceof HelperReferences) {
            return j4;
        }
        int size = dependencyNode.f2586f.size();
        long j5 = j4;
        for (int i2 = 0; i2 < size; i2++) {
            Dependency dependency = dependencyNode.f2586f.get(i2);
            if (dependency instanceof DependencyNode) {
                DependencyNode dependencyNode2 = (DependencyNode) dependency;
                if (dependencyNode2.f2581a != widgetRun) {
                    j5 = Math.min(j5, b(dependencyNode2, dependencyNode2.f2583c + j4));
                }
            }
        }
        if (dependencyNode == widgetRun.end) {
            long wrapDimension = j4 - widgetRun.getWrapDimension();
            return Math.min(Math.min(j5, b(widgetRun.start, wrapDimension)), wrapDimension - widgetRun.start.f2583c);
        }
        return j5;
    }

    private long c(DependencyNode dependencyNode, long j4) {
        WidgetRun widgetRun = dependencyNode.f2581a;
        if (widgetRun instanceof HelperReferences) {
            return j4;
        }
        int size = dependencyNode.f2586f.size();
        long j5 = j4;
        for (int i2 = 0; i2 < size; i2++) {
            Dependency dependency = dependencyNode.f2586f.get(i2);
            if (dependency instanceof DependencyNode) {
                DependencyNode dependencyNode2 = (DependencyNode) dependency;
                if (dependencyNode2.f2581a != widgetRun) {
                    j5 = Math.max(j5, c(dependencyNode2, dependencyNode2.f2583c + j4));
                }
            }
        }
        if (dependencyNode == widgetRun.start) {
            long wrapDimension = j4 + widgetRun.getWrapDimension();
            return Math.max(Math.max(j5, c(widgetRun.end, wrapDimension)), wrapDimension - widgetRun.end.f2583c);
        }
        return j5;
    }

    public void add(WidgetRun widgetRun) {
        this.f2600c.add(widgetRun);
        this.f2599b = widgetRun;
    }

    public long computeWrapSize(ConstraintWidgetContainer constraintWidgetContainer, int i2) {
        long wrapDimension;
        int i4;
        WidgetRun widgetRun = this.f2598a;
        if (widgetRun instanceof ChainRun) {
            if (((ChainRun) widgetRun).orientation != i2) {
                return 0L;
            }
        } else if (i2 == 0) {
            if (!(widgetRun instanceof HorizontalWidgetRun)) {
                return 0L;
            }
        } else if (!(widgetRun instanceof VerticalWidgetRun)) {
            return 0L;
        }
        DependencyNode dependencyNode = (i2 == 0 ? constraintWidgetContainer.horizontalRun : constraintWidgetContainer.verticalRun).start;
        DependencyNode dependencyNode2 = (i2 == 0 ? constraintWidgetContainer.horizontalRun : constraintWidgetContainer.verticalRun).end;
        boolean contains = widgetRun.start.f2587g.contains(dependencyNode);
        boolean contains2 = this.f2598a.end.f2587g.contains(dependencyNode2);
        long wrapDimension2 = this.f2598a.getWrapDimension();
        if (contains && contains2) {
            long c4 = c(this.f2598a.start, 0L);
            long b4 = b(this.f2598a.end, 0L);
            long j4 = c4 - wrapDimension2;
            WidgetRun widgetRun2 = this.f2598a;
            int i5 = widgetRun2.end.f2583c;
            if (j4 >= (-i5)) {
                j4 += i5;
            }
            int i6 = widgetRun2.start.f2583c;
            long j5 = ((-b4) - wrapDimension2) - i6;
            if (j5 >= i6) {
                j5 -= i6;
            }
            float biasPercent = widgetRun2.f2621a.getBiasPercent(i2);
            float f4 = (float) (biasPercent > 0.0f ? (((float) j5) / biasPercent) + (((float) j4) / (1.0f - biasPercent)) : 0L);
            long j6 = (f4 * biasPercent) + 0.5f + wrapDimension2 + (f4 * (1.0f - biasPercent)) + 0.5f;
            WidgetRun widgetRun3 = this.f2598a;
            wrapDimension = widgetRun3.start.f2583c + j6;
            i4 = widgetRun3.end.f2583c;
        } else if (contains) {
            DependencyNode dependencyNode3 = this.f2598a.start;
            return Math.max(c(dependencyNode3, dependencyNode3.f2583c), this.f2598a.start.f2583c + wrapDimension2);
        } else if (contains2) {
            DependencyNode dependencyNode4 = this.f2598a.end;
            return Math.max(-b(dependencyNode4, dependencyNode4.f2583c), (-this.f2598a.end.f2583c) + wrapDimension2);
        } else {
            WidgetRun widgetRun4 = this.f2598a;
            wrapDimension = widgetRun4.start.f2583c + widgetRun4.getWrapDimension();
            i4 = this.f2598a.end.f2583c;
        }
        return wrapDimension - i4;
    }

    public void defineTerminalWidgets(boolean z3, boolean z4) {
        if (z3) {
            WidgetRun widgetRun = this.f2598a;
            if (widgetRun instanceof HorizontalWidgetRun) {
                a(widgetRun, 0);
            }
        }
        if (z4) {
            WidgetRun widgetRun2 = this.f2598a;
            if (widgetRun2 instanceof VerticalWidgetRun) {
                a(widgetRun2, 1);
            }
        }
    }
}
