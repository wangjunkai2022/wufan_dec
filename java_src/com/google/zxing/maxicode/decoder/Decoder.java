package com.google.zxing.maxicode.decoder;

import com.google.zxing.ChecksumException;
import com.google.zxing.DecodeHintType;
import com.google.zxing.FormatException;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.common.DecoderResult;
import com.google.zxing.common.reedsolomon.GenericGF;
import com.google.zxing.common.reedsolomon.ReedSolomonDecoder;
import com.google.zxing.common.reedsolomon.ReedSolomonException;
import java.util.Map;
/* loaded from: classes2.dex */
public final class Decoder {
    private static final int ALL = 0;
    private static final int EVEN = 1;
    private static final int ODD = 2;
    private final ReedSolomonDecoder rsDecoder = new ReedSolomonDecoder(GenericGF.MAXICODE_FIELD_64);

    private void correctErrors(byte[] bArr, int i2, int i4, int i5, int i6) throws ChecksumException {
        int i7 = i4 + i5;
        int i8 = i6 == 0 ? 1 : 2;
        int[] iArr = new int[i7 / i8];
        for (int i9 = 0; i9 < i7; i9++) {
            if (i6 == 0 || i9 % 2 == i6 - 1) {
                iArr[i9 / i8] = bArr[i9 + i2] & 255;
            }
        }
        try {
            this.rsDecoder.decode(iArr, i5 / i8);
            for (int i10 = 0; i10 < i4; i10++) {
                if (i6 == 0 || i10 % 2 == i6 - 1) {
                    bArr[i10 + i2] = (byte) iArr[i10 / i8];
                }
            }
        } catch (ReedSolomonException unused) {
            throw ChecksumException.getChecksumInstance();
        }
    }

    public DecoderResult decode(BitMatrix bitMatrix) throws ChecksumException, FormatException {
        return decode(bitMatrix, null);
    }

    public DecoderResult decode(BitMatrix bitMatrix, Map<DecodeHintType, ?> map) throws FormatException, ChecksumException {
        byte[] bArr;
        byte[] readCodewords = new BitMatrixParser(bitMatrix).readCodewords();
        correctErrors(readCodewords, 0, 10, 10, 0);
        int i2 = readCodewords[0] & 15;
        if (i2 == 2 || i2 == 3 || i2 == 4) {
            correctErrors(readCodewords, 20, 84, 40, 1);
            correctErrors(readCodewords, 20, 84, 40, 2);
            bArr = new byte[94];
        } else if (i2 == 5) {
            correctErrors(readCodewords, 20, 68, 56, 1);
            correctErrors(readCodewords, 20, 68, 56, 2);
            bArr = new byte[78];
        } else {
            throw FormatException.getFormatInstance();
        }
        System.arraycopy(readCodewords, 0, bArr, 0, 10);
        System.arraycopy(readCodewords, 20, bArr, 10, bArr.length - 10);
        return DecodedBitStreamParser.decode(bArr, i2);
    }
}
