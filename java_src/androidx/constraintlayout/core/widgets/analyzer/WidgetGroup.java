package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.LinearSystem;
import androidx.constraintlayout.core.widgets.Chain;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.ConstraintWidgetContainer;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes.dex */
public class WidgetGroup {

    /* renamed from: g  reason: collision with root package name */
    private static final boolean f2605g = false;

    /* renamed from: h  reason: collision with root package name */
    static int f2606h;

    /* renamed from: b  reason: collision with root package name */
    int f2608b;

    /* renamed from: d  reason: collision with root package name */
    int f2610d;

    /* renamed from: a  reason: collision with root package name */
    ArrayList<ConstraintWidget> f2607a = new ArrayList<>();

    /* renamed from: c  reason: collision with root package name */
    boolean f2609c = false;

    /* renamed from: e  reason: collision with root package name */
    ArrayList<MeasureResult> f2611e = null;

    /* renamed from: f  reason: collision with root package name */
    private int f2612f = -1;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class MeasureResult {

        /* renamed from: a  reason: collision with root package name */
        WeakReference<ConstraintWidget> f2613a;

        /* renamed from: b  reason: collision with root package name */
        int f2614b;

        /* renamed from: c  reason: collision with root package name */
        int f2615c;

        /* renamed from: d  reason: collision with root package name */
        int f2616d;

        /* renamed from: e  reason: collision with root package name */
        int f2617e;

        /* renamed from: f  reason: collision with root package name */
        int f2618f;

        /* renamed from: g  reason: collision with root package name */
        int f2619g;

        public MeasureResult(ConstraintWidget constraintWidget, LinearSystem linearSystem, int i2) {
            this.f2613a = new WeakReference<>(constraintWidget);
            this.f2614b = linearSystem.getObjectVariableValue(constraintWidget.mLeft);
            this.f2615c = linearSystem.getObjectVariableValue(constraintWidget.mTop);
            this.f2616d = linearSystem.getObjectVariableValue(constraintWidget.mRight);
            this.f2617e = linearSystem.getObjectVariableValue(constraintWidget.mBottom);
            this.f2618f = linearSystem.getObjectVariableValue(constraintWidget.mBaseline);
            this.f2619g = i2;
        }

        public void apply() {
            ConstraintWidget constraintWidget = this.f2613a.get();
            if (constraintWidget != null) {
                constraintWidget.setFinalFrame(this.f2614b, this.f2615c, this.f2616d, this.f2617e, this.f2618f, this.f2619g);
            }
        }
    }

    public WidgetGroup(int i2) {
        this.f2608b = -1;
        this.f2610d = 0;
        int i4 = f2606h;
        f2606h = i4 + 1;
        this.f2608b = i4;
        this.f2610d = i2;
    }

    private boolean a(ConstraintWidget constraintWidget) {
        return this.f2607a.contains(constraintWidget);
    }

    private String b() {
        int i2 = this.f2610d;
        return i2 == 0 ? "Horizontal" : i2 == 1 ? "Vertical" : i2 == 2 ? "Both" : "Unknown";
    }

    private int c(int i2, ConstraintWidget constraintWidget) {
        ConstraintWidget.DimensionBehaviour dimensionBehaviour = constraintWidget.getDimensionBehaviour(i2);
        if (dimensionBehaviour == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT || dimensionBehaviour == ConstraintWidget.DimensionBehaviour.MATCH_PARENT || dimensionBehaviour == ConstraintWidget.DimensionBehaviour.FIXED) {
            if (i2 == 0) {
                return constraintWidget.getWidth();
            }
            return constraintWidget.getHeight();
        }
        return -1;
    }

    private int d(LinearSystem linearSystem, ArrayList<ConstraintWidget> arrayList, int i2) {
        int objectVariableValue;
        int objectVariableValue2;
        ConstraintWidgetContainer constraintWidgetContainer = (ConstraintWidgetContainer) arrayList.get(0).getParent();
        linearSystem.reset();
        constraintWidgetContainer.addToSolver(linearSystem, false);
        for (int i4 = 0; i4 < arrayList.size(); i4++) {
            arrayList.get(i4).addToSolver(linearSystem, false);
        }
        if (i2 == 0 && constraintWidgetContainer.mHorizontalChainsSize > 0) {
            Chain.applyChainConstraints(constraintWidgetContainer, linearSystem, arrayList, 0);
        }
        if (i2 == 1 && constraintWidgetContainer.mVerticalChainsSize > 0) {
            Chain.applyChainConstraints(constraintWidgetContainer, linearSystem, arrayList, 1);
        }
        try {
            linearSystem.minimize();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        this.f2611e = new ArrayList<>();
        for (int i5 = 0; i5 < arrayList.size(); i5++) {
            this.f2611e.add(new MeasureResult(arrayList.get(i5), linearSystem, i2));
        }
        if (i2 == 0) {
            objectVariableValue = linearSystem.getObjectVariableValue(constraintWidgetContainer.mLeft);
            objectVariableValue2 = linearSystem.getObjectVariableValue(constraintWidgetContainer.mRight);
            linearSystem.reset();
        } else {
            objectVariableValue = linearSystem.getObjectVariableValue(constraintWidgetContainer.mTop);
            objectVariableValue2 = linearSystem.getObjectVariableValue(constraintWidgetContainer.mBottom);
            linearSystem.reset();
        }
        return objectVariableValue2 - objectVariableValue;
    }

    public boolean add(ConstraintWidget constraintWidget) {
        if (this.f2607a.contains(constraintWidget)) {
            return false;
        }
        this.f2607a.add(constraintWidget);
        return true;
    }

    public void apply() {
        if (this.f2611e != null && this.f2609c) {
            for (int i2 = 0; i2 < this.f2611e.size(); i2++) {
                this.f2611e.get(i2).apply();
            }
        }
    }

    public void cleanup(ArrayList<WidgetGroup> arrayList) {
        int size = this.f2607a.size();
        if (this.f2612f != -1 && size > 0) {
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                WidgetGroup widgetGroup = arrayList.get(i2);
                if (this.f2612f == widgetGroup.f2608b) {
                    moveTo(this.f2610d, widgetGroup);
                }
            }
        }
        if (size == 0) {
            arrayList.remove(this);
        }
    }

    public void clear() {
        this.f2607a.clear();
    }

    public int getId() {
        return this.f2608b;
    }

    public int getOrientation() {
        return this.f2610d;
    }

    public boolean intersectWith(WidgetGroup widgetGroup) {
        for (int i2 = 0; i2 < this.f2607a.size(); i2++) {
            if (widgetGroup.a(this.f2607a.get(i2))) {
                return true;
            }
        }
        return false;
    }

    public boolean isAuthoritative() {
        return this.f2609c;
    }

    public int measureWrap(LinearSystem linearSystem, int i2) {
        if (this.f2607a.size() == 0) {
            return 0;
        }
        return d(linearSystem, this.f2607a, i2);
    }

    public void moveTo(int i2, WidgetGroup widgetGroup) {
        Iterator<ConstraintWidget> it2 = this.f2607a.iterator();
        while (it2.hasNext()) {
            ConstraintWidget next = it2.next();
            widgetGroup.add(next);
            if (i2 == 0) {
                next.horizontalGroup = widgetGroup.getId();
            } else {
                next.verticalGroup = widgetGroup.getId();
            }
        }
        this.f2612f = widgetGroup.f2608b;
    }

    public void setAuthoritative(boolean z3) {
        this.f2609c = z3;
    }

    public void setOrientation(int i2) {
        this.f2610d = i2;
    }

    public int size() {
        return this.f2607a.size();
    }

    public String toString() {
        Iterator<ConstraintWidget> it2;
        String str = b() + " [" + this.f2608b + "] <";
        while (this.f2607a.iterator().hasNext()) {
            str = str + " " + it2.next().getDebugName();
        }
        return str + " >";
    }
}
