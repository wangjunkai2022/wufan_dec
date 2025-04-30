package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.WriterException;
import com.google.zxing.common.BitMatrix;
import java.util.Map;
/* loaded from: classes2.dex */
public final class ITFWriter extends UPCEANWriter {
    @Override // com.google.zxing.oned.OneDimensionalCodeWriter, com.google.zxing.Writer
    public BitMatrix encode(String str, BarcodeFormat barcodeFormat, int i2, int i4, Map<EncodeHintType, ?> map) throws WriterException {
        if (barcodeFormat == BarcodeFormat.ITF) {
            return super.encode(str, barcodeFormat, i2, i4, map);
        }
        throw new IllegalArgumentException("Can only encode ITF, but got " + barcodeFormat);
    }

    @Override // com.google.zxing.oned.OneDimensionalCodeWriter
    public byte[] encode(String str) {
        int length = str.length();
        if (length % 2 == 0) {
            if (length <= 80) {
                byte[] bArr = new byte[(length * 9) + 9];
                int appendPattern = OneDimensionalCodeWriter.appendPattern(bArr, 0, new int[]{1, 1, 1, 1}, 1);
                for (int i2 = 0; i2 < length; i2 += 2) {
                    int digit = Character.digit(str.charAt(i2), 10);
                    int digit2 = Character.digit(str.charAt(i2 + 1), 10);
                    int[] iArr = new int[18];
                    for (int i4 = 0; i4 < 5; i4++) {
                        int i5 = i4 << 1;
                        int[][] iArr2 = ITFReader.PATTERNS;
                        iArr[i5] = iArr2[digit][i4];
                        iArr[i5 + 1] = iArr2[digit2][i4];
                    }
                    appendPattern += OneDimensionalCodeWriter.appendPattern(bArr, appendPattern, iArr, 1);
                }
                OneDimensionalCodeWriter.appendPattern(bArr, appendPattern, new int[]{3, 1, 1}, 1);
                return bArr;
            }
            throw new IllegalArgumentException("Requested contents should be less than 80 digits long, but got " + length);
        }
        throw new IllegalArgumentException("The lenght of the input should be even");
    }
}
