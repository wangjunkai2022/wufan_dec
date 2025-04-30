package androidx.constraintlayout.core.widgets;

import androidx.constraintlayout.core.LinearSystem;
import androidx.constraintlayout.core.SolverVariable;
import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import java.util.HashMap;
/* loaded from: classes.dex */
public class Guideline extends ConstraintWidget {
    public static final int HORIZONTAL = 0;
    public static final int RELATIVE_BEGIN = 1;
    public static final int RELATIVE_END = 2;
    public static final int RELATIVE_PERCENT = 0;
    public static final int RELATIVE_UNKNOWN = -1;
    public static final int VERTICAL = 1;

    /* renamed from: s0  reason: collision with root package name */
    protected float f2541s0 = -1.0f;

    /* renamed from: t0  reason: collision with root package name */
    protected int f2542t0 = -1;

    /* renamed from: u0  reason: collision with root package name */
    protected int f2543u0 = -1;

    /* renamed from: v0  reason: collision with root package name */
    protected boolean f2544v0 = true;

    /* renamed from: w0  reason: collision with root package name */
    private ConstraintAnchor f2545w0 = this.mTop;

    /* renamed from: x0  reason: collision with root package name */
    private int f2546x0 = 0;

    /* renamed from: y0  reason: collision with root package name */
    private int f2547y0 = 0;

    /* renamed from: z0  reason: collision with root package name */
    private boolean f2548z0;

    /* renamed from: androidx.constraintlayout.core.widgets.Guideline$1  reason: invalid class name */
    /* loaded from: classes.dex */
    static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f2549a;

        static {
            int[] iArr = new int[ConstraintAnchor.Type.values().length];
            f2549a = iArr;
            try {
                iArr[ConstraintAnchor.Type.LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f2549a[ConstraintAnchor.Type.RIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f2549a[ConstraintAnchor.Type.TOP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f2549a[ConstraintAnchor.Type.BOTTOM.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f2549a[ConstraintAnchor.Type.BASELINE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f2549a[ConstraintAnchor.Type.CENTER.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f2549a[ConstraintAnchor.Type.CENTER_X.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f2549a[ConstraintAnchor.Type.CENTER_Y.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f2549a[ConstraintAnchor.Type.NONE.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
        }
    }

    public Guideline() {
        this.f2505w.clear();
        this.f2505w.add(this.f2545w0);
        int length = this.mListAnchors.length;
        for (int i2 = 0; i2 < length; i2++) {
            this.mListAnchors[i2] = this.f2545w0;
        }
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public void addToSolver(LinearSystem linearSystem, boolean z3) {
        ConstraintWidgetContainer constraintWidgetContainer = (ConstraintWidgetContainer) getParent();
        if (constraintWidgetContainer == null) {
            return;
        }
        ConstraintAnchor anchor = constraintWidgetContainer.getAnchor(ConstraintAnchor.Type.LEFT);
        ConstraintAnchor anchor2 = constraintWidgetContainer.getAnchor(ConstraintAnchor.Type.RIGHT);
        ConstraintWidget constraintWidget = this.mParent;
        boolean z4 = true;
        boolean z5 = constraintWidget != null && constraintWidget.mListDimensionBehaviors[0] == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
        if (this.f2546x0 == 0) {
            anchor = constraintWidgetContainer.getAnchor(ConstraintAnchor.Type.TOP);
            anchor2 = constraintWidgetContainer.getAnchor(ConstraintAnchor.Type.BOTTOM);
            ConstraintWidget constraintWidget2 = this.mParent;
            z5 = (constraintWidget2 == null || constraintWidget2.mListDimensionBehaviors[1] != ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) ? false : false;
        }
        if (this.f2548z0 && this.f2545w0.hasFinalValue()) {
            SolverVariable createObjectVariable = linearSystem.createObjectVariable(this.f2545w0);
            linearSystem.addEquality(createObjectVariable, this.f2545w0.getFinalValue());
            if (this.f2542t0 != -1) {
                if (z5) {
                    linearSystem.addGreaterThan(linearSystem.createObjectVariable(anchor2), createObjectVariable, 0, 5);
                }
            } else if (this.f2543u0 != -1 && z5) {
                SolverVariable createObjectVariable2 = linearSystem.createObjectVariable(anchor2);
                linearSystem.addGreaterThan(createObjectVariable, linearSystem.createObjectVariable(anchor), 0, 5);
                linearSystem.addGreaterThan(createObjectVariable2, createObjectVariable, 0, 5);
            }
            this.f2548z0 = false;
        } else if (this.f2542t0 != -1) {
            SolverVariable createObjectVariable3 = linearSystem.createObjectVariable(this.f2545w0);
            linearSystem.addEquality(createObjectVariable3, linearSystem.createObjectVariable(anchor), this.f2542t0, 8);
            if (z5) {
                linearSystem.addGreaterThan(linearSystem.createObjectVariable(anchor2), createObjectVariable3, 0, 5);
            }
        } else if (this.f2543u0 != -1) {
            SolverVariable createObjectVariable4 = linearSystem.createObjectVariable(this.f2545w0);
            SolverVariable createObjectVariable5 = linearSystem.createObjectVariable(anchor2);
            linearSystem.addEquality(createObjectVariable4, createObjectVariable5, -this.f2543u0, 8);
            if (z5) {
                linearSystem.addGreaterThan(createObjectVariable4, linearSystem.createObjectVariable(anchor), 0, 5);
                linearSystem.addGreaterThan(createObjectVariable5, createObjectVariable4, 0, 5);
            }
        } else if (this.f2541s0 != -1.0f) {
            linearSystem.addConstraint(LinearSystem.createRowDimensionPercent(linearSystem, linearSystem.createObjectVariable(this.f2545w0), linearSystem.createObjectVariable(anchor2), this.f2541s0));
        }
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public boolean allowedInBarrier() {
        return true;
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public void copy(ConstraintWidget constraintWidget, HashMap<ConstraintWidget, ConstraintWidget> hashMap) {
        super.copy(constraintWidget, hashMap);
        Guideline guideline = (Guideline) constraintWidget;
        this.f2541s0 = guideline.f2541s0;
        this.f2542t0 = guideline.f2542t0;
        this.f2543u0 = guideline.f2543u0;
        this.f2544v0 = guideline.f2544v0;
        setOrientation(guideline.f2546x0);
    }

    public void cyclePosition() {
        if (this.f2542t0 != -1) {
            t();
        } else if (this.f2541s0 != -1.0f) {
            s();
        } else if (this.f2543u0 != -1) {
            r();
        }
    }

    public ConstraintAnchor getAnchor() {
        return this.f2545w0;
    }

    public int getOrientation() {
        return this.f2546x0;
    }

    public int getRelativeBegin() {
        return this.f2542t0;
    }

    public int getRelativeBehaviour() {
        if (this.f2541s0 != -1.0f) {
            return 0;
        }
        if (this.f2542t0 != -1) {
            return 1;
        }
        return this.f2543u0 != -1 ? 2 : -1;
    }

    public int getRelativeEnd() {
        return this.f2543u0;
    }

    public float getRelativePercent() {
        return this.f2541s0;
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public String getType() {
        return "Guideline";
    }

    public boolean isPercent() {
        return this.f2541s0 != -1.0f && this.f2542t0 == -1 && this.f2543u0 == -1;
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public boolean isResolvedHorizontally() {
        return this.f2548z0;
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public boolean isResolvedVertically() {
        return this.f2548z0;
    }

    void r() {
        int x3 = getX();
        if (this.f2546x0 == 0) {
            x3 = getY();
        }
        setGuideBegin(x3);
    }

    void s() {
        int width = getParent().getWidth() - getX();
        if (this.f2546x0 == 0) {
            width = getParent().getHeight() - getY();
        }
        setGuideEnd(width);
    }

    public void setFinalValue(int i2) {
        this.f2545w0.setFinalValue(i2);
        this.f2548z0 = true;
    }

    public void setGuideBegin(int i2) {
        if (i2 > -1) {
            this.f2541s0 = -1.0f;
            this.f2542t0 = i2;
            this.f2543u0 = -1;
        }
    }

    public void setGuideEnd(int i2) {
        if (i2 > -1) {
            this.f2541s0 = -1.0f;
            this.f2542t0 = -1;
            this.f2543u0 = i2;
        }
    }

    public void setGuidePercent(int i2) {
        setGuidePercent(i2 / 100.0f);
    }

    public void setMinimumPosition(int i2) {
        this.f2547y0 = i2;
    }

    public void setOrientation(int i2) {
        if (this.f2546x0 == i2) {
            return;
        }
        this.f2546x0 = i2;
        this.f2505w.clear();
        if (this.f2546x0 == 1) {
            this.f2545w0 = this.mLeft;
        } else {
            this.f2545w0 = this.mTop;
        }
        this.f2505w.add(this.f2545w0);
        int length = this.mListAnchors.length;
        for (int i4 = 0; i4 < length; i4++) {
            this.mListAnchors[i4] = this.f2545w0;
        }
    }

    void t() {
        float x3 = getX() / getParent().getWidth();
        if (this.f2546x0 == 0) {
            x3 = getY() / getParent().getHeight();
        }
        setGuidePercent(x3);
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public void updateFromSolver(LinearSystem linearSystem, boolean z3) {
        if (getParent() == null) {
            return;
        }
        int objectVariableValue = linearSystem.getObjectVariableValue(this.f2545w0);
        if (this.f2546x0 == 1) {
            setX(objectVariableValue);
            setY(0);
            setHeight(getParent().getHeight());
            setWidth(0);
            return;
        }
        setX(0);
        setY(objectVariableValue);
        setWidth(getParent().getWidth());
        setHeight(0);
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public ConstraintAnchor getAnchor(ConstraintAnchor.Type type) {
        int i2 = AnonymousClass1.f2549a[type.ordinal()];
        if (i2 != 1 && i2 != 2) {
            if ((i2 == 3 || i2 == 4) && this.f2546x0 == 0) {
                return this.f2545w0;
            }
            return null;
        } else if (this.f2546x0 == 1) {
            return this.f2545w0;
        } else {
            return null;
        }
    }

    public void setGuidePercent(float f4) {
        if (f4 > -1.0f) {
            this.f2541s0 = f4;
            this.f2542t0 = -1;
            this.f2543u0 = -1;
        }
    }
}
