package com.google.zxing.common;
/* loaded from: classes2.dex */
public final class BitSource {
    private int bitOffset;
    private int byteOffset;
    private final byte[] bytes;

    public BitSource(byte[] bArr) {
        this.bytes = bArr;
    }

    public int available() {
        return ((this.bytes.length - this.byteOffset) * 8) - this.bitOffset;
    }

    public int getByteOffset() {
        return this.byteOffset;
    }

    public int readBits(int i2) {
        if (i2 >= 1 && i2 <= 32) {
            int i4 = this.bitOffset;
            int i5 = 0;
            if (i4 > 0) {
                int i6 = 8 - i4;
                int i7 = i2 < i6 ? i2 : i6;
                int i8 = i6 - i7;
                byte[] bArr = this.bytes;
                int i9 = this.byteOffset;
                int i10 = (((255 >> (8 - i7)) << i8) & bArr[i9]) >> i8;
                i2 -= i7;
                int i11 = i4 + i7;
                this.bitOffset = i11;
                if (i11 == 8) {
                    this.bitOffset = 0;
                    this.byteOffset = i9 + 1;
                }
                i5 = i10;
            }
            if (i2 > 0) {
                while (i2 >= 8) {
                    int i12 = i5 << 8;
                    byte[] bArr2 = this.bytes;
                    int i13 = this.byteOffset;
                    i5 = (bArr2[i13] & 255) | i12;
                    this.byteOffset = i13 + 1;
                    i2 -= 8;
                }
                if (i2 > 0) {
                    int i14 = 8 - i2;
                    int i15 = (i5 << i2) | ((((255 >> i14) << i14) & this.bytes[this.byteOffset]) >> i14);
                    this.bitOffset += i2;
                    return i15;
                }
                return i5;
            }
            return i5;
        }
        throw new IllegalArgumentException();
    }
}
