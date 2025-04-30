package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.DecodeHintType;
import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.Result;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitArray;
import java.util.Map;
/* loaded from: classes2.dex */
public final class ITFReader extends OneDReader {
    private static final int MAX_AVG_VARIANCE = 107;
    private static final int MAX_INDIVIDUAL_VARIANCE = 204;
    private static final int N = 1;
    private static final int W = 3;
    private int narrowLineWidth = -1;
    private static final int[] DEFAULT_ALLOWED_LENGTHS = {44, 24, 20, 18, 16, 14, 12, 10, 8, 6};
    private static final int[] START_PATTERN = {1, 1, 1, 1};
    private static final int[] END_PATTERN_REVERSED = {1, 1, 3};
    static final int[][] PATTERNS = {new int[]{1, 1, 3, 3, 1}, new int[]{3, 1, 1, 1, 3}, new int[]{1, 3, 1, 1, 3}, new int[]{3, 3, 1, 1, 1}, new int[]{1, 1, 3, 1, 3}, new int[]{3, 1, 3, 1, 1}, new int[]{1, 3, 3, 1, 1}, new int[]{1, 1, 1, 3, 3}, new int[]{3, 1, 1, 3, 1}, new int[]{1, 3, 1, 3, 1}};

    private static int decodeDigit(int[] iArr) throws NotFoundException {
        int length = PATTERNS.length;
        int i2 = 107;
        int i4 = -1;
        for (int i5 = 0; i5 < length; i5++) {
            int patternMatchVariance = OneDReader.patternMatchVariance(iArr, PATTERNS[i5], 204);
            if (patternMatchVariance < i2) {
                i4 = i5;
                i2 = patternMatchVariance;
            }
        }
        if (i4 >= 0) {
            return i4;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    private static void decodeMiddle(BitArray bitArray, int i2, int i4, StringBuilder sb) throws NotFoundException {
        int[] iArr = new int[10];
        int[] iArr2 = new int[5];
        int[] iArr3 = new int[5];
        while (i2 < i4) {
            OneDReader.recordPattern(bitArray, i2, iArr);
            for (int i5 = 0; i5 < 5; i5++) {
                int i6 = i5 << 1;
                iArr2[i5] = iArr[i6];
                iArr3[i5] = iArr[i6 + 1];
            }
            sb.append((char) (decodeDigit(iArr2) + 48));
            sb.append((char) (decodeDigit(iArr3) + 48));
            for (int i7 = 0; i7 < 10; i7++) {
                i2 += iArr[i7];
            }
        }
    }

    private static int[] findGuardPattern(BitArray bitArray, int i2, int[] iArr) throws NotFoundException {
        int length = iArr.length;
        int[] iArr2 = new int[length];
        int size = bitArray.getSize();
        int i4 = i2;
        boolean z3 = false;
        int i5 = 0;
        while (i2 < size) {
            if (bitArray.get(i2) ^ z3) {
                iArr2[i5] = iArr2[i5] + 1;
            } else {
                int i6 = length - 1;
                if (i5 != i6) {
                    i5++;
                } else if (OneDReader.patternMatchVariance(iArr2, iArr, 204) < 107) {
                    return new int[]{i4, i2};
                } else {
                    i4 += iArr2[0] + iArr2[1];
                    int i7 = length - 2;
                    System.arraycopy(iArr2, 2, iArr2, 0, i7);
                    iArr2[i7] = 0;
                    iArr2[i6] = 0;
                    i5--;
                }
                iArr2[i5] = 1;
                z3 = !z3;
            }
            i2++;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    private static int skipWhiteSpace(BitArray bitArray) throws NotFoundException {
        int size = bitArray.getSize();
        int nextSet = bitArray.getNextSet(0);
        if (nextSet != size) {
            return nextSet;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0018, code lost:
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void validateQuietZone(com.google.zxing.common.BitArray r3, int r4) throws com.google.zxing.NotFoundException {
        /*
            r2 = this;
            int r0 = r2.narrowLineWidth
            int r0 = r0 * 10
            int r4 = r4 + (-1)
        L6:
            if (r0 <= 0) goto L16
            if (r4 < 0) goto L16
            boolean r1 = r3.get(r4)
            if (r1 == 0) goto L11
            goto L16
        L11:
            int r0 = r0 + (-1)
            int r4 = r4 + (-1)
            goto L6
        L16:
            if (r0 != 0) goto L19
            return
        L19:
            com.google.zxing.NotFoundException r3 = com.google.zxing.NotFoundException.getNotFoundInstance()
            goto L1f
        L1e:
            throw r3
        L1f:
            goto L1e
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.oned.ITFReader.validateQuietZone(com.google.zxing.common.BitArray, int):void");
    }

    int[] decodeEnd(BitArray bitArray) throws NotFoundException {
        bitArray.reverse();
        try {
            int[] findGuardPattern = findGuardPattern(bitArray, skipWhiteSpace(bitArray), END_PATTERN_REVERSED);
            validateQuietZone(bitArray, findGuardPattern[0]);
            int i2 = findGuardPattern[0];
            findGuardPattern[0] = bitArray.getSize() - findGuardPattern[1];
            findGuardPattern[1] = bitArray.getSize() - i2;
            return findGuardPattern;
        } finally {
            bitArray.reverse();
        }
    }

    @Override // com.google.zxing.oned.OneDReader
    public Result decodeRow(int i2, BitArray bitArray, Map<DecodeHintType, ?> map) throws FormatException, NotFoundException {
        boolean z3;
        int[] decodeStart = decodeStart(bitArray);
        int[] decodeEnd = decodeEnd(bitArray);
        StringBuilder sb = new StringBuilder(20);
        decodeMiddle(bitArray, decodeStart[1], decodeEnd[0], sb);
        String sb2 = sb.toString();
        int[] iArr = map != null ? (int[]) map.get(DecodeHintType.ALLOWED_LENGTHS) : null;
        if (iArr == null) {
            iArr = DEFAULT_ALLOWED_LENGTHS;
        }
        int length = sb2.length();
        int length2 = iArr.length;
        int i4 = 0;
        while (true) {
            if (i4 >= length2) {
                z3 = false;
                break;
            } else if (length == iArr[i4]) {
                z3 = true;
                break;
            } else {
                i4++;
            }
        }
        if (z3) {
            float f4 = i2;
            return new Result(sb2, null, new ResultPoint[]{new ResultPoint(decodeStart[1], f4), new ResultPoint(decodeEnd[0], f4)}, BarcodeFormat.ITF);
        }
        throw FormatException.getFormatInstance();
    }

    int[] decodeStart(BitArray bitArray) throws NotFoundException {
        int[] findGuardPattern = findGuardPattern(bitArray, skipWhiteSpace(bitArray), START_PATTERN);
        this.narrowLineWidth = (findGuardPattern[1] - findGuardPattern[0]) >> 2;
        validateQuietZone(bitArray, findGuardPattern[0]);
        return findGuardPattern;
    }
}
