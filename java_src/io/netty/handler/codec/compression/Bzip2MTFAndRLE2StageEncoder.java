package io.netty.handler.codec.compression;

import com.join.mgps.socket.fight.arena.a;
/* loaded from: classes5.dex */
final class Bzip2MTFAndRLE2StageEncoder {
    private int alphabetSize;
    private final int[] bwtBlock;
    private final int bwtLength;
    private final boolean[] bwtValuesPresent;
    private final char[] mtfBlock;
    private int mtfLength;
    private final int[] mtfSymbolFrequencies = new int[a.f52158i];

    /* JADX INFO: Access modifiers changed from: package-private */
    public Bzip2MTFAndRLE2StageEncoder(int[] iArr, int i2, boolean[] zArr) {
        this.bwtBlock = iArr;
        this.bwtLength = i2;
        this.bwtValuesPresent = zArr;
        this.mtfBlock = new char[i2 + 1];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void encode() {
        int i2;
        int i4;
        int i5 = this.bwtLength;
        boolean[] zArr = this.bwtValuesPresent;
        int[] iArr = this.bwtBlock;
        char[] cArr = this.mtfBlock;
        int[] iArr2 = this.mtfSymbolFrequencies;
        byte[] bArr = new byte[256];
        Bzip2MoveToFrontTable bzip2MoveToFrontTable = new Bzip2MoveToFrontTable();
        char c4 = 0;
        int i6 = 0;
        for (int i7 = 0; i7 < 256; i7++) {
            if (zArr[i7]) {
                bArr[i7] = (byte) i6;
                i6++;
            }
        }
        int i8 = i6 + 1;
        int i9 = 0;
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        while (i9 < i5) {
            int valueToFront = bzip2MoveToFrontTable.valueToFront(bArr[iArr[i9] & 255]);
            if (valueToFront == 0) {
                i10++;
            } else {
                if (i10 > 0) {
                    int i14 = i10 - 1;
                    while (true) {
                        if ((i14 & 1) == 0) {
                            i4 = i11 + 1;
                            cArr[i11] = c4;
                            i12++;
                        } else {
                            i4 = i11 + 1;
                            cArr[i11] = 1;
                            i13++;
                        }
                        i11 = i4;
                        if (i14 <= 1) {
                            break;
                        }
                        i14 = (i14 - 2) >>> 1;
                    }
                    i10 = 0;
                }
                int i15 = valueToFront + 1;
                cArr[i11] = (char) i15;
                iArr2[i15] = iArr2[i15] + 1;
                i11++;
            }
            i9++;
            c4 = 0;
        }
        if (i10 > 0) {
            int i16 = i10 - 1;
            while (true) {
                if ((i16 & 1) == 0) {
                    i2 = i11 + 1;
                    cArr[i11] = 0;
                    i12++;
                } else {
                    i2 = i11 + 1;
                    cArr[i11] = 1;
                    i13++;
                }
                i11 = i2;
                if (i16 <= 1) {
                    break;
                }
                i16 = (i16 - 2) >>> 1;
            }
        }
        cArr[i11] = (char) i8;
        iArr2[i8] = iArr2[i8] + 1;
        iArr2[0] = iArr2[0] + i12;
        iArr2[1] = iArr2[1] + i13;
        this.mtfLength = i11 + 1;
        this.alphabetSize = i8 + 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int mtfAlphabetSize() {
        return this.alphabetSize;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public char[] mtfBlock() {
        return this.mtfBlock;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int mtfLength() {
        return this.mtfLength;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int[] mtfSymbolFrequencies() {
        return this.mtfSymbolFrequencies;
    }
}
