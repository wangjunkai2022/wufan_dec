package androidx.constraintlayout.core;

import androidx.constraintlayout.core.LinearSystem;
import androidx.constraintlayout.core.SolverVariable;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class ArrayRow implements LinearSystem.Row {

    /* renamed from: f  reason: collision with root package name */
    private static final boolean f1773f = false;

    /* renamed from: g  reason: collision with root package name */
    private static final boolean f1774g = false;

    /* renamed from: a  reason: collision with root package name */
    SolverVariable f1775a = null;

    /* renamed from: b  reason: collision with root package name */
    float f1776b = 0.0f;

    /* renamed from: c  reason: collision with root package name */
    boolean f1777c = false;

    /* renamed from: d  reason: collision with root package name */
    ArrayList<SolverVariable> f1778d = new ArrayList<>();

    /* renamed from: e  reason: collision with root package name */
    boolean f1779e = false;
    public ArrayRowVariables variables;

    /* loaded from: classes.dex */
    public interface ArrayRowVariables {
        void add(SolverVariable solverVariable, float f4, boolean z3);

        void clear();

        boolean contains(SolverVariable solverVariable);

        void display();

        void divideByAmount(float f4);

        float get(SolverVariable solverVariable);

        int getCurrentSize();

        SolverVariable getVariable(int i2);

        float getVariableValue(int i2);

        int indexOf(SolverVariable solverVariable);

        void invert();

        void put(SolverVariable solverVariable, float f4);

        float remove(SolverVariable solverVariable, boolean z3);

        int sizeInBytes();

        float use(ArrayRow arrayRow, boolean z3);
    }

    public ArrayRow() {
    }

    private boolean j(SolverVariable solverVariable, LinearSystem linearSystem) {
        return solverVariable.usageInRowCount <= 1;
    }

    private SolverVariable k(boolean[] zArr, SolverVariable solverVariable) {
        SolverVariable.Type type;
        int currentSize = this.variables.getCurrentSize();
        SolverVariable solverVariable2 = null;
        float f4 = 0.0f;
        for (int i2 = 0; i2 < currentSize; i2++) {
            float variableValue = this.variables.getVariableValue(i2);
            if (variableValue < 0.0f) {
                SolverVariable variable = this.variables.getVariable(i2);
                if ((zArr == null || !zArr[variable.id]) && variable != solverVariable && (((type = variable.f1829e) == SolverVariable.Type.SLACK || type == SolverVariable.Type.ERROR) && variableValue < f4)) {
                    f4 = variableValue;
                    solverVariable2 = variable;
                }
            }
        }
        return solverVariable2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ArrayRow a(SolverVariable solverVariable, int i2) {
        this.variables.put(solverVariable, i2);
        return this;
    }

    public ArrayRow addError(LinearSystem linearSystem, int i2) {
        this.variables.put(linearSystem.createErrorVariable(i2, "ep"), 1.0f);
        this.variables.put(linearSystem.createErrorVariable(i2, "em"), -1.0f);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean b(LinearSystem linearSystem) {
        boolean z3;
        SolverVariable c4 = c(linearSystem);
        if (c4 == null) {
            z3 = true;
        } else {
            l(c4);
            z3 = false;
        }
        if (this.variables.getCurrentSize() == 0) {
            this.f1779e = true;
        }
        return z3;
    }

    SolverVariable c(LinearSystem linearSystem) {
        boolean j4;
        boolean j5;
        int currentSize = this.variables.getCurrentSize();
        SolverVariable solverVariable = null;
        SolverVariable solverVariable2 = null;
        boolean z3 = false;
        boolean z4 = false;
        float f4 = 0.0f;
        float f5 = 0.0f;
        for (int i2 = 0; i2 < currentSize; i2++) {
            float variableValue = this.variables.getVariableValue(i2);
            SolverVariable variable = this.variables.getVariable(i2);
            if (variable.f1829e == SolverVariable.Type.UNRESTRICTED) {
                if (solverVariable == null) {
                    j5 = j(variable, linearSystem);
                } else if (f4 > variableValue) {
                    j5 = j(variable, linearSystem);
                } else if (!z3 && j(variable, linearSystem)) {
                    f4 = variableValue;
                    solverVariable = variable;
                    z3 = true;
                }
                z3 = j5;
                f4 = variableValue;
                solverVariable = variable;
            } else if (solverVariable == null && variableValue < 0.0f) {
                if (solverVariable2 == null) {
                    j4 = j(variable, linearSystem);
                } else if (f5 > variableValue) {
                    j4 = j(variable, linearSystem);
                } else if (!z4 && j(variable, linearSystem)) {
                    f5 = variableValue;
                    solverVariable2 = variable;
                    z4 = true;
                }
                z4 = j4;
                f5 = variableValue;
                solverVariable2 = variable;
            }
        }
        return solverVariable != null ? solverVariable : solverVariable2;
    }

    @Override // androidx.constraintlayout.core.LinearSystem.Row
    public void clear() {
        this.variables.clear();
        this.f1775a = null;
        this.f1776b = 0.0f;
    }

    public ArrayRow createRowDimensionRatio(SolverVariable solverVariable, SolverVariable solverVariable2, SolverVariable solverVariable3, SolverVariable solverVariable4, float f4) {
        this.variables.put(solverVariable, -1.0f);
        this.variables.put(solverVariable2, 1.0f);
        this.variables.put(solverVariable3, f4);
        this.variables.put(solverVariable4, -f4);
        return this;
    }

    public ArrayRow createRowEqualDimension(float f4, float f5, float f6, SolverVariable solverVariable, int i2, SolverVariable solverVariable2, int i4, SolverVariable solverVariable3, int i5, SolverVariable solverVariable4, int i6) {
        if (f5 != 0.0f && f4 != f6) {
            float f7 = (f4 / f5) / (f6 / f5);
            this.f1776b = ((-i2) - i4) + (i5 * f7) + (i6 * f7);
            this.variables.put(solverVariable, 1.0f);
            this.variables.put(solverVariable2, -1.0f);
            this.variables.put(solverVariable4, f7);
            this.variables.put(solverVariable3, -f7);
        } else {
            this.f1776b = ((-i2) - i4) + i5 + i6;
            this.variables.put(solverVariable, 1.0f);
            this.variables.put(solverVariable2, -1.0f);
            this.variables.put(solverVariable4, 1.0f);
            this.variables.put(solverVariable3, -1.0f);
        }
        return this;
    }

    public ArrayRow createRowEqualMatchDimensions(float f4, float f5, float f6, SolverVariable solverVariable, SolverVariable solverVariable2, SolverVariable solverVariable3, SolverVariable solverVariable4) {
        this.f1776b = 0.0f;
        if (f5 == 0.0f || f4 == f6) {
            this.variables.put(solverVariable, 1.0f);
            this.variables.put(solverVariable2, -1.0f);
            this.variables.put(solverVariable4, 1.0f);
            this.variables.put(solverVariable3, -1.0f);
        } else if (f4 == 0.0f) {
            this.variables.put(solverVariable, 1.0f);
            this.variables.put(solverVariable2, -1.0f);
        } else if (f6 == 0.0f) {
            this.variables.put(solverVariable3, 1.0f);
            this.variables.put(solverVariable4, -1.0f);
        } else {
            float f7 = (f4 / f5) / (f6 / f5);
            this.variables.put(solverVariable, 1.0f);
            this.variables.put(solverVariable2, -1.0f);
            this.variables.put(solverVariable4, f7);
            this.variables.put(solverVariable3, -f7);
        }
        return this;
    }

    public ArrayRow createRowEquals(SolverVariable solverVariable, int i2) {
        if (i2 < 0) {
            this.f1776b = i2 * (-1);
            this.variables.put(solverVariable, 1.0f);
        } else {
            this.f1776b = i2;
            this.variables.put(solverVariable, -1.0f);
        }
        return this;
    }

    public ArrayRow createRowGreaterThan(SolverVariable solverVariable, SolverVariable solverVariable2, SolverVariable solverVariable3, int i2) {
        boolean z3 = false;
        if (i2 != 0) {
            if (i2 < 0) {
                i2 *= -1;
                z3 = true;
            }
            this.f1776b = i2;
        }
        if (!z3) {
            this.variables.put(solverVariable, -1.0f);
            this.variables.put(solverVariable2, 1.0f);
            this.variables.put(solverVariable3, 1.0f);
        } else {
            this.variables.put(solverVariable, 1.0f);
            this.variables.put(solverVariable2, -1.0f);
            this.variables.put(solverVariable3, -1.0f);
        }
        return this;
    }

    public ArrayRow createRowLowerThan(SolverVariable solverVariable, SolverVariable solverVariable2, SolverVariable solverVariable3, int i2) {
        boolean z3 = false;
        if (i2 != 0) {
            if (i2 < 0) {
                i2 *= -1;
                z3 = true;
            }
            this.f1776b = i2;
        }
        if (!z3) {
            this.variables.put(solverVariable, -1.0f);
            this.variables.put(solverVariable2, 1.0f);
            this.variables.put(solverVariable3, -1.0f);
        } else {
            this.variables.put(solverVariable, 1.0f);
            this.variables.put(solverVariable2, -1.0f);
            this.variables.put(solverVariable3, 1.0f);
        }
        return this;
    }

    public ArrayRow createRowWithAngle(SolverVariable solverVariable, SolverVariable solverVariable2, SolverVariable solverVariable3, SolverVariable solverVariable4, float f4) {
        this.variables.put(solverVariable3, 0.5f);
        this.variables.put(solverVariable4, 0.5f);
        this.variables.put(solverVariable, -0.5f);
        this.variables.put(solverVariable2, -0.5f);
        this.f1776b = -f4;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ArrayRow d(SolverVariable solverVariable, SolverVariable solverVariable2, int i2, float f4, SolverVariable solverVariable3, SolverVariable solverVariable4, int i4) {
        if (solverVariable2 == solverVariable3) {
            this.variables.put(solverVariable, 1.0f);
            this.variables.put(solverVariable4, 1.0f);
            this.variables.put(solverVariable2, -2.0f);
            return this;
        }
        if (f4 == 0.5f) {
            this.variables.put(solverVariable, 1.0f);
            this.variables.put(solverVariable2, -1.0f);
            this.variables.put(solverVariable3, -1.0f);
            this.variables.put(solverVariable4, 1.0f);
            if (i2 > 0 || i4 > 0) {
                this.f1776b = (-i2) + i4;
            }
        } else if (f4 <= 0.0f) {
            this.variables.put(solverVariable, -1.0f);
            this.variables.put(solverVariable2, 1.0f);
            this.f1776b = i2;
        } else if (f4 >= 1.0f) {
            this.variables.put(solverVariable4, -1.0f);
            this.variables.put(solverVariable3, 1.0f);
            this.f1776b = -i4;
        } else {
            float f5 = 1.0f - f4;
            this.variables.put(solverVariable, f5 * 1.0f);
            this.variables.put(solverVariable2, f5 * (-1.0f));
            this.variables.put(solverVariable3, (-1.0f) * f4);
            this.variables.put(solverVariable4, 1.0f * f4);
            if (i2 > 0 || i4 > 0) {
                this.f1776b = ((-i2) * f5) + (i4 * f4);
            }
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ArrayRow e(SolverVariable solverVariable, int i2) {
        this.f1775a = solverVariable;
        float f4 = i2;
        solverVariable.computedValue = f4;
        this.f1776b = f4;
        this.f1779e = true;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ArrayRow f(SolverVariable solverVariable, SolverVariable solverVariable2, float f4) {
        this.variables.put(solverVariable, -1.0f);
        this.variables.put(solverVariable2, f4);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void g() {
        float f4 = this.f1776b;
        if (f4 < 0.0f) {
            this.f1776b = f4 * (-1.0f);
            this.variables.invert();
        }
    }

    @Override // androidx.constraintlayout.core.LinearSystem.Row
    public SolverVariable getKey() {
        return this.f1775a;
    }

    @Override // androidx.constraintlayout.core.LinearSystem.Row
    public SolverVariable getPivotCandidate(LinearSystem linearSystem, boolean[] zArr) {
        return k(zArr, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean h() {
        SolverVariable solverVariable = this.f1775a;
        return solverVariable != null && (solverVariable.f1829e == SolverVariable.Type.UNRESTRICTED || this.f1776b >= 0.0f);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean i(SolverVariable solverVariable) {
        return this.variables.contains(solverVariable);
    }

    @Override // androidx.constraintlayout.core.LinearSystem.Row
    public void initFromRow(LinearSystem.Row row) {
        if (row instanceof ArrayRow) {
            ArrayRow arrayRow = (ArrayRow) row;
            this.f1775a = null;
            this.variables.clear();
            for (int i2 = 0; i2 < arrayRow.variables.getCurrentSize(); i2++) {
                this.variables.add(arrayRow.variables.getVariable(i2), arrayRow.variables.getVariableValue(i2), true);
            }
        }
    }

    @Override // androidx.constraintlayout.core.LinearSystem.Row
    public boolean isEmpty() {
        return this.f1775a == null && this.f1776b == 0.0f && this.variables.getCurrentSize() == 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void l(SolverVariable solverVariable) {
        SolverVariable solverVariable2 = this.f1775a;
        if (solverVariable2 != null) {
            this.variables.put(solverVariable2, -1.0f);
            this.f1775a.f1826b = -1;
            this.f1775a = null;
        }
        float remove = this.variables.remove(solverVariable, true) * (-1.0f);
        this.f1775a = solverVariable;
        if (remove == 1.0f) {
            return;
        }
        this.f1776b /= remove;
        this.variables.divideByAmount(remove);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int m() {
        return (this.f1775a != null ? 4 : 0) + 4 + 4 + this.variables.sizeInBytes();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00c2  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00d2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String n() {
        /*
            Method dump skipped, instructions count: 258
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.core.ArrayRow.n():java.lang.String");
    }

    public SolverVariable pickPivot(SolverVariable solverVariable) {
        return k(null, solverVariable);
    }

    public void reset() {
        this.f1775a = null;
        this.variables.clear();
        this.f1776b = 0.0f;
        this.f1779e = false;
    }

    public String toString() {
        return n();
    }

    @Override // androidx.constraintlayout.core.LinearSystem.Row
    public void updateFromFinalVariable(LinearSystem linearSystem, SolverVariable solverVariable, boolean z3) {
        if (solverVariable == null || !solverVariable.isFinalValue) {
            return;
        }
        this.f1776b += solverVariable.computedValue * this.variables.get(solverVariable);
        this.variables.remove(solverVariable, z3);
        if (z3) {
            solverVariable.removeFromRow(this);
        }
        if (LinearSystem.SIMPLIFY_SYNONYMS && this.variables.getCurrentSize() == 0) {
            this.f1779e = true;
            linearSystem.hasSimpleDefinition = true;
        }
    }

    @Override // androidx.constraintlayout.core.LinearSystem.Row
    public void updateFromRow(LinearSystem linearSystem, ArrayRow arrayRow, boolean z3) {
        this.f1776b += arrayRow.f1776b * this.variables.use(arrayRow, z3);
        if (z3) {
            arrayRow.f1775a.removeFromRow(this);
        }
        if (LinearSystem.SIMPLIFY_SYNONYMS && this.f1775a != null && this.variables.getCurrentSize() == 0) {
            this.f1779e = true;
            linearSystem.hasSimpleDefinition = true;
        }
    }

    public void updateFromSynonymVariable(LinearSystem linearSystem, SolverVariable solverVariable, boolean z3) {
        if (solverVariable == null || !solverVariable.f1832h) {
            return;
        }
        float f4 = this.variables.get(solverVariable);
        this.f1776b += solverVariable.f1834j * f4;
        this.variables.remove(solverVariable, z3);
        if (z3) {
            solverVariable.removeFromRow(this);
        }
        this.variables.add(linearSystem.f1796k.f1783d[solverVariable.f1833i], f4, z3);
        if (LinearSystem.SIMPLIFY_SYNONYMS && this.variables.getCurrentSize() == 0) {
            this.f1779e = true;
            linearSystem.hasSimpleDefinition = true;
        }
    }

    @Override // androidx.constraintlayout.core.LinearSystem.Row
    public void updateFromSystem(LinearSystem linearSystem) {
        if (linearSystem.f1791f.length == 0) {
            return;
        }
        boolean z3 = false;
        while (!z3) {
            int currentSize = this.variables.getCurrentSize();
            for (int i2 = 0; i2 < currentSize; i2++) {
                SolverVariable variable = this.variables.getVariable(i2);
                if (variable.f1826b != -1 || variable.isFinalValue || variable.f1832h) {
                    this.f1778d.add(variable);
                }
            }
            int size = this.f1778d.size();
            if (size > 0) {
                for (int i4 = 0; i4 < size; i4++) {
                    SolverVariable solverVariable = this.f1778d.get(i4);
                    if (solverVariable.isFinalValue) {
                        updateFromFinalVariable(linearSystem, solverVariable, true);
                    } else if (solverVariable.f1832h) {
                        updateFromSynonymVariable(linearSystem, solverVariable, true);
                    } else {
                        updateFromRow(linearSystem, linearSystem.f1791f[solverVariable.f1826b], true);
                    }
                }
                this.f1778d.clear();
            } else {
                z3 = true;
            }
        }
        if (LinearSystem.SIMPLIFY_SYNONYMS && this.f1775a != null && this.variables.getCurrentSize() == 0) {
            this.f1779e = true;
            linearSystem.hasSimpleDefinition = true;
        }
    }

    @Override // androidx.constraintlayout.core.LinearSystem.Row
    public void addError(SolverVariable solverVariable) {
        int i2 = solverVariable.strength;
        float f4 = 1.0f;
        if (i2 != 1) {
            if (i2 == 2) {
                f4 = 1000.0f;
            } else if (i2 == 3) {
                f4 = 1000000.0f;
            } else if (i2 == 4) {
                f4 = 1.0E9f;
            } else if (i2 == 5) {
                f4 = 1.0E12f;
            }
        }
        this.variables.put(solverVariable, f4);
    }

    public ArrayRow createRowEquals(SolverVariable solverVariable, SolverVariable solverVariable2, int i2) {
        boolean z3 = false;
        if (i2 != 0) {
            if (i2 < 0) {
                i2 *= -1;
                z3 = true;
            }
            this.f1776b = i2;
        }
        if (!z3) {
            this.variables.put(solverVariable, -1.0f);
            this.variables.put(solverVariable2, 1.0f);
        } else {
            this.variables.put(solverVariable, 1.0f);
            this.variables.put(solverVariable2, -1.0f);
        }
        return this;
    }

    public ArrayRow(Cache cache) {
        this.variables = new ArrayLinkedVariables(this, cache);
    }

    public ArrayRow createRowGreaterThan(SolverVariable solverVariable, int i2, SolverVariable solverVariable2) {
        this.f1776b = i2;
        this.variables.put(solverVariable, -1.0f);
        return this;
    }
}
