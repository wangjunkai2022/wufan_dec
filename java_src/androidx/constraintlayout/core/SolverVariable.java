package androidx.constraintlayout.core;

import java.util.Arrays;
import java.util.HashSet;
/* loaded from: classes.dex */
public class SolverVariable implements Comparable<SolverVariable> {
    public static final int STRENGTH_BARRIER = 6;
    public static final int STRENGTH_CENTERING = 7;
    public static final int STRENGTH_EQUALITY = 5;
    public static final int STRENGTH_FIXED = 8;
    public static final int STRENGTH_HIGH = 3;
    public static final int STRENGTH_HIGHEST = 4;
    public static final int STRENGTH_LOW = 1;
    public static final int STRENGTH_MEDIUM = 2;
    public static final int STRENGTH_NONE = 0;

    /* renamed from: l  reason: collision with root package name */
    private static final boolean f1817l = false;

    /* renamed from: m  reason: collision with root package name */
    private static final boolean f1818m = false;

    /* renamed from: n  reason: collision with root package name */
    private static int f1819n = 1;

    /* renamed from: o  reason: collision with root package name */
    private static int f1820o = 1;

    /* renamed from: p  reason: collision with root package name */
    private static int f1821p = 1;

    /* renamed from: q  reason: collision with root package name */
    private static int f1822q = 1;

    /* renamed from: r  reason: collision with root package name */
    private static int f1823r = 1;

    /* renamed from: s  reason: collision with root package name */
    static final int f1824s = 9;

    /* renamed from: a  reason: collision with root package name */
    private String f1825a;

    /* renamed from: b  reason: collision with root package name */
    int f1826b;

    /* renamed from: c  reason: collision with root package name */
    float[] f1827c;
    public float computedValue;

    /* renamed from: d  reason: collision with root package name */
    float[] f1828d;

    /* renamed from: e  reason: collision with root package name */
    Type f1829e;

    /* renamed from: f  reason: collision with root package name */
    ArrayRow[] f1830f;

    /* renamed from: g  reason: collision with root package name */
    int f1831g;

    /* renamed from: h  reason: collision with root package name */
    boolean f1832h;

    /* renamed from: i  reason: collision with root package name */
    int f1833i;
    public int id;
    public boolean inGoal;
    public boolean isFinalValue;

    /* renamed from: j  reason: collision with root package name */
    float f1834j;

    /* renamed from: k  reason: collision with root package name */
    HashSet<ArrayRow> f1835k;
    public int strength;
    public int usageInRowCount;

    /* renamed from: androidx.constraintlayout.core.SolverVariable$1  reason: invalid class name */
    /* loaded from: classes.dex */
    static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f1836a;

        static {
            int[] iArr = new int[Type.values().length];
            f1836a = iArr;
            try {
                iArr[Type.UNRESTRICTED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f1836a[Type.CONSTANT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f1836a[Type.SLACK.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f1836a[Type.ERROR.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f1836a[Type.UNKNOWN.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* loaded from: classes.dex */
    public enum Type {
        UNRESTRICTED,
        CONSTANT,
        SLACK,
        ERROR,
        UNKNOWN
    }

    public SolverVariable(String str, Type type) {
        this.id = -1;
        this.f1826b = -1;
        this.strength = 0;
        this.isFinalValue = false;
        this.f1827c = new float[9];
        this.f1828d = new float[9];
        this.f1830f = new ArrayRow[16];
        this.f1831g = 0;
        this.usageInRowCount = 0;
        this.f1832h = false;
        this.f1833i = -1;
        this.f1834j = 0.0f;
        this.f1835k = null;
        this.f1825a = str;
        this.f1829e = type;
    }

    private static String s(Type type, String str) {
        if (str != null) {
            return str + f1820o;
        }
        int i2 = AnonymousClass1.f1836a[type.ordinal()];
        if (i2 == 1) {
            StringBuilder sb = new StringBuilder();
            sb.append("U");
            int i4 = f1821p + 1;
            f1821p = i4;
            sb.append(i4);
            return sb.toString();
        } else if (i2 == 2) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("C");
            int i5 = f1822q + 1;
            f1822q = i5;
            sb2.append(i5);
            return sb2.toString();
        } else if (i2 == 3) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append("S");
            int i6 = f1819n + 1;
            f1819n = i6;
            sb3.append(i6);
            return sb3.toString();
        } else if (i2 == 4) {
            StringBuilder sb4 = new StringBuilder();
            sb4.append("e");
            int i7 = f1820o + 1;
            f1820o = i7;
            sb4.append(i7);
            return sb4.toString();
        } else if (i2 == 5) {
            StringBuilder sb5 = new StringBuilder();
            sb5.append("V");
            int i8 = f1823r + 1;
            f1823r = i8;
            sb5.append(i8);
            return sb5.toString();
        } else {
            throw new AssertionError(type.name());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void x() {
        f1820o++;
    }

    String A() {
        String str = this + "[";
        boolean z3 = false;
        boolean z4 = true;
        for (int i2 = 0; i2 < this.f1827c.length; i2++) {
            String str2 = str + this.f1827c[i2];
            float[] fArr = this.f1827c;
            if (fArr[i2] > 0.0f) {
                z3 = false;
            } else if (fArr[i2] < 0.0f) {
                z3 = true;
            }
            if (fArr[i2] != 0.0f) {
                z4 = false;
            }
            str = i2 < fArr.length - 1 ? str2 + ", " : str2 + "] ";
        }
        if (z3) {
            str = str + " (-)";
        }
        if (z4) {
            return str + " (*)";
        }
        return str;
    }

    public final void addToRow(ArrayRow arrayRow) {
        int i2 = 0;
        while (true) {
            int i4 = this.f1831g;
            if (i2 < i4) {
                if (this.f1830f[i2] == arrayRow) {
                    return;
                }
                i2++;
            } else {
                ArrayRow[] arrayRowArr = this.f1830f;
                if (i4 >= arrayRowArr.length) {
                    this.f1830f = (ArrayRow[]) Arrays.copyOf(arrayRowArr, arrayRowArr.length * 2);
                }
                ArrayRow[] arrayRowArr2 = this.f1830f;
                int i5 = this.f1831g;
                arrayRowArr2[i5] = arrayRow;
                this.f1831g = i5 + 1;
                return;
            }
        }
    }

    public String getName() {
        return this.f1825a;
    }

    void m() {
        for (int i2 = 0; i2 < 9; i2++) {
            this.f1827c[i2] = 0.0f;
        }
    }

    public final void removeFromRow(ArrayRow arrayRow) {
        int i2 = this.f1831g;
        int i4 = 0;
        while (i4 < i2) {
            if (this.f1830f[i4] == arrayRow) {
                while (i4 < i2 - 1) {
                    ArrayRow[] arrayRowArr = this.f1830f;
                    int i5 = i4 + 1;
                    arrayRowArr[i4] = arrayRowArr[i5];
                    i4 = i5;
                }
                this.f1831g--;
                return;
            }
            i4++;
        }
    }

    public void reset() {
        this.f1825a = null;
        this.f1829e = Type.UNKNOWN;
        this.strength = 0;
        this.id = -1;
        this.f1826b = -1;
        this.computedValue = 0.0f;
        this.isFinalValue = false;
        this.f1832h = false;
        this.f1833i = -1;
        this.f1834j = 0.0f;
        int i2 = this.f1831g;
        for (int i4 = 0; i4 < i2; i4++) {
            this.f1830f[i4] = null;
        }
        this.f1831g = 0;
        this.usageInRowCount = 0;
        this.inGoal = false;
        Arrays.fill(this.f1828d, 0.0f);
    }

    public void setFinalValue(LinearSystem linearSystem, float f4) {
        this.computedValue = f4;
        this.isFinalValue = true;
        this.f1832h = false;
        this.f1833i = -1;
        this.f1834j = 0.0f;
        int i2 = this.f1831g;
        this.f1826b = -1;
        for (int i4 = 0; i4 < i2; i4++) {
            this.f1830f[i4].updateFromFinalVariable(linearSystem, this, false);
        }
        this.f1831g = 0;
    }

    public void setName(String str) {
        this.f1825a = str;
    }

    public void setSynonym(LinearSystem linearSystem, SolverVariable solverVariable, float f4) {
        this.f1832h = true;
        this.f1833i = solverVariable.id;
        this.f1834j = f4;
        int i2 = this.f1831g;
        this.f1826b = -1;
        for (int i4 = 0; i4 < i2; i4++) {
            this.f1830f[i4].updateFromSynonymVariable(linearSystem, this, false);
        }
        this.f1831g = 0;
        linearSystem.displayReadableRows();
    }

    public void setType(Type type, String str) {
        this.f1829e = type;
    }

    public String toString() {
        if (this.f1825a != null) {
            return "" + this.f1825a;
        }
        return "" + this.id;
    }

    public final void updateReferencesWithNewDefinition(LinearSystem linearSystem, ArrayRow arrayRow) {
        int i2 = this.f1831g;
        for (int i4 = 0; i4 < i2; i4++) {
            this.f1830f[i4].updateFromRow(linearSystem, arrayRow, false);
        }
        this.f1831g = 0;
    }

    @Override // java.lang.Comparable
    public int compareTo(SolverVariable solverVariable) {
        return this.id - solverVariable.id;
    }

    public SolverVariable(Type type, String str) {
        this.id = -1;
        this.f1826b = -1;
        this.strength = 0;
        this.isFinalValue = false;
        this.f1827c = new float[9];
        this.f1828d = new float[9];
        this.f1830f = new ArrayRow[16];
        this.f1831g = 0;
        this.usageInRowCount = 0;
        this.f1832h = false;
        this.f1833i = -1;
        this.f1834j = 0.0f;
        this.f1835k = null;
        this.f1829e = type;
    }
}
