package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.WriterException;
import com.google.zxing.common.BitMatrix;
import java.util.ArrayList;
import java.util.Map;
import tv.danmaku.ijk.media.player.IjkMediaMeta;
/* loaded from: classes2.dex */
public final class Code128Writer extends UPCEANWriter {
    private static final int CODE_CODE_B = 100;
    private static final int CODE_CODE_C = 99;
    private static final int CODE_FNC_1 = 102;
    private static final int CODE_FNC_2 = 97;
    private static final int CODE_FNC_3 = 96;
    private static final int CODE_FNC_4_B = 100;
    private static final int CODE_START_B = 104;
    private static final int CODE_START_C = 105;
    private static final int CODE_STOP = 106;
    private static final char ESCAPE_FNC_1 = 241;
    private static final char ESCAPE_FNC_2 = 242;
    private static final char ESCAPE_FNC_3 = 243;
    private static final char ESCAPE_FNC_4 = 244;

    private static boolean isDigits(CharSequence charSequence, int i2, int i4) {
        int i5 = i4 + i2;
        int length = charSequence.length();
        while (i2 < i5 && i2 < length) {
            char charAt = charSequence.charAt(i2);
            if (charAt < '0' || charAt > '9') {
                if (charAt != 241) {
                    return false;
                }
                i5++;
            }
            i2++;
        }
        return i5 <= length;
    }

    @Override // com.google.zxing.oned.OneDimensionalCodeWriter, com.google.zxing.Writer
    public BitMatrix encode(String str, BarcodeFormat barcodeFormat, int i2, int i4, Map<EncodeHintType, ?> map) throws WriterException {
        if (barcodeFormat == BarcodeFormat.CODE_128) {
            return super.encode(str, barcodeFormat, i2, i4, map);
        }
        throw new IllegalArgumentException("Can only encode CODE_128, but got " + barcodeFormat);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.zxing.oned.OneDimensionalCodeWriter
    public byte[] encode(String str) {
        int length = str.length();
        if (length >= 1 && length <= 80) {
            int i2 = 0;
            for (int i4 = 0; i4 < length; i4++) {
                char charAt = str.charAt(i4);
                if (charAt < ' ' || charAt > '~') {
                    switch (charAt) {
                        case 241:
                        case 242:
                        case 243:
                        case IjkMediaMeta.FF_PROFILE_H264_HIGH_444_PREDICTIVE /* 244 */:
                            break;
                        default:
                            throw new IllegalArgumentException("Bad character in input: " + charAt);
                    }
                }
            }
            ArrayList<int[]> arrayList = new ArrayList();
            int i5 = 0;
            int i6 = 0;
            int i7 = 0;
            int i8 = 1;
            while (i5 < length) {
                int i9 = 100;
                int i10 = isDigits(str, i5, i7 == 99 ? 2 : 4) ? 99 : 100;
                if (i10 == i7) {
                    if (i7 != 100) {
                        switch (str.charAt(i5)) {
                            case 241:
                                i9 = 102;
                                break;
                            case 242:
                                i9 = 97;
                                break;
                            case 243:
                                i9 = 96;
                                break;
                            case IjkMediaMeta.FF_PROFILE_H264_HIGH_444_PREDICTIVE /* 244 */:
                                break;
                            default:
                                int i11 = i5 + 2;
                                i9 = Integer.parseInt(str.substring(i5, i11));
                                i5 = i11;
                                break;
                        }
                    } else {
                        i9 = str.charAt(i5) - ' ';
                    }
                    i5++;
                } else {
                    i9 = i7 == 0 ? i10 == 100 ? 104 : 105 : i10;
                    i7 = i10;
                }
                arrayList.add(Code128Reader.CODE_PATTERNS[i9]);
                i6 += i9 * i8;
                if (i5 != 0) {
                    i8++;
                }
            }
            int[][] iArr = Code128Reader.CODE_PATTERNS;
            arrayList.add(iArr[i6 % 103]);
            arrayList.add(iArr[106]);
            int i12 = 0;
            for (int[] iArr2 : arrayList) {
                for (int i13 : iArr2) {
                    i12 += i13;
                }
            }
            byte[] bArr = new byte[i12];
            for (int[] iArr3 : arrayList) {
                i2 += OneDimensionalCodeWriter.appendPattern(bArr, i2, iArr3, 1);
            }
            return bArr;
        }
        throw new IllegalArgumentException("Contents length should be between 1 and 80 characters, but got " + length);
    }
}
