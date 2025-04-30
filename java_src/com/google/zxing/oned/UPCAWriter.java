package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.Writer;
import com.google.zxing.WriterException;
import com.google.zxing.common.BitMatrix;
import java.util.Map;
/* loaded from: classes2.dex */
public class UPCAWriter implements Writer {
    private final EAN13Writer subWriter = new EAN13Writer();

    private static String preencode(String str) {
        int length = str.length();
        if (length == 11) {
            int i2 = 0;
            for (int i4 = 0; i4 < 11; i4++) {
                i2 += (str.charAt(i4) - '0') * (i4 % 2 == 0 ? 3 : 1);
            }
            str = str + ((1000 - i2) % 10);
        } else if (length != 12) {
            throw new IllegalArgumentException("Requested contents should be 11 or 12 digits long, but got " + str.length());
        }
        return '0' + str;
    }

    @Override // com.google.zxing.Writer
    public BitMatrix encode(String str, BarcodeFormat barcodeFormat, int i2, int i4) throws WriterException {
        return encode(str, barcodeFormat, i2, i4, null);
    }

    @Override // com.google.zxing.Writer
    public BitMatrix encode(String str, BarcodeFormat barcodeFormat, int i2, int i4, Map<EncodeHintType, ?> map) throws WriterException {
        if (barcodeFormat == BarcodeFormat.UPC_A) {
            return this.subWriter.encode(preencode(str), BarcodeFormat.EAN_13, i2, i4, map);
        }
        throw new IllegalArgumentException("Can only encode UPC-A, but got " + barcodeFormat);
    }
}
