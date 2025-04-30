package com.google.zxing.datamatrix.decoder;

import com.google.zxing.ChecksumException;
import com.google.zxing.FormatException;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.common.DecoderResult;
import com.google.zxing.common.reedsolomon.GenericGF;
import com.google.zxing.common.reedsolomon.ReedSolomonDecoder;
import com.google.zxing.common.reedsolomon.ReedSolomonException;
/* loaded from: classes2.dex */
public final class Decoder {
    private final ReedSolomonDecoder rsDecoder = new ReedSolomonDecoder(GenericGF.DATA_MATRIX_FIELD_256);

    private void correctErrors(byte[] bArr, int i2) throws ChecksumException {
        int length = bArr.length;
        int[] iArr = new int[length];
        for (int i4 = 0; i4 < length; i4++) {
            iArr[i4] = bArr[i4] & 255;
        }
        try {
            this.rsDecoder.decode(iArr, bArr.length - i2);
            for (int i5 = 0; i5 < i2; i5++) {
                bArr[i5] = (byte) iArr[i5];
            }
        } catch (ReedSolomonException unused) {
            throw ChecksumException.getChecksumInstance();
        }
    }

    public DecoderResult decode(boolean[][] zArr) throws FormatException, ChecksumException {
        int length = zArr.length;
        BitMatrix bitMatrix = new BitMatrix(length);
        for (int i2 = 0; i2 < length; i2++) {
            for (int i4 = 0; i4 < length; i4++) {
                if (zArr[i2][i4]) {
                    bitMatrix.set(i4, i2);
                }
            }
        }
        return decode(bitMatrix);
    }

    public DecoderResult decode(BitMatrix bitMatrix) throws FormatException, ChecksumException {
        BitMatrixParser bitMatrixParser = new BitMatrixParser(bitMatrix);
        DataBlock[] dataBlocks = DataBlock.getDataBlocks(bitMatrixParser.readCodewords(), bitMatrixParser.getVersion());
        int length = dataBlocks.length;
        int i2 = 0;
        for (DataBlock dataBlock : dataBlocks) {
            i2 += dataBlock.getNumDataCodewords();
        }
        byte[] bArr = new byte[i2];
        for (int i4 = 0; i4 < length; i4++) {
            DataBlock dataBlock2 = dataBlocks[i4];
            byte[] codewords = dataBlock2.getCodewords();
            int numDataCodewords = dataBlock2.getNumDataCodewords();
            correctErrors(codewords, numDataCodewords);
            for (int i5 = 0; i5 < numDataCodewords; i5++) {
                bArr[(i5 * length) + i4] = codewords[i5];
            }
        }
        return DecodedBitStreamParser.decode(bArr);
    }
}
