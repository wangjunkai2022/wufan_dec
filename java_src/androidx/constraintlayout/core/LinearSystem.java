package androidx.constraintlayout.core;

import androidx.constraintlayout.core.SolverVariable;
import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import java.io.PrintStream;
import java.util.Arrays;
import java.util.HashMap;
import net.lingala.zip4j.util.e;
/* loaded from: classes.dex */
public class LinearSystem {
    public static long ARRAY_ROW_CREATION = 0;
    public static final boolean DEBUG = false;
    public static final boolean FULL_DEBUG = false;
    public static final boolean MEASURE = false;
    public static long OPTIMIZED_ARRAY_ROW_CREATION = 0;
    public static boolean OPTIMIZED_ENGINE = false;
    public static boolean SIMPLIFY_SYNONYMS = true;
    public static boolean SKIP_COLUMNS = true;
    public static boolean USE_BASIC_SYNONYMS = true;
    public static boolean USE_DEPENDENCY_ORDERING = false;
    public static boolean USE_SYNONYMS = true;

    /* renamed from: o  reason: collision with root package name */
    private static final boolean f1784o = false;

    /* renamed from: p  reason: collision with root package name */
    private static int f1785p = 1000;
    public static Metrics sMetrics;

    /* renamed from: c  reason: collision with root package name */
    private Row f1788c;

    /* renamed from: f  reason: collision with root package name */
    ArrayRow[] f1791f;

    /* renamed from: k  reason: collision with root package name */
    final Cache f1796k;

    /* renamed from: n  reason: collision with root package name */
    private Row f1799n;
    public boolean hasSimpleDefinition = false;

    /* renamed from: a  reason: collision with root package name */
    int f1786a = 0;

    /* renamed from: b  reason: collision with root package name */
    private HashMap<String, SolverVariable> f1787b = null;

    /* renamed from: d  reason: collision with root package name */
    private int f1789d = 32;

    /* renamed from: e  reason: collision with root package name */
    private int f1790e = 32;
    public boolean graphOptimizer = false;
    public boolean newgraphOptimizer = false;

    /* renamed from: g  reason: collision with root package name */
    private boolean[] f1792g = new boolean[32];

    /* renamed from: h  reason: collision with root package name */
    int f1793h = 1;

    /* renamed from: i  reason: collision with root package name */
    int f1794i = 0;

    /* renamed from: j  reason: collision with root package name */
    private int f1795j = 32;

    /* renamed from: l  reason: collision with root package name */
    private SolverVariable[] f1797l = new SolverVariable[f1785p];

    /* renamed from: m  reason: collision with root package name */
    private int f1798m = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public interface Row {
        void addError(SolverVariable solverVariable);

        void clear();

        SolverVariable getKey();

        SolverVariable getPivotCandidate(LinearSystem linearSystem, boolean[] zArr);

        void initFromRow(Row row);

        boolean isEmpty();

        void updateFromFinalVariable(LinearSystem linearSystem, SolverVariable solverVariable, boolean z3);

        void updateFromRow(LinearSystem linearSystem, ArrayRow arrayRow, boolean z3);

        void updateFromSystem(LinearSystem linearSystem);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class ValuesRow extends ArrayRow {
        public ValuesRow(Cache cache) {
            this.variables = new SolverVariableValues(this, cache);
        }
    }

    public LinearSystem() {
        this.f1791f = null;
        this.f1791f = new ArrayRow[32];
        v();
        Cache cache = new Cache();
        this.f1796k = cache;
        this.f1788c = new PriorityGoalRow(cache);
        if (OPTIMIZED_ENGINE) {
            this.f1799n = new ValuesRow(cache);
        } else {
            this.f1799n = new ArrayRow(cache);
        }
    }

    private SolverVariable a(SolverVariable.Type type, String str) {
        SolverVariable acquire = this.f1796k.f1782c.acquire();
        if (acquire == null) {
            acquire = new SolverVariable(type, str);
            acquire.setType(type, str);
        } else {
            acquire.reset();
            acquire.setType(type, str);
        }
        int i2 = this.f1798m;
        int i4 = f1785p;
        if (i2 >= i4) {
            int i5 = i4 * 2;
            f1785p = i5;
            this.f1797l = (SolverVariable[]) Arrays.copyOf(this.f1797l, i5);
        }
        SolverVariable[] solverVariableArr = this.f1797l;
        int i6 = this.f1798m;
        this.f1798m = i6 + 1;
        solverVariableArr[i6] = acquire;
        return acquire;
    }

    private void b(ArrayRow arrayRow) {
        arrayRow.addError(this, 0);
    }

    private final void c(ArrayRow arrayRow) {
        int i2;
        if (SIMPLIFY_SYNONYMS && arrayRow.f1779e) {
            arrayRow.f1775a.setFinalValue(this, arrayRow.f1776b);
        } else {
            ArrayRow[] arrayRowArr = this.f1791f;
            int i4 = this.f1794i;
            arrayRowArr[i4] = arrayRow;
            SolverVariable solverVariable = arrayRow.f1775a;
            solverVariable.f1826b = i4;
            this.f1794i = i4 + 1;
            solverVariable.updateReferencesWithNewDefinition(this, arrayRow);
        }
        if (SIMPLIFY_SYNONYMS && this.hasSimpleDefinition) {
            int i5 = 0;
            while (i5 < this.f1794i) {
                if (this.f1791f[i5] == null) {
                    System.out.println("WTF");
                }
                ArrayRow[] arrayRowArr2 = this.f1791f;
                if (arrayRowArr2[i5] != null && arrayRowArr2[i5].f1779e) {
                    ArrayRow arrayRow2 = arrayRowArr2[i5];
                    arrayRow2.f1775a.setFinalValue(this, arrayRow2.f1776b);
                    if (OPTIMIZED_ENGINE) {
                        this.f1796k.f1780a.release(arrayRow2);
                    } else {
                        this.f1796k.f1781b.release(arrayRow2);
                    }
                    this.f1791f[i5] = null;
                    int i6 = i5 + 1;
                    int i7 = i6;
                    while (true) {
                        i2 = this.f1794i;
                        if (i6 >= i2) {
                            break;
                        }
                        ArrayRow[] arrayRowArr3 = this.f1791f;
                        int i8 = i6 - 1;
                        arrayRowArr3[i8] = arrayRowArr3[i6];
                        if (arrayRowArr3[i8].f1775a.f1826b == i6) {
                            arrayRowArr3[i8].f1775a.f1826b = i8;
                        }
                        i7 = i6;
                        i6++;
                    }
                    if (i7 < i2) {
                        this.f1791f[i7] = null;
                    }
                    this.f1794i = i2 - 1;
                    i5--;
                }
                i5++;
            }
            this.hasSimpleDefinition = false;
        }
    }

    public static ArrayRow createRowDimensionPercent(LinearSystem linearSystem, SolverVariable solverVariable, SolverVariable solverVariable2, float f4) {
        return linearSystem.createRow().f(solverVariable, solverVariable2, f4);
    }

    private void d(ArrayRow arrayRow, int i2) {
        e(arrayRow, i2, 0);
    }

    private void g() {
        for (int i2 = 0; i2 < this.f1794i; i2++) {
            ArrayRow arrayRow = this.f1791f[i2];
            arrayRow.f1775a.computedValue = arrayRow.f1776b;
        }
    }

    public static Metrics getMetrics() {
        return sMetrics;
    }

    private SolverVariable h(String str, SolverVariable.Type type) {
        Metrics metrics = sMetrics;
        if (metrics != null) {
            metrics.variables++;
        }
        if (this.f1793h + 1 >= this.f1790e) {
            s();
        }
        SolverVariable a4 = a(type, null);
        a4.setName(str);
        int i2 = this.f1786a + 1;
        this.f1786a = i2;
        this.f1793h++;
        a4.id = i2;
        if (this.f1787b == null) {
            this.f1787b = new HashMap<>();
        }
        this.f1787b.put(str, a4);
        this.f1796k.f1783d[this.f1786a] = a4;
        return a4;
    }

    private void i() {
        j();
        String str = "";
        for (int i2 = 0; i2 < this.f1794i; i2++) {
            str = (str + this.f1791f[i2]) + "\n";
        }
        System.out.println(str + this.f1788c + "\n");
    }

    private void j() {
        System.out.println("Display Rows (" + this.f1794i + "x" + this.f1793h + ")\n");
    }

    private int l(Row row) throws Exception {
        boolean z3;
        int i2 = 0;
        while (true) {
            if (i2 >= this.f1794i) {
                z3 = false;
                break;
            }
            ArrayRow[] arrayRowArr = this.f1791f;
            if (arrayRowArr[i2].f1775a.f1829e != SolverVariable.Type.UNRESTRICTED && arrayRowArr[i2].f1776b < 0.0f) {
                z3 = true;
                break;
            }
            i2++;
        }
        if (z3) {
            boolean z4 = false;
            int i4 = 0;
            while (!z4) {
                Metrics metrics = sMetrics;
                if (metrics != null) {
                    metrics.bfs++;
                }
                i4++;
                float f4 = Float.MAX_VALUE;
                int i5 = -1;
                int i6 = -1;
                int i7 = 0;
                for (int i8 = 0; i8 < this.f1794i; i8++) {
                    ArrayRow arrayRow = this.f1791f[i8];
                    if (arrayRow.f1775a.f1829e != SolverVariable.Type.UNRESTRICTED && !arrayRow.f1779e && arrayRow.f1776b < 0.0f) {
                        int i9 = 9;
                        if (SKIP_COLUMNS) {
                            int currentSize = arrayRow.variables.getCurrentSize();
                            int i10 = 0;
                            while (i10 < currentSize) {
                                SolverVariable variable = arrayRow.variables.getVariable(i10);
                                float f5 = arrayRow.variables.get(variable);
                                if (f5 > 0.0f) {
                                    int i11 = 0;
                                    while (i11 < i9) {
                                        float f6 = variable.f1827c[i11] / f5;
                                        if ((f6 < f4 && i11 == i7) || i11 > i7) {
                                            i6 = variable.id;
                                            i7 = i11;
                                            i5 = i8;
                                            f4 = f6;
                                        }
                                        i11++;
                                        i9 = 9;
                                    }
                                }
                                i10++;
                                i9 = 9;
                            }
                        } else {
                            for (int i12 = 1; i12 < this.f1793h; i12++) {
                                SolverVariable solverVariable = this.f1796k.f1783d[i12];
                                float f7 = arrayRow.variables.get(solverVariable);
                                if (f7 > 0.0f) {
                                    for (int i13 = 0; i13 < 9; i13++) {
                                        float f8 = solverVariable.f1827c[i13] / f7;
                                        if ((f8 < f4 && i13 == i7) || i13 > i7) {
                                            i6 = i12;
                                            i7 = i13;
                                            i5 = i8;
                                            f4 = f8;
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                if (i5 != -1) {
                    ArrayRow arrayRow2 = this.f1791f[i5];
                    arrayRow2.f1775a.f1826b = -1;
                    Metrics metrics2 = sMetrics;
                    if (metrics2 != null) {
                        metrics2.pivots++;
                    }
                    arrayRow2.l(this.f1796k.f1783d[i6]);
                    SolverVariable solverVariable2 = arrayRow2.f1775a;
                    solverVariable2.f1826b = i5;
                    solverVariable2.updateReferencesWithNewDefinition(this, arrayRow2);
                } else {
                    z4 = true;
                }
                if (i4 > this.f1793h / 2) {
                    z4 = true;
                }
            }
            return i4;
        }
        return 0;
    }

    private String m(int i2) {
        int i4 = i2 * 4;
        int i5 = i4 / 1024;
        int i6 = i5 / 1024;
        if (i6 > 0) {
            return "" + i6 + " Mb";
        } else if (i5 > 0) {
            return "" + i5 + " Kb";
        } else {
            return "" + i4 + " bytes";
        }
    }

    private String n(int i2) {
        return i2 == 1 ? "LOW" : i2 == 2 ? "MEDIUM" : i2 == 3 ? "HIGH" : i2 == 4 ? "HIGHEST" : i2 == 5 ? "EQUALITY" : i2 == 8 ? "FIXED" : i2 == 6 ? "BARRIER" : "NONE";
    }

    private void s() {
        int i2 = this.f1789d * 2;
        this.f1789d = i2;
        this.f1791f = (ArrayRow[]) Arrays.copyOf(this.f1791f, i2);
        Cache cache = this.f1796k;
        cache.f1783d = (SolverVariable[]) Arrays.copyOf(cache.f1783d, this.f1789d);
        int i4 = this.f1789d;
        this.f1792g = new boolean[i4];
        this.f1790e = i4;
        this.f1795j = i4;
        Metrics metrics = sMetrics;
        if (metrics != null) {
            metrics.tableSizeIncrease++;
            metrics.maxTableSize = Math.max(metrics.maxTableSize, i4);
            Metrics metrics2 = sMetrics;
            metrics2.lastTableSize = metrics2.maxTableSize;
        }
    }

    private final int u(Row row, boolean z3) {
        Metrics metrics = sMetrics;
        if (metrics != null) {
            metrics.optimize++;
        }
        for (int i2 = 0; i2 < this.f1793h; i2++) {
            this.f1792g[i2] = false;
        }
        boolean z4 = false;
        int i4 = 0;
        while (!z4) {
            Metrics metrics2 = sMetrics;
            if (metrics2 != null) {
                metrics2.iterations++;
            }
            i4++;
            if (i4 >= this.f1793h * 2) {
                return i4;
            }
            if (row.getKey() != null) {
                this.f1792g[row.getKey().id] = true;
            }
            SolverVariable pivotCandidate = row.getPivotCandidate(this, this.f1792g);
            if (pivotCandidate != null) {
                boolean[] zArr = this.f1792g;
                int i5 = pivotCandidate.id;
                if (zArr[i5]) {
                    return i4;
                }
                zArr[i5] = true;
            }
            if (pivotCandidate != null) {
                float f4 = Float.MAX_VALUE;
                int i6 = -1;
                for (int i7 = 0; i7 < this.f1794i; i7++) {
                    ArrayRow arrayRow = this.f1791f[i7];
                    if (arrayRow.f1775a.f1829e != SolverVariable.Type.UNRESTRICTED && !arrayRow.f1779e && arrayRow.i(pivotCandidate)) {
                        float f5 = arrayRow.variables.get(pivotCandidate);
                        if (f5 < 0.0f) {
                            float f6 = (-arrayRow.f1776b) / f5;
                            if (f6 < f4) {
                                i6 = i7;
                                f4 = f6;
                            }
                        }
                    }
                }
                if (i6 > -1) {
                    ArrayRow arrayRow2 = this.f1791f[i6];
                    arrayRow2.f1775a.f1826b = -1;
                    Metrics metrics3 = sMetrics;
                    if (metrics3 != null) {
                        metrics3.pivots++;
                    }
                    arrayRow2.l(pivotCandidate);
                    SolverVariable solverVariable = arrayRow2.f1775a;
                    solverVariable.f1826b = i6;
                    solverVariable.updateReferencesWithNewDefinition(this, arrayRow2);
                }
            } else {
                z4 = true;
            }
        }
        return i4;
    }

    private void v() {
        int i2 = 0;
        if (OPTIMIZED_ENGINE) {
            while (i2 < this.f1794i) {
                ArrayRow arrayRow = this.f1791f[i2];
                if (arrayRow != null) {
                    this.f1796k.f1780a.release(arrayRow);
                }
                this.f1791f[i2] = null;
                i2++;
            }
            return;
        }
        while (i2 < this.f1794i) {
            ArrayRow arrayRow2 = this.f1791f[i2];
            if (arrayRow2 != null) {
                this.f1796k.f1781b.release(arrayRow2);
            }
            this.f1791f[i2] = null;
            i2++;
        }
    }

    public void addCenterPoint(ConstraintWidget constraintWidget, ConstraintWidget constraintWidget2, float f4, int i2) {
        ConstraintAnchor.Type type = ConstraintAnchor.Type.LEFT;
        SolverVariable createObjectVariable = createObjectVariable(constraintWidget.getAnchor(type));
        ConstraintAnchor.Type type2 = ConstraintAnchor.Type.TOP;
        SolverVariable createObjectVariable2 = createObjectVariable(constraintWidget.getAnchor(type2));
        ConstraintAnchor.Type type3 = ConstraintAnchor.Type.RIGHT;
        SolverVariable createObjectVariable3 = createObjectVariable(constraintWidget.getAnchor(type3));
        ConstraintAnchor.Type type4 = ConstraintAnchor.Type.BOTTOM;
        SolverVariable createObjectVariable4 = createObjectVariable(constraintWidget.getAnchor(type4));
        SolverVariable createObjectVariable5 = createObjectVariable(constraintWidget2.getAnchor(type));
        SolverVariable createObjectVariable6 = createObjectVariable(constraintWidget2.getAnchor(type2));
        SolverVariable createObjectVariable7 = createObjectVariable(constraintWidget2.getAnchor(type3));
        SolverVariable createObjectVariable8 = createObjectVariable(constraintWidget2.getAnchor(type4));
        ArrayRow createRow = createRow();
        double d4 = f4;
        double sin = Math.sin(d4);
        double d5 = i2;
        Double.isNaN(d5);
        createRow.createRowWithAngle(createObjectVariable2, createObjectVariable4, createObjectVariable6, createObjectVariable8, (float) (sin * d5));
        addConstraint(createRow);
        ArrayRow createRow2 = createRow();
        double cos = Math.cos(d4);
        Double.isNaN(d5);
        createRow2.createRowWithAngle(createObjectVariable, createObjectVariable3, createObjectVariable5, createObjectVariable7, (float) (cos * d5));
        addConstraint(createRow2);
    }

    public void addCentering(SolverVariable solverVariable, SolverVariable solverVariable2, int i2, float f4, SolverVariable solverVariable3, SolverVariable solverVariable4, int i4, int i5) {
        ArrayRow createRow = createRow();
        createRow.d(solverVariable, solverVariable2, i2, f4, solverVariable3, solverVariable4, i4);
        if (i5 != 8) {
            createRow.addError(this, i5);
        }
        addConstraint(createRow);
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x009f A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00a0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void addConstraint(androidx.constraintlayout.core.ArrayRow r8) {
        /*
            r7 = this;
            if (r8 != 0) goto L3
            return
        L3:
            androidx.constraintlayout.core.Metrics r0 = androidx.constraintlayout.core.LinearSystem.sMetrics
            r1 = 1
            if (r0 == 0) goto L17
            long r3 = r0.constraints
            long r3 = r3 + r1
            r0.constraints = r3
            boolean r3 = r8.f1779e
            if (r3 == 0) goto L17
            long r3 = r0.simpleconstraints
            long r3 = r3 + r1
            r0.simpleconstraints = r3
        L17:
            int r0 = r7.f1794i
            r3 = 1
            int r0 = r0 + r3
            int r4 = r7.f1795j
            if (r0 >= r4) goto L26
            int r0 = r7.f1793h
            int r0 = r0 + r3
            int r4 = r7.f1790e
            if (r0 < r4) goto L29
        L26:
            r7.s()
        L29:
            r0 = 0
            boolean r4 = r8.f1779e
            if (r4 != 0) goto La1
            r8.updateFromSystem(r7)
            boolean r4 = r8.isEmpty()
            if (r4 == 0) goto L38
            return
        L38:
            r8.g()
            boolean r4 = r8.b(r7)
            if (r4 == 0) goto L98
            androidx.constraintlayout.core.SolverVariable r4 = r7.createExtraVariable()
            r8.f1775a = r4
            int r5 = r7.f1794i
            r7.c(r8)
            int r6 = r7.f1794i
            int r5 = r5 + r3
            if (r6 != r5) goto L98
            androidx.constraintlayout.core.LinearSystem$Row r0 = r7.f1799n
            r0.initFromRow(r8)
            androidx.constraintlayout.core.LinearSystem$Row r0 = r7.f1799n
            r7.u(r0, r3)
            int r0 = r4.f1826b
            r5 = -1
            if (r0 != r5) goto L99
            androidx.constraintlayout.core.SolverVariable r0 = r8.f1775a
            if (r0 != r4) goto L76
            androidx.constraintlayout.core.SolverVariable r0 = r8.pickPivot(r4)
            if (r0 == 0) goto L76
            androidx.constraintlayout.core.Metrics r4 = androidx.constraintlayout.core.LinearSystem.sMetrics
            if (r4 == 0) goto L73
            long r5 = r4.pivots
            long r5 = r5 + r1
            r4.pivots = r5
        L73:
            r8.l(r0)
        L76:
            boolean r0 = r8.f1779e
            if (r0 != 0) goto L7f
            androidx.constraintlayout.core.SolverVariable r0 = r8.f1775a
            r0.updateReferencesWithNewDefinition(r7, r8)
        L7f:
            boolean r0 = androidx.constraintlayout.core.LinearSystem.OPTIMIZED_ENGINE
            if (r0 == 0) goto L8b
            androidx.constraintlayout.core.Cache r0 = r7.f1796k
            androidx.constraintlayout.core.Pools$Pool<androidx.constraintlayout.core.ArrayRow> r0 = r0.f1780a
            r0.release(r8)
            goto L92
        L8b:
            androidx.constraintlayout.core.Cache r0 = r7.f1796k
            androidx.constraintlayout.core.Pools$Pool<androidx.constraintlayout.core.ArrayRow> r0 = r0.f1781b
            r0.release(r8)
        L92:
            int r0 = r7.f1794i
            int r0 = r0 - r3
            r7.f1794i = r0
            goto L99
        L98:
            r3 = 0
        L99:
            boolean r0 = r8.h()
            if (r0 != 0) goto La0
            return
        La0:
            r0 = r3
        La1:
            if (r0 != 0) goto La6
            r7.c(r8)
        La6:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.core.LinearSystem.addConstraint(androidx.constraintlayout.core.ArrayRow):void");
    }

    public ArrayRow addEquality(SolverVariable solverVariable, SolverVariable solverVariable2, int i2, int i4) {
        if (USE_BASIC_SYNONYMS && i4 == 8 && solverVariable2.isFinalValue && solverVariable.f1826b == -1) {
            solverVariable.setFinalValue(this, solverVariable2.computedValue + i2);
            return null;
        }
        ArrayRow createRow = createRow();
        createRow.createRowEquals(solverVariable, solverVariable2, i2);
        if (i4 != 8) {
            createRow.addError(this, i4);
        }
        addConstraint(createRow);
        return createRow;
    }

    public void addGreaterBarrier(SolverVariable solverVariable, SolverVariable solverVariable2, int i2, boolean z3) {
        ArrayRow createRow = createRow();
        SolverVariable createSlackVariable = createSlackVariable();
        createSlackVariable.strength = 0;
        createRow.createRowGreaterThan(solverVariable, solverVariable2, createSlackVariable, i2);
        addConstraint(createRow);
    }

    public void addGreaterThan(SolverVariable solverVariable, SolverVariable solverVariable2, int i2, int i4) {
        ArrayRow createRow = createRow();
        SolverVariable createSlackVariable = createSlackVariable();
        createSlackVariable.strength = 0;
        createRow.createRowGreaterThan(solverVariable, solverVariable2, createSlackVariable, i2);
        if (i4 != 8) {
            e(createRow, (int) (createRow.variables.get(createSlackVariable) * (-1.0f)), i4);
        }
        addConstraint(createRow);
    }

    public void addLowerBarrier(SolverVariable solverVariable, SolverVariable solverVariable2, int i2, boolean z3) {
        ArrayRow createRow = createRow();
        SolverVariable createSlackVariable = createSlackVariable();
        createSlackVariable.strength = 0;
        createRow.createRowLowerThan(solverVariable, solverVariable2, createSlackVariable, i2);
        addConstraint(createRow);
    }

    public void addLowerThan(SolverVariable solverVariable, SolverVariable solverVariable2, int i2, int i4) {
        ArrayRow createRow = createRow();
        SolverVariable createSlackVariable = createSlackVariable();
        createSlackVariable.strength = 0;
        createRow.createRowLowerThan(solverVariable, solverVariable2, createSlackVariable, i2);
        if (i4 != 8) {
            e(createRow, (int) (createRow.variables.get(createSlackVariable) * (-1.0f)), i4);
        }
        addConstraint(createRow);
    }

    public void addRatio(SolverVariable solverVariable, SolverVariable solverVariable2, SolverVariable solverVariable3, SolverVariable solverVariable4, float f4, int i2) {
        ArrayRow createRow = createRow();
        createRow.createRowDimensionRatio(solverVariable, solverVariable2, solverVariable3, solverVariable4, f4);
        if (i2 != 8) {
            createRow.addError(this, i2);
        }
        addConstraint(createRow);
    }

    public void addSynonym(SolverVariable solverVariable, SolverVariable solverVariable2, int i2) {
        if (solverVariable.f1826b == -1 && i2 == 0) {
            if (solverVariable2.f1832h) {
                solverVariable2 = this.f1796k.f1783d[solverVariable2.f1833i];
            }
            if (solverVariable.f1832h) {
                SolverVariable solverVariable3 = this.f1796k.f1783d[solverVariable.f1833i];
                return;
            } else {
                solverVariable.setSynonym(this, solverVariable2, 0.0f);
                return;
            }
        }
        addEquality(solverVariable, solverVariable2, i2, 8);
    }

    public SolverVariable createErrorVariable(int i2, String str) {
        Metrics metrics = sMetrics;
        if (metrics != null) {
            metrics.errors++;
        }
        if (this.f1793h + 1 >= this.f1790e) {
            s();
        }
        SolverVariable a4 = a(SolverVariable.Type.ERROR, str);
        int i4 = this.f1786a + 1;
        this.f1786a = i4;
        this.f1793h++;
        a4.id = i4;
        a4.strength = i2;
        this.f1796k.f1783d[i4] = a4;
        this.f1788c.addError(a4);
        return a4;
    }

    public SolverVariable createExtraVariable() {
        Metrics metrics = sMetrics;
        if (metrics != null) {
            metrics.extravariables++;
        }
        if (this.f1793h + 1 >= this.f1790e) {
            s();
        }
        SolverVariable a4 = a(SolverVariable.Type.SLACK, null);
        int i2 = this.f1786a + 1;
        this.f1786a = i2;
        this.f1793h++;
        a4.id = i2;
        this.f1796k.f1783d[i2] = a4;
        return a4;
    }

    public SolverVariable createObjectVariable(Object obj) {
        SolverVariable solverVariable = null;
        if (obj == null) {
            return null;
        }
        if (this.f1793h + 1 >= this.f1790e) {
            s();
        }
        if (obj instanceof ConstraintAnchor) {
            ConstraintAnchor constraintAnchor = (ConstraintAnchor) obj;
            solverVariable = constraintAnchor.getSolverVariable();
            if (solverVariable == null) {
                constraintAnchor.resetSolverVariable(this.f1796k);
                solverVariable = constraintAnchor.getSolverVariable();
            }
            int i2 = solverVariable.id;
            if (i2 == -1 || i2 > this.f1786a || this.f1796k.f1783d[i2] == null) {
                if (i2 != -1) {
                    solverVariable.reset();
                }
                int i4 = this.f1786a + 1;
                this.f1786a = i4;
                this.f1793h++;
                solverVariable.id = i4;
                solverVariable.f1829e = SolverVariable.Type.UNRESTRICTED;
                this.f1796k.f1783d[i4] = solverVariable;
            }
        }
        return solverVariable;
    }

    public ArrayRow createRow() {
        ArrayRow acquire;
        if (OPTIMIZED_ENGINE) {
            acquire = this.f1796k.f1780a.acquire();
            if (acquire == null) {
                acquire = new ValuesRow(this.f1796k);
                OPTIMIZED_ARRAY_ROW_CREATION++;
            } else {
                acquire.reset();
            }
        } else {
            acquire = this.f1796k.f1781b.acquire();
            if (acquire == null) {
                acquire = new ArrayRow(this.f1796k);
                ARRAY_ROW_CREATION++;
            } else {
                acquire.reset();
            }
        }
        SolverVariable.x();
        return acquire;
    }

    public SolverVariable createSlackVariable() {
        Metrics metrics = sMetrics;
        if (metrics != null) {
            metrics.slackvariables++;
        }
        if (this.f1793h + 1 >= this.f1790e) {
            s();
        }
        SolverVariable a4 = a(SolverVariable.Type.SLACK, null);
        int i2 = this.f1786a + 1;
        this.f1786a = i2;
        this.f1793h++;
        a4.id = i2;
        this.f1796k.f1783d[i2] = a4;
        return a4;
    }

    public void displayReadableRows() {
        j();
        String str = " num vars " + this.f1786a + "\n";
        for (int i2 = 0; i2 < this.f1786a + 1; i2++) {
            SolverVariable solverVariable = this.f1796k.f1783d[i2];
            if (solverVariable != null && solverVariable.isFinalValue) {
                str = str + " $[" + i2 + "] => " + solverVariable + " = " + solverVariable.computedValue + "\n";
            }
        }
        String str2 = str + "\n";
        for (int i4 = 0; i4 < this.f1786a + 1; i4++) {
            SolverVariable[] solverVariableArr = this.f1796k.f1783d;
            SolverVariable solverVariable2 = solverVariableArr[i4];
            if (solverVariable2 != null && solverVariable2.f1832h) {
                str2 = str2 + " ~[" + i4 + "] => " + solverVariable2 + " = " + solverVariableArr[solverVariable2.f1833i] + " + " + solverVariable2.f1834j + "\n";
            }
        }
        String str3 = str2 + "\n\n #  ";
        for (int i5 = 0; i5 < this.f1794i; i5++) {
            str3 = (str3 + this.f1791f[i5].n()) + "\n #  ";
        }
        if (this.f1788c != null) {
            str3 = str3 + "Goal: " + this.f1788c + "\n";
        }
        System.out.println(str3);
    }

    public void displayVariablesReadableRows() {
        j();
        String str = "";
        for (int i2 = 0; i2 < this.f1794i; i2++) {
            if (this.f1791f[i2].f1775a.f1829e == SolverVariable.Type.UNRESTRICTED) {
                str = (str + this.f1791f[i2].n()) + "\n";
            }
        }
        System.out.println(str + this.f1788c + "\n");
    }

    void e(ArrayRow arrayRow, int i2, int i4) {
        arrayRow.a(createErrorVariable(i4, null), i2);
    }

    final void f() {
        int i2;
        int i4 = 0;
        while (i4 < this.f1794i) {
            ArrayRow arrayRow = this.f1791f[i4];
            if (arrayRow.variables.getCurrentSize() == 0) {
                arrayRow.f1779e = true;
            }
            if (arrayRow.f1779e) {
                SolverVariable solverVariable = arrayRow.f1775a;
                solverVariable.computedValue = arrayRow.f1776b;
                solverVariable.removeFromRow(arrayRow);
                int i5 = i4;
                while (true) {
                    i2 = this.f1794i;
                    if (i5 >= i2 - 1) {
                        break;
                    }
                    ArrayRow[] arrayRowArr = this.f1791f;
                    int i6 = i5 + 1;
                    arrayRowArr[i5] = arrayRowArr[i6];
                    i5 = i6;
                }
                this.f1791f[i2 - 1] = null;
                this.f1794i = i2 - 1;
                i4--;
                if (OPTIMIZED_ENGINE) {
                    this.f1796k.f1780a.release(arrayRow);
                } else {
                    this.f1796k.f1781b.release(arrayRow);
                }
            }
            i4++;
        }
    }

    public void fillMetrics(Metrics metrics) {
        sMetrics = metrics;
    }

    public Cache getCache() {
        return this.f1796k;
    }

    public int getMemoryUsed() {
        int i2 = 0;
        for (int i4 = 0; i4 < this.f1794i; i4++) {
            ArrayRow[] arrayRowArr = this.f1791f;
            if (arrayRowArr[i4] != null) {
                i2 += arrayRowArr[i4].m();
            }
        }
        return i2;
    }

    public int getNumEquations() {
        return this.f1794i;
    }

    public int getNumVariables() {
        return this.f1786a;
    }

    public int getObjectVariableValue(Object obj) {
        SolverVariable solverVariable = ((ConstraintAnchor) obj).getSolverVariable();
        if (solverVariable != null) {
            return (int) (solverVariable.computedValue + 0.5f);
        }
        return 0;
    }

    void k() {
        int i2 = 0;
        for (int i4 = 0; i4 < this.f1789d; i4++) {
            ArrayRow[] arrayRowArr = this.f1791f;
            if (arrayRowArr[i4] != null) {
                i2 += arrayRowArr[i4].m();
            }
        }
        int i5 = 0;
        for (int i6 = 0; i6 < this.f1794i; i6++) {
            ArrayRow[] arrayRowArr2 = this.f1791f;
            if (arrayRowArr2[i6] != null) {
                i5 += arrayRowArr2[i6].m();
            }
        }
        PrintStream printStream = System.out;
        StringBuilder sb = new StringBuilder();
        sb.append("Linear System -> Table size: ");
        sb.append(this.f1789d);
        sb.append(" (");
        int i7 = this.f1789d;
        sb.append(m(i7 * i7));
        sb.append(") -- row sizes: ");
        sb.append(m(i2));
        sb.append(", actual size: ");
        sb.append(m(i5));
        sb.append(" rows: ");
        sb.append(this.f1794i);
        sb.append(e.F0);
        sb.append(this.f1795j);
        sb.append(" cols: ");
        sb.append(this.f1793h);
        sb.append(e.F0);
        sb.append(this.f1790e);
        sb.append(" ");
        sb.append(0);
        sb.append(" occupied cells, ");
        sb.append(m(0));
        printStream.println(sb.toString());
    }

    public void minimize() throws Exception {
        Metrics metrics = sMetrics;
        if (metrics != null) {
            metrics.minimize++;
        }
        if (this.f1788c.isEmpty()) {
            g();
        } else if (!this.graphOptimizer && !this.newgraphOptimizer) {
            t(this.f1788c);
        } else {
            Metrics metrics2 = sMetrics;
            if (metrics2 != null) {
                metrics2.graphOptimizer++;
            }
            boolean z3 = false;
            int i2 = 0;
            while (true) {
                if (i2 >= this.f1794i) {
                    z3 = true;
                    break;
                } else if (!this.f1791f[i2].f1779e) {
                    break;
                } else {
                    i2++;
                }
            }
            if (!z3) {
                t(this.f1788c);
                return;
            }
            Metrics metrics3 = sMetrics;
            if (metrics3 != null) {
                metrics3.fullySolved++;
            }
            g();
        }
    }

    Row o() {
        return this.f1788c;
    }

    ArrayRow p(int i2) {
        return this.f1791f[i2];
    }

    float q(String str) {
        SolverVariable r3 = r(str, SolverVariable.Type.UNRESTRICTED);
        if (r3 == null) {
            return 0.0f;
        }
        return r3.computedValue;
    }

    SolverVariable r(String str, SolverVariable.Type type) {
        if (this.f1787b == null) {
            this.f1787b = new HashMap<>();
        }
        SolverVariable solverVariable = this.f1787b.get(str);
        return solverVariable == null ? h(str, type) : solverVariable;
    }

    public void removeRow(ArrayRow arrayRow) {
        SolverVariable solverVariable;
        int i2;
        if (!arrayRow.f1779e || (solverVariable = arrayRow.f1775a) == null) {
            return;
        }
        int i4 = solverVariable.f1826b;
        if (i4 != -1) {
            while (true) {
                i2 = this.f1794i;
                if (i4 >= i2 - 1) {
                    break;
                }
                ArrayRow[] arrayRowArr = this.f1791f;
                int i5 = i4 + 1;
                SolverVariable solverVariable2 = arrayRowArr[i5].f1775a;
                if (solverVariable2.f1826b == i5) {
                    solverVariable2.f1826b = i4;
                }
                arrayRowArr[i4] = arrayRowArr[i5];
                i4 = i5;
            }
            this.f1794i = i2 - 1;
        }
        SolverVariable solverVariable3 = arrayRow.f1775a;
        if (!solverVariable3.isFinalValue) {
            solverVariable3.setFinalValue(this, arrayRow.f1776b);
        }
        if (OPTIMIZED_ENGINE) {
            this.f1796k.f1780a.release(arrayRow);
        } else {
            this.f1796k.f1781b.release(arrayRow);
        }
    }

    public void reset() {
        Cache cache;
        int i2 = 0;
        while (true) {
            cache = this.f1796k;
            SolverVariable[] solverVariableArr = cache.f1783d;
            if (i2 >= solverVariableArr.length) {
                break;
            }
            SolverVariable solverVariable = solverVariableArr[i2];
            if (solverVariable != null) {
                solverVariable.reset();
            }
            i2++;
        }
        cache.f1782c.releaseAll(this.f1797l, this.f1798m);
        this.f1798m = 0;
        Arrays.fill(this.f1796k.f1783d, (Object) null);
        HashMap<String, SolverVariable> hashMap = this.f1787b;
        if (hashMap != null) {
            hashMap.clear();
        }
        this.f1786a = 0;
        this.f1788c.clear();
        this.f1793h = 1;
        for (int i4 = 0; i4 < this.f1794i; i4++) {
            ArrayRow[] arrayRowArr = this.f1791f;
            if (arrayRowArr[i4] != null) {
                arrayRowArr[i4].f1777c = false;
            }
        }
        v();
        this.f1794i = 0;
        if (OPTIMIZED_ENGINE) {
            this.f1799n = new ValuesRow(this.f1796k);
        } else {
            this.f1799n = new ArrayRow(this.f1796k);
        }
    }

    void t(Row row) throws Exception {
        Metrics metrics = sMetrics;
        if (metrics != null) {
            metrics.minimizeGoal++;
            metrics.maxVariables = Math.max(metrics.maxVariables, this.f1793h);
            Metrics metrics2 = sMetrics;
            metrics2.maxRows = Math.max(metrics2.maxRows, this.f1794i);
        }
        l(row);
        u(row, false);
        g();
    }

    public void addEquality(SolverVariable solverVariable, int i2) {
        if (USE_BASIC_SYNONYMS && solverVariable.f1826b == -1) {
            float f4 = i2;
            solverVariable.setFinalValue(this, f4);
            for (int i4 = 0; i4 < this.f1786a + 1; i4++) {
                SolverVariable solverVariable2 = this.f1796k.f1783d[i4];
                if (solverVariable2 != null && solverVariable2.f1832h && solverVariable2.f1833i == solverVariable.id) {
                    solverVariable2.setFinalValue(this, solverVariable2.f1834j + f4);
                }
            }
            return;
        }
        int i5 = solverVariable.f1826b;
        if (i5 != -1) {
            ArrayRow arrayRow = this.f1791f[i5];
            if (arrayRow.f1779e) {
                arrayRow.f1776b = i2;
                return;
            } else if (arrayRow.variables.getCurrentSize() == 0) {
                arrayRow.f1779e = true;
                arrayRow.f1776b = i2;
                return;
            } else {
                ArrayRow createRow = createRow();
                createRow.createRowEquals(solverVariable, i2);
                addConstraint(createRow);
                return;
            }
        }
        ArrayRow createRow2 = createRow();
        createRow2.e(solverVariable, i2);
        addConstraint(createRow2);
    }
}
