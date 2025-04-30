package androidx.constraintlayout.core;

import androidx.constraintlayout.core.ArrayRow;
import java.io.PrintStream;
import java.util.Arrays;
/* loaded from: classes.dex */
public class ArrayLinkedVariables implements ArrayRow.ArrayRowVariables {

    /* renamed from: l  reason: collision with root package name */
    private static final boolean f1758l = false;

    /* renamed from: m  reason: collision with root package name */
    static final int f1759m = -1;

    /* renamed from: n  reason: collision with root package name */
    private static final boolean f1760n = false;

    /* renamed from: o  reason: collision with root package name */
    private static float f1761o = 0.001f;

    /* renamed from: b  reason: collision with root package name */
    private final ArrayRow f1763b;

    /* renamed from: c  reason: collision with root package name */
    protected final Cache f1764c;

    /* renamed from: a  reason: collision with root package name */
    int f1762a = 0;

    /* renamed from: d  reason: collision with root package name */
    private int f1765d = 8;

    /* renamed from: e  reason: collision with root package name */
    private SolverVariable f1766e = null;

    /* renamed from: f  reason: collision with root package name */
    private int[] f1767f = new int[8];

    /* renamed from: g  reason: collision with root package name */
    private int[] f1768g = new int[8];

    /* renamed from: h  reason: collision with root package name */
    private float[] f1769h = new float[8];

    /* renamed from: i  reason: collision with root package name */
    private int f1770i = -1;

    /* renamed from: j  reason: collision with root package name */
    private int f1771j = -1;

    /* renamed from: k  reason: collision with root package name */
    private boolean f1772k = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ArrayLinkedVariables(ArrayRow arrayRow, Cache cache) {
        this.f1763b = arrayRow;
        this.f1764c = cache;
    }

    SolverVariable a() {
        SolverVariable solverVariable = this.f1766e;
        if (solverVariable == null) {
            int i2 = this.f1770i;
            SolverVariable solverVariable2 = null;
            for (int i4 = 0; i2 != -1 && i4 < this.f1762a; i4++) {
                if (this.f1769h[i2] < 0.0f) {
                    SolverVariable solverVariable3 = this.f1764c.f1783d[this.f1767f[i2]];
                    if (solverVariable2 == null || solverVariable2.strength < solverVariable3.strength) {
                        solverVariable2 = solverVariable3;
                    }
                }
                i2 = this.f1768g[i2];
            }
            return solverVariable2;
        }
        return solverVariable;
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public void add(SolverVariable solverVariable, float f4, boolean z3) {
        float f5 = f1761o;
        if (f4 <= (-f5) || f4 >= f5) {
            int i2 = this.f1770i;
            if (i2 == -1) {
                this.f1770i = 0;
                this.f1769h[0] = f4;
                this.f1767f[0] = solverVariable.id;
                this.f1768g[0] = -1;
                solverVariable.usageInRowCount++;
                solverVariable.addToRow(this.f1763b);
                this.f1762a++;
                if (this.f1772k) {
                    return;
                }
                int i4 = this.f1771j + 1;
                this.f1771j = i4;
                int[] iArr = this.f1767f;
                if (i4 >= iArr.length) {
                    this.f1772k = true;
                    this.f1771j = iArr.length - 1;
                    return;
                }
                return;
            }
            int i5 = -1;
            for (int i6 = 0; i2 != -1 && i6 < this.f1762a; i6++) {
                int[] iArr2 = this.f1767f;
                int i7 = iArr2[i2];
                int i8 = solverVariable.id;
                if (i7 == i8) {
                    float[] fArr = this.f1769h;
                    float f6 = fArr[i2] + f4;
                    float f7 = f1761o;
                    if (f6 > (-f7) && f6 < f7) {
                        f6 = 0.0f;
                    }
                    fArr[i2] = f6;
                    if (f6 == 0.0f) {
                        if (i2 == this.f1770i) {
                            this.f1770i = this.f1768g[i2];
                        } else {
                            int[] iArr3 = this.f1768g;
                            iArr3[i5] = iArr3[i2];
                        }
                        if (z3) {
                            solverVariable.removeFromRow(this.f1763b);
                        }
                        if (this.f1772k) {
                            this.f1771j = i2;
                        }
                        solverVariable.usageInRowCount--;
                        this.f1762a--;
                        return;
                    }
                    return;
                }
                if (iArr2[i2] < i8) {
                    i5 = i2;
                }
                i2 = this.f1768g[i2];
            }
            int i9 = this.f1771j;
            int i10 = i9 + 1;
            if (this.f1772k) {
                int[] iArr4 = this.f1767f;
                if (iArr4[i9] != -1) {
                    i9 = iArr4.length;
                }
            } else {
                i9 = i10;
            }
            int[] iArr5 = this.f1767f;
            if (i9 >= iArr5.length && this.f1762a < iArr5.length) {
                int i11 = 0;
                while (true) {
                    int[] iArr6 = this.f1767f;
                    if (i11 >= iArr6.length) {
                        break;
                    } else if (iArr6[i11] == -1) {
                        i9 = i11;
                        break;
                    } else {
                        i11++;
                    }
                }
            }
            int[] iArr7 = this.f1767f;
            if (i9 >= iArr7.length) {
                i9 = iArr7.length;
                int i12 = this.f1765d * 2;
                this.f1765d = i12;
                this.f1772k = false;
                this.f1771j = i9 - 1;
                this.f1769h = Arrays.copyOf(this.f1769h, i12);
                this.f1767f = Arrays.copyOf(this.f1767f, this.f1765d);
                this.f1768g = Arrays.copyOf(this.f1768g, this.f1765d);
            }
            this.f1767f[i9] = solverVariable.id;
            this.f1769h[i9] = f4;
            if (i5 != -1) {
                int[] iArr8 = this.f1768g;
                iArr8[i9] = iArr8[i5];
                iArr8[i5] = i9;
            } else {
                this.f1768g[i9] = this.f1770i;
                this.f1770i = i9;
            }
            solverVariable.usageInRowCount++;
            solverVariable.addToRow(this.f1763b);
            this.f1762a++;
            if (!this.f1772k) {
                this.f1771j++;
            }
            int i13 = this.f1771j;
            int[] iArr9 = this.f1767f;
            if (i13 >= iArr9.length) {
                this.f1772k = true;
                this.f1771j = iArr9.length - 1;
            }
        }
    }

    boolean b() {
        int i2 = this.f1770i;
        for (int i4 = 0; i2 != -1 && i4 < this.f1762a; i4++) {
            if (this.f1769h[i2] > 0.0f) {
                return true;
            }
            i2 = this.f1768g[i2];
        }
        return false;
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public final void clear() {
        int i2 = this.f1770i;
        for (int i4 = 0; i2 != -1 && i4 < this.f1762a; i4++) {
            SolverVariable solverVariable = this.f1764c.f1783d[this.f1767f[i2]];
            if (solverVariable != null) {
                solverVariable.removeFromRow(this.f1763b);
            }
            i2 = this.f1768g[i2];
        }
        this.f1770i = -1;
        this.f1771j = -1;
        this.f1772k = false;
        this.f1762a = 0;
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public boolean contains(SolverVariable solverVariable) {
        int i2 = this.f1770i;
        if (i2 == -1) {
            return false;
        }
        for (int i4 = 0; i2 != -1 && i4 < this.f1762a; i4++) {
            if (this.f1767f[i2] == solverVariable.id) {
                return true;
            }
            i2 = this.f1768g[i2];
        }
        return false;
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public void display() {
        int i2 = this.f1762a;
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
        int i2 = this.f1770i;
        for (int i4 = 0; i2 != -1 && i4 < this.f1762a; i4++) {
            float[] fArr = this.f1769h;
            fArr[i2] = fArr[i2] / f4;
            i2 = this.f1768g[i2];
        }
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public final float get(SolverVariable solverVariable) {
        int i2 = this.f1770i;
        for (int i4 = 0; i2 != -1 && i4 < this.f1762a; i4++) {
            if (this.f1767f[i2] == solverVariable.id) {
                return this.f1769h[i2];
            }
            i2 = this.f1768g[i2];
        }
        return 0.0f;
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public int getCurrentSize() {
        return this.f1762a;
    }

    public int getHead() {
        return this.f1770i;
    }

    public final int getId(int i2) {
        return this.f1767f[i2];
    }

    public final int getNextIndice(int i2) {
        return this.f1768g[i2];
    }

    public final float getValue(int i2) {
        return this.f1769h[i2];
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public SolverVariable getVariable(int i2) {
        int i4 = this.f1770i;
        for (int i5 = 0; i4 != -1 && i5 < this.f1762a; i5++) {
            if (i5 == i2) {
                return this.f1764c.f1783d[this.f1767f[i4]];
            }
            i4 = this.f1768g[i4];
        }
        return null;
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public float getVariableValue(int i2) {
        int i4 = this.f1770i;
        for (int i5 = 0; i4 != -1 && i5 < this.f1762a; i5++) {
            if (i5 == i2) {
                return this.f1769h[i4];
            }
            i4 = this.f1768g[i4];
        }
        return 0.0f;
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public int indexOf(SolverVariable solverVariable) {
        int i2 = this.f1770i;
        if (i2 == -1) {
            return -1;
        }
        for (int i4 = 0; i2 != -1 && i4 < this.f1762a; i4++) {
            if (this.f1767f[i2] == solverVariable.id) {
                return i2;
            }
            i2 = this.f1768g[i2];
        }
        return -1;
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public void invert() {
        int i2 = this.f1770i;
        for (int i4 = 0; i2 != -1 && i4 < this.f1762a; i4++) {
            float[] fArr = this.f1769h;
            fArr[i2] = fArr[i2] * (-1.0f);
            i2 = this.f1768g[i2];
        }
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public final void put(SolverVariable solverVariable, float f4) {
        if (f4 == 0.0f) {
            remove(solverVariable, true);
            return;
        }
        int i2 = this.f1770i;
        if (i2 == -1) {
            this.f1770i = 0;
            this.f1769h[0] = f4;
            this.f1767f[0] = solverVariable.id;
            this.f1768g[0] = -1;
            solverVariable.usageInRowCount++;
            solverVariable.addToRow(this.f1763b);
            this.f1762a++;
            if (this.f1772k) {
                return;
            }
            int i4 = this.f1771j + 1;
            this.f1771j = i4;
            int[] iArr = this.f1767f;
            if (i4 >= iArr.length) {
                this.f1772k = true;
                this.f1771j = iArr.length - 1;
                return;
            }
            return;
        }
        int i5 = -1;
        for (int i6 = 0; i2 != -1 && i6 < this.f1762a; i6++) {
            int[] iArr2 = this.f1767f;
            int i7 = iArr2[i2];
            int i8 = solverVariable.id;
            if (i7 == i8) {
                this.f1769h[i2] = f4;
                return;
            }
            if (iArr2[i2] < i8) {
                i5 = i2;
            }
            i2 = this.f1768g[i2];
        }
        int i9 = this.f1771j;
        int i10 = i9 + 1;
        if (this.f1772k) {
            int[] iArr3 = this.f1767f;
            if (iArr3[i9] != -1) {
                i9 = iArr3.length;
            }
        } else {
            i9 = i10;
        }
        int[] iArr4 = this.f1767f;
        if (i9 >= iArr4.length && this.f1762a < iArr4.length) {
            int i11 = 0;
            while (true) {
                int[] iArr5 = this.f1767f;
                if (i11 >= iArr5.length) {
                    break;
                } else if (iArr5[i11] == -1) {
                    i9 = i11;
                    break;
                } else {
                    i11++;
                }
            }
        }
        int[] iArr6 = this.f1767f;
        if (i9 >= iArr6.length) {
            i9 = iArr6.length;
            int i12 = this.f1765d * 2;
            this.f1765d = i12;
            this.f1772k = false;
            this.f1771j = i9 - 1;
            this.f1769h = Arrays.copyOf(this.f1769h, i12);
            this.f1767f = Arrays.copyOf(this.f1767f, this.f1765d);
            this.f1768g = Arrays.copyOf(this.f1768g, this.f1765d);
        }
        this.f1767f[i9] = solverVariable.id;
        this.f1769h[i9] = f4;
        if (i5 != -1) {
            int[] iArr7 = this.f1768g;
            iArr7[i9] = iArr7[i5];
            iArr7[i5] = i9;
        } else {
            this.f1768g[i9] = this.f1770i;
            this.f1770i = i9;
        }
        solverVariable.usageInRowCount++;
        solverVariable.addToRow(this.f1763b);
        int i13 = this.f1762a + 1;
        this.f1762a = i13;
        if (!this.f1772k) {
            this.f1771j++;
        }
        int[] iArr8 = this.f1767f;
        if (i13 >= iArr8.length) {
            this.f1772k = true;
        }
        if (this.f1771j >= iArr8.length) {
            this.f1772k = true;
            this.f1771j = iArr8.length - 1;
        }
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public final float remove(SolverVariable solverVariable, boolean z3) {
        if (this.f1766e == solverVariable) {
            this.f1766e = null;
        }
        int i2 = this.f1770i;
        if (i2 == -1) {
            return 0.0f;
        }
        int i4 = 0;
        int i5 = -1;
        while (i2 != -1 && i4 < this.f1762a) {
            if (this.f1767f[i2] == solverVariable.id) {
                if (i2 == this.f1770i) {
                    this.f1770i = this.f1768g[i2];
                } else {
                    int[] iArr = this.f1768g;
                    iArr[i5] = iArr[i2];
                }
                if (z3) {
                    solverVariable.removeFromRow(this.f1763b);
                }
                solverVariable.usageInRowCount--;
                this.f1762a--;
                this.f1767f[i2] = -1;
                if (this.f1772k) {
                    this.f1771j = i2;
                }
                return this.f1769h[i2];
            }
            i4++;
            i5 = i2;
            i2 = this.f1768g[i2];
        }
        return 0.0f;
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public int sizeInBytes() {
        return (this.f1767f.length * 4 * 3) + 0 + 36;
    }

    public String toString() {
        int i2 = this.f1770i;
        String str = "";
        for (int i4 = 0; i2 != -1 && i4 < this.f1762a; i4++) {
            str = ((str + " -> ") + this.f1769h[i2] + " : ") + this.f1764c.f1783d[this.f1767f[i2]];
            i2 = this.f1768g[i2];
        }
        return str;
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public float use(ArrayRow arrayRow, boolean z3) {
        float f4 = get(arrayRow.f1775a);
        remove(arrayRow.f1775a, z3);
        ArrayRow.ArrayRowVariables arrayRowVariables = arrayRow.variables;
        int currentSize = arrayRowVariables.getCurrentSize();
        for (int i2 = 0; i2 < currentSize; i2++) {
            SolverVariable variable = arrayRowVariables.getVariable(i2);
            add(variable, arrayRowVariables.get(variable) * f4, z3);
        }
        return f4;
    }
}
