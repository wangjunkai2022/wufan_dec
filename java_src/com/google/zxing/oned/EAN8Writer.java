package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.WriterException;
import com.google.zxing.common.BitMatrix;
import java.util.Map;
/* loaded from: classes2.dex */
public final class EAN8Writer extends UPCEANWriter {
    private static final int CODE_WIDTH = 67;

    @Override // com.google.zxing.oned.OneDimensionalCodeWriter, com.google.zxing.Writer
    public BitMatrix encode(String str, BarcodeFormat barcodeFormat, int i2, int i4, Map<EncodeHintType, ?> map) throws WriterException {
        if (barcodeFormat == BarcodeFormat.EAN_8) {
            return super.encode(str, barcodeFormat, i2, i4, map);
        }
        throw new IllegalArgumentException("Can only encode EAN_8, but got " + barcodeFormat);
    }

    @Override // com.google.zxing.oned.OneDimensionalCodeWriter
    public byte[] encode(String str) {
        if (str.length() == 8) {
            byte[] bArr = new byte[67];
            int appendPattern = OneDimensionalCodeWriter.appendPattern(bArr, 0, UPCEANReader.START_END_PATTERN, 1) + 0;
            int i2 = 0;
            while (i2 <= 3) {
                int i4 = i2 + 1;
                appendPattern += OneDimensionalCodeWriter.appendPattern(bArr, appendPattern, UPCEANReader.L_PATTERNS[Integer.parseInt(str.substring(i2, i4))], 0);
                i2 = i4;
            }
            int appendPattern2 = appendPattern + OneDimensionalCodeWriter.appendPattern(bArr, appendPattern, UPCEANReader.MIDDLE_PATTERN, 0);
            int i5 = 4;
            while (i5 <= 7) {
                int i6 = i5 + 1;
                appendPattern2 += OneDimensionalCodeWriter.appendPattern(bArr, appendPattern2, UPCEANReader.L_PATTERNS[Integer.parseInt(str.substring(i5, i6))], 1);
                i5 = i6;
            }
            OneDimensionalCodeWriter.appendPattern(bArr, appendPattern2, UPCEANReader.START_END_PATTERN, 1);
            return bArr;
        }
        throw new IllegalArgumentException("Requested contents should be 8 digits long, but got " + str.length());
    }
}
