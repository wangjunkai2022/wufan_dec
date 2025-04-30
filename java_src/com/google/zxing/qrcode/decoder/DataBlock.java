package com.google.zxing.qrcode.decoder;

import com.google.zxing.qrcode.decoder.Version;
/* loaded from: classes2.dex */
final class DataBlock {
    private final byte[] codewords;
    private final int numDataCodewords;

    private DataBlock(int i2, byte[] bArr) {
        this.numDataCodewords = i2;
        this.codewords = bArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static DataBlock[] getDataBlocks(byte[] bArr, Version version, ErrorCorrectionLevel errorCorrectionLevel) {
        if (bArr.length == version.getTotalCodewords()) {
            Version.ECBlocks eCBlocksForLevel = version.getECBlocksForLevel(errorCorrectionLevel);
            Version.ECB[] eCBlocks = eCBlocksForLevel.getECBlocks();
            int i2 = 0;
            for (Version.ECB ecb : eCBlocks) {
                i2 += ecb.getCount();
            }
            DataBlock[] dataBlockArr = new DataBlock[i2];
            int i4 = 0;
            for (Version.ECB ecb2 : eCBlocks) {
                int i5 = 0;
                while (i5 < ecb2.getCount()) {
                    int dataCodewords = ecb2.getDataCodewords();
                    dataBlockArr[i4] = new DataBlock(dataCodewords, new byte[eCBlocksForLevel.getECCodewordsPerBlock() + dataCodewords]);
                    i5++;
                    i4++;
                }
            }
            int length = dataBlockArr[0].codewords.length;
            int i6 = i2 - 1;
            while (i6 >= 0 && dataBlockArr[i6].codewords.length != length) {
                i6--;
            }
            int i7 = i6 + 1;
            int eCCodewordsPerBlock = length - eCBlocksForLevel.getECCodewordsPerBlock();
            int i8 = 0;
            for (int i9 = 0; i9 < eCCodewordsPerBlock; i9++) {
                int i10 = 0;
                while (i10 < i4) {
                    dataBlockArr[i10].codewords[i9] = bArr[i8];
                    i10++;
                    i8++;
                }
            }
            int i11 = i7;
            while (i11 < i4) {
                dataBlockArr[i11].codewords[eCCodewordsPerBlock] = bArr[i8];
                i11++;
                i8++;
            }
            int length2 = dataBlockArr[0].codewords.length;
            while (eCCodewordsPerBlock < length2) {
                int i12 = 0;
                while (i12 < i4) {
                    dataBlockArr[i12].codewords[i12 < i7 ? eCCodewordsPerBlock : eCCodewordsPerBlock + 1] = bArr[i8];
                    i12++;
                    i8++;
                }
                eCCodewordsPerBlock++;
            }
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
