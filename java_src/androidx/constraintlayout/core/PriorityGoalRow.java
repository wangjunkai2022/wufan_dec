package androidx.constraintlayout.core;

import androidx.constraintlayout.core.ArrayRow;
import java.util.Arrays;
import java.util.Comparator;
/* loaded from: classes.dex */
public class PriorityGoalRow extends ArrayRow {

    /* renamed from: n  reason: collision with root package name */
    private static final float f1804n = 1.0E-4f;

    /* renamed from: o  reason: collision with root package name */
    private static final boolean f1805o = false;

    /* renamed from: p  reason: collision with root package name */
    static final int f1806p = -1;

    /* renamed from: h  reason: collision with root package name */
    private int f1807h;

    /* renamed from: i  reason: collision with root package name */
    private SolverVariable[] f1808i;

    /* renamed from: j  reason: collision with root package name */
    private SolverVariable[] f1809j;

    /* renamed from: k  reason: collision with root package name */
    private int f1810k;

    /* renamed from: l  reason: collision with root package name */
    GoalVariableAccessor f1811l;

    /* renamed from: m  reason: collision with root package name */
    Cache f1812m;

    /* loaded from: classes.dex */
    class GoalVariableAccessor {

        /* renamed from: a  reason: collision with root package name */
        SolverVariable f1814a;

        /* renamed from: b  reason: collision with root package name */
        PriorityGoalRow f1815b;

        public GoalVariableAccessor(PriorityGoalRow priorityGoalRow) {
            this.f1815b = priorityGoalRow;
        }

        public void add(SolverVariable solverVariable) {
            for (int i2 = 0; i2 < 9; i2++) {
                float[] fArr = this.f1814a.f1828d;
                fArr[i2] = fArr[i2] + solverVariable.f1828d[i2];
                if (Math.abs(fArr[i2]) < 1.0E-4f) {
                    this.f1814a.f1828d[i2] = 0.0f;
                }
            }
        }

        public boolean addToGoal(SolverVariable solverVariable, float f4) {
            boolean z3 = true;
            if (!this.f1814a.inGoal) {
                for (int i2 = 0; i2 < 9; i2++) {
                    float f5 = solverVariable.f1828d[i2];
                    if (f5 != 0.0f) {
                        float f6 = f5 * f4;
                        if (Math.abs(f6) < 1.0E-4f) {
                            f6 = 0.0f;
                        }
                        this.f1814a.f1828d[i2] = f6;
                    } else {
                        this.f1814a.f1828d[i2] = 0.0f;
                    }
                }
                return true;
            }
            for (int i4 = 0; i4 < 9; i4++) {
                float[] fArr = this.f1814a.f1828d;
                fArr[i4] = fArr[i4] + (solverVariable.f1828d[i4] * f4);
                if (Math.abs(fArr[i4]) < 1.0E-4f) {
                    this.f1814a.f1828d[i4] = 0.0f;
                } else {
                    z3 = false;
                }
            }
            if (z3) {
                PriorityGoalRow.this.q(this.f1814a);
            }
            return false;
        }

        public void init(SolverVariable solverVariable) {
            this.f1814a = solverVariable;
        }

        public final boolean isNegative() {
            for (int i2 = 8; i2 >= 0; i2--) {
                float f4 = this.f1814a.f1828d[i2];
                if (f4 > 0.0f) {
                    return false;
                }
                if (f4 < 0.0f) {
                    return true;
                }
            }
            return false;
        }

        public final boolean isNull() {
            for (int i2 = 0; i2 < 9; i2++) {
                if (this.f1814a.f1828d[i2] != 0.0f) {
                    return false;
                }
            }
            return true;
        }

        public final boolean isSmallerThan(SolverVariable solverVariable) {
            int i2 = 8;
            while (true) {
                if (i2 < 0) {
                    break;
                }
                float f4 = solverVariable.f1828d[i2];
                float f5 = this.f1814a.f1828d[i2];
                if (f5 == f4) {
                    i2--;
                } else if (f5 < f4) {
                    return true;
                }
            }
            return false;
        }

        public void reset() {
            Arrays.fill(this.f1814a.f1828d, 0.0f);
        }

        public String toString() {
            String str = "[ ";
            if (this.f1814a != null) {
                for (int i2 = 0; i2 < 9; i2++) {
                    str = str + this.f1814a.f1828d[i2] + " ";
                }
            }
            return str + "] " + this.f1814a;
        }
    }

    public PriorityGoalRow(Cache cache) {
        super(cache);
        this.f1807h = 128;
        this.f1808i = new SolverVariable[128];
        this.f1809j = new SolverVariable[128];
        this.f1810k = 0;
        this.f1811l = new GoalVariableAccessor(this);
        this.f1812m = cache;
    }

    private final void p(SolverVariable solverVariable) {
        int i2;
        int i4 = this.f1810k + 1;
        SolverVariable[] solverVariableArr = this.f1808i;
        if (i4 > solverVariableArr.length) {
            SolverVariable[] solverVariableArr2 = (SolverVariable[]) Arrays.copyOf(solverVariableArr, solverVariableArr.length * 2);
            this.f1808i = solverVariableArr2;
            this.f1809j = (SolverVariable[]) Arrays.copyOf(solverVariableArr2, solverVariableArr2.length * 2);
        }
        SolverVariable[] solverVariableArr3 = this.f1808i;
        int i5 = this.f1810k;
        solverVariableArr3[i5] = solverVariable;
        int i6 = i5 + 1;
        this.f1810k = i6;
        if (i6 > 1 && solverVariableArr3[i6 - 1].id > solverVariable.id) {
            int i7 = 0;
            while (true) {
                i2 = this.f1810k;
                if (i7 >= i2) {
                    break;
                }
                this.f1809j[i7] = this.f1808i[i7];
                i7++;
            }
            Arrays.sort(this.f1809j, 0, i2, new Comparator<SolverVariable>() { // from class: androidx.constraintlayout.core.PriorityGoalRow.1
                @Override // java.util.Comparator
                public int compare(SolverVariable solverVariable2, SolverVariable solverVariable3) {
                    return solverVariable2.id - solverVariable3.id;
                }
            });
            for (int i8 = 0; i8 < this.f1810k; i8++) {
                this.f1808i[i8] = this.f1809j[i8];
            }
        }
        solverVariable.inGoal = true;
        solverVariable.addToRow(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void q(SolverVariable solverVariable) {
        int i2 = 0;
        while (i2 < this.f1810k) {
            if (this.f1808i[i2] == solverVariable) {
                while (true) {
                    int i4 = this.f1810k;
                    if (i2 < i4 - 1) {
                        SolverVariable[] solverVariableArr = this.f1808i;
                        int i5 = i2 + 1;
                        solverVariableArr[i2] = solverVariableArr[i5];
                        i2 = i5;
                    } else {
                        this.f1810k = i4 - 1;
                        solverVariable.inGoal = false;
                        return;
                    }
                }
            } else {
                i2++;
            }
        }
    }

    @Override // androidx.constraintlayout.core.ArrayRow, androidx.constraintlayout.core.LinearSystem.Row
    public void addError(SolverVariable solverVariable) {
        this.f1811l.init(solverVariable);
        this.f1811l.reset();
        solverVariable.f1828d[solverVariable.strength] = 1.0f;
        p(solverVariable);
    }

    @Override // androidx.constraintlayout.core.ArrayRow, androidx.constraintlayout.core.LinearSystem.Row
    public void clear() {
        this.f1810k = 0;
        this.f1776b = 0.0f;
    }

    @Override // androidx.constraintlayout.core.ArrayRow, androidx.constraintlayout.core.LinearSystem.Row
    public SolverVariable getPivotCandidate(LinearSystem linearSystem, boolean[] zArr) {
        int i2 = -1;
        for (int i4 = 0; i4 < this.f1810k; i4++) {
            SolverVariable solverVariable = this.f1808i[i4];
            if (!zArr[solverVariable.id]) {
                this.f1811l.init(solverVariable);
                if (i2 == -1) {
                    if (!this.f1811l.isNegative()) {
                    }
                    i2 = i4;
                } else {
                    if (!this.f1811l.isSmallerThan(this.f1808i[i2])) {
                    }
                    i2 = i4;
                }
            }
        }
        if (i2 == -1) {
            return null;
        }
        return this.f1808i[i2];
    }

    @Override // androidx.constraintlayout.core.ArrayRow, androidx.constraintlayout.core.LinearSystem.Row
    public boolean isEmpty() {
        return this.f1810k == 0;
    }

    @Override // androidx.constraintlayout.core.ArrayRow
    public String toString() {
        String str = " goal -> (" + this.f1776b + ") : ";
        for (int i2 = 0; i2 < this.f1810k; i2++) {
            this.f1811l.init(this.f1808i[i2]);
            str = str + this.f1811l + " ";
        }
        return str;
    }

    @Override // androidx.constraintlayout.core.ArrayRow, androidx.constraintlayout.core.LinearSystem.Row
    public void updateFromRow(LinearSystem linearSystem, ArrayRow arrayRow, boolean z3) {
        SolverVariable solverVariable = arrayRow.f1775a;
        if (solverVariable == null) {
            return;
        }
        ArrayRow.ArrayRowVariables arrayRowVariables = arrayRow.variables;
        int currentSize = arrayRowVariables.getCurrentSize();
        for (int i2 = 0; i2 < currentSize; i2++) {
            SolverVariable variable = arrayRowVariables.getVariable(i2);
            float variableValue = arrayRowVariables.getVariableValue(i2);
            this.f1811l.init(variable);
            if (this.f1811l.addToGoal(solverVariable, variableValue)) {
                p(variable);
            }
            this.f1776b += arrayRow.f1776b * variableValue;
        }
        q(solverVariable);
    }
}
