package com.google.zxing.oned.rss;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.DecodeHintType;
import com.google.zxing.NotFoundException;
import com.google.zxing.Result;
import com.google.zxing.ResultPoint;
import com.google.zxing.ResultPointCallback;
import com.google.zxing.common.BitArray;
import com.google.zxing.oned.OneDReader;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public final class RSS14Reader extends AbstractRSSReader {
    private final List<Pair> possibleLeftPairs = new ArrayList();
    private final List<Pair> possibleRightPairs = new ArrayList();
    private static final int[] OUTSIDE_EVEN_TOTAL_SUBSET = {1, 10, 34, 70, 126};
    private static final int[] INSIDE_ODD_TOTAL_SUBSET = {4, 20, 48, 81};
    private static final int[] OUTSIDE_GSUM = {0, 161, 961, 2015, 2715};
    private static final int[] INSIDE_GSUM = {0, 336, 1036, 1516};
    private static final int[] OUTSIDE_ODD_WIDEST = {8, 6, 4, 3, 1};
    private static final int[] INSIDE_ODD_WIDEST = {2, 4, 6, 8};
    private static final int[][] FINDER_PATTERNS = {new int[]{3, 8, 2, 1}, new int[]{3, 5, 5, 1}, new int[]{3, 3, 7, 1}, new int[]{3, 1, 9, 1}, new int[]{2, 7, 4, 1}, new int[]{2, 5, 6, 1}, new int[]{2, 3, 8, 1}, new int[]{1, 5, 7, 1}, new int[]{1, 3, 9, 1}};

    private static void addOrTally(Collection<Pair> collection, Pair pair) {
        if (pair == null) {
            return;
        }
        boolean z3 = false;
        Iterator<Pair> it2 = collection.iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            Pair next = it2.next();
            if (next.getValue() == pair.getValue()) {
                next.incrementCount();
                z3 = true;
                break;
            }
        }
        if (z3) {
            return;
        }
        collection.add(pair);
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0036, code lost:
        if (r1 < 4) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x004d, code lost:
        if (r1 < 4) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x004f, code lost:
        r10 = false;
        r3 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0052, code lost:
        r10 = false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void adjustOddEvenCounts(boolean r10, int r11) throws com.google.zxing.NotFoundException {
        /*
            Method dump skipped, instructions count: 231
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.oned.rss.RSS14Reader.adjustOddEvenCounts(boolean, int):void");
    }

    private static boolean checkChecksum(Pair pair, Pair pair2) {
        pair.getFinderPattern().getValue();
        pair2.getFinderPattern().getValue();
        int checksumPortion = (pair.getChecksumPortion() + (pair2.getChecksumPortion() * 16)) % 79;
        int value = (pair.getFinderPattern().getValue() * 9) + pair2.getFinderPattern().getValue();
        if (value > 72) {
            value--;
        }
        if (value > 8) {
            value--;
        }
        return checksumPortion == value;
    }

    private static Result constructResult(Pair pair, Pair pair2) {
        String valueOf = String.valueOf((pair.getValue() * 4537077) + pair2.getValue());
        StringBuilder sb = new StringBuilder(14);
        for (int length = 13 - valueOf.length(); length > 0; length--) {
            sb.append('0');
        }
        sb.append(valueOf);
        int i2 = 0;
        for (int i4 = 0; i4 < 13; i4++) {
            int charAt = sb.charAt(i4) - '0';
            if ((i4 & 1) == 0) {
                charAt *= 3;
            }
            i2 += charAt;
        }
        int i5 = 10 - (i2 % 10);
        if (i5 == 10) {
            i5 = 0;
        }
        sb.append(i5);
        ResultPoint[] resultPoints = pair.getFinderPattern().getResultPoints();
        ResultPoint[] resultPoints2 = pair2.getFinderPattern().getResultPoints();
        return new Result(String.valueOf(sb.toString()), null, new ResultPoint[]{resultPoints[0], resultPoints[1], resultPoints2[0], resultPoints2[1]}, BarcodeFormat.RSS_14);
    }

    private DataCharacter decodeDataCharacter(BitArray bitArray, FinderPattern finderPattern, boolean z3) throws NotFoundException {
        int[] dataCharacterCounters = getDataCharacterCounters();
        dataCharacterCounters[0] = 0;
        dataCharacterCounters[1] = 0;
        dataCharacterCounters[2] = 0;
        dataCharacterCounters[3] = 0;
        dataCharacterCounters[4] = 0;
        dataCharacterCounters[5] = 0;
        dataCharacterCounters[6] = 0;
        dataCharacterCounters[7] = 0;
        if (z3) {
            OneDReader.recordPatternInReverse(bitArray, finderPattern.getStartEnd()[0], dataCharacterCounters);
        } else {
            OneDReader.recordPattern(bitArray, finderPattern.getStartEnd()[1] + 1, dataCharacterCounters);
            int i2 = 0;
            for (int length = dataCharacterCounters.length - 1; i2 < length; length--) {
                int i4 = dataCharacterCounters[i2];
                dataCharacterCounters[i2] = dataCharacterCounters[length];
                dataCharacterCounters[length] = i4;
                i2++;
            }
        }
        int i5 = z3 ? 16 : 15;
        float count = AbstractRSSReader.count(dataCharacterCounters) / i5;
        int[] oddCounts = getOddCounts();
        int[] evenCounts = getEvenCounts();
        float[] oddRoundingErrors = getOddRoundingErrors();
        float[] evenRoundingErrors = getEvenRoundingErrors();
        for (int i6 = 0; i6 < dataCharacterCounters.length; i6++) {
            float f4 = dataCharacterCounters[i6] / count;
            int i7 = (int) (0.5f + f4);
            if (i7 < 1) {
                i7 = 1;
            } else if (i7 > 8) {
                i7 = 8;
            }
            int i8 = i6 >> 1;
            if ((i6 & 1) == 0) {
                oddCounts[i8] = i7;
                oddRoundingErrors[i8] = f4 - i7;
            } else {
                evenCounts[i8] = i7;
                evenRoundingErrors[i8] = f4 - i7;
            }
        }
        adjustOddEvenCounts(z3, i5);
        int i9 = 0;
        int i10 = 0;
        for (int length2 = oddCounts.length - 1; length2 >= 0; length2--) {
            i9 = (i9 * 9) + oddCounts[length2];
            i10 += oddCounts[length2];
        }
        int i11 = 0;
        int i12 = 0;
        for (int length3 = evenCounts.length - 1; length3 >= 0; length3--) {
            i11 = (i11 * 9) + evenCounts[length3];
            i12 += evenCounts[length3];
        }
        int i13 = i9 + (i11 * 3);
        if (!z3) {
            if ((i12 & 1) == 0 && i12 <= 10 && i12 >= 4) {
                int i14 = (10 - i12) / 2;
                int i15 = INSIDE_ODD_WIDEST[i14];
                return new DataCharacter((RSSUtils.getRSSvalue(evenCounts, 9 - i15, false) * INSIDE_ODD_TOTAL_SUBSET[i14]) + RSSUtils.getRSSvalue(oddCounts, i15, true) + INSIDE_GSUM[i14], i13);
            }
            throw NotFoundException.getNotFoundInstance();
        } else if ((i10 & 1) == 0 && i10 <= 12 && i10 >= 4) {
            int i16 = (12 - i10) / 2;
            int i17 = OUTSIDE_ODD_WIDEST[i16];
            return new DataCharacter((RSSUtils.getRSSvalue(oddCounts, i17, false) * OUTSIDE_EVEN_TOTAL_SUBSET[i16]) + RSSUtils.getRSSvalue(evenCounts, 9 - i17, true) + OUTSIDE_GSUM[i16], i13);
        } else {
            throw NotFoundException.getNotFoundInstance();
        }
    }

    private Pair decodePair(BitArray bitArray, boolean z3, int i2, Map<DecodeHintType, ?> map) {
        try {
            int[] findFinderPattern = findFinderPattern(bitArray, 0, z3);
            FinderPattern parseFoundFinderPattern = parseFoundFinderPattern(bitArray, i2, z3, findFinderPattern);
            ResultPointCallback resultPointCallback = map == null ? null : (ResultPointCallback) map.get(DecodeHintType.NEED_RESULT_POINT_CALLBACK);
            if (resultPointCallback != null) {
                float f4 = (findFinderPattern[0] + findFinderPattern[1]) / 2.0f;
                if (z3) {
                    f4 = (bitArray.getSize() - 1) - f4;
                }
                resultPointCallback.foundPossibleResultPoint(new ResultPoint(f4, i2));
            }
            DataCharacter decodeDataCharacter = decodeDataCharacter(bitArray, parseFoundFinderPattern, true);
            DataCharacter decodeDataCharacter2 = decodeDataCharacter(bitArray, parseFoundFinderPattern, false);
            return new Pair((decodeDataCharacter.getValue() * 1597) + decodeDataCharacter2.getValue(), decodeDataCharacter.getChecksumPortion() + (decodeDataCharacter2.getChecksumPortion() * 4), parseFoundFinderPattern);
        } catch (NotFoundException unused) {
            return null;
        }
    }

    private int[] findFinderPattern(BitArray bitArray, int i2, boolean z3) throws NotFoundException {
        int[] decodeFinderCounters = getDecodeFinderCounters();
        decodeFinderCounters[0] = 0;
        decodeFinderCounters[1] = 0;
        decodeFinderCounters[2] = 0;
        decodeFinderCounters[3] = 0;
        int size = bitArray.getSize();
        boolean z4 = false;
        while (i2 < size) {
            z4 = !bitArray.get(i2);
            if (z3 == z4) {
                break;
            }
            i2++;
        }
        int i4 = i2;
        int i5 = 0;
        while (i2 < size) {
            if (bitArray.get(i2) ^ z4) {
                decodeFinderCounters[i5] = decodeFinderCounters[i5] + 1;
            } else {
                if (i5 != 3) {
                    i5++;
                } else if (AbstractRSSReader.isFinderPattern(decodeFinderCounters)) {
                    return new int[]{i4, i2};
                } else {
                    i4 += decodeFinderCounters[0] + decodeFinderCounters[1];
                    decodeFinderCounters[0] = decodeFinderCounters[2];
                    decodeFinderCounters[1] = decodeFinderCounters[3];
                    decodeFinderCounters[2] = 0;
                    decodeFinderCounters[3] = 0;
                    i5--;
                }
                decodeFinderCounters[i5] = 1;
                z4 = !z4;
            }
            i2++;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    private FinderPattern parseFoundFinderPattern(BitArray bitArray, int i2, boolean z3, int[] iArr) throws NotFoundException {
        int i4;
        int i5;
        boolean z4 = bitArray.get(iArr[0]);
        int i6 = iArr[0] - 1;
        while (i6 >= 0 && (bitArray.get(i6) ^ z4)) {
            i6--;
        }
        int i7 = i6 + 1;
        int[] decodeFinderCounters = getDecodeFinderCounters();
        System.arraycopy(decodeFinderCounters, 0, decodeFinderCounters, 1, decodeFinderCounters.length - 1);
        decodeFinderCounters[0] = iArr[0] - i7;
        int parseFinderValue = AbstractRSSReader.parseFinderValue(decodeFinderCounters, FINDER_PATTERNS);
        int i8 = iArr[1];
        if (z3) {
            i4 = (bitArray.getSize() - 1) - i8;
            i5 = (bitArray.getSize() - 1) - i7;
        } else {
            i4 = i8;
            i5 = i7;
        }
        return new FinderPattern(parseFinderValue, new int[]{i7, iArr[1]}, i5, i4, i2);
    }

    @Override // com.google.zxing.oned.OneDReader
    public Result decodeRow(int i2, BitArray bitArray, Map<DecodeHintType, ?> map) throws NotFoundException {
        addOrTally(this.possibleLeftPairs, decodePair(bitArray, false, i2, map));
        bitArray.reverse();
        addOrTally(this.possibleRightPairs, decodePair(bitArray, true, i2, map));
        bitArray.reverse();
        for (Pair pair : this.possibleLeftPairs) {
            if (pair.getCount() > 1) {
                for (Pair pair2 : this.possibleRightPairs) {
                    if (pair2.getCount() > 1 && checkChecksum(pair, pair2)) {
                        return constructResult(pair, pair2);
                    }
                }
                continue;
            }
        }
        throw NotFoundException.getNotFoundInstance();
    }

    @Override // com.google.zxing.oned.OneDReader, com.google.zxing.Reader
    public void reset() {
        this.possibleLeftPairs.clear();
        this.possibleRightPairs.clear();
    }
}
