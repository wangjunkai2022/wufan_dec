package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.widgets.Barrier;
import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.ConstraintWidgetContainer;
import androidx.constraintlayout.core.widgets.Guideline;
import androidx.constraintlayout.core.widgets.HelperWidget;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import com.j256.ormlite.stmt.query.SimpleComparison;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import m.a;
import net.lingala.zip4j.util.e;
/* loaded from: classes.dex */
public class DependencyGraph {

    /* renamed from: j  reason: collision with root package name */
    private static final boolean f2571j = true;

    /* renamed from: a  reason: collision with root package name */
    private ConstraintWidgetContainer f2572a;

    /* renamed from: d  reason: collision with root package name */
    private ConstraintWidgetContainer f2575d;

    /* renamed from: b  reason: collision with root package name */
    private boolean f2573b = true;

    /* renamed from: c  reason: collision with root package name */
    private boolean f2574c = true;

    /* renamed from: e  reason: collision with root package name */
    private ArrayList<WidgetRun> f2576e = new ArrayList<>();

    /* renamed from: f  reason: collision with root package name */
    private ArrayList<RunGroup> f2577f = new ArrayList<>();

    /* renamed from: g  reason: collision with root package name */
    private BasicMeasure.Measurer f2578g = null;

    /* renamed from: h  reason: collision with root package name */
    private BasicMeasure.Measure f2579h = new BasicMeasure.Measure();

    /* renamed from: i  reason: collision with root package name */
    ArrayList<RunGroup> f2580i = new ArrayList<>();

    public DependencyGraph(ConstraintWidgetContainer constraintWidgetContainer) {
        this.f2572a = constraintWidgetContainer;
        this.f2575d = constraintWidgetContainer;
    }

    private void a(DependencyNode dependencyNode, int i2, int i4, DependencyNode dependencyNode2, ArrayList<RunGroup> arrayList, RunGroup runGroup) {
        WidgetRun widgetRun = dependencyNode.f2581a;
        if (widgetRun.f2622b == null) {
            ConstraintWidgetContainer constraintWidgetContainer = this.f2572a;
            if (widgetRun == constraintWidgetContainer.horizontalRun || widgetRun == constraintWidgetContainer.verticalRun) {
                return;
            }
            if (runGroup == null) {
                runGroup = new RunGroup(widgetRun, i4);
                arrayList.add(runGroup);
            }
            widgetRun.f2622b = runGroup;
            runGroup.add(widgetRun);
            for (Dependency dependency : widgetRun.start.f2586f) {
                if (dependency instanceof DependencyNode) {
                    a((DependencyNode) dependency, i2, 0, dependencyNode2, arrayList, runGroup);
                }
            }
            for (Dependency dependency2 : widgetRun.end.f2586f) {
                if (dependency2 instanceof DependencyNode) {
                    a((DependencyNode) dependency2, i2, 1, dependencyNode2, arrayList, runGroup);
                }
            }
            if (i2 == 1 && (widgetRun instanceof VerticalWidgetRun)) {
                for (Dependency dependency3 : ((VerticalWidgetRun) widgetRun).baseline.f2586f) {
                    if (dependency3 instanceof DependencyNode) {
                        a((DependencyNode) dependency3, i2, 2, dependencyNode2, arrayList, runGroup);
                    }
                }
            }
            for (DependencyNode dependencyNode3 : widgetRun.start.f2587g) {
                if (dependencyNode3 == dependencyNode2) {
                    runGroup.dual = true;
                }
                a(dependencyNode3, i2, 0, dependencyNode2, arrayList, runGroup);
            }
            for (DependencyNode dependencyNode4 : widgetRun.end.f2587g) {
                if (dependencyNode4 == dependencyNode2) {
                    runGroup.dual = true;
                }
                a(dependencyNode4, i2, 1, dependencyNode2, arrayList, runGroup);
            }
            if (i2 == 1 && (widgetRun instanceof VerticalWidgetRun)) {
                for (DependencyNode dependencyNode5 : ((VerticalWidgetRun) widgetRun).baseline.f2587g) {
                    a(dependencyNode5, i2, 2, dependencyNode2, arrayList, runGroup);
                }
            }
        }
    }

    private boolean b(ConstraintWidgetContainer constraintWidgetContainer) {
        int i2;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour;
        int i4;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour2;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour3;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour4;
        Iterator<ConstraintWidget> it2 = constraintWidgetContainer.mChildren.iterator();
        while (it2.hasNext()) {
            ConstraintWidget next = it2.next();
            ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr = next.mListDimensionBehaviors;
            ConstraintWidget.DimensionBehaviour dimensionBehaviour5 = dimensionBehaviourArr[0];
            ConstraintWidget.DimensionBehaviour dimensionBehaviour6 = dimensionBehaviourArr[1];
            if (next.getVisibility() == 8) {
                next.measured = true;
            } else {
                if (next.mMatchConstraintPercentWidth < 1.0f && dimensionBehaviour5 == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                    next.mMatchConstraintDefaultWidth = 2;
                }
                if (next.mMatchConstraintPercentHeight < 1.0f && dimensionBehaviour6 == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                    next.mMatchConstraintDefaultHeight = 2;
                }
                if (next.getDimensionRatio() > 0.0f) {
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour7 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                    if (dimensionBehaviour5 == dimensionBehaviour7 && (dimensionBehaviour6 == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT || dimensionBehaviour6 == ConstraintWidget.DimensionBehaviour.FIXED)) {
                        next.mMatchConstraintDefaultWidth = 3;
                    } else if (dimensionBehaviour6 == dimensionBehaviour7 && (dimensionBehaviour5 == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT || dimensionBehaviour5 == ConstraintWidget.DimensionBehaviour.FIXED)) {
                        next.mMatchConstraintDefaultHeight = 3;
                    } else if (dimensionBehaviour5 == dimensionBehaviour7 && dimensionBehaviour6 == dimensionBehaviour7) {
                        if (next.mMatchConstraintDefaultWidth == 0) {
                            next.mMatchConstraintDefaultWidth = 3;
                        }
                        if (next.mMatchConstraintDefaultHeight == 0) {
                            next.mMatchConstraintDefaultHeight = 3;
                        }
                    }
                }
                ConstraintWidget.DimensionBehaviour dimensionBehaviour8 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                if (dimensionBehaviour5 == dimensionBehaviour8 && next.mMatchConstraintDefaultWidth == 1 && (next.mLeft.mTarget == null || next.mRight.mTarget == null)) {
                    dimensionBehaviour5 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                }
                ConstraintWidget.DimensionBehaviour dimensionBehaviour9 = dimensionBehaviour5;
                if (dimensionBehaviour6 == dimensionBehaviour8 && next.mMatchConstraintDefaultHeight == 1 && (next.mTop.mTarget == null || next.mBottom.mTarget == null)) {
                    dimensionBehaviour6 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                }
                ConstraintWidget.DimensionBehaviour dimensionBehaviour10 = dimensionBehaviour6;
                HorizontalWidgetRun horizontalWidgetRun = next.horizontalRun;
                horizontalWidgetRun.f2623c = dimensionBehaviour9;
                int i5 = next.mMatchConstraintDefaultWidth;
                horizontalWidgetRun.matchConstraintsType = i5;
                VerticalWidgetRun verticalWidgetRun = next.verticalRun;
                verticalWidgetRun.f2623c = dimensionBehaviour10;
                int i6 = next.mMatchConstraintDefaultHeight;
                verticalWidgetRun.matchConstraintsType = i6;
                ConstraintWidget.DimensionBehaviour dimensionBehaviour11 = ConstraintWidget.DimensionBehaviour.MATCH_PARENT;
                if ((dimensionBehaviour9 == dimensionBehaviour11 || dimensionBehaviour9 == ConstraintWidget.DimensionBehaviour.FIXED || dimensionBehaviour9 == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) && (dimensionBehaviour10 == dimensionBehaviour11 || dimensionBehaviour10 == ConstraintWidget.DimensionBehaviour.FIXED || dimensionBehaviour10 == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT)) {
                    int width = next.getWidth();
                    if (dimensionBehaviour9 == dimensionBehaviour11) {
                        i2 = (constraintWidgetContainer.getWidth() - next.mLeft.mMargin) - next.mRight.mMargin;
                        dimensionBehaviour = ConstraintWidget.DimensionBehaviour.FIXED;
                    } else {
                        i2 = width;
                        dimensionBehaviour = dimensionBehaviour9;
                    }
                    int height = next.getHeight();
                    if (dimensionBehaviour10 == dimensionBehaviour11) {
                        i4 = (constraintWidgetContainer.getHeight() - next.mTop.mMargin) - next.mBottom.mMargin;
                        dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.FIXED;
                    } else {
                        i4 = height;
                        dimensionBehaviour2 = dimensionBehaviour10;
                    }
                    j(next, dimensionBehaviour, i2, dimensionBehaviour2, i4);
                    next.horizontalRun.f2624d.resolve(next.getWidth());
                    next.verticalRun.f2624d.resolve(next.getHeight());
                    next.measured = true;
                } else {
                    if (dimensionBehaviour9 == dimensionBehaviour8 && (dimensionBehaviour10 == (dimensionBehaviour4 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) || dimensionBehaviour10 == ConstraintWidget.DimensionBehaviour.FIXED)) {
                        if (i5 == 3) {
                            if (dimensionBehaviour10 == dimensionBehaviour4) {
                                j(next, dimensionBehaviour4, 0, dimensionBehaviour4, 0);
                            }
                            int height2 = next.getHeight();
                            ConstraintWidget.DimensionBehaviour dimensionBehaviour12 = ConstraintWidget.DimensionBehaviour.FIXED;
                            j(next, dimensionBehaviour12, (int) ((height2 * next.mDimensionRatio) + 0.5f), dimensionBehaviour12, height2);
                            next.horizontalRun.f2624d.resolve(next.getWidth());
                            next.verticalRun.f2624d.resolve(next.getHeight());
                            next.measured = true;
                        } else if (i5 == 1) {
                            j(next, dimensionBehaviour4, 0, dimensionBehaviour10, 0);
                            next.horizontalRun.f2624d.wrapValue = next.getWidth();
                        } else if (i5 == 2) {
                            ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr2 = constraintWidgetContainer.mListDimensionBehaviors;
                            ConstraintWidget.DimensionBehaviour dimensionBehaviour13 = dimensionBehaviourArr2[0];
                            ConstraintWidget.DimensionBehaviour dimensionBehaviour14 = ConstraintWidget.DimensionBehaviour.FIXED;
                            if (dimensionBehaviour13 == dimensionBehaviour14 || dimensionBehaviourArr2[0] == dimensionBehaviour11) {
                                j(next, dimensionBehaviour14, (int) ((next.mMatchConstraintPercentWidth * constraintWidgetContainer.getWidth()) + 0.5f), dimensionBehaviour10, next.getHeight());
                                next.horizontalRun.f2624d.resolve(next.getWidth());
                                next.verticalRun.f2624d.resolve(next.getHeight());
                                next.measured = true;
                            }
                        } else {
                            ConstraintAnchor[] constraintAnchorArr = next.mListAnchors;
                            if (constraintAnchorArr[0].mTarget == null || constraintAnchorArr[1].mTarget == null) {
                                j(next, dimensionBehaviour4, 0, dimensionBehaviour10, 0);
                                next.horizontalRun.f2624d.resolve(next.getWidth());
                                next.verticalRun.f2624d.resolve(next.getHeight());
                                next.measured = true;
                            }
                        }
                    }
                    if (dimensionBehaviour10 == dimensionBehaviour8 && (dimensionBehaviour9 == (dimensionBehaviour3 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) || dimensionBehaviour9 == ConstraintWidget.DimensionBehaviour.FIXED)) {
                        if (i6 == 3) {
                            if (dimensionBehaviour9 == dimensionBehaviour3) {
                                j(next, dimensionBehaviour3, 0, dimensionBehaviour3, 0);
                            }
                            int width2 = next.getWidth();
                            float f4 = next.mDimensionRatio;
                            if (next.getDimensionRatioSide() == -1) {
                                f4 = 1.0f / f4;
                            }
                            ConstraintWidget.DimensionBehaviour dimensionBehaviour15 = ConstraintWidget.DimensionBehaviour.FIXED;
                            j(next, dimensionBehaviour15, width2, dimensionBehaviour15, (int) ((width2 * f4) + 0.5f));
                            next.horizontalRun.f2624d.resolve(next.getWidth());
                            next.verticalRun.f2624d.resolve(next.getHeight());
                            next.measured = true;
                        } else if (i6 == 1) {
                            j(next, dimensionBehaviour9, 0, dimensionBehaviour3, 0);
                            next.verticalRun.f2624d.wrapValue = next.getHeight();
                        } else if (i6 == 2) {
                            ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr3 = constraintWidgetContainer.mListDimensionBehaviors;
                            ConstraintWidget.DimensionBehaviour dimensionBehaviour16 = dimensionBehaviourArr3[1];
                            ConstraintWidget.DimensionBehaviour dimensionBehaviour17 = ConstraintWidget.DimensionBehaviour.FIXED;
                            if (dimensionBehaviour16 == dimensionBehaviour17 || dimensionBehaviourArr3[1] == dimensionBehaviour11) {
                                j(next, dimensionBehaviour9, next.getWidth(), dimensionBehaviour17, (int) ((next.mMatchConstraintPercentHeight * constraintWidgetContainer.getHeight()) + 0.5f));
                                next.horizontalRun.f2624d.resolve(next.getWidth());
                                next.verticalRun.f2624d.resolve(next.getHeight());
                                next.measured = true;
                            }
                        } else {
                            ConstraintAnchor[] constraintAnchorArr2 = next.mListAnchors;
                            if (constraintAnchorArr2[2].mTarget == null || constraintAnchorArr2[3].mTarget == null) {
                                j(next, dimensionBehaviour3, 0, dimensionBehaviour10, 0);
                                next.horizontalRun.f2624d.resolve(next.getWidth());
                                next.verticalRun.f2624d.resolve(next.getHeight());
                                next.measured = true;
                            }
                        }
                    }
                    if (dimensionBehaviour9 == dimensionBehaviour8 && dimensionBehaviour10 == dimensionBehaviour8) {
                        if (i5 == 1 || i6 == 1) {
                            ConstraintWidget.DimensionBehaviour dimensionBehaviour18 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                            j(next, dimensionBehaviour18, 0, dimensionBehaviour18, 0);
                            next.horizontalRun.f2624d.wrapValue = next.getWidth();
                            next.verticalRun.f2624d.wrapValue = next.getHeight();
                        } else if (i6 == 2 && i5 == 2) {
                            ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr4 = constraintWidgetContainer.mListDimensionBehaviors;
                            ConstraintWidget.DimensionBehaviour dimensionBehaviour19 = dimensionBehaviourArr4[0];
                            ConstraintWidget.DimensionBehaviour dimensionBehaviour20 = ConstraintWidget.DimensionBehaviour.FIXED;
                            if (dimensionBehaviour19 == dimensionBehaviour20 && dimensionBehaviourArr4[1] == dimensionBehaviour20) {
                                j(next, dimensionBehaviour20, (int) ((next.mMatchConstraintPercentWidth * constraintWidgetContainer.getWidth()) + 0.5f), dimensionBehaviour20, (int) ((next.mMatchConstraintPercentHeight * constraintWidgetContainer.getHeight()) + 0.5f));
                                next.horizontalRun.f2624d.resolve(next.getWidth());
                                next.verticalRun.f2624d.resolve(next.getHeight());
                                next.measured = true;
                            }
                        }
                    }
                }
            }
        }
        return false;
    }

    private int c(ConstraintWidgetContainer constraintWidgetContainer, int i2) {
        int size = this.f2580i.size();
        long j4 = 0;
        for (int i4 = 0; i4 < size; i4++) {
            j4 = Math.max(j4, this.f2580i.get(i4).computeWrapSize(constraintWidgetContainer, i2));
        }
        return (int) j4;
    }

    private void d() {
        Iterator<WidgetRun> it2 = this.f2576e.iterator();
        String str = "digraph {\n";
        while (it2.hasNext()) {
            str = g(it2.next(), str);
        }
        String str2 = str + "\n}\n";
        System.out.println("content:<<\n" + str2 + "\n>>");
    }

    private void e(WidgetRun widgetRun, int i2, ArrayList<RunGroup> arrayList) {
        for (Dependency dependency : widgetRun.start.f2586f) {
            if (dependency instanceof DependencyNode) {
                a((DependencyNode) dependency, i2, 0, widgetRun.end, arrayList, null);
            } else if (dependency instanceof WidgetRun) {
                a(((WidgetRun) dependency).start, i2, 0, widgetRun.end, arrayList, null);
            }
        }
        for (Dependency dependency2 : widgetRun.end.f2586f) {
            if (dependency2 instanceof DependencyNode) {
                a((DependencyNode) dependency2, i2, 1, widgetRun.start, arrayList, null);
            } else if (dependency2 instanceof WidgetRun) {
                a(((WidgetRun) dependency2).end, i2, 1, widgetRun.start, arrayList, null);
            }
        }
        if (i2 == 1) {
            for (Dependency dependency3 : ((VerticalWidgetRun) widgetRun).baseline.f2586f) {
                if (dependency3 instanceof DependencyNode) {
                    a((DependencyNode) dependency3, i2, 2, null, arrayList, null);
                }
            }
        }
    }

    private String f(ChainRun chainRun, String str) {
        int i2 = chainRun.orientation;
        StringBuilder sb = new StringBuilder("subgraph ");
        sb.append("cluster_");
        sb.append(chainRun.f2621a.getDebugName());
        if (i2 == 0) {
            sb.append("_h");
        } else {
            sb.append("_v");
        }
        sb.append(" {\n");
        Iterator<WidgetRun> it2 = chainRun.f2569g.iterator();
        String str2 = "";
        while (it2.hasNext()) {
            WidgetRun next = it2.next();
            sb.append(next.f2621a.getDebugName());
            if (i2 == 0) {
                sb.append("_HORIZONTAL");
            } else {
                sb.append("_VERTICAL");
            }
            sb.append(";\n");
            str2 = g(next, str2);
        }
        sb.append("}\n");
        return str + str2 + ((Object) sb);
    }

    private String g(WidgetRun widgetRun, String str) {
        boolean z3;
        DependencyNode dependencyNode = widgetRun.start;
        DependencyNode dependencyNode2 = widgetRun.end;
        StringBuilder sb = new StringBuilder(str);
        if ((widgetRun instanceof HelperReferences) || !dependencyNode.f2586f.isEmpty() || (!dependencyNode2.f2586f.isEmpty() || !dependencyNode.f2587g.isEmpty()) || !dependencyNode2.f2587g.isEmpty()) {
            sb.append(k(widgetRun));
            boolean i2 = i(dependencyNode, dependencyNode2);
            String h4 = h(dependencyNode2, i2, h(dependencyNode, i2, str));
            boolean z4 = widgetRun instanceof VerticalWidgetRun;
            if (z4) {
                h4 = h(((VerticalWidgetRun) widgetRun).baseline, i2, h4);
            }
            if (!(widgetRun instanceof HorizontalWidgetRun) && (!((z3 = widgetRun instanceof ChainRun)) || ((ChainRun) widgetRun).orientation != 0)) {
                if (z4 || (z3 && ((ChainRun) widgetRun).orientation == 1)) {
                    ConstraintWidget.DimensionBehaviour verticalDimensionBehaviour = widgetRun.f2621a.getVerticalDimensionBehaviour();
                    if (verticalDimensionBehaviour != ConstraintWidget.DimensionBehaviour.FIXED && verticalDimensionBehaviour != ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
                        if (verticalDimensionBehaviour == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && widgetRun.f2621a.getDimensionRatio() > 0.0f) {
                            sb.append("\n");
                            sb.append(widgetRun.f2621a.getDebugName());
                            sb.append("_VERTICAL -> ");
                            sb.append(widgetRun.f2621a.getDebugName());
                            sb.append("_HORIZONTAL;\n");
                        }
                    } else if (!dependencyNode.f2587g.isEmpty() && dependencyNode2.f2587g.isEmpty()) {
                        sb.append("\n");
                        sb.append(dependencyNode2.name());
                        sb.append(" -> ");
                        sb.append(dependencyNode.name());
                        sb.append("\n");
                    } else if (dependencyNode.f2587g.isEmpty() && !dependencyNode2.f2587g.isEmpty()) {
                        sb.append("\n");
                        sb.append(dependencyNode.name());
                        sb.append(" -> ");
                        sb.append(dependencyNode2.name());
                        sb.append("\n");
                    }
                }
            } else {
                ConstraintWidget.DimensionBehaviour horizontalDimensionBehaviour = widgetRun.f2621a.getHorizontalDimensionBehaviour();
                if (horizontalDimensionBehaviour != ConstraintWidget.DimensionBehaviour.FIXED && horizontalDimensionBehaviour != ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
                    if (horizontalDimensionBehaviour == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && widgetRun.f2621a.getDimensionRatio() > 0.0f) {
                        sb.append("\n");
                        sb.append(widgetRun.f2621a.getDebugName());
                        sb.append("_HORIZONTAL -> ");
                        sb.append(widgetRun.f2621a.getDebugName());
                        sb.append("_VERTICAL;\n");
                    }
                } else if (!dependencyNode.f2587g.isEmpty() && dependencyNode2.f2587g.isEmpty()) {
                    sb.append("\n");
                    sb.append(dependencyNode2.name());
                    sb.append(" -> ");
                    sb.append(dependencyNode.name());
                    sb.append("\n");
                } else if (dependencyNode.f2587g.isEmpty() && !dependencyNode2.f2587g.isEmpty()) {
                    sb.append("\n");
                    sb.append(dependencyNode.name());
                    sb.append(" -> ");
                    sb.append(dependencyNode2.name());
                    sb.append("\n");
                }
            }
            if (widgetRun instanceof ChainRun) {
                return f((ChainRun) widgetRun, h4);
            }
            return sb.toString();
        }
        return str;
    }

    private String h(DependencyNode dependencyNode, boolean z3, String str) {
        StringBuilder sb = new StringBuilder(str);
        Iterator<DependencyNode> it2 = dependencyNode.f2587g.iterator();
        while (it2.hasNext()) {
            String str2 = ("\n" + dependencyNode.name()) + " -> " + it2.next().name();
            if (dependencyNode.f2583c > 0 || z3 || (dependencyNode.f2581a instanceof HelperReferences)) {
                String str3 = str2 + "[";
                if (dependencyNode.f2583c > 0) {
                    str3 = str3 + "label=\"" + dependencyNode.f2583c + a.f72569g;
                    if (z3) {
                        str3 = str3 + ",";
                    }
                }
                if (z3) {
                    str3 = str3 + " style=dashed ";
                }
                if (dependencyNode.f2581a instanceof HelperReferences) {
                    str3 = str3 + " style=bold,color=gray ";
                }
                str2 = str3 + "]";
            }
            sb.append(str2 + "\n");
        }
        return sb.toString();
    }

    private boolean i(DependencyNode dependencyNode, DependencyNode dependencyNode2) {
        int i2 = 0;
        for (DependencyNode dependencyNode3 : dependencyNode.f2587g) {
            if (dependencyNode3 != dependencyNode2) {
                i2++;
            }
        }
        int i4 = 0;
        for (DependencyNode dependencyNode4 : dependencyNode2.f2587g) {
            if (dependencyNode4 != dependencyNode) {
                i4++;
            }
        }
        return i2 > 0 && i4 > 0;
    }

    private void j(ConstraintWidget constraintWidget, ConstraintWidget.DimensionBehaviour dimensionBehaviour, int i2, ConstraintWidget.DimensionBehaviour dimensionBehaviour2, int i4) {
        BasicMeasure.Measure measure = this.f2579h;
        measure.horizontalBehavior = dimensionBehaviour;
        measure.verticalBehavior = dimensionBehaviour2;
        measure.horizontalDimension = i2;
        measure.verticalDimension = i4;
        this.f2578g.measure(constraintWidget, measure);
        constraintWidget.setWidth(this.f2579h.measuredWidth);
        constraintWidget.setHeight(this.f2579h.measuredHeight);
        constraintWidget.setHasBaseline(this.f2579h.measuredHasBaseline);
        constraintWidget.setBaselineDistance(this.f2579h.measuredBaseline);
    }

    private String k(WidgetRun widgetRun) {
        boolean z3 = widgetRun instanceof VerticalWidgetRun;
        String debugName = widgetRun.f2621a.getDebugName();
        StringBuilder sb = new StringBuilder(debugName);
        ConstraintWidget constraintWidget = widgetRun.f2621a;
        ConstraintWidget.DimensionBehaviour horizontalDimensionBehaviour = !z3 ? constraintWidget.getHorizontalDimensionBehaviour() : constraintWidget.getVerticalDimensionBehaviour();
        RunGroup runGroup = widgetRun.f2622b;
        if (!z3) {
            sb.append("_HORIZONTAL");
        } else {
            sb.append("_VERTICAL");
        }
        sb.append(" [shape=none, label=<");
        sb.append("<TABLE BORDER=\"0\" CELLSPACING=\"0\" CELLPADDING=\"2\">");
        sb.append("  <TR>");
        if (!z3) {
            sb.append("    <TD ");
            if (widgetRun.start.resolved) {
                sb.append(" BGCOLOR=\"green\"");
            }
            sb.append(" PORT=\"LEFT\" BORDER=\"1\">L</TD>");
        } else {
            sb.append("    <TD ");
            if (widgetRun.start.resolved) {
                sb.append(" BGCOLOR=\"green\"");
            }
            sb.append(" PORT=\"TOP\" BORDER=\"1\">T</TD>");
        }
        sb.append("    <TD BORDER=\"1\" ");
        boolean z4 = widgetRun.f2624d.resolved;
        if (z4 && !widgetRun.f2621a.measured) {
            sb.append(" BGCOLOR=\"green\" ");
        } else if (z4) {
            sb.append(" BGCOLOR=\"lightgray\" ");
        } else if (widgetRun.f2621a.measured) {
            sb.append(" BGCOLOR=\"yellow\" ");
        }
        if (horizontalDimensionBehaviour == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
            sb.append("style=\"dashed\"");
        }
        sb.append(SimpleComparison.GREATER_THAN_OPERATION);
        sb.append(debugName);
        if (runGroup != null) {
            sb.append(" [");
            sb.append(runGroup.f2601d + 1);
            sb.append(e.F0);
            sb.append(RunGroup.index);
            sb.append("]");
        }
        sb.append(" </TD>");
        if (!z3) {
            sb.append("    <TD ");
            if (widgetRun.end.resolved) {
                sb.append(" BGCOLOR=\"green\"");
            }
            sb.append(" PORT=\"RIGHT\" BORDER=\"1\">R</TD>");
        } else {
            sb.append("    <TD ");
            if (((VerticalWidgetRun) widgetRun).baseline.resolved) {
                sb.append(" BGCOLOR=\"green\"");
            }
            sb.append(" PORT=\"BASELINE\" BORDER=\"1\">b</TD>");
            sb.append("    <TD ");
            if (widgetRun.end.resolved) {
                sb.append(" BGCOLOR=\"green\"");
            }
            sb.append(" PORT=\"BOTTOM\" BORDER=\"1\">B</TD>");
        }
        sb.append("  </TR></TABLE>");
        sb.append(">];\n");
        return sb.toString();
    }

    public void buildGraph() {
        buildGraph(this.f2576e);
        this.f2580i.clear();
        RunGroup.index = 0;
        e(this.f2572a.horizontalRun, 0, this.f2580i);
        e(this.f2572a.verticalRun, 1, this.f2580i);
        this.f2573b = false;
    }

    public void defineTerminalWidgets(ConstraintWidget.DimensionBehaviour dimensionBehaviour, ConstraintWidget.DimensionBehaviour dimensionBehaviour2) {
        if (this.f2573b) {
            buildGraph();
            Iterator<ConstraintWidget> it2 = this.f2572a.mChildren.iterator();
            boolean z3 = false;
            while (it2.hasNext()) {
                ConstraintWidget next = it2.next();
                boolean[] zArr = next.isTerminalWidget;
                zArr[0] = true;
                zArr[1] = true;
                if (next instanceof Barrier) {
                    z3 = true;
                }
            }
            if (z3) {
                return;
            }
            Iterator<RunGroup> it3 = this.f2580i.iterator();
            while (it3.hasNext()) {
                RunGroup next2 = it3.next();
                ConstraintWidget.DimensionBehaviour dimensionBehaviour3 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                next2.defineTerminalWidgets(dimensionBehaviour == dimensionBehaviour3, dimensionBehaviour2 == dimensionBehaviour3);
            }
        }
    }

    public boolean directMeasure(boolean z3) {
        boolean z4;
        boolean z5 = true;
        boolean z6 = z3 & true;
        if (this.f2573b || this.f2574c) {
            Iterator<ConstraintWidget> it2 = this.f2572a.mChildren.iterator();
            while (it2.hasNext()) {
                ConstraintWidget next = it2.next();
                next.ensureWidgetRuns();
                next.measured = false;
                next.horizontalRun.h();
                next.verticalRun.h();
            }
            this.f2572a.ensureWidgetRuns();
            ConstraintWidgetContainer constraintWidgetContainer = this.f2572a;
            constraintWidgetContainer.measured = false;
            constraintWidgetContainer.horizontalRun.h();
            this.f2572a.verticalRun.h();
            this.f2574c = false;
        }
        if (b(this.f2575d)) {
            return false;
        }
        this.f2572a.setX(0);
        this.f2572a.setY(0);
        ConstraintWidget.DimensionBehaviour dimensionBehaviour = this.f2572a.getDimensionBehaviour(0);
        ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = this.f2572a.getDimensionBehaviour(1);
        if (this.f2573b) {
            buildGraph();
        }
        int x3 = this.f2572a.getX();
        int y3 = this.f2572a.getY();
        this.f2572a.horizontalRun.start.resolve(x3);
        this.f2572a.verticalRun.start.resolve(y3);
        measureWidgets();
        ConstraintWidget.DimensionBehaviour dimensionBehaviour3 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
        if (dimensionBehaviour == dimensionBehaviour3 || dimensionBehaviour2 == dimensionBehaviour3) {
            if (z6) {
                Iterator<WidgetRun> it3 = this.f2576e.iterator();
                while (true) {
                    if (!it3.hasNext()) {
                        break;
                    } else if (!it3.next().j()) {
                        z6 = false;
                        break;
                    }
                }
            }
            if (z6 && dimensionBehaviour == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
                this.f2572a.setHorizontalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.FIXED);
                ConstraintWidgetContainer constraintWidgetContainer2 = this.f2572a;
                constraintWidgetContainer2.setWidth(c(constraintWidgetContainer2, 0));
                ConstraintWidgetContainer constraintWidgetContainer3 = this.f2572a;
                constraintWidgetContainer3.horizontalRun.f2624d.resolve(constraintWidgetContainer3.getWidth());
            }
            if (z6 && dimensionBehaviour2 == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
                this.f2572a.setVerticalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.FIXED);
                ConstraintWidgetContainer constraintWidgetContainer4 = this.f2572a;
                constraintWidgetContainer4.setHeight(c(constraintWidgetContainer4, 1));
                ConstraintWidgetContainer constraintWidgetContainer5 = this.f2572a;
                constraintWidgetContainer5.verticalRun.f2624d.resolve(constraintWidgetContainer5.getHeight());
            }
        }
        ConstraintWidgetContainer constraintWidgetContainer6 = this.f2572a;
        ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr = constraintWidgetContainer6.mListDimensionBehaviors;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour4 = dimensionBehaviourArr[0];
        ConstraintWidget.DimensionBehaviour dimensionBehaviour5 = ConstraintWidget.DimensionBehaviour.FIXED;
        if (dimensionBehaviour4 == dimensionBehaviour5 || dimensionBehaviourArr[0] == ConstraintWidget.DimensionBehaviour.MATCH_PARENT) {
            int width = constraintWidgetContainer6.getWidth() + x3;
            this.f2572a.horizontalRun.end.resolve(width);
            this.f2572a.horizontalRun.f2624d.resolve(width - x3);
            measureWidgets();
            ConstraintWidgetContainer constraintWidgetContainer7 = this.f2572a;
            ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr2 = constraintWidgetContainer7.mListDimensionBehaviors;
            if (dimensionBehaviourArr2[1] == dimensionBehaviour5 || dimensionBehaviourArr2[1] == ConstraintWidget.DimensionBehaviour.MATCH_PARENT) {
                int height = constraintWidgetContainer7.getHeight() + y3;
                this.f2572a.verticalRun.end.resolve(height);
                this.f2572a.verticalRun.f2624d.resolve(height - y3);
            }
            measureWidgets();
            z4 = true;
        } else {
            z4 = false;
        }
        Iterator<WidgetRun> it4 = this.f2576e.iterator();
        while (it4.hasNext()) {
            WidgetRun next2 = it4.next();
            if (next2.f2621a != this.f2572a || next2.f2625e) {
                next2.applyToWidget();
            }
        }
        Iterator<WidgetRun> it5 = this.f2576e.iterator();
        while (it5.hasNext()) {
            WidgetRun next3 = it5.next();
            if (z4 || next3.f2621a != this.f2572a) {
                if (!next3.start.resolved || ((!next3.end.resolved && !(next3 instanceof GuidelineReference)) || (!next3.f2624d.resolved && !(next3 instanceof ChainRun) && !(next3 instanceof GuidelineReference)))) {
                    z5 = false;
                    break;
                }
            }
        }
        this.f2572a.setHorizontalDimensionBehaviour(dimensionBehaviour);
        this.f2572a.setVerticalDimensionBehaviour(dimensionBehaviour2);
        return z5;
    }

    public boolean directMeasureSetup(boolean z3) {
        if (this.f2573b) {
            Iterator<ConstraintWidget> it2 = this.f2572a.mChildren.iterator();
            while (it2.hasNext()) {
                ConstraintWidget next = it2.next();
                next.ensureWidgetRuns();
                next.measured = false;
                HorizontalWidgetRun horizontalWidgetRun = next.horizontalRun;
                horizontalWidgetRun.f2624d.resolved = false;
                horizontalWidgetRun.f2625e = false;
                horizontalWidgetRun.h();
                VerticalWidgetRun verticalWidgetRun = next.verticalRun;
                verticalWidgetRun.f2624d.resolved = false;
                verticalWidgetRun.f2625e = false;
                verticalWidgetRun.h();
            }
            this.f2572a.ensureWidgetRuns();
            ConstraintWidgetContainer constraintWidgetContainer = this.f2572a;
            constraintWidgetContainer.measured = false;
            HorizontalWidgetRun horizontalWidgetRun2 = constraintWidgetContainer.horizontalRun;
            horizontalWidgetRun2.f2624d.resolved = false;
            horizontalWidgetRun2.f2625e = false;
            horizontalWidgetRun2.h();
            VerticalWidgetRun verticalWidgetRun2 = this.f2572a.verticalRun;
            verticalWidgetRun2.f2624d.resolved = false;
            verticalWidgetRun2.f2625e = false;
            verticalWidgetRun2.h();
            buildGraph();
        }
        if (b(this.f2575d)) {
            return false;
        }
        this.f2572a.setX(0);
        this.f2572a.setY(0);
        this.f2572a.horizontalRun.start.resolve(0);
        this.f2572a.verticalRun.start.resolve(0);
        return true;
    }

    public boolean directMeasureWithOrientation(boolean z3, int i2) {
        boolean z4;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour;
        boolean z5 = true;
        boolean z6 = z3 & true;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = this.f2572a.getDimensionBehaviour(0);
        ConstraintWidget.DimensionBehaviour dimensionBehaviour3 = this.f2572a.getDimensionBehaviour(1);
        int x3 = this.f2572a.getX();
        int y3 = this.f2572a.getY();
        if (z6 && (dimensionBehaviour2 == (dimensionBehaviour = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) || dimensionBehaviour3 == dimensionBehaviour)) {
            Iterator<WidgetRun> it2 = this.f2576e.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                WidgetRun next = it2.next();
                if (next.orientation == i2 && !next.j()) {
                    z6 = false;
                    break;
                }
            }
            if (i2 == 0) {
                if (z6 && dimensionBehaviour2 == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
                    this.f2572a.setHorizontalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.FIXED);
                    ConstraintWidgetContainer constraintWidgetContainer = this.f2572a;
                    constraintWidgetContainer.setWidth(c(constraintWidgetContainer, 0));
                    ConstraintWidgetContainer constraintWidgetContainer2 = this.f2572a;
                    constraintWidgetContainer2.horizontalRun.f2624d.resolve(constraintWidgetContainer2.getWidth());
                }
            } else if (z6 && dimensionBehaviour3 == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
                this.f2572a.setVerticalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.FIXED);
                ConstraintWidgetContainer constraintWidgetContainer3 = this.f2572a;
                constraintWidgetContainer3.setHeight(c(constraintWidgetContainer3, 1));
                ConstraintWidgetContainer constraintWidgetContainer4 = this.f2572a;
                constraintWidgetContainer4.verticalRun.f2624d.resolve(constraintWidgetContainer4.getHeight());
            }
        }
        if (i2 == 0) {
            ConstraintWidgetContainer constraintWidgetContainer5 = this.f2572a;
            ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr = constraintWidgetContainer5.mListDimensionBehaviors;
            if (dimensionBehaviourArr[0] == ConstraintWidget.DimensionBehaviour.FIXED || dimensionBehaviourArr[0] == ConstraintWidget.DimensionBehaviour.MATCH_PARENT) {
                int width = constraintWidgetContainer5.getWidth() + x3;
                this.f2572a.horizontalRun.end.resolve(width);
                this.f2572a.horizontalRun.f2624d.resolve(width - x3);
                z4 = true;
            }
            z4 = false;
        } else {
            ConstraintWidgetContainer constraintWidgetContainer6 = this.f2572a;
            ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr2 = constraintWidgetContainer6.mListDimensionBehaviors;
            if (dimensionBehaviourArr2[1] == ConstraintWidget.DimensionBehaviour.FIXED || dimensionBehaviourArr2[1] == ConstraintWidget.DimensionBehaviour.MATCH_PARENT) {
                int height = constraintWidgetContainer6.getHeight() + y3;
                this.f2572a.verticalRun.end.resolve(height);
                this.f2572a.verticalRun.f2624d.resolve(height - y3);
                z4 = true;
            }
            z4 = false;
        }
        measureWidgets();
        Iterator<WidgetRun> it3 = this.f2576e.iterator();
        while (it3.hasNext()) {
            WidgetRun next2 = it3.next();
            if (next2.orientation == i2 && (next2.f2621a != this.f2572a || next2.f2625e)) {
                next2.applyToWidget();
            }
        }
        Iterator<WidgetRun> it4 = this.f2576e.iterator();
        while (it4.hasNext()) {
            WidgetRun next3 = it4.next();
            if (next3.orientation == i2 && (z4 || next3.f2621a != this.f2572a)) {
                if (!next3.start.resolved || !next3.end.resolved || (!(next3 instanceof ChainRun) && !next3.f2624d.resolved)) {
                    z5 = false;
                    break;
                }
            }
        }
        this.f2572a.setHorizontalDimensionBehaviour(dimensionBehaviour2);
        this.f2572a.setVerticalDimensionBehaviour(dimensionBehaviour3);
        return z5;
    }

    public void invalidateGraph() {
        this.f2573b = true;
    }

    public void invalidateMeasures() {
        this.f2574c = true;
    }

    public void measureWidgets() {
        DimensionDependency dimensionDependency;
        Iterator<ConstraintWidget> it2 = this.f2572a.mChildren.iterator();
        while (it2.hasNext()) {
            ConstraintWidget next = it2.next();
            if (!next.measured) {
                ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr = next.mListDimensionBehaviors;
                boolean z3 = false;
                ConstraintWidget.DimensionBehaviour dimensionBehaviour = dimensionBehaviourArr[0];
                ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = dimensionBehaviourArr[1];
                int i2 = next.mMatchConstraintDefaultWidth;
                int i4 = next.mMatchConstraintDefaultHeight;
                ConstraintWidget.DimensionBehaviour dimensionBehaviour3 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                boolean z4 = dimensionBehaviour == dimensionBehaviour3 || (dimensionBehaviour == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && i2 == 1);
                if (dimensionBehaviour2 == dimensionBehaviour3 || (dimensionBehaviour2 == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && i4 == 1)) {
                    z3 = true;
                }
                DimensionDependency dimensionDependency2 = next.horizontalRun.f2624d;
                boolean z5 = dimensionDependency2.resolved;
                DimensionDependency dimensionDependency3 = next.verticalRun.f2624d;
                boolean z6 = dimensionDependency3.resolved;
                if (z5 && z6) {
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour4 = ConstraintWidget.DimensionBehaviour.FIXED;
                    j(next, dimensionBehaviour4, dimensionDependency2.value, dimensionBehaviour4, dimensionDependency3.value);
                    next.measured = true;
                } else if (z5 && z3) {
                    j(next, ConstraintWidget.DimensionBehaviour.FIXED, dimensionDependency2.value, dimensionBehaviour3, dimensionDependency3.value);
                    if (dimensionBehaviour2 == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                        next.verticalRun.f2624d.wrapValue = next.getHeight();
                    } else {
                        next.verticalRun.f2624d.resolve(next.getHeight());
                        next.measured = true;
                    }
                } else if (z6 && z4) {
                    j(next, dimensionBehaviour3, dimensionDependency2.value, ConstraintWidget.DimensionBehaviour.FIXED, dimensionDependency3.value);
                    if (dimensionBehaviour == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                        next.horizontalRun.f2624d.wrapValue = next.getWidth();
                    } else {
                        next.horizontalRun.f2624d.resolve(next.getWidth());
                        next.measured = true;
                    }
                }
                if (next.measured && (dimensionDependency = next.verticalRun.f2603g) != null) {
                    dimensionDependency.resolve(next.getBaselineDistance());
                }
            }
        }
    }

    public void setMeasurer(BasicMeasure.Measurer measurer) {
        this.f2578g = measurer;
    }

    public void buildGraph(ArrayList<WidgetRun> arrayList) {
        arrayList.clear();
        this.f2575d.horizontalRun.d();
        this.f2575d.verticalRun.d();
        arrayList.add(this.f2575d.horizontalRun);
        arrayList.add(this.f2575d.verticalRun);
        Iterator<ConstraintWidget> it2 = this.f2575d.mChildren.iterator();
        HashSet hashSet = null;
        while (it2.hasNext()) {
            ConstraintWidget next = it2.next();
            if (next instanceof Guideline) {
                arrayList.add(new GuidelineReference(next));
            } else {
                if (next.isInHorizontalChain()) {
                    if (next.horizontalChainRun == null) {
                        next.horizontalChainRun = new ChainRun(next, 0);
                    }
                    if (hashSet == null) {
                        hashSet = new HashSet();
                    }
                    hashSet.add(next.horizontalChainRun);
                } else {
                    arrayList.add(next.horizontalRun);
                }
                if (next.isInVerticalChain()) {
                    if (next.verticalChainRun == null) {
                        next.verticalChainRun = new ChainRun(next, 1);
                    }
                    if (hashSet == null) {
                        hashSet = new HashSet();
                    }
                    hashSet.add(next.verticalChainRun);
                } else {
                    arrayList.add(next.verticalRun);
                }
                if (next instanceof HelperWidget) {
                    arrayList.add(new HelperReferences(next));
                }
            }
        }
        if (hashSet != null) {
            arrayList.addAll(hashSet);
        }
        Iterator<WidgetRun> it3 = arrayList.iterator();
        while (it3.hasNext()) {
            it3.next().d();
        }
        Iterator<WidgetRun> it4 = arrayList.iterator();
        while (it4.hasNext()) {
            WidgetRun next2 = it4.next();
            if (next2.f2621a != this.f2575d) {
                next2.c();
            }
        }
    }
}
