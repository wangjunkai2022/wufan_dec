package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.ConstraintWidgetContainer;
import com.j256.ormlite.stmt.query.SimpleComparison;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes.dex */
public class ChainRun extends WidgetRun {

    /* renamed from: g  reason: collision with root package name */
    ArrayList<WidgetRun> f2569g;

    /* renamed from: h  reason: collision with root package name */
    private int f2570h;

    public ChainRun(ConstraintWidget constraintWidget, int i2) {
        super(constraintWidget);
        this.f2569g = new ArrayList<>();
        this.orientation = i2;
        n();
    }

    private void n() {
        ConstraintWidget constraintWidget;
        ConstraintWidget constraintWidget2 = this.f2621a;
        ConstraintWidget previousChainMember = constraintWidget2.getPreviousChainMember(this.orientation);
        while (true) {
            ConstraintWidget constraintWidget3 = previousChainMember;
            constraintWidget = constraintWidget2;
            constraintWidget2 = constraintWidget3;
            if (constraintWidget2 == null) {
                break;
            }
            previousChainMember = constraintWidget2.getPreviousChainMember(this.orientation);
        }
        this.f2621a = constraintWidget;
        this.f2569g.add(constraintWidget.getRun(this.orientation));
        ConstraintWidget nextChainMember = constraintWidget.getNextChainMember(this.orientation);
        while (nextChainMember != null) {
            this.f2569g.add(nextChainMember.getRun(this.orientation));
            nextChainMember = nextChainMember.getNextChainMember(this.orientation);
        }
        Iterator<WidgetRun> it2 = this.f2569g.iterator();
        while (it2.hasNext()) {
            WidgetRun next = it2.next();
            int i2 = this.orientation;
            if (i2 == 0) {
                next.f2621a.horizontalChainRun = this;
            } else if (i2 == 1) {
                next.f2621a.verticalChainRun = this;
            }
        }
        if ((this.orientation == 0 && ((ConstraintWidgetContainer) this.f2621a.getParent()).isRtl()) && this.f2569g.size() > 1) {
            ArrayList<WidgetRun> arrayList = this.f2569g;
            this.f2621a = arrayList.get(arrayList.size() - 1).f2621a;
        }
        this.f2570h = this.orientation == 0 ? this.f2621a.getHorizontalChainStyle() : this.f2621a.getVerticalChainStyle();
    }

    private ConstraintWidget o() {
        for (int i2 = 0; i2 < this.f2569g.size(); i2++) {
            WidgetRun widgetRun = this.f2569g.get(i2);
            if (widgetRun.f2621a.getVisibility() != 8) {
                return widgetRun.f2621a;
            }
        }
        return null;
    }

    private ConstraintWidget p() {
        for (int size = this.f2569g.size() - 1; size >= 0; size--) {
            WidgetRun widgetRun = this.f2569g.get(size);
            if (widgetRun.f2621a.getVisibility() != 8) {
                return widgetRun.f2621a;
            }
        }
        return null;
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    public void applyToWidget() {
        for (int i2 = 0; i2 < this.f2569g.size(); i2++) {
            this.f2569g.get(i2).applyToWidget();
        }
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    void c() {
        Iterator<WidgetRun> it2 = this.f2569g.iterator();
        while (it2.hasNext()) {
            it2.next().c();
        }
        int size = this.f2569g.size();
        if (size < 1) {
            return;
        }
        ConstraintWidget constraintWidget = this.f2569g.get(0).f2621a;
        ConstraintWidget constraintWidget2 = this.f2569g.get(size - 1).f2621a;
        if (this.orientation == 0) {
            ConstraintAnchor constraintAnchor = constraintWidget.mLeft;
            ConstraintAnchor constraintAnchor2 = constraintWidget2.mRight;
            DependencyNode g4 = g(constraintAnchor, 0);
            int margin = constraintAnchor.getMargin();
            ConstraintWidget o3 = o();
            if (o3 != null) {
                margin = o3.mLeft.getMargin();
            }
            if (g4 != null) {
                a(this.start, g4, margin);
            }
            DependencyNode g5 = g(constraintAnchor2, 0);
            int margin2 = constraintAnchor2.getMargin();
            ConstraintWidget p3 = p();
            if (p3 != null) {
                margin2 = p3.mRight.getMargin();
            }
            if (g5 != null) {
                a(this.end, g5, -margin2);
            }
        } else {
            ConstraintAnchor constraintAnchor3 = constraintWidget.mTop;
            ConstraintAnchor constraintAnchor4 = constraintWidget2.mBottom;
            DependencyNode g6 = g(constraintAnchor3, 1);
            int margin3 = constraintAnchor3.getMargin();
            ConstraintWidget o4 = o();
            if (o4 != null) {
                margin3 = o4.mTop.getMargin();
            }
            if (g6 != null) {
                a(this.start, g6, margin3);
            }
            DependencyNode g7 = g(constraintAnchor4, 1);
            int margin4 = constraintAnchor4.getMargin();
            ConstraintWidget p4 = p();
            if (p4 != null) {
                margin4 = p4.mBottom.getMargin();
            }
            if (g7 != null) {
                a(this.end, g7, -margin4);
            }
        }
        this.start.updateDelegate = this;
        this.end.updateDelegate = this;
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    void d() {
        this.f2622b = null;
        Iterator<WidgetRun> it2 = this.f2569g.iterator();
        while (it2.hasNext()) {
            it2.next().d();
        }
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    public long getWrapDimension() {
        int size = this.f2569g.size();
        long j4 = 0;
        for (int i2 = 0; i2 < size; i2++) {
            WidgetRun widgetRun = this.f2569g.get(i2);
            j4 = j4 + widgetRun.start.f2583c + widgetRun.getWrapDimension() + widgetRun.end.f2583c;
        }
        return j4;
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    void h() {
        this.start.resolved = false;
        this.end.resolved = false;
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    boolean j() {
        int size = this.f2569g.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (!this.f2569g.get(i2).j()) {
                return false;
            }
        }
        return true;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("ChainRun ");
        sb.append(this.orientation == 0 ? "horizontal : " : "vertical : ");
        Iterator<WidgetRun> it2 = this.f2569g.iterator();
        while (it2.hasNext()) {
            sb.append(SimpleComparison.LESS_THAN_OPERATION);
            sb.append(it2.next());
            sb.append("> ");
        }
        return sb.toString();
    }

    /* JADX WARN: Code restructure failed: missing block: B:271:0x0402, code lost:
        r7 = r7 - r10;
     */
    /* JADX WARN: Removed duplicated region for block: B:62:0x00d7  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x00e9  */
    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun, androidx.constraintlayout.core.widgets.analyzer.Dependency
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void update(androidx.constraintlayout.core.widgets.analyzer.Dependency r27) {
        /*
            Method dump skipped, instructions count: 1066
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.core.widgets.analyzer.ChainRun.update(androidx.constraintlayout.core.widgets.analyzer.Dependency):void");
    }
}
