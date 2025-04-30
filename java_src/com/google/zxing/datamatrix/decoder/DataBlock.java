package com.google.zxing.datamatrix.decoder;

import com.google.zxing.datamatrix.decoder.Version;
/* loaded from: classes2.dex */
final class DataBlock {
    private final byte[] codewords;
    private final int numDataCodewords;

    private DataBlock(int i2, byte[] bArr) {
        this.numDataCodewords = i2;
        this.codewords = bArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static DataBlock[] getDataBlocks(byte[] bArr, Version version) {
        Version.ECBlocks eCBlocks = version.getECBlocks();
        Version.ECB[] eCBlocks2 = eCBlocks.getECBlocks();
        int i2 = 0;
        for (Version.ECB ecb : eCBlocks2) {
            i2 += ecb.getCount();
        }
        DataBlock[] dataBlockArr = new DataBlock[i2];
        int i4 = 0;
        for (Version.ECB ecb2 : eCBlocks2) {
            int i5 = 0;
            while (i5 < ecb2.getCount()) {
                int dataCodewords = ecb2.getDataCodewords();
                dataBlockArr[i4] = new DataBlock(dataCodewords, new byte[eCBlocks.getECCodewords() + dataCodewords]);
                i5++;
                i4++;
            }
        }
        int length = dataBlockArr[0].codewords.length - eCBlocks.getECCodewords();
        int i6 = length - 1;
        int i7 = 0;
        for (int i8 = 0; i8 < i6; i8++) {
            int i9 = 0;
            while (i9 < i4) {
                dataBlockArr[i9].codewords[i8] = bArr[i7];
                i9++;
                i7++;
            }
        }
        boolean z3 = version.getVersionNumber() == 24;
        int i10 = z3 ? 8 : i4;
        int i11 = 0;
        while (i11 < i10) {
            dataBlockArr[i11].codewords[i6] = bArr[i7];
            i11++;
            i7++;
        }
        int length2 = dataBlockArr[0].codewords.length;
        while (length < length2) {
            int i12 = 0;
            while (i12 < i4) {
                dataBlockArr[i12].codewords[(!z3 || i12 <= 7) ? length : length - 1] = bArr[i7];
                i12++;
                i7++;
            }
            length++;
        }
        if (i7 == bArr.length) {
            return dataBlockArr;
        }
        throw new IllegalArgumentException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public byte[] getCodewords() {
        return this.codewords;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getNumDataCodewords() {
        return this.numDataCodewords;
    }
}
