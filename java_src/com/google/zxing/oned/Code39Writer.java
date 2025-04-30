package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.WriterException;
import com.google.zxing.common.BitMatrix;
import java.util.Map;
/* loaded from: classes2.dex */
public final class Code39Writer extends UPCEANWriter {
    private static void toIntArray(int i2, int[] iArr) {
        for (int i4 = 0; i4 < 9; i4++) {
            int i5 = 1;
            if (((1 << i4) & i2) != 0) {
                i5 = 2;
            }
            iArr[i4] = i5;
        }
    }

    @Override // com.google.zxing.oned.OneDimensionalCodeWriter, com.google.zxing.Writer
    public BitMatrix encode(String str, BarcodeFormat barcodeFormat, int i2, int i4, Map<EncodeHintType, ?> map) throws WriterException {
        if (barcodeFormat == BarcodeFormat.CODE_39) {
            return super.encode(str, barcodeFormat, i2, i4, map);
        }
        throw new IllegalArgumentException("Can only encode CODE_39, but got " + barcodeFormat);
    }

    @Override // com.google.zxing.oned.OneDimensionalCodeWriter
    public byte[] encode(String str) {
        int length = str.length();
        if (length <= 80) {
            int[] iArr = new int[9];
            int i2 = length + 25;
            for (int i4 = 0; i4 < length; i4++) {
                toIntArray(Code39Reader.CHARACTER_ENCODINGS["0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. *$/+%".indexOf(str.charAt(i4))], iArr);
                for (int i5 = 0; i5 < 9; i5++) {
                    i2 += iArr[i5];
                }
            }
            byte[] bArr = new byte[i2];
            toIntArray(Code39Reader.CHARACTER_ENCODINGS[39], iArr);
            int appendPattern = OneDimensionalCodeWriter.appendPattern(bArr, 0, iArr, 1);
            int[] iArr2 = {1};
            int appendPattern2 = appendPattern + OneDimensionalCodeWriter.appendPattern(bArr, appendPattern, iArr2, 0);
            for (int i6 = length - 1; i6 >= 0; i6--) {
                toIntArray(Code39Reader.CHARACTER_ENCODINGS["0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. *$/+%".indexOf(str.charAt(i6))], iArr);
                int appendPattern3 = appendPattern2 + OneDimensionalCodeWriter.appendPattern(bArr, appendPattern2, iArr, 1);
                appendPattern2 = appendPattern3 + OneDimensionalCodeWriter.appendPattern(bArr, appendPattern3, iArr2, 0);
            }
            toIntArray(Code39Reader.CHARACTER_ENCODINGS[39], iArr);
            OneDimensionalCodeWriter.appendPattern(bArr, appendPattern2, iArr, 1);
            return bArr;
        }
        throw new IllegalArgumentException("Requested contents should be less than 80 digits long, but got " + length);
    }
}
