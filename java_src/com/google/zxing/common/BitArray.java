package com.google.zxing.common;

import external.org.apache.commons.lang3.d;
/* loaded from: classes2.dex */
public final class BitArray {
    private int[] bits;
    private int size;

    public BitArray() {
        this.size = 0;
        this.bits = new int[1];
    }

    private void ensureCapacity(int i2) {
        if (i2 > (this.bits.length << 5)) {
            int[] makeArray = makeArray(i2);
            int[] iArr = this.bits;
            System.arraycopy(iArr, 0, makeArray, 0, iArr.length);
            this.bits = makeArray;
        }
    }

    private static int[] makeArray(int i2) {
        return new int[(i2 + 31) >> 5];
    }

    public void appendBit(boolean z3) {
        ensureCapacity(this.size + 1);
        if (z3) {
            int[] iArr = this.bits;
            int i2 = this.size;
            int i4 = i2 >> 5;
            iArr[i4] = (1 << (i2 & 31)) | iArr[i4];
        }
        this.size++;
    }

    public void appendBitArray(BitArray bitArray) {
        int i2 = bitArray.size;
        ensureCapacity(this.size + i2);
        for (int i4 = 0; i4 < i2; i4++) {
            appendBit(bitArray.get(i4));
        }
    }

    public void appendBits(int i2, int i4) {
        if (i4 >= 0 && i4 <= 32) {
            ensureCapacity(this.size + i4);
            while (i4 > 0) {
                boolean z3 = true;
                if (((i2 >> (i4 - 1)) & 1) != 1) {
                    z3 = false;
                }
                appendBit(z3);
                i4--;
            }
            return;
        }
        throw new IllegalArgumentException("Num bits must be between 0 and 32");
    }

    public void clear() {
        int length = this.bits.length;
        for (int i2 = 0; i2 < length; i2++) {
            this.bits[i2] = 0;
        }
    }

    public void flip(int i2) {
        int[] iArr = this.bits;
        int i4 = i2 >> 5;
        iArr[i4] = (1 << (i2 & 31)) ^ iArr[i4];
    }

    public boolean get(int i2) {
        return ((1 << (i2 & 31)) & this.bits[i2 >> 5]) != 0;
    }

    public int[] getBitArray() {
        return this.bits;
    }

    public int getNextSet(int i2) {
        int i4 = this.size;
        if (i2 >= i4) {
            return i4;
        }
        int i5 = i2 >> 5;
        int i6 = (((1 << (i2 & 31)) - 1) ^ (-1)) & this.bits[i5];
        while (i6 == 0) {
            i5++;
            int[] iArr = this.bits;
            if (i5 == iArr.length) {
                return this.size;
            }
            i6 = iArr[i5];
        }
        int numberOfTrailingZeros = (i5 << 5) + Integer.numberOfTrailingZeros(i6);
        int i7 = this.size;
        return numberOfTrailingZeros > i7 ? i7 : numberOfTrailingZeros;
    }

    public int getNextUnset(int i2) {
        int i4 = this.size;
        if (i2 >= i4) {
            return i4;
        }
        int i5 = i2 >> 5;
        int i6 = (((1 << (i2 & 31)) - 1) ^ (-1)) & (this.bits[i5] ^ (-1));
        while (i6 == 0) {
            i5++;
            int[] iArr = this.bits;
            if (i5 == iArr.length) {
                return this.size;
            }
            i6 = iArr[i5] ^ (-1);
        }
        int numberOfTrailingZeros = (i5 << 5) + Integer.numberOfTrailingZeros(i6);
        int i7 = this.size;
        return numberOfTrailingZeros > i7 ? i7 : numberOfTrailingZeros;
    }

    public int getSize() {
        return this.size;
    }

    public int getSizeInBytes() {
        return (this.size + 7) >> 3;
    }

    public boolean isRange(int i2, int i4, boolean z3) {
        int i5;
        if (i4 >= i2) {
            if (i4 == i2) {
                return true;
            }
            int i6 = i4 - 1;
            int i7 = i2 >> 5;
            int i8 = i6 >> 5;
            int i9 = i7;
            while (i9 <= i8) {
                int i10 = i9 > i7 ? 0 : i2 & 31;
                int i11 = i9 < i8 ? 31 : i6 & 31;
                if (i10 == 0 && i11 == 31) {
                    i5 = -1;
                } else {
                    i5 = 0;
                    while (i10 <= i11) {
                        i5 |= 1 << i10;
                        i10++;
                    }
                }
                int i12 = this.bits[i9] & i5;
                if (!z3) {
                    i5 = 0;
                }
                if (i12 != i5) {
                    return false;
                }
                i9++;
            }
            return true;
        }
        throw new IllegalArgumentException();
    }

    public void reverse() {
        int[] iArr = new int[this.bits.length];
        int i2 = this.size;
        for (int i4 = 0; i4 < i2; i4++) {
            if (get((i2 - i4) - 1)) {
                int i5 = i4 >> 5;
                iArr[i5] = (1 << (i4 & 31)) | iArr[i5];
            }
        }
        this.bits = iArr;
    }

    public void set(int i2) {
        int[] iArr = this.bits;
        int i4 = i2 >> 5;
        iArr[i4] = (1 << (i2 & 31)) | iArr[i4];
    }

    public void setBulk(int i2, int i4) {
        this.bits[i2 >> 5] = i4;
    }

    public void setRange(int i2, int i4) {
        if (i4 < i2) {
            throw new IllegalArgumentException();
        }
        if (i4 == i2) {
            return;
        }
        int i5 = i4 - 1;
        int i6 = i2 >> 5;
        int i7 = i5 >> 5;
        int i8 = i6;
        while (i8 <= i7) {
            int i9 = 0;
            int i10 = i8 > i6 ? 0 : i2 & 31;
            int i11 = i8 < i7 ? 31 : i5 & 31;
            if (i10 == 0 && i11 == 31) {
                i9 = -1;
            } else {
                while (i10 <= i11) {
                    i9 |= 1 << i10;
                    i10++;
                }
            }
            int[] iArr = this.bits;
            iArr[i8] = i9 | iArr[i8];
            i8++;
        }
    }

    public void toBytes(int i2, byte[] bArr, int i4, int i5) {
        for (int i6 = 0; i6 < i5; i6++) {
            int i7 = 0;
            for (int i8 = 0; i8 < 8; i8++) {
                if (get(i2)) {
                    i7 |= 1 << (7 - i8);
                }
                i2++;
            }
            bArr[i4 + i6] = (byte) i7;
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(this.size);
        for (int i2 = 0; i2 < this.size; i2++) {
            if ((i2 & 7) == 0) {
                sb.append(' ');
            }
            sb.append(get(i2) ? 'X' : d.f65364a);
        }
        return sb.toString();
    }

    public void xor(BitArray bitArray) {
        if (this.bits.length != bitArray.bits.length) {
            throw new IllegalArgumentException("Sizes don't match");
        }
        int i2 = 0;
        while (true) {
            int[] iArr = this.bits;
            if (i2 >= iArr.length) {
                return;
            }
            iArr[i2] = iArr[i2] ^ bitArray.bits[i2];
            i2++;
        }
    }

    public BitArray(int i2) {
        this.size = i2;
        this.bits = makeArray(i2);
    }
}
