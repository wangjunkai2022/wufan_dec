package com.google.zxing.oned;

import com.facebook.common.statfs.StatFsHelper;
import com.facebook.imageutils.e;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.ChecksumException;
import com.google.zxing.DecodeHintType;
import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.Result;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitArray;
import com.papa.controller.component.bluetooth.spp.c;
import com.xinzhu.overmind.utils.j;
import java.util.Map;
/* loaded from: classes2.dex */
public final class Code39Reader extends OneDReader {
    private static final int ASTERISK_ENCODING;
    static final int[] CHARACTER_ENCODINGS;
    private final boolean extendedMode;
    private final boolean usingCheckDigit;
    static final String ALPHABET_STRING = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. *$/+%";
    private static final char[] ALPHABET = ALPHABET_STRING.toCharArray();

    static {
        int[] iArr = {52, 289, 97, 352, 49, 304, 112, 37, 292, 100, 265, 73, 328, 25, 280, 88, 13, 268, 76, 28, 259, 67, 322, 19, e.f13387d, 82, 7, 262, 70, 22, c.f54672l, 193, j.f64736b, 145, StatFsHelper.f11741h, 208, 133, 388, 196, 148, 168, 162, 138, 42};
        CHARACTER_ENCODINGS = iArr;
        ASTERISK_ENCODING = iArr[39];
    }

    public Code39Reader() {
        this.usingCheckDigit = false;
        this.extendedMode = false;
    }

    private static String decodeExtended(CharSequence charSequence) throws FormatException {
        int i2;
        char c4;
        int length = charSequence.length();
        StringBuilder sb = new StringBuilder(length);
        int i4 = 0;
        while (i4 < length) {
            char charAt = charSequence.charAt(i4);
            if (charAt != '+' && charAt != '$' && charAt != '%' && charAt != '/') {
                sb.append(charAt);
            } else {
                i4++;
                char charAt2 = charSequence.charAt(i4);
                if (charAt != '$') {
                    if (charAt != '%') {
                        if (charAt != '+') {
                            if (charAt != '/') {
                                c4 = 0;
                            } else if (charAt2 >= 'A' && charAt2 <= 'O') {
                                i2 = charAt2 - ' ';
                            } else if (charAt2 != 'Z') {
                                throw FormatException.getFormatInstance();
                            } else {
                                c4 = ':';
                            }
                            sb.append(c4);
                        } else if (charAt2 < 'A' || charAt2 > 'Z') {
                            throw FormatException.getFormatInstance();
                        } else {
                            i2 = charAt2 + ' ';
                        }
                    } else if (charAt2 >= 'A' && charAt2 <= 'E') {
                        i2 = charAt2 - '&';
                    } else if (charAt2 < 'F' || charAt2 > 'W') {
                        throw FormatException.getFormatInstance();
                    } else {
                        i2 = charAt2 - 11;
                    }
                } else if (charAt2 < 'A' || charAt2 > 'Z') {
                    throw FormatException.getFormatInstance();
                } else {
                    i2 = charAt2 - '@';
                }
                c4 = (char) i2;
                sb.append(c4);
            }
            i4++;
        }
        return sb.toString();
    }

    private static int[] findAsteriskPattern(BitArray bitArray, int[] iArr) throws NotFoundException {
        int size = bitArray.getSize();
        int nextSet = bitArray.getNextSet(0);
        int length = iArr.length;
        int i2 = nextSet;
        boolean z3 = false;
        int i4 = 0;
        while (nextSet < size) {
            if (bitArray.get(nextSet) ^ z3) {
                iArr[i4] = iArr[i4] + 1;
            } else {
                int i5 = length - 1;
                if (i4 != i5) {
                    i4++;
                } else if (toNarrowWidePattern(iArr) == ASTERISK_ENCODING && bitArray.isRange(Math.max(0, i2 - ((nextSet - i2) >> 1)), i2, false)) {
                    return new int[]{i2, nextSet};
                } else {
                    i2 += iArr[0] + iArr[1];
                    int i6 = length - 2;
                    System.arraycopy(iArr, 2, iArr, 0, i6);
                    iArr[i6] = 0;
                    iArr[i5] = 0;
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

    private static int toNarrowWidePattern(int[] iArr) {
        int length = iArr.length;
        int i2 = 0;
        while (true) {
            int i4 = Integer.MAX_VALUE;
            for (int i5 : iArr) {
                if (i5 < i4 && i5 > i2) {
                    i4 = i5;
                }
            }
            int i6 = 0;
            int i7 = 0;
            int i8 = 0;
            for (int i9 = 0; i9 < length; i9++) {
                int i10 = iArr[i9];
                if (iArr[i9] > i4) {
                    i7 |= 1 << ((length - 1) - i9);
                    i6++;
                    i8 += i10;
                }
            }
            if (i6 == 3) {
                for (int i11 = 0; i11 < length && i6 > 0; i11++) {
                    int i12 = iArr[i11];
                    if (iArr[i11] > i4) {
                        i6--;
                        if ((i12 << 1) >= i8) {
                            return -1;
                        }
                    }
                }
                return i7;
            } else if (i6 <= 3) {
                return -1;
            } else {
                i2 = i4;
            }
        }
    }

    @Override // com.google.zxing.oned.OneDReader
    public Result decodeRow(int i2, BitArray bitArray, Map<DecodeHintType, ?> map) throws NotFoundException, ChecksumException, FormatException {
        int[] findAsteriskPattern;
        String sb;
        int[] iArr = new int[9];
        int nextSet = bitArray.getNextSet(findAsteriskPattern(bitArray, iArr)[1]);
        int size = bitArray.getSize();
        StringBuilder sb2 = new StringBuilder(20);
        while (true) {
            OneDReader.recordPattern(bitArray, nextSet, iArr);
            int narrowWidePattern = toNarrowWidePattern(iArr);
            if (narrowWidePattern >= 0) {
                char patternToChar = patternToChar(narrowWidePattern);
                sb2.append(patternToChar);
                int i4 = nextSet;
                for (int i5 = 0; i5 < 9; i5++) {
                    i4 += iArr[i5];
                }
                int nextSet2 = bitArray.getNextSet(i4);
                if (patternToChar == '*') {
                    sb2.setLength(sb2.length() - 1);
                    int i6 = 0;
                    for (int i7 = 0; i7 < 9; i7++) {
                        i6 += iArr[i7];
                    }
                    int i8 = (nextSet2 - nextSet) - i6;
                    if (nextSet2 != size && (i8 >> 1) < i6) {
                        throw NotFoundException.getNotFoundInstance();
                    }
                    if (this.usingCheckDigit) {
                        int length = sb2.length() - 1;
                        int i9 = 0;
                        for (int i10 = 0; i10 < length; i10++) {
                            i9 += ALPHABET_STRING.indexOf(sb2.charAt(i10));
                        }
                        if (sb2.charAt(length) == ALPHABET[i9 % 43]) {
                            sb2.setLength(length);
                        } else {
                            throw ChecksumException.getChecksumInstance();
                        }
                    }
                    if (sb2.length() != 0) {
                        if (this.extendedMode) {
                            sb = decodeExtended(sb2);
                        } else {
                            sb = sb2.toString();
                        }
                        float f4 = i2;
                        return new Result(sb, null, new ResultPoint[]{new ResultPoint((findAsteriskPattern[1] + findAsteriskPattern[0]) / 2.0f, f4), new ResultPoint((nextSet2 + nextSet) / 2.0f, f4)}, BarcodeFormat.CODE_39);
                    }
                    throw NotFoundException.getNotFoundInstance();
                }
                nextSet = nextSet2;
            } else {
                throw NotFoundException.getNotFoundInstance();
            }
        }
    }

    public Code39Reader(boolean z3) {
        this.usingCheckDigit = z3;
        this.extendedMode = false;
    }

    public Code39Reader(boolean z3, boolean z4) {
        this.usingCheckDigit = z3;
        this.extendedMode = z4;
    }
}
