package com.google.zxing.common.reedsolomon;
/* loaded from: classes2.dex */
public final class GenericGF {
    public static final GenericGF AZTEC_DATA_6;
    public static final GenericGF AZTEC_DATA_8;
    public static final GenericGF AZTEC_PARAM;
    public static final GenericGF DATA_MATRIX_FIELD_256;
    private static final int INITIALIZATION_THRESHOLD = 0;
    public static final GenericGF MAXICODE_FIELD_64;
    public static final GenericGF QR_CODE_FIELD_256;
    private int[] expTable;
    private boolean initialized = false;
    private int[] logTable;
    private GenericGFPoly one;
    private final int primitive;
    private final int size;
    private GenericGFPoly zero;
    public static final GenericGF AZTEC_DATA_12 = new GenericGF(4201, 4096);
    public static final GenericGF AZTEC_DATA_10 = new GenericGF(1033, 1024);

    static {
        GenericGF genericGF = new GenericGF(67, 64);
        AZTEC_DATA_6 = genericGF;
        AZTEC_PARAM = new GenericGF(19, 16);
        QR_CODE_FIELD_256 = new GenericGF(285, 256);
        GenericGF genericGF2 = new GenericGF(301, 256);
        DATA_MATRIX_FIELD_256 = genericGF2;
        AZTEC_DATA_8 = genericGF2;
        MAXICODE_FIELD_64 = genericGF;
    }

    public GenericGF(int i2, int i4) {
        this.primitive = i2;
        this.size = i4;
        if (i4 <= 0) {
            initialize();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int addOrSubtract(int i2, int i4) {
        return i2 ^ i4;
    }

    private void checkInit() {
        if (this.initialized) {
            return;
        }
        initialize();
    }

    private void initialize() {
        int i2 = this.size;
        this.expTable = new int[i2];
        this.logTable = new int[i2];
        int i4 = 0;
        int i5 = 1;
        while (true) {
            int i6 = this.size;
            if (i4 >= i6) {
                break;
            }
            this.expTable[i4] = i5;
            i5 <<= 1;
            if (i5 >= i6) {
                i5 = (i5 ^ this.primitive) & (i6 - 1);
            }
            i4++;
        }
        for (int i7 = 0; i7 < this.size - 1; i7++) {
            this.logTable[this.expTable[i7]] = i7;
        }
        this.zero = new GenericGFPoly(this, new int[]{0});
        this.one = new GenericGFPoly(this, new int[]{1});
        this.initialized = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public GenericGFPoly buildMonomial(int i2, int i4) {
        checkInit();
        if (i2 >= 0) {
            if (i4 == 0) {
                return this.zero;
            }
            int[] iArr = new int[i2 + 1];
            iArr[0] = i4;
            return new GenericGFPoly(this, iArr);
        }
        throw new IllegalArgumentException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int exp(int i2) {
        checkInit();
        return this.expTable[i2];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public GenericGFPoly getOne() {
        checkInit();
        return this.one;
    }

    public int getSize() {
        return this.size;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public GenericGFPoly getZero() {
        checkInit();
        return this.zero;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int inverse(int i2) {
        checkInit();
        if (i2 != 0) {
            return this.expTable[(this.size - this.logTable[i2]) - 1];
        }
        throw new ArithmeticException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int log(int i2) {
        checkInit();
        if (i2 != 0) {
            return this.logTable[i2];
        }
        throw new IllegalArgumentException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int multiply(int i2, int i4) {
        int i5;
        checkInit();
        if (i2 == 0 || i4 == 0) {
            return 0;
        }
        if (i2 < 0 || i4 < 0 || i2 >= (i5 = this.size) || i4 >= i5) {
            i2++;
        }
        int[] iArr = this.logTable;
        int i6 = iArr[i2] + iArr[i4];
        int[] iArr2 = this.expTable;
        int i7 = this.size;
        return iArr2[(i6 % i7) + (i6 / i7)];
    }
}
