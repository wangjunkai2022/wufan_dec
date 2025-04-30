package com.google.zxing.pdf417.decoder;

import com.google.zxing.FormatException;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.common.DecoderResult;
/* loaded from: classes2.dex */
public final class Decoder {
    private static final int MAX_EC_CODEWORDS = 512;
    private static final int MAX_ERRORS = 3;

    private static int correctErrors(int[] iArr, int[] iArr2, int i2) throws FormatException {
        if (iArr2.length <= (i2 / 2) + 3 && i2 >= 0 && i2 <= 512) {
            if (iArr2.length <= 3) {
                return 0;
            }
            throw FormatException.getFormatInstance();
        }
        throw FormatException.getFormatInstance();
    }

    private static void verifyCodewordCount(int[] iArr, int i2) throws FormatException {
        if (iArr.length >= 4) {
            int i4 = iArr[0];
            if (i4 > iArr.length) {
                throw FormatException.getFormatInstance();
            }
            if (i4 == 0) {
                if (i2 < iArr.length) {
                    iArr[0] = iArr.length - i2;
                    return;
                }
                throw FormatException.getFormatInstance();
            }
            return;
        }
        throw FormatException.getFormatInstance();
    }

    public DecoderResult decode(boolean[][] zArr) throws FormatException {
        int length = zArr.length;
        BitMatrix bitMatrix = new BitMatrix(length);
        for (int i2 = 0; i2 < length; i2++) {
            for (int i4 = 0; i4 < length; i4++) {
                if (zArr[i4][i2]) {
                    bitMatrix.set(i4, i2);
                }
            }
        }
        return decode(bitMatrix);
    }

    public DecoderResult decode(BitMatrix bitMatrix) throws FormatException {
        BitMatrixParser bitMatrixParser = new BitMatrixParser(bitMatrix);
        int[] readCodewords = bitMatrixParser.readCodewords();
        if (readCodewords.length != 0) {
            int eCLevel = 1 << (bitMatrixParser.getECLevel() + 1);
            correctErrors(readCodewords, bitMatrixParser.getErasures(), eCLevel);
            verifyCodewordCount(readCodewords, eCLevel);
            return DecodedBitStreamParser.decode(readCodewords);
        }
        throw FormatException.getFormatInstance();
    }
}
