package androidx.constraintlayout.core;

import androidx.constraintlayout.core.ArrayRow;
import java.io.PrintStream;
import java.util.Arrays;
/* loaded from: classes.dex */
public class SolverVariableValues implements ArrayRow.ArrayRowVariables {

    /* renamed from: n  reason: collision with root package name */
    private static final boolean f1837n = false;

    /* renamed from: o  reason: collision with root package name */
    private static final boolean f1838o = true;

    /* renamed from: p  reason: collision with root package name */
    private static float f1839p = 0.001f;

    /* renamed from: a  reason: collision with root package name */
    private final int f1840a = -1;

    /* renamed from: b  reason: collision with root package name */
    private int f1841b = 16;

    /* renamed from: c  reason: collision with root package name */
    private int f1842c = 16;

    /* renamed from: d  reason: collision with root package name */
    int[] f1843d = new int[16];

    /* renamed from: e  reason: collision with root package name */
    int[] f1844e = new int[16];

    /* renamed from: f  reason: collision with root package name */
    int[] f1845f = new int[16];

    /* renamed from: g  reason: collision with root package name */
    float[] f1846g = new float[16];

    /* renamed from: h  reason: collision with root package name */
    int[] f1847h = new int[16];

    /* renamed from: i  reason: collision with root package name */
    int[] f1848i = new int[16];

    /* renamed from: j  reason: collision with root package name */
    int f1849j = 0;

    /* renamed from: k  reason: collision with root package name */
    int f1850k = -1;

    /* renamed from: l  reason: collision with root package name */
    private final ArrayRow f1851l;

    /* renamed from: m  reason: collision with root package name */
    protected final Cache f1852m;

    /* JADX INFO: Access modifiers changed from: package-private */
    public SolverVariableValues(ArrayRow arrayRow, Cache cache) {
        this.f1851l = arrayRow;
        this.f1852m = cache;
        clear();
    }

    private void a(SolverVariable solverVariable, int i2) {
        int[] iArr;
        int i4 = solverVariable.id % this.f1842c;
        int[] iArr2 = this.f1843d;
        int i5 = iArr2[i4];
        if (i5 == -1) {
            iArr2[i4] = i2;
        } else {
            while (true) {
                iArr = this.f1844e;
                if (iArr[i5] == -1) {
                    break;
                }
                i5 = iArr[i5];
            }
            iArr[i5] = i2;
        }
        this.f1844e[i2] = -1;
    }

    private void b(int i2, SolverVariable solverVariable, float f4) {
        this.f1845f[i2] = solverVariable.id;
        this.f1846g[i2] = f4;
        this.f1847h[i2] = -1;
        this.f1848i[i2] = -1;
        solverVariable.addToRow(this.f1851l);
        solverVariable.usageInRowCount++;
        this.f1849j++;
    }

    private void c() {
        for (int i2 = 0; i2 < this.f1842c; i2++) {
            if (this.f1843d[i2] != -1) {
                String str = hashCode() + " hash [" + i2 + "] => ";
                int i4 = this.f1843d[i2];
                boolean z3 = false;
                while (!z3) {
                    str = str + " " + this.f1845f[i4];
                    int[] iArr = this.f1844e;
                    if (iArr[i4] != -1) {
                        i4 = iArr[i4];
                    } else {
                        z3 = true;
                    }
                }
                System.out.println(str);
            }
        }
    }

    private int d() {
        for (int i2 = 0; i2 < this.f1841b; i2++) {
            if (this.f1845f[i2] == -1) {
                return i2;
            }
        }
        return -1;
    }

    private void e() {
        int i2 = this.f1841b * 2;
        this.f1845f = Arrays.copyOf(this.f1845f, i2);
        this.f1846g = Arrays.copyOf(this.f1846g, i2);
        this.f1847h = Arrays.copyOf(this.f1847h, i2);
        this.f1848i = Arrays.copyOf(this.f1848i, i2);
        this.f1844e = Arrays.copyOf(this.f1844e, i2);
        for (int i4 = this.f1841b; i4 < i2; i4++) {
            this.f1845f[i4] = -1;
            this.f1844e[i4] = -1;
        }
        this.f1841b = i2;
    }

    private void f(int i2, SolverVariable solverVariable, float f4) {
        int d4 = d();
        b(d4, solverVariable, f4);
        if (i2 != -1) {
            this.f1847h[d4] = i2;
            int[] iArr = this.f1848i;
            iArr[d4] = iArr[i2];
            iArr[i2] = d4;
        } else {
            this.f1847h[d4] = -1;
            if (this.f1849j > 0) {
                this.f1848i[d4] = this.f1850k;
                this.f1850k = d4;
            } else {
                this.f1848i[d4] = -1;
            }
        }
        int[] iArr2 = this.f1848i;
        if (iArr2[d4] != -1) {
            this.f1847h[iArr2[d4]] = d4;
        }
        a(solverVariable, d4);
    }

    private void g(SolverVariable solverVariable) {
        int[] iArr;
        int i2 = solverVariable.id;
        int i4 = i2 % this.f1842c;
        int[] iArr2 = this.f1843d;
        int i5 = iArr2[i4];
        if (i5 == -1) {
            return;
        }
        if (this.f1845f[i5] == i2) {
            int[] iArr3 = this.f1844e;
            iArr2[i4] = iArr3[i5];
            iArr3[i5] = -1;
            return;
        }
        while (true) {
            iArr = this.f1844e;
            if (iArr[i5] == -1 || this.f1845f[iArr[i5]] == i2) {
                break;
            }
            i5 = iArr[i5];
        }
        int i6 = iArr[i5];
        if (i6 == -1 || this.f1845f[i6] != i2) {
            return;
        }
        iArr[i5] = iArr[i6];
        iArr[i6] = -1;
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public void add(SolverVariable solverVariable, float f4, boolean z3) {
        float f5 = f1839p;
        if (f4 <= (-f5) || f4 >= f5) {
            int indexOf = indexOf(solverVariable);
            if (indexOf == -1) {
                put(solverVariable, f4);
                return;
            }
            float[] fArr = this.f1846g;
            fArr[indexOf] = fArr[indexOf] + f4;
            float f6 = fArr[indexOf];
            float f7 = f1839p;
            if (f6 <= (-f7) || fArr[indexOf] >= f7) {
                return;
            }
            fArr[indexOf] = 0.0f;
            remove(solverVariable, z3);
        }
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public void clear() {
        int i2 = this.f1849j;
        for (int i4 = 0; i4 < i2; i4++) {
            SolverVariable variable = getVariable(i4);
            if (variable != null) {
                variable.removeFromRow(this.f1851l);
            }
        }
        for (int i5 = 0; i5 < this.f1841b; i5++) {
            this.f1845f[i5] = -1;
            this.f1844e[i5] = -1;
        }
        for (int i6 = 0; i6 < this.f1842c; i6++) {
            this.f1843d[i6] = -1;
        }
        this.f1849j = 0;
        this.f1850k = -1;
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public boolean contains(SolverVariable solverVariable) {
        return indexOf(solverVariable) != -1;
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public void display() {
        int i2 = this.f1849j;
        System.out.print("{ ");
        for (int i4 = 0; i4 < i2; i4++) {
            SolverVariable variable = getVariable(i4);
            if (variable != null) {
                PrintStream printStream = System.out;
                printStream.print(variable + " = " + getVariableValue(i4) + " ");
            }
        }
        System.out.println(" }");
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public void divideByAmount(float f4) {
        int i2 = this.f1849j;
        int i4 = this.f1850k;
        for (int i5 = 0; i5 < i2; i5++) {
            float[] fArr = this.f1846g;
            fArr[i4] = fArr[i4] / f4;
            i4 = this.f1848i[i4];
            if (i4 == -1) {
                return;
            }
        }
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public float get(SolverVariable solverVariable) {
        int indexOf = indexOf(solverVariable);
        if (indexOf != -1) {
            return this.f1846g[indexOf];
        }
        return 0.0f;
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public int getCurrentSize() {
        return this.f1849j;
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public SolverVariable getVariable(int i2) {
        int i4 = this.f1849j;
        if (i4 == 0) {
            return null;
        }
        int i5 = this.f1850k;
        for (int i6 = 0; i6 < i4; i6++) {
            if (i6 == i2 && i5 != -1) {
                return this.f1852m.f1783d[this.f1845f[i5]];
            }
            i5 = this.f1848i[i5];
            if (i5 == -1) {
                break;
            }
        }
        return null;
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public float getVariableValue(int i2) {
        int i4 = this.f1849j;
        int i5 = this.f1850k;
        for (int i6 = 0; i6 < i4; i6++) {
            if (i6 == i2) {
                return this.f1846g[i5];
            }
            i5 = this.f1848i[i5];
            if (i5 == -1) {
                return 0.0f;
            }
        }
        return 0.0f;
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public int indexOf(SolverVariable solverVariable) {
        int[] iArr;
        if (this.f1849j != 0 && solverVariable != null) {
            int i2 = solverVariable.id;
            int i4 = this.f1843d[i2 % this.f1842c];
            if (i4 == -1) {
                return -1;
            }
            if (this.f1845f[i4] == i2) {
                return i4;
            }
            while (true) {
                iArr = this.f1844e;
                if (iArr[i4] == -1 || this.f1845f[iArr[i4]] == i2) {
                    break;
                }
                i4 = iArr[i4];
            }
            if (iArr[i4] != -1 && this.f1845f[iArr[i4]] == i2) {
                return iArr[i4];
            }
        }
        return -1;
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public void invert() {
        int i2 = this.f1849j;
        int i4 = this.f1850k;
        for (int i5 = 0; i5 < i2; i5++) {
            float[] fArr = this.f1846g;
            fArr[i4] = fArr[i4] * (-1.0f);
            i4 = this.f1848i[i4];
            if (i4 == -1) {
                return;
            }
        }
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public void put(SolverVariable solverVariable, float f4) {
        float f5 = f1839p;
        if (f4 > (-f5) && f4 < f5) {
            remove(solverVariable, true);
            return;
        }
        if (this.f1849j == 0) {
            b(0, solverVariable, f4);
            a(solverVariable, 0);
            this.f1850k = 0;
            return;
        }
        int indexOf = indexOf(solverVariable);
        if (indexOf != -1) {
            this.f1846g[indexOf] = f4;
            return;
        }
        if (this.f1849j + 1 >= this.f1841b) {
            e();
        }
        int i2 = this.f1849j;
        int i4 = this.f1850k;
        int i5 = -1;
        for (int i6 = 0; i6 < i2; i6++) {
            int[] iArr = this.f1845f;
            int i7 = iArr[i4];
            int i8 = solverVariable.id;
            if (i7 == i8) {
                this.f1846g[i4] = f4;
                return;
            }
            if (iArr[i4] < i8) {
                i5 = i4;
            }
            i4 = this.f1848i[i4];
            if (i4 == -1) {
                break;
            }
        }
        f(i5, solverVariable, f4);
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public float remove(SolverVariable solverVariable, boolean z3) {
        int indexOf = indexOf(solverVariable);
        if (indexOf == -1) {
            return 0.0f;
        }
        g(solverVariable);
        float f4 = this.f1846g[indexOf];
        if (this.f1850k == indexOf) {
            this.f1850k = this.f1848i[indexOf];
        }
        this.f1845f[indexOf] = -1;
        int[] iArr = this.f1847h;
        if (iArr[indexOf] != -1) {
            int[] iArr2 = this.f1848i;
            iArr2[iArr[indexOf]] = iArr2[indexOf];
        }
        int[] iArr3 = this.f1848i;
        if (iArr3[indexOf] != -1) {
            iArr[iArr3[indexOf]] = iArr[indexOf];
        }
        this.f1849j--;
        solverVariable.usageInRowCount--;
        if (z3) {
            solverVariable.removeFromRow(this.f1851l);
        }
        return f4;
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public int sizeInBytes() {
        return 0;
    }

    public String toString() {
        String str = hashCode() + " { ";
        int i2 = this.f1849j;
        for (int i4 = 0; i4 < i2; i4++) {
            SolverVariable variable = getVariable(i4);
            if (variable != null) {
                String str2 = str + variable + " = " + getVariableValue(i4) + " ";
                int indexOf = indexOf(variable);
                String str3 = str2 + "[p: ";
                String str4 = (this.f1847h[indexOf] != -1 ? str3 + this.f1852m.f1783d[this.f1845f[this.f1847h[indexOf]]] : str3 + "none") + ", n: ";
                str = (this.f1848i[indexOf] != -1 ? str4 + this.f1852m.f1783d[this.f1845f[this.f1848i[indexOf]]] : str4 + "none") + "]";
            }
        }
        return str + " }";
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public float use(ArrayRow arrayRow, boolean z3) {
        float f4 = get(arrayRow.f1775a);
        remove(arrayRow.f1775a, z3);
        SolverVariableValues solverVariableValues = (SolverVariableValues) arrayRow.variables;
        int currentSize = solverVariableValues.getCurrentSize();
        int i2 = 0;
        int i4 = 0;
        while (i2 < currentSize) {
            int[] iArr = solverVariableValues.f1845f;
            if (iArr[i4] != -1) {
                add(this.f1852m.f1783d[iArr[i4]], solverVariableValues.f1846g[i4] * f4, z3);
                i2++;
            }
            i4++;
        }
        return f4;
    }
}
