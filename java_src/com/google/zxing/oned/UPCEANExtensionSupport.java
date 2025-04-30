package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.NotFoundException;
import com.google.zxing.Result;
import com.google.zxing.ResultMetadataType;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitArray;
import external.org.apache.commons.lang3.d;
import java.util.EnumMap;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class UPCEANExtensionSupport {
    private final int[] decodeMiddleCounters = new int[4];
    private final StringBuilder decodeRowStringBuffer = new StringBuilder();
    private static final int[] EXTENSION_START_PATTERN = {1, 1, 2};
    private static final int[] CHECK_DIGIT_ENCODINGS = {24, 20, 18, 17, 12, 6, 3, 10, 9, 5};

    private static int determineCheckDigit(int i2) throws NotFoundException {
        for (int i4 = 0; i4 < 10; i4++) {
            if (i2 == CHECK_DIGIT_ENCODINGS[i4]) {
                return i4;
            }
        }
        throw NotFoundException.getNotFoundInstance();
    }

    private static int extensionChecksum(CharSequence charSequence) {
        int length = charSequence.length();
        int i2 = 0;
        for (int i4 = length - 2; i4 >= 0; i4 -= 2) {
            i2 += charSequence.charAt(i4) - '0';
        }
        int i5 = i2 * 3;
        for (int i6 = length - 1; i6 >= 0; i6 -= 2) {
            i5 += charSequence.charAt(i6) - '0';
        }
        return (i5 * 3) % 10;
    }

    private static Integer parseExtension2String(String str) {
        return Integer.valueOf(str);
    }

    private static String parseExtension5String(String str) {
        String valueOf;
        char charAt = str.charAt(0);
        String str2 = "";
        if (charAt == '0') {
            str2 = "£";
        } else if (charAt == '5') {
            str2 = "$";
        } else if (charAt == '9') {
            if ("90000".equals(str)) {
                return null;
            }
            if ("99991".equals(str)) {
                return "0.00";
            }
            if ("99990".equals(str)) {
                return "Used";
            }
        }
        int parseInt = Integer.parseInt(str.substring(1));
        String valueOf2 = String.valueOf(parseInt / 100);
        int i2 = parseInt % 100;
        if (i2 < 10) {
            valueOf = "0" + i2;
        } else {
            valueOf = String.valueOf(i2);
        }
        return str2 + valueOf2 + d.f65364a + valueOf;
    }

    private static Map<ResultMetadataType, Object> parseExtensionString(String str) {
        ResultMetadataType resultMetadataType;
        Object parseExtension2String;
        int length = str.length();
        if (length == 2) {
            resultMetadataType = ResultMetadataType.ISSUE_NUMBER;
            parseExtension2String = parseExtension2String(str);
        } else if (length != 5) {
            return null;
        } else {
            resultMetadataType = ResultMetadataType.SUGGESTED_PRICE;
            parseExtension2String = parseExtension5String(str);
        }
        if (parseExtension2String == null) {
            return null;
        }
        EnumMap enumMap = new EnumMap(ResultMetadataType.class);
        enumMap.put((EnumMap) resultMetadataType, (ResultMetadataType) parseExtension2String);
        return enumMap;
    }

    int decodeMiddle(BitArray bitArray, int[] iArr, StringBuilder sb) throws NotFoundException {
        int[] iArr2 = this.decodeMiddleCounters;
        iArr2[0] = 0;
        iArr2[1] = 0;
        iArr2[2] = 0;
        iArr2[3] = 0;
        int size = bitArray.getSize();
        int i2 = iArr[1];
        int i4 = 0;
        for (int i5 = 0; i5 < 5 && i2 < size; i5++) {
            int decodeDigit = UPCEANReader.decodeDigit(bitArray, iArr2, i2, UPCEANReader.L_AND_G_PATTERNS);
            sb.append((char) ((decodeDigit % 10) + 48));
            for (int i6 : iArr2) {
                i2 += i6;
            }
            if (decodeDigit >= 10) {
                i4 |= 1 << (4 - i5);
            }
            if (i5 != 4) {
                i2 = bitArray.getNextUnset(bitArray.getNextSet(i2));
            }
        }
        if (sb.length() == 5) {
            if (extensionChecksum(sb.toString()) == determineCheckDigit(i4)) {
                return i2;
            }
            throw NotFoundException.getNotFoundInstance();
        }
        throw NotFoundException.getNotFoundInstance();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Result decodeRow(int i2, BitArray bitArray, int i4) throws NotFoundException {
        int[] findGuardPattern = UPCEANReader.findGuardPattern(bitArray, i4, false, EXTENSION_START_PATTERN);
        StringBuilder sb = this.decodeRowStringBuffer;
        sb.setLength(0);
        int decodeMiddle = decodeMiddle(bitArray, findGuardPattern, sb);
        String sb2 = sb.toString();
        Map<ResultMetadataType, Object> parseExtensionString = parseExtensionString(sb2);
        float f4 = i2;
        Result result = new Result(sb2, null, new ResultPoint[]{new ResultPoint((findGuardPattern[0] + findGuardPattern[1]) / 2.0f, f4), new ResultPoint(decodeMiddle, f4)}, BarcodeFormat.UPC_EAN_EXTENSION);
        if (parseExtensionString != null) {
            result.putAllMetadata(parseExtensionString);
        }
        return result;
    }
}
