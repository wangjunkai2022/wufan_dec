package androidx.constraintlayout.core.widgets;

import androidx.constraintlayout.core.LinearSystem;
import androidx.constraintlayout.core.widgets.ConstraintAnchor;
/* loaded from: classes.dex */
public class Placeholder extends VirtualLayout {
    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public void addToSolver(LinearSystem linearSystem, boolean z3) {
        super.addToSolver(linearSystem, z3);
        if (this.mWidgetsCount > 0) {
            ConstraintWidget constraintWidget = this.mWidgets[0];
            constraintWidget.resetAllConstraints();
            ConstraintAnchor.Type type = ConstraintAnchor.Type.LEFT;
            constraintWidget.connect(type, this, type);
            ConstraintAnchor.Type type2 = ConstraintAnchor.Type.RIGHT;
            constraintWidget.connect(type2, this, type2);
            ConstraintAnchor.Type type3 = ConstraintAnchor.Type.TOP;
            constraintWidget.connect(type3, this, type3);
            ConstraintAnchor.Type type4 = ConstraintAnchor.Type.BOTTOM;
            constraintWidget.connect(type4, this, type4);
        }
    }

    @Override // androidx.constraintlayout.core.widgets.VirtualLayout
    public void measure(int i2, int i4, int i5, int i6) {
        int paddingLeft = getPaddingLeft() + getPaddingRight() + 0;
        int paddingTop = getPaddingTop() + getPaddingBottom() + 0;
        if (this.mWidgetsCount > 0) {
            paddingLeft += this.mWidgets[0].getWidth();
            paddingTop += this.mWidgets[0].getHeight();
        }
        int max = Math.max(getMinWidth(), paddingLeft);
        int max2 = Math.max(getMinHeight(), paddingTop);
        if (i2 != 1073741824) {
            if (i2 == Integer.MIN_VALUE) {
                i4 = Math.min(max, i4);
            } else {
                i4 = i2 == 0 ? max : 0;
            }
        }
        if (i5 != 1073741824) {
            if (i5 == Integer.MIN_VALUE) {
                i6 = Math.min(max2, i6);
            } else {
                i6 = i5 == 0 ? max2 : 0;
            }
        }
        setMeasure(i4, i6);
        setWidth(i4);
        setHeight(i6);
        t(this.mWidgetsCount > 0);
    }
}
