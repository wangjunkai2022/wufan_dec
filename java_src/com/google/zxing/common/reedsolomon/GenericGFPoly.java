package com.google.zxing.common.reedsolomon;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class GenericGFPoly {
    private final int[] coefficients;
    private final GenericGF field;

    /* JADX INFO: Access modifiers changed from: package-private */
    public GenericGFPoly(GenericGF genericGF, int[] iArr) {
        if (iArr.length != 0) {
            this.field = genericGF;
            int length = iArr.length;
            int i2 = 1;
            if (length > 1 && iArr[0] == 0) {
                while (i2 < length && iArr[i2] == 0) {
                    i2++;
                }
                if (i2 == length) {
                    this.coefficients = genericGF.getZero().coefficients;
                    return;
                }
                int[] iArr2 = new int[length - i2];
                this.coefficients = iArr2;
                System.arraycopy(iArr, i2, iArr2, 0, iArr2.length);
                return;
            }
            this.coefficients = iArr;
            return;
        }
        throw new IllegalArgumentException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public GenericGFPoly addOrSubtract(GenericGFPoly genericGFPoly) {
        if (this.field.equals(genericGFPoly.field)) {
            if (isZero()) {
                return genericGFPoly;
            }
            if (genericGFPoly.isZero()) {
                return this;
            }
            int[] iArr = this.coefficients;
            int[] iArr2 = genericGFPoly.coefficients;
            if (iArr.length <= iArr2.length) {
                iArr = iArr2;
                iArr2 = iArr;
            }
            int[] iArr3 = new int[iArr.length];
            int length = iArr.length - iArr2.length;
            System.arraycopy(iArr, 0, iArr3, 0, length);
            for (int i2 = length; i2 < iArr.length; i2++) {
                iArr3[i2] = GenericGF.addOrSubtract(iArr2[i2 - length], iArr[i2]);
            }
            return new GenericGFPoly(this.field, iArr3);
        }
        throw new IllegalArgumentException("GenericGFPolys do not have same GenericGF field");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public GenericGFPoly[] divide(GenericGFPoly genericGFPoly) {
        if (this.field.equals(genericGFPoly.field)) {
            if (!genericGFPoly.isZero()) {
                GenericGFPoly zero = this.field.getZero();
                int inverse = this.field.inverse(genericGFPoly.getCoefficient(genericGFPoly.getDegree()));
                GenericGFPoly genericGFPoly2 = this;
                while (genericGFPoly2.getDegree() >= genericGFPoly.getDegree() && !genericGFPoly2.isZero()) {
                    int degree = genericGFPoly2.getDegree() - genericGFPoly.getDegree();
                    int multiply = this.field.multiply(genericGFPoly2.getCoefficient(genericGFPoly2.getDegree()), inverse);
                    GenericGFPoly multiplyByMonomial = genericGFPoly.multiplyByMonomial(degree, multiply);
                    zero = zero.addOrSubtract(this.field.buildMonomial(degree, multiply));
                    genericGFPoly2 = genericGFPoly2.addOrSubtract(multiplyByMonomial);
                }
                return new GenericGFPoly[]{zero, genericGFPoly2};
            }
            throw new IllegalArgumentException("Divide by 0");
        }
        throw new IllegalArgumentException("GenericGFPolys do not have same GenericGF field");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int evaluateAt(int i2) {
        if (i2 == 0) {
            return getCoefficient(0);
        }
        int[] iArr = this.coefficients;
        int length = iArr.length;
        if (i2 == 1) {
            int i4 = 0;
            for (int i5 = 0; i5 < length; i5++) {
                i4 = GenericGF.addOrSubtract(i4, this.coefficients[i5]);
            }
            return i4;
        }
        int i6 = iArr[0];
        for (int i7 = 1; i7 < length; i7++) {
            i6 = GenericGF.addOrSubtract(this.field.multiply(i2, i6), this.coefficients[i7]);
        }
        return i6;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getCoefficient(int i2) {
        int[] iArr = this.coefficients;
        return iArr[(iArr.length - 1) - i2];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int[] getCoefficients() {
        return this.coefficients;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getDegree() {
        return this.coefficients.length - 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isZero() {
        return this.coefficients[0] == 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public GenericGFPoly multiply(GenericGFPoly genericGFPoly) {
        if (this.field.equals(genericGFPoly.field)) {
            if (!isZero() && !genericGFPoly.isZero()) {
                int[] iArr = this.coefficients;
                int length = iArr.length;
                int[] iArr2 = genericGFPoly.coefficients;
                int length2 = iArr2.length;
                int[] iArr3 = new int[(length + length2) - 1];
                for (int i2 = 0; i2 < length; i2++) {
                    int i4 = iArr[i2];
                    for (int i5 = 0; i5 < length2; i5++) {
                        int i6 = i2 + i5;
                        iArr3[i6] = GenericGF.addOrSubtract(iArr3[i6], this.field.multiply(i4, iArr2[i5]));
                    }
                }
                return new GenericGFPoly(this.field, iArr3);
            }
            return this.field.getZero();
        }
        throw new IllegalArgumentException("GenericGFPolys do not have same GenericGF field");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public GenericGFPoly multiplyByMonomial(int i2, int i4) {
        if (i2 >= 0) {
            if (i4 == 0) {
                return this.field.getZero();
            }
            int length = this.coefficients.length;
            int[] iArr = new int[i2 + length];
            for (int i5 = 0; i5 < length; i5++) {
                iArr[i5] = this.field.multiply(this.coefficients[i5], i4);
            }
            return new GenericGFPoly(this.field, iArr);
        }
        throw new IllegalArgumentException();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(getDegree() * 8);
        for (int degree = getDegree(); degree >= 0; degree--) {
            int coefficient = getCoefficient(degree);
            if (coefficient != 0) {
                if (coefficient < 0) {
                    sb.append(" - ");
                    coefficient = -coefficient;
                } else if (sb.length() > 0) {
                    sb.append(" + ");
                }
                if (degree == 0 || coefficient != 1) {
                    int log = this.field.log(coefficient);
                    if (log == 0) {
                        sb.append('1');
                    } else if (log == 1) {
                        sb.append('a');
                    } else {
                        sb.append("a^");
                        sb.append(log);
                    }
                }
                if (degree != 0) {
                    if (degree == 1) {
                        sb.append('x');
                    } else {
                        sb.append("x^");
                        sb.append(degree);
                    }
                }
            }
        }
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public GenericGFPoly multiply(int i2) {
        if (i2 == 0) {
            return this.field.getZero();
        }
        if (i2 == 1) {
            return this;
        }
        int length = this.coefficients.length;
        int[] iArr = new int[length];
        for (int i4 = 0; i4 < length; i4++) {
            iArr[i4] = this.field.multiply(this.coefficients[i4], i2);
        }
        return new GenericGFPoly(this.field, iArr);
    }
}
