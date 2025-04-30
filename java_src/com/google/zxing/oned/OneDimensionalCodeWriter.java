package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.Writer;
import com.google.zxing.WriterException;
import com.google.zxing.common.BitMatrix;
import java.util.Map;
/* loaded from: classes2.dex */
public abstract class OneDimensionalCodeWriter implements Writer {
    private final int sidesMargin;

    /* JADX INFO: Access modifiers changed from: protected */
    public OneDimensionalCodeWriter(int i2) {
        this.sidesMargin = i2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static int appendPattern(byte[] bArr, int i2, int[] iArr, int i4) {
        if (i4 != 0 && i4 != 1) {
            throw new IllegalArgumentException("startColor must be either 0 or 1, but got: " + i4);
        }
        byte b4 = (byte) i4;
        int i5 = 0;
        for (int i6 : iArr) {
            for (int i7 = 0; i7 < i6; i7++) {
                bArr[i2] = b4;
                i2++;
                i5++;
            }
            b4 = (byte) (b4 ^ 1);
        }
        return i5;
    }

    private BitMatrix renderResult(byte[] bArr, int i2, int i4) {
        int length = bArr.length;
        int i5 = this.sidesMargin + length;
        int max = Math.max(i2, i5);
        int max2 = Math.max(1, i4);
        int i6 = max / i5;
        int i7 = (max - (length * i6)) / 2;
        BitMatrix bitMatrix = new BitMatrix(max, max2);
        int i8 = 0;
        while (i8 < length) {
            if (bArr[i8] == 1) {
                bitMatrix.setRegion(i7, 0, i6, max2);
            }
            i8++;
            i7 += i6;
        }
        return bitMatrix;
    }

    @Override // com.google.zxing.Writer
    public BitMatrix encode(String str, BarcodeFormat barcodeFormat, int i2, int i4) throws WriterException {
        return encode(str, barcodeFormat, i2, i4, null);
    }

    public abstract byte[] encode(String str);

    @Override // com.google.zxing.Writer
    public BitMatrix encode(String str, BarcodeFormat barcodeFormat, int i2, int i4, Map<EncodeHintType, ?> map) throws WriterException {
        if (str.length() != 0) {
            if (i2 >= 0 && i4 >= 0) {
                return renderResult(encode(str), i2, i4);
            }
            throw new IllegalArgumentException("Negative size is not allowed. Input: " + i2 + 'x' + i4);
        }
        throw new IllegalArgumentException("Found empty contents");
    }
}
