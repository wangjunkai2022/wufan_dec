package com.google.zxing.common;
/* loaded from: classes2.dex */
public final class BitMatrix {
    private final int[] bits;
    private final int height;
    private final int rowSize;
    private final int width;

    public BitMatrix(int i2) {
        this(i2, i2);
    }

    public void clear() {
        int length = this.bits.length;
        for (int i2 = 0; i2 < length; i2++) {
            this.bits[i2] = 0;
        }
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof BitMatrix)) {
            return false;
        }
        BitMatrix bitMatrix = (BitMatrix) obj;
        if (this.width != bitMatrix.width || this.height != bitMatrix.height || this.rowSize != bitMatrix.rowSize || this.bits.length != bitMatrix.bits.length) {
            return false;
        }
        int i2 = 0;
        while (true) {
            int[] iArr = this.bits;
            if (i2 >= iArr.length) {
                return true;
            }
            if (iArr[i2] != bitMatrix.bits[i2]) {
                return false;
            }
            i2++;
        }
    }

    public void flip(int i2, int i4) {
        int i5 = (i4 * this.rowSize) + (i2 >> 5);
        int[] iArr = this.bits;
        iArr[i5] = (1 << (i2 & 31)) ^ iArr[i5];
    }

    public boolean get(int i2, int i4) {
        return ((this.bits[(i4 * this.rowSize) + (i2 >> 5)] >>> (i2 & 31)) & 1) != 0;
    }

    public int[] getBottomRightOnBit() {
        int length = this.bits.length - 1;
        while (length >= 0 && this.bits[length] == 0) {
            length--;
        }
        if (length < 0) {
            return null;
        }
        int i2 = this.rowSize;
        int i4 = length / i2;
        int i5 = (length % i2) << 5;
        int i6 = 31;
        while ((this.bits[length] >>> i6) == 0) {
            i6--;
        }
        return new int[]{i5 + i6, i4};
    }

    public int[] getEnclosingRectangle() {
        int i2 = this.width;
        int i4 = this.height;
        int i5 = -1;
        int i6 = -1;
        for (int i7 = 0; i7 < this.height; i7++) {
            int i8 = 0;
            while (true) {
                int i9 = this.rowSize;
                if (i8 < i9) {
                    int i10 = this.bits[(i9 * i7) + i8];
                    if (i10 != 0) {
                        if (i7 < i4) {
                            i4 = i7;
                        }
                        if (i7 > i6) {
                            i6 = i7;
                        }
                        int i11 = i8 * 32;
                        if (i11 < i2) {
                            int i12 = 0;
                            while ((i10 << (31 - i12)) == 0) {
                                i12++;
                            }
                            int i13 = i12 + i11;
                            if (i13 < i2) {
                                i2 = i13;
                            }
                        }
                        if (i11 + 31 > i5) {
                            int i14 = 31;
                            while ((i10 >>> i14) == 0) {
                                i14--;
                            }
                            int i15 = i11 + i14;
                            if (i15 > i5) {
                                i5 = i15;
                            }
                        }
                    }
                    i8++;
                }
            }
        }
        int i16 = i5 - i2;
        int i17 = i6 - i4;
        if (i16 < 0 || i17 < 0) {
            return null;
        }
        return new int[]{i2, i4, i16, i17};
    }

    public int getHeight() {
        return this.height;
    }

    public BitArray getRow(int i2, BitArray bitArray) {
        if (bitArray == null || bitArray.getSize() < this.width) {
            bitArray = new BitArray(this.width);
        }
        int i4 = i2 * this.rowSize;
        for (int i5 = 0; i5 < this.rowSize; i5++) {
            bitArray.setBulk(i5 << 5, this.bits[i4 + i5]);
        }
        return bitArray;
    }

    public int[] getTopLeftOnBit() {
        int[] iArr;
        int i2 = 0;
        while (true) {
            iArr = this.bits;
            if (i2 >= iArr.length || iArr[i2] != 0) {
                break;
            }
            i2++;
        }
        if (i2 == iArr.length) {
            return null;
        }
        int i4 = this.rowSize;
        int i5 = i2 / i4;
        int i6 = (i2 % i4) << 5;
        int i7 = iArr[i2];
        int i8 = 0;
        while ((i7 << (31 - i8)) == 0) {
            i8++;
        }
        return new int[]{i6 + i8, i5};
    }

    public int getWidth() {
        return this.width;
    }

    public int hashCode() {
        int i2 = this.width;
        int i4 = (((((i2 * 31) + i2) * 31) + this.height) * 31) + this.rowSize;
        for (int i5 : this.bits) {
            i4 = (i4 * 31) + i5;
        }
        return i4;
    }

    public void set(int i2, int i4) {
        int i5 = (i4 * this.rowSize) + (i2 >> 5);
        int[] iArr = this.bits;
        iArr[i5] = (1 << (i2 & 31)) | iArr[i5];
    }

    public void setRegion(int i2, int i4, int i5, int i6) {
        if (i4 < 0 || i2 < 0) {
            throw new IllegalArgumentException("Left and top must be nonnegative");
        }
        if (i6 >= 1 && i5 >= 1) {
            int i7 = i5 + i2;
            int i8 = i6 + i4;
            if (i8 > this.height || i7 > this.width) {
                throw new IllegalArgumentException("The region must fit inside the matrix");
            }
            while (i4 < i8) {
                int i9 = this.rowSize * i4;
                for (int i10 = i2; i10 < i7; i10++) {
                    int[] iArr = this.bits;
                    int i11 = (i10 >> 5) + i9;
                    iArr[i11] = iArr[i11] | (1 << (i10 & 31));
                }
                i4++;
            }
            return;
        }
        throw new IllegalArgumentException("Height and width must be at least 1");
    }

    public void setRow(int i2, BitArray bitArray) {
        int[] bitArray2 = bitArray.getBitArray();
        int[] iArr = this.bits;
        int i4 = this.rowSize;
        System.arraycopy(bitArray2, 0, iArr, i2 * i4, i4);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(this.height * (this.width + 1));
        for (int i2 = 0; i2 < this.height; i2++) {
            for (int i4 = 0; i4 < this.width; i4++) {
                sb.append(get(i4, i2) ? "X " : "  ");
            }
            sb.append('\n');
        }
        return sb.toString();
    }

    public BitMatrix(int i2, int i4) {
        if (i2 >= 1 && i4 >= 1) {
            this.width = i2;
            this.height = i4;
            int i5 = (i2 + 31) >> 5;
            this.rowSize = i5;
            this.bits = new int[i5 * i4];
            return;
        }
        throw new IllegalArgumentException("Both dimensions must be greater than 0");
    }
}
