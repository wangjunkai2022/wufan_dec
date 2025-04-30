package com.google.zxing.common;

import com.google.zxing.DecodeHintType;
import java.util.Map;
/* loaded from: classes2.dex */
public final class StringUtils {
    private static final boolean ASSUME_SHIFT_JIS;
    private static final String EUC_JP = "EUC_JP";
    public static final String GB2312 = "GB2312";
    private static final String ISO88591 = "ISO8859_1";
    private static final String PLATFORM_DEFAULT_ENCODING;
    public static final String SHIFT_JIS = "SJIS";
    private static final String UTF8 = "UTF8";

    static {
        String property = System.getProperty("file.encoding");
        PLATFORM_DEFAULT_ENCODING = property;
        ASSUME_SHIFT_JIS = SHIFT_JIS.equalsIgnoreCase(property) || EUC_JP.equalsIgnoreCase(property);
    }

    private StringUtils() {
    }

    public static String guessEncoding(byte[] bArr, Map<DecodeHintType, ?> map) {
        int i2;
        int i4;
        String str;
        if (map == null || (str = (String) map.get(DecodeHintType.CHARACTER_SET)) == null) {
            if (bArr.length > 3 && bArr[0] == -17 && bArr[1] == -69 && bArr[2] == -65) {
                return "UTF8";
            }
            int length = bArr.length;
            boolean z3 = true;
            boolean z4 = true;
            boolean z5 = true;
            int i5 = 0;
            boolean z6 = false;
            int i6 = 0;
            int i7 = 0;
            boolean z7 = false;
            boolean z8 = false;
            for (int i8 = 0; i8 < length && (z3 || z4 || z5); i8++) {
                int i9 = bArr[i8] & 255;
                if (i9 < 128 || i9 > 191) {
                    if (i5 > 0) {
                        z5 = false;
                    }
                    if (i9 >= 192 && i9 <= 253) {
                        for (int i10 = i9; (i10 & 64) != 0; i10 <<= 1) {
                            i5++;
                        }
                        z6 = true;
                    }
                } else if (i5 > 0) {
                    i5--;
                }
                if ((i9 == 194 || i9 == 195) && i8 < length - 1 && (i2 = bArr[i8 + 1] & 255) <= 191 && ((i9 == 194 && i2 >= 160) || (i9 == 195 && i2 >= 128))) {
                    z7 = true;
                }
                if (i9 >= 127 && i9 <= 159) {
                    z3 = false;
                }
                if (i9 >= 161 && i9 <= 223 && !z8) {
                    i7++;
                }
                if (!z8 && ((i9 >= 240 && i9 <= 255) || i9 == 128 || i9 == 160)) {
                    z4 = false;
                }
                if (((i9 < 129 || i9 > 159) && (i9 < 224 || i9 > 239)) || z8) {
                    z8 = false;
                } else {
                    if (i8 < bArr.length - 1 && (i4 = bArr[i8 + 1] & 255) >= 64 && i4 <= 252) {
                        i6++;
                    } else {
                        z4 = false;
                    }
                    z8 = true;
                }
            }
            return (z4 && ASSUME_SHIFT_JIS) ? SHIFT_JIS : ((i5 > 0 ? false : z5) && z6) ? "UTF8" : (!z4 || (i6 < 3 && i7 * 20 <= length)) ? (z7 || !z3) ? PLATFORM_DEFAULT_ENCODING : GB2312 : SHIFT_JIS;
        }
        return str;
    }
}
