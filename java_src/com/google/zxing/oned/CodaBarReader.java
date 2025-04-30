package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.DecodeHintType;
import com.google.zxing.NotFoundException;
import com.google.zxing.Result;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitArray;
import java.util.Map;
/* loaded from: classes2.dex */
public final class CodaBarReader extends OneDReader {
    private static final int minCharacterLength = 6;
    private static final String ALPHABET_STRING = "0123456789-$:/.+ABCDTN";
    static final char[] ALPHABET = ALPHABET_STRING.toCharArray();
    static final int[] CHARACTER_ENCODINGS = {3, 6, 9, 96, 18, 66, 33, 36, 48, 72, 12, 24, 69, 81, 84, 21, 26, 41, 11, 14, 26, 41};
    private static final char[] STARTEND_ENCODING = {'E', '*', 'A', 'B', 'C', 'D', 'T', 'N'};

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean arrayContains(char[] cArr, char c4) {
        if (cArr != null) {
            for (char c5 : cArr) {
                if (c5 == c4) {
                    return true;
                }
            }
        }
        return false;
    }

    private static int[] findAsteriskPattern(BitArray bitArray) throws NotFoundException {
        int size = bitArray.getSize();
        int nextSet = bitArray.getNextSet(0);
        int[] iArr = new int[7];
        int i2 = nextSet;
        boolean z3 = false;
        int i4 = 0;
        while (nextSet < size) {
            if (bitArray.get(nextSet) ^ z3) {
                iArr[i4] = iArr[i4] + 1;
            } else {
                if (i4 == 6) {
                    try {
                        if (arrayContains(STARTEND_ENCODING, toNarrowWidePattern(iArr)) && bitArray.isRange(Math.max(0, i2 - ((nextSet - i2) / 2)), i2, false)) {
                            return new int[]{i2, nextSet};
                        }
                    } catch (IllegalArgumentException unused) {
                    }
                    i2 += iArr[0] + iArr[1];
                    System.arraycopy(iArr, 2, iArr, 0, 5);
                    iArr[5] = 0;
                    iArr[6] = 0;
                    i4--;
                } else {
                    i4++;
                }
                iArr[i4] = 1;
                z3 = !z3;
            }
            nextSet++;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    private static char toNarrowWidePattern(int[] iArr) {
        int length = iArr.length;
        int i2 = Integer.MAX_VALUE;
        int i4 = 0;
        for (int i5 = 0; i5 < length; i5++) {
            if (iArr[i5] < i2) {
                i2 = iArr[i5];
            }
            if (iArr[i5] > i4) {
                i4 = iArr[i5];
            }
        }
        do {
            int i6 = 0;
            int i7 = 0;
            for (int i8 = 0; i8 < length; i8++) {
                if (iArr[i8] > i4) {
                    i7 |= 1 << ((length - 1) - i8);
                    i6++;
                }
            }
            if (i6 == 2 || i6 == 3) {
                int i9 = 0;
                while (true) {
                    int[] iArr2 = CHARACTER_ENCODINGS;
                    if (i9 >= iArr2.length) {
                        break;
                    } else if (iArr2[i9] == i7) {
                        return ALPHABET[i9];
                    } else {
                        i9++;
                    }
                }
            }
            i4--;
        } while (i4 > i2);
        return '!';
    }

    @Override // com.google.zxing.oned.OneDReader
    public Result decodeRow(int i2, BitArray bitArray, Map<DecodeHintType, ?> map) throws NotFoundException {
        int i4;
        int[] findAsteriskPattern = findAsteriskPattern(bitArray);
        findAsteriskPattern[1] = 0;
        int nextSet = bitArray.getNextSet(findAsteriskPattern[1]);
        int size = bitArray.getSize();
        StringBuilder sb = new StringBuilder();
        int[] iArr = new int[7];
        while (true) {
            for (int i5 = 0; i5 < 7; i5++) {
                iArr[i5] = 0;
            }
            OneDReader.recordPattern(bitArray, nextSet, iArr);
            char narrowWidePattern = toNarrowWidePattern(iArr);
            if (narrowWidePattern != '!') {
                sb.append(narrowWidePattern);
                int i6 = nextSet;
                for (int i7 = 0; i7 < 7; i7++) {
                    i6 += iArr[i7];
                }
                int nextSet2 = bitArray.getNextSet(i6);
                if (nextSet2 >= size) {
                    int i8 = 0;
                    for (int i9 = 0; i9 < 7; i9++) {
                        i8 += iArr[i9];
                    }
                    int i10 = (nextSet2 - nextSet) - i8;
                    if (nextSet2 != size && i10 / 2 < i8) {
                        throw NotFoundException.getNotFoundInstance();
                    }
                    if (sb.length() >= 2) {
                        char charAt = sb.charAt(0);
                        if (arrayContains(STARTEND_ENCODING, charAt)) {
                            int i11 = 1;
                            while (true) {
                                if (i11 >= sb.length()) {
                                    break;
                                }
                                if (sb.charAt(i11) == charAt && (i4 = i11 + 1) != sb.length()) {
                                    sb.delete(i4, sb.length() - 1);
                                    break;
                                }
                                i11++;
                            }
                            if (sb.length() > 6) {
                                sb.deleteCharAt(sb.length() - 1);
                                sb.deleteCharAt(0);
                                float f4 = i2;
                                return new Result(sb.toString(), null, new ResultPoint[]{new ResultPoint((findAsteriskPattern[1] + findAsteriskPattern[0]) / 2.0f, f4), new ResultPoint((nextSet2 + nextSet) / 2.0f, f4)}, BarcodeFormat.CODABAR);
                            }
                            throw NotFoundException.getNotFoundInstance();
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
