package com.google.zxing.oned;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.facebook.imageutils.e;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.ChecksumException;
import com.google.zxing.DecodeHintType;
import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.Result;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitArray;
import java.util.Map;
/* loaded from: classes2.dex */
public final class Code93Reader extends OneDReader {
    private static final int ASTERISK_ENCODING;
    private static final int[] CHARACTER_ENCODINGS;
    private static final String ALPHABET_STRING = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*";
    private static final char[] ALPHABET = ALPHABET_STRING.toCharArray();

    static {
        int[] iArr = {276, 328, 324, 322, 296, 292, 290, 336, e.f13387d, 266, TypedValues.CycleType.TYPE_WAVE_OFFSET, TypedValues.CycleType.TYPE_EASING, TTAdConstant.DEEPLINK_FALL_BACK_CODE, TTAdConstant.SDK_NOT_SUPPORT_LIVE_MATE_CODE, 402, 394, 360, 356, 354, 308, 282, 344, 332, 326, 300, 278, 436, 434, 428, TypedValues.CycleType.TYPE_CUSTOM_WAVE_SHAPE, TTAdConstant.DOWNLOAD_APP_INFO_CODE, TTAdConstant.IMAGE_LIST_SIZE_CODE, 364, 358, 310, 314, 302, 468, 466, 458, 366, 374, 430, 294, 474, 470, 306, 350};
        CHARACTER_ENCODINGS = iArr;
        ASTERISK_ENCODING = iArr[47];
    }

    private static void checkChecksums(CharSequence charSequence) throws ChecksumException {
        int length = charSequence.length();
        checkOneChecksum(charSequence, length - 2, 20);
        checkOneChecksum(charSequence, length - 1, 15);
    }

    private static void checkOneChecksum(CharSequence charSequence, int i2, int i4) throws ChecksumException {
        int i5 = 0;
        int i6 = 1;
        for (int i7 = i2 - 1; i7 >= 0; i7--) {
            i5 += ALPHABET_STRING.indexOf(charSequence.charAt(i7)) * i6;
            i6++;
            if (i6 > i4) {
                i6 = 1;
            }
        }
        if (charSequence.charAt(i2) != ALPHABET[i5 % 47]) {
            throw ChecksumException.getChecksumInstance();
        }
    }

    private static String decodeExtended(CharSequence charSequence) throws FormatException {
        int i2;
        char c4;
        int length = charSequence.length();
        StringBuilder sb = new StringBuilder(length);
        int i4 = 0;
        while (i4 < length) {
            char charAt = charSequence.charAt(i4);
            if (charAt >= 'a' && charAt <= 'd') {
                i4++;
                char charAt2 = charSequence.charAt(i4);
                switch (charAt) {
                    case 'a':
                        if (charAt2 >= 'A' && charAt2 <= 'Z') {
                            i2 = charAt2 - '@';
                            c4 = (char) i2;
                            break;
                        } else {
                            throw FormatException.getFormatInstance();
                        }
                        break;
                    case 'b':
                        if (charAt2 >= 'A' && charAt2 <= 'E') {
                            i2 = charAt2 - '&';
                        } else if (charAt2 < 'F' || charAt2 > 'W') {
                            throw FormatException.getFormatInstance();
                        } else {
                            i2 = charAt2 - 11;
                        }
                        c4 = (char) i2;
                        break;
                    case 'c':
                        if (charAt2 >= 'A' && charAt2 <= 'O') {
                            i2 = charAt2 - ' ';
                            c4 = (char) i2;
                            break;
                        } else if (charAt2 == 'Z') {
                            c4 = ':';
                            break;
                        } else {
                            throw FormatException.getFormatInstance();
                        }
                        break;
                    case 'd':
                        if (charAt2 >= 'A' && charAt2 <= 'Z') {
                            i2 = charAt2 + ' ';
                            c4 = (char) i2;
                            break;
                        } else {
                            throw FormatException.getFormatInstance();
                        }
                    default:
                        c4 = 0;
                        break;
                }
                sb.append(c4);
            } else {
                sb.append(charAt);
            }
            i4++;
        }
        return sb.toString();
    }

    private static int[] findAsteriskPattern(BitArray bitArray) throws NotFoundException {
        int size = bitArray.getSize();
        int nextSet = bitArray.getNextSet(0);
        int[] iArr = new int[6];
        int i2 = nextSet;
        boolean z3 = false;
        int i4 = 0;
        while (nextSet < size) {
            if (bitArray.get(nextSet) ^ z3) {
                iArr[i4] = iArr[i4] + 1;
            } else {
                if (i4 != 5) {
                    i4++;
                } else if (toPattern(iArr) == ASTERISK_ENCODING) {
                    return new int[]{i2, nextSet};
                } else {
                    i2 += iArr[0] + iArr[1];
                    System.arraycopy(iArr, 2, iArr, 0, 4);
                    iArr[4] = 0;
                    iArr[5] = 0;
                    i4--;
                }
                iArr[i4] = 1;
                z3 = !z3;
            }
            nextSet++;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    private static char patternToChar(int i2) throws NotFoundException {
        int i4 = 0;
        while (true) {
            int[] iArr = CHARACTER_ENCODINGS;
            if (i4 < iArr.length) {
                if (iArr[i4] == i2) {
                    return ALPHABET[i4];
                }
                i4++;
            } else {
                throw NotFoundException.getNotFoundInstance();
            }
        }
    }

    private static int toPattern(int[] iArr) {
        int length = iArr.length;
        int i2 = 0;
        for (int i4 : iArr) {
            i2 += i4;
        }
        int i5 = 0;
        for (int i6 = 0; i6 < length; i6++) {
            int i7 = ((iArr[i6] << 8) * 9) / i2;
            int i8 = i7 >> 8;
            if ((i7 & 255) > 127) {
                i8++;
            }
            if (i8 < 1 || i8 > 4) {
                return -1;
            }
            if ((i6 & 1) == 0) {
                for (int i9 = 0; i9 < i8; i9++) {
                    i5 = (i5 << 1) | 1;
                }
            } else {
                i5 <<= i8;
            }
        }
        return i5;
    }

    @Override // com.google.zxing.oned.OneDReader
    public Result decodeRow(int i2, BitArray bitArray, Map<DecodeHintType, ?> map) throws NotFoundException, ChecksumException, FormatException {
        int[] findAsteriskPattern;
        int nextSet = bitArray.getNextSet(findAsteriskPattern(bitArray)[1]);
        int size = bitArray.getSize();
        StringBuilder sb = new StringBuilder(20);
        int[] iArr = new int[6];
        while (true) {
            OneDReader.recordPattern(bitArray, nextSet, iArr);
            int pattern = toPattern(iArr);
            if (pattern >= 0) {
                char patternToChar = patternToChar(pattern);
                sb.append(patternToChar);
                int i4 = nextSet;
                for (int i5 = 0; i5 < 6; i5++) {
                    i4 += iArr[i5];
                }
                int nextSet2 = bitArray.getNextSet(i4);
                if (patternToChar == '*') {
                    sb.deleteCharAt(sb.length() - 1);
                    if (nextSet2 != size && bitArray.get(nextSet2)) {
                        if (sb.length() >= 2) {
                            checkChecksums(sb);
                            sb.setLength(sb.length() - 2);
                            float f4 = i2;
                            return new Result(decodeExtended(sb), null, new ResultPoint[]{new ResultPoint((findAsteriskPattern[1] + findAsteriskPattern[0]) / 2.0f, f4), new ResultPoint((nextSet2 + nextSet) / 2.0f, f4)}, BarcodeFormat.CODE_93);
                        }
                        throw NotFoundException.getNotFoundInstance();
                    }
                    throw NotFoundException.getNotFoundInstance();
                }
                nextSet = nextSet2;
            } else {
                throw NotFoundException.getNotFoundInstance();
            }
        }
    }
}
