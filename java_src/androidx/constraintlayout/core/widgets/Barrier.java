package androidx.constraintlayout.core.widgets;

import androidx.constraintlayout.core.LinearSystem;
import androidx.constraintlayout.core.SolverVariable;
import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import java.util.HashMap;
/* loaded from: classes.dex */
public class Barrier extends HelperWidget {
    public static final int BOTTOM = 3;
    public static final int LEFT = 0;
    public static final int RIGHT = 1;
    public static final int TOP = 2;

    /* renamed from: w0  reason: collision with root package name */
    private static final boolean f2428w0 = true;

    /* renamed from: x0  reason: collision with root package name */
    private static final boolean f2429x0 = false;

    /* renamed from: s0  reason: collision with root package name */
    private int f2430s0 = 0;

    /* renamed from: t0  reason: collision with root package name */
    private boolean f2431t0 = true;

    /* renamed from: u0  reason: collision with root package name */
    private int f2432u0 = 0;

    /* renamed from: v0  reason: collision with root package name */
    boolean f2433v0 = false;

    public Barrier() {
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public void addToSolver(LinearSystem linearSystem, boolean z3) {
        Object[] objArr;
        boolean z4;
        int i2;
        int i4;
        int i5;
        ConstraintAnchor[] constraintAnchorArr = this.mListAnchors;
        constraintAnchorArr[0] = this.mLeft;
        constraintAnchorArr[2] = this.mTop;
        constraintAnchorArr[1] = this.mRight;
        constraintAnchorArr[3] = this.mBottom;
        int i6 = 0;
        while (true) {
            objArr = this.mListAnchors;
            if (i6 >= objArr.length) {
                break;
            }
            objArr[i6].f2463e = linearSystem.createObjectVariable(objArr[i6]);
            i6++;
        }
        int i7 = this.f2430s0;
        if (i7 < 0 || i7 >= 4) {
            return;
        }
        ConstraintAnchor constraintAnchor = objArr[i7];
        if (!this.f2433v0) {
            allSolved();
        }
        if (this.f2433v0) {
            this.f2433v0 = false;
            int i8 = this.f2430s0;
            if (i8 == 0 || i8 == 1) {
                linearSystem.addEquality(this.mLeft.f2463e, this.B);
                linearSystem.addEquality(this.mRight.f2463e, this.B);
                return;
            } else if (i8 == 2 || i8 == 3) {
                linearSystem.addEquality(this.mTop.f2463e, this.C);
                linearSystem.addEquality(this.mBottom.f2463e, this.C);
                return;
            } else {
                return;
            }
        }
        for (int i9 = 0; i9 < this.mWidgetsCount; i9++) {
            ConstraintWidget constraintWidget = this.mWidgets[i9];
            if ((this.f2431t0 || constraintWidget.allowedInBarrier()) && ((((i4 = this.f2430s0) == 0 || i4 == 1) && constraintWidget.getHorizontalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && constraintWidget.mLeft.mTarget != null && constraintWidget.mRight.mTarget != null) || (((i5 = this.f2430s0) == 2 || i5 == 3) && constraintWidget.getVerticalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && constraintWidget.mTop.mTarget != null && constraintWidget.mBottom.mTarget != null))) {
                z4 = true;
                break;
            }
        }
        z4 = false;
        boolean z5 = this.mLeft.hasCenteredDependents() || this.mRight.hasCenteredDependents();
        boolean z6 = this.mTop.hasCenteredDependents() || this.mBottom.hasCenteredDependents();
        int i10 = !z4 && (((i2 = this.f2430s0) == 0 && z5) || ((i2 == 2 && z6) || ((i2 == 1 && z5) || (i2 == 3 && z6)))) ? 5 : 4;
        for (int i11 = 0; i11 < this.mWidgetsCount; i11++) {
            ConstraintWidget constraintWidget2 = this.mWidgets[i11];
            if (this.f2431t0 || constraintWidget2.allowedInBarrier()) {
                SolverVariable createObjectVariable = linearSystem.createObjectVariable(constraintWidget2.mListAnchors[this.f2430s0]);
                ConstraintAnchor[] constraintAnchorArr2 = constraintWidget2.mListAnchors;
                int i12 = this.f2430s0;
                constraintAnchorArr2[i12].f2463e = createObjectVariable;
                int i13 = (constraintAnchorArr2[i12].mTarget == null || constraintAnchorArr2[i12].mTarget.mOwner != this) ? 0 : constraintAnchorArr2[i12].mMargin + 0;
                if (i12 != 0 && i12 != 2) {
                    linearSystem.addGreaterBarrier(constraintAnchor.f2463e, createObjectVariable, this.f2432u0 + i13, z4);
                } else {
                    linearSystem.addLowerBarrier(constraintAnchor.f2463e, createObjectVariable, this.f2432u0 - i13, z4);
                }
                linearSystem.addEquality(constraintAnchor.f2463e, createObjectVariable, this.f2432u0 + i13, i10);
            }
        }
        int i14 = this.f2430s0;
        if (i14 == 0) {
            linearSystem.addEquality(this.mRight.f2463e, this.mLeft.f2463e, 0, 8);
            linearSystem.addEquality(this.mLeft.f2463e, this.mParent.mRight.f2463e, 0, 4);
            linearSystem.addEquality(this.mLeft.f2463e, this.mParent.mLeft.f2463e, 0, 0);
        } else if (i14 == 1) {
            linearSystem.addEquality(this.mLeft.f2463e, this.mRight.f2463e, 0, 8);
            linearSystem.addEquality(this.mLeft.f2463e, this.mParent.mLeft.f2463e, 0, 4);
            linearSystem.addEquality(this.mLeft.f2463e, this.mParent.mRight.f2463e, 0, 0);
        } else if (i14 == 2) {
            linearSystem.addEquality(this.mBottom.f2463e, this.mTop.f2463e, 0, 8);
            linearSystem.addEquality(this.mTop.f2463e, this.mParent.mBottom.f2463e, 0, 4);
            linearSystem.addEquality(this.mTop.f2463e, this.mParent.mTop.f2463e, 0, 0);
        } else if (i14 == 3) {
            linearSystem.addEquality(this.mTop.f2463e, this.mBottom.f2463e, 0, 8);
            linearSystem.addEquality(this.mTop.f2463e, this.mParent.mTop.f2463e, 0, 4);
            linearSystem.addEquality(this.mTop.f2463e, this.mParent.mBottom.f2463e, 0, 0);
        }
    }

    public boolean allSolved() {
        int i2;
        int i4;
        int i5;
        int i6 = 0;
        boolean z3 = true;
        while (true) {
            i2 = this.mWidgetsCount;
            if (i6 >= i2) {
                break;
            }
            ConstraintWidget constraintWidget = this.mWidgets[i6];
            if ((this.f2431t0 || constraintWidget.allowedInBarrier()) && ((((i4 = this.f2430s0) == 0 || i4 == 1) && !constraintWidget.isResolvedHorizontally()) || (((i5 = this.f2430s0) == 2 || i5 == 3) && !constraintWidget.isResolvedVertically()))) {
                z3 = false;
            }
            i6++;
        }
        if (!z3 || i2 <= 0) {
            return false;
        }
        int i7 = 0;
        boolean z4 = false;
        for (int i8 = 0; i8 < this.mWidgetsCount; i8++) {
            ConstraintWidget constraintWidget2 = this.mWidgets[i8];
            if (this.f2431t0 || constraintWidget2.allowedInBarrier()) {
                if (!z4) {
                    int i9 = this.f2430s0;
                    if (i9 == 0) {
                        i7 = constraintWidget2.getAnchor(ConstraintAnchor.Type.LEFT).getFinalValue();
                    } else if (i9 == 1) {
                        i7 = constraintWidget2.getAnchor(ConstraintAnchor.Type.RIGHT).getFinalValue();
                    } else if (i9 == 2) {
                        i7 = constraintWidget2.getAnchor(ConstraintAnchor.Type.TOP).getFinalValue();
                    } else if (i9 == 3) {
                        i7 = constraintWidget2.getAnchor(ConstraintAnchor.Type.BOTTOM).getFinalValue();
                    }
                    z4 = true;
                }
                int i10 = this.f2430s0;
                if (i10 == 0) {
                    i7 = Math.min(i7, constraintWidget2.getAnchor(ConstraintAnchor.Type.LEFT).getFinalValue());
                } else if (i10 == 1) {
                    i7 = Math.max(i7, constraintWidget2.getAnchor(ConstraintAnchor.Type.RIGHT).getFinalValue());
                } else if (i10 == 2) {
                    i7 = Math.min(i7, constraintWidget2.getAnchor(ConstraintAnchor.Type.TOP).getFinalValue());
                } else if (i10 == 3) {
                    i7 = Math.max(i7, constraintWidget2.getAnchor(ConstraintAnchor.Type.BOTTOM).getFinalValue());
                }
            }
        }
        int i11 = i7 + this.f2432u0;
        int i12 = this.f2430s0;
        if (i12 != 0 && i12 != 1) {
            setFinalVertical(i11, i11);
        } else {
            setFinalHorizontal(i11, i11);
        }
        this.f2433v0 = true;
        return true;
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public boolean allowedInBarrier() {
        return true;
    }

    @Deprecated
    public boolean allowsGoneWidget() {
        return this.f2431t0;
    }

    @Override // androidx.constraintlayout.core.widgets.HelperWidget, androidx.constraintlayout.core.widgets.ConstraintWidget
    public void copy(ConstraintWidget constraintWidget, HashMap<ConstraintWidget, ConstraintWidget> hashMap) {
        super.copy(constraintWidget, hashMap);
        Barrier barrier = (Barrier) constraintWidget;
        this.f2430s0 = barrier.f2430s0;
        this.f2431t0 = barrier.f2431t0;
        this.f2432u0 = barrier.f2432u0;
    }

    public boolean getAllowsGoneWidget() {
        return this.f2431t0;
    }

    public int getBarrierType() {
        return this.f2430s0;
    }

    public int getMargin() {
        return this.f2432u0;
    }

    public int getOrientation() {
        int i2 = this.f2430s0;
        if (i2 == 0 || i2 == 1) {
            return 0;
        }
        return (i2 == 2 || i2 == 3) ? 1 : -1;
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public boolean isResolvedHorizontally() {
        return this.f2433v0;
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public boolean isResolvedVertically() {
        return this.f2433v0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void r() {
        for (int i2 = 0; i2 < this.mWidgetsCount; i2++) {
            ConstraintWidget constraintWidget = this.mWidgets[i2];
            if (this.f2431t0 || constraintWidget.allowedInBarrier()) {
                int i4 = this.f2430s0;
                if (i4 == 0 || i4 == 1) {
                    constraintWidget.p(0, true);
                } else if (i4 == 2 || i4 == 3) {
                    constraintWidget.p(1, true);
                }
            }
        }
    }

    public void setAllowsGoneWidget(boolean z3) {
        this.f2431t0 = z3;
    }

    public void setBarrierType(int i2) {
        this.f2430s0 = i2;
    }

    public void setMargin(int i2) {
        this.f2432u0 = i2;
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public String toString() {
        String str = "[Barrier] " + getDebugName() + " {";
        for (int i2 = 0; i2 < this.mWidgetsCount; i2++) {
            ConstraintWidget constraintWidget = this.mWidgets[i2];
            if (i2 > 0) {
                str = str + ", ";
            }
            str = str + constraintWidget.getDebugName();
        }
        return str + "}";
    }

    public Barrier(String str) {
        setDebugName(str);
    }
}
