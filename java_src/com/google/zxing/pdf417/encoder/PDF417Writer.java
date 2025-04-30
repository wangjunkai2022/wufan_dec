package com.google.zxing.pdf417.encoder;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.Writer;
import com.google.zxing.WriterException;
import com.google.zxing.common.BitMatrix;
import java.lang.reflect.Array;
import java.util.Map;
/* loaded from: classes2.dex */
public final class PDF417Writer implements Writer {
    private static BitMatrix bitMatrixFromEncoder(PDF417 pdf417, String str, int i2, int i4) throws WriterException {
        boolean z3;
        pdf417.generateBarcodeLogic(str, 2);
        byte[][] scaledMatrix = pdf417.getBarcodeMatrix().getScaledMatrix(2, 8);
        if ((i4 > i2) ^ (scaledMatrix[0].length < scaledMatrix.length)) {
            scaledMatrix = rotateArray(scaledMatrix);
            z3 = true;
        } else {
            z3 = false;
        }
        int length = i2 / scaledMatrix[0].length;
        int length2 = i4 / scaledMatrix.length;
        if (length >= length2) {
            length = length2;
        }
        if (length > 1) {
            byte[][] scaledMatrix2 = pdf417.getBarcodeMatrix().getScaledMatrix(length * 2, length * 4 * 2);
            if (z3) {
                scaledMatrix2 = rotateArray(scaledMatrix2);
            }
            return bitMatrixFrombitArray(scaledMatrix2);
        }
        return bitMatrixFrombitArray(scaledMatrix);
    }

    private static BitMatrix bitMatrixFrombitArray(byte[][] bArr) {
        BitMatrix bitMatrix = new BitMatrix(bArr.length + 60, bArr[0].length + 60);
        bitMatrix.clear();
        for (int i2 = 0; i2 < bArr.length; i2++) {
            for (int i4 = 0; i4 < bArr[0].length; i4++) {
                if (bArr[i2][i4] == 1) {
                    bitMatrix.set(i2 + 30, i4 + 30);
                }
            }
        }
        return bitMatrix;
    }

    private static PDF417 initializeEncoder(BarcodeFormat barcodeFormat, boolean z3) {
        if (barcodeFormat == BarcodeFormat.PDF_417) {
            PDF417 pdf417 = new PDF417();
            pdf417.setCompact(z3);
            return pdf417;
        }
        throw new IllegalArgumentException("Can only encode PDF_417, but got " + barcodeFormat);
    }

    private static byte[][] rotateArray(byte[][] bArr) {
        byte[][] bArr2 = (byte[][]) Array.newInstance(byte.class, bArr[0].length, bArr.length);
        for (int i2 = 0; i2 < bArr.length; i2++) {
            int length = (bArr.length - i2) - 1;
            for (int i4 = 0; i4 < bArr[0].length; i4++) {
                bArr2[i4][length] = bArr[i2][i4];
            }
        }
        return bArr2;
    }

    @Override // com.google.zxing.Writer
    public BitMatrix encode(String str, BarcodeFormat barcodeFormat, int i2, int i4, Map<EncodeHintType, ?> map) throws WriterException {
        return encode(str, barcodeFormat, i2, i4);
    }

    @Override // com.google.zxing.Writer
    public BitMatrix encode(String str, BarcodeFormat barcodeFormat, int i2, int i4) throws WriterException {
        return bitMatrixFromEncoder(initializeEncoder(barcodeFormat, false), str, i2, i4);
    }

    public BitMatrix encode(String str, BarcodeFormat barcodeFormat, boolean z3, int i2, int i4, int i5, int i6, int i7, int i8, Compaction compaction) throws WriterException {
        PDF417 initializeEncoder = initializeEncoder(barcodeFormat, z3);
        initializeEncoder.setDimensions(i6, i5, i8, i7);
        initializeEncoder.setCompaction(compaction);
        return bitMatrixFromEncoder(initializeEncoder, str, i2, i4);
    }
}
