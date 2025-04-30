package com.google.zxing.oned.rss.expanded;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.DecodeHintType;
import com.google.zxing.NotFoundException;
import com.google.zxing.Result;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitArray;
import com.google.zxing.oned.OneDReader;
import com.google.zxing.oned.rss.AbstractRSSReader;
import com.google.zxing.oned.rss.DataCharacter;
import com.google.zxing.oned.rss.FinderPattern;
import com.google.zxing.oned.rss.RSSUtils;
import com.google.zxing.oned.rss.expanded.decoders.AbstractExpandedDecoder;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public final class RSSExpandedReader extends AbstractRSSReader {
    private static final int[][] FINDER_PATTERN_SEQUENCES;
    private static final int FINDER_PAT_A = 0;
    private static final int FINDER_PAT_B = 1;
    private static final int FINDER_PAT_C = 2;
    private static final int FINDER_PAT_D = 3;
    private static final int FINDER_PAT_E = 4;
    private static final int FINDER_PAT_F = 5;
    private static final int LONGEST_SEQUENCE_SIZE;
    private static final int MAX_PAIRS = 11;
    private static final int[] SYMBOL_WIDEST = {7, 5, 4, 3, 1};
    private static final int[] EVEN_TOTAL_SUBSET = {4, 20, 52, 104, 204};
    private static final int[] GSUM = {0, 348, 1388, 2948, 3988};
    private static final int[][] FINDER_PATTERNS = {new int[]{1, 8, 4, 1}, new int[]{3, 6, 4, 1}, new int[]{3, 4, 6, 1}, new int[]{3, 2, 8, 1}, new int[]{2, 6, 5, 1}, new int[]{2, 2, 9, 1}};
    private static final int[][] WEIGHTS = {new int[]{1, 3, 9, 27, 81, 32, 96, 77}, new int[]{20, 60, 180, 118, 143, 7, 21, 63}, new int[]{189, 145, 13, 39, 117, 140, 209, 205}, new int[]{193, 157, 49, 147, 19, 57, 171, 91}, new int[]{62, 186, 136, 197, 169, 85, 44, 132}, new int[]{185, 133, 188, 142, 4, 12, 36, 108}, new int[]{113, 128, 173, 97, 80, 29, 87, 50}, new int[]{150, 28, 84, 41, 123, 158, 52, 156}, new int[]{46, 138, 203, 187, 139, 206, 196, 166}, new int[]{76, 17, 51, 153, 37, 111, 122, 155}, new int[]{43, 129, 176, 106, 107, 110, 119, 146}, new int[]{16, 48, 144, 10, 30, 90, 59, 177}, new int[]{109, 116, 137, 200, 178, 112, 125, 164}, new int[]{70, 210, 208, 202, 184, 130, 179, 115}, new int[]{134, 191, 151, 31, 93, 68, 204, 190}, new int[]{148, 22, 66, 198, 172, 94, 71, 2}, new int[]{6, 18, 54, 162, 64, 192, 154, 40}, new int[]{120, 149, 25, 75, 14, 42, 126, 167}, new int[]{79, 26, 78, 23, 69, 207, 199, 175}, new int[]{103, 98, 83, 38, 114, 131, 182, 124}, new int[]{161, 61, 183, 127, 170, 88, 53, 159}, new int[]{55, 165, 73, 8, 24, 72, 5, 15}, new int[]{45, 135, 194, 160, 58, 174, 100, 89}};
    private final List<ExpandedPair> pairs = new ArrayList(11);
    private final int[] startEnd = new int[2];
    private final int[] currentSequence = new int[LONGEST_SEQUENCE_SIZE];

    static {
        int[][] iArr = {new int[]{0, 0}, new int[]{0, 1, 1}, new int[]{0, 2, 1, 3}, new int[]{0, 4, 1, 3, 2}, new int[]{0, 4, 1, 3, 3, 5}, new int[]{0, 4, 1, 3, 4, 5, 5}, new int[]{0, 0, 1, 1, 2, 2, 3, 3}, new int[]{0, 0, 1, 1, 2, 2, 3, 4, 4}, new int[]{0, 0, 1, 1, 2, 2, 3, 4, 5, 5}, new int[]{0, 0, 1, 1, 2, 3, 3, 4, 4, 5, 5}};
        FINDER_PATTERN_SEQUENCES = iArr;
        LONGEST_SEQUENCE_SIZE = iArr[iArr.length - 1].length;
    }

    private void adjustOddEvenCounts(int i2) throws NotFoundException {
        boolean z3;
        boolean z4;
        boolean z5;
        int count = AbstractRSSReader.count(getOddCounts());
        int count2 = AbstractRSSReader.count(getEvenCounts());
        int i4 = (count + count2) - i2;
        boolean z6 = true;
        boolean z7 = (count & 1) == 1;
        boolean z8 = (count2 & 1) == 0;
        if (count > 13) {
            z3 = false;
            z4 = true;
        } else {
            z3 = count < 4;
            z4 = false;
        }
        if (count2 > 13) {
            z5 = true;
        } else {
            r3 = count2 < 4;
            z5 = false;
        }
        if (i4 == 1) {
            if (z7) {
                if (z8) {
                    throw NotFoundException.getNotFoundInstance();
                }
                z6 = z3;
                z4 = true;
            } else if (!z8) {
                throw NotFoundException.getNotFoundInstance();
            } else {
                z6 = z3;
                z5 = true;
            }
        } else if (i4 == -1) {
            if (z7) {
                if (z8) {
                    throw NotFoundException.getNotFoundInstance();
                }
            } else if (!z8) {
                throw NotFoundException.getNotFoundInstance();
            } else {
                z6 = z3;
                r3 = true;
            }
        } else if (i4 != 0) {
            throw NotFoundException.getNotFoundInstance();
        } else {
            if (z7) {
                if (!z8) {
                    throw NotFoundException.getNotFoundInstance();
                }
                if (count >= count2) {
                    z6 = z3;
                    r3 = true;
                    z4 = true;
                }
                z5 = true;
            } else if (z8) {
                throw NotFoundException.getNotFoundInstance();
            } else {
                z6 = z3;
            }
        }
        if (z6) {
            if (!z4) {
                AbstractRSSReader.increment(getOddCounts(), getOddRoundingErrors());
            } else {
                throw NotFoundException.getNotFoundInstance();
            }
        }
        if (z4) {
            AbstractRSSReader.decrement(getOddCounts(), getOddRoundingErrors());
        }
        if (r3) {
            if (!z5) {
                AbstractRSSReader.increment(getEvenCounts(), getOddRoundingErrors());
            } else {
                throw NotFoundException.getNotFoundInstance();
            }
        }
        if (z5) {
            AbstractRSSReader.decrement(getEvenCounts(), getEvenRoundingErrors());
        }
    }

    private boolean checkChecksum() {
        ExpandedPair expandedPair = this.pairs.get(0);
        DataCharacter leftChar = expandedPair.getLeftChar();
        int checksumPortion = expandedPair.getRightChar().getChecksumPortion();
        int i2 = 2;
        for (int i4 = 1; i4 < this.pairs.size(); i4++) {
            ExpandedPair expandedPair2 = this.pairs.get(i4);
            checksumPortion += expandedPair2.getLeftChar().getChecksumPortion();
            i2++;
            DataCharacter rightChar = expandedPair2.getRightChar();
            if (rightChar != null) {
                checksumPortion += rightChar.getChecksumPortion();
                i2++;
            }
        }
        return ((i2 + (-4)) * 211) + (checksumPortion % 211) == leftChar.getValue();
    }

    private boolean checkPairSequence(List<ExpandedPair> list, FinderPattern finderPattern) throws NotFoundException {
        int[][] iArr;
        boolean z3;
        int size = list.size() + 1;
        if (size <= this.currentSequence.length) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.currentSequence[i2] = list.get(i2).getFinderPattern().getValue();
            }
            this.currentSequence[size - 1] = finderPattern.getValue();
            for (int[] iArr2 : FINDER_PATTERN_SEQUENCES) {
                if (iArr2.length >= size) {
                    int i4 = 0;
                    while (true) {
                        if (i4 >= size) {
                            z3 = true;
                            break;
                        } else if (this.currentSequence[i4] != iArr2[i4]) {
                            z3 = false;
                            break;
                        } else {
                            i4++;
                        }
                    }
                    if (z3) {
                        return size == iArr2.length;
                    }
                }
            }
            throw NotFoundException.getNotFoundInstance();
        }
        throw NotFoundException.getNotFoundInstance();
    }

    private static Result constructResult(List<ExpandedPair> list) throws NotFoundException {
        String parseInformation = AbstractExpandedDecoder.createDecoder(BitArrayBuilder.buildBitArray(list)).parseInformation();
        ResultPoint[] resultPoints = list.get(0).getFinderPattern().getResultPoints();
        ResultPoint[] resultPoints2 = list.get(list.size() - 1).getFinderPattern().getResultPoints();
        return new Result(parseInformation, null, new ResultPoint[]{resultPoints[0], resultPoints[1], resultPoints2[0], resultPoints2[1]}, BarcodeFormat.RSS_EXPANDED);
    }

    private void findNextPair(BitArray bitArray, List<ExpandedPair> list, int i2) throws NotFoundException {
        int[] decodeFinderCounters = getDecodeFinderCounters();
        decodeFinderCounters[0] = 0;
        decodeFinderCounters[1] = 0;
        decodeFinderCounters[2] = 0;
        decodeFinderCounters[3] = 0;
        int size = bitArray.getSize();
        if (i2 < 0) {
            i2 = list.isEmpty() ? 0 : list.get(list.size() - 1).getFinderPattern().getStartEnd()[1];
        }
        boolean z3 = list.size() % 2 != 0;
        boolean z4 = false;
        while (i2 < size) {
            z4 = !bitArray.get(i2);
            if (!z4) {
                break;
            }
            i2++;
        }
        boolean z5 = z4;
        int i4 = 0;
        int i5 = i2;
        while (i2 < size) {
            if (bitArray.get(i2) ^ z5) {
                decodeFinderCounters[i4] = decodeFinderCounters[i4] + 1;
            } else {
                if (i4 == 3) {
                    if (z3) {
                        reverseCounters(decodeFinderCounters);
                    }
                    if (AbstractRSSReader.isFinderPattern(decodeFinderCounters)) {
                        int[] iArr = this.startEnd;
                        iArr[0] = i5;
                        iArr[1] = i2;
                        return;
                    }
                    if (z3) {
                        reverseCounters(decodeFinderCounters);
                    }
                    i5 += decodeFinderCounters[0] + decodeFinderCounters[1];
                    decodeFinderCounters[0] = decodeFinderCounters[2];
                    decodeFinderCounters[1] = decodeFinderCounters[3];
                    decodeFinderCounters[2] = 0;
                    decodeFinderCounters[3] = 0;
                    i4--;
                } else {
                    i4++;
                }
                decodeFinderCounters[i4] = 1;
                z5 = !z5;
            }
            i2++;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    private static int getNextSecondBar(BitArray bitArray, int i2) {
        if (bitArray.get(i2)) {
            return bitArray.getNextSet(bitArray.getNextUnset(i2));
        }
        return bitArray.getNextUnset(bitArray.getNextSet(i2));
    }

    private static boolean isNotA1left(FinderPattern finderPattern, boolean z3, boolean z4) {
        return (finderPattern.getValue() == 0 && z3 && z4) ? false : true;
    }

    private FinderPattern parseFoundFinderPattern(BitArray bitArray, int i2, boolean z3) {
        int i4;
        int i5;
        int i6;
        if (z3) {
            int i7 = this.startEnd[0] - 1;
            while (i7 >= 0 && !bitArray.get(i7)) {
                i7--;
            }
            int i8 = i7 + 1;
            int[] iArr = this.startEnd;
            i6 = iArr[0] - i8;
            i4 = iArr[1];
            i5 = i8;
        } else {
            int[] iArr2 = this.startEnd;
            int i9 = iArr2[0];
            int nextUnset = bitArray.getNextUnset(iArr2[1] + 1);
            i4 = nextUnset;
            i5 = i9;
            i6 = nextUnset - this.startEnd[1];
        }
        int[] decodeFinderCounters = getDecodeFinderCounters();
        System.arraycopy(decodeFinderCounters, 0, decodeFinderCounters, 1, decodeFinderCounters.length - 1);
        decodeFinderCounters[0] = i6;
        try {
            return new FinderPattern(AbstractRSSReader.parseFinderValue(decodeFinderCounters, FINDER_PATTERNS), new int[]{i5, i4}, i5, i4, i2);
        } catch (NotFoundException unused) {
            return null;
        }
    }

    private static void reverseCounters(int[] iArr) {
        int length = iArr.length;
        for (int i2 = 0; i2 < length / 2; i2++) {
            int i4 = iArr[i2];
            int i5 = (length - i2) - 1;
            iArr[i2] = iArr[i5];
            iArr[i5] = i4;
        }
    }

    DataCharacter decodeDataCharacter(BitArray bitArray, FinderPattern finderPattern, boolean z3, boolean z4) throws NotFoundException {
        int[] dataCharacterCounters = getDataCharacterCounters();
        dataCharacterCounters[0] = 0;
        dataCharacterCounters[1] = 0;
        dataCharacterCounters[2] = 0;
        dataCharacterCounters[3] = 0;
        dataCharacterCounters[4] = 0;
        dataCharacterCounters[5] = 0;
        dataCharacterCounters[6] = 0;
        dataCharacterCounters[7] = 0;
        if (z4) {
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
        float count = AbstractRSSReader.count(dataCharacterCounters) / 17;
        int[] oddCounts = getOddCounts();
        int[] evenCounts = getEvenCounts();
        float[] oddRoundingErrors = getOddRoundingErrors();
        float[] evenRoundingErrors = getEvenRoundingErrors();
        for (int i5 = 0; i5 < dataCharacterCounters.length; i5++) {
            float f4 = (dataCharacterCounters[i5] * 1.0f) / count;
            int i6 = (int) (0.5f + f4);
            if (i6 < 1) {
                i6 = 1;
            } else if (i6 > 8) {
                i6 = 8;
            }
            int i7 = i5 >> 1;
            if ((i5 & 1) == 0) {
                oddCounts[i7] = i6;
                oddRoundingErrors[i7] = f4 - i6;
            } else {
                evenCounts[i7] = i6;
                evenRoundingErrors[i7] = f4 - i6;
            }
        }
        adjustOddEvenCounts(17);
        int value = (((finderPattern.getValue() * 4) + (z3 ? 0 : 2)) + (!z4 ? 1 : 0)) - 1;
        int i8 = 0;
        int i9 = 0;
        for (int length2 = oddCounts.length - 1; length2 >= 0; length2--) {
            if (isNotA1left(finderPattern, z3, z4)) {
                i8 += oddCounts[length2] * WEIGHTS[value][length2 * 2];
            }
            i9 += oddCounts[length2];
        }
        int i10 = 0;
        for (int length3 = evenCounts.length - 1; length3 >= 0; length3--) {
            if (isNotA1left(finderPattern, z3, z4)) {
                i10 += evenCounts[length3] * WEIGHTS[value][(length3 * 2) + 1];
            }
            int i11 = evenCounts[length3];
        }
        int i12 = i8 + i10;
        if ((i9 & 1) == 0 && i9 <= 13 && i9 >= 4) {
            int i13 = (13 - i9) / 2;
            int i14 = SYMBOL_WIDEST[i13];
            return new DataCharacter((RSSUtils.getRSSvalue(oddCounts, i14, true) * EVEN_TOTAL_SUBSET[i13]) + RSSUtils.getRSSvalue(evenCounts, 9 - i14, false) + GSUM[i13], i12);
        }
        throw NotFoundException.getNotFoundInstance();
    }

    @Override // com.google.zxing.oned.OneDReader
    public Result decodeRow(int i2, BitArray bitArray, Map<DecodeHintType, ?> map) throws NotFoundException {
        reset();
        decodeRow2pairs(i2, bitArray);
        return constructResult(this.pairs);
    }

    List<ExpandedPair> decodeRow2pairs(int i2, BitArray bitArray) throws NotFoundException {
        while (true) {
            ExpandedPair retrieveNextPair = retrieveNextPair(bitArray, this.pairs, i2);
            this.pairs.add(retrieveNextPair);
            if (retrieveNextPair.mayBeLast()) {
                if (checkChecksum()) {
                    return this.pairs;
                }
                if (retrieveNextPair.mustBeLast()) {
                    throw NotFoundException.getNotFoundInstance();
                }
            }
        }
    }

    @Override // com.google.zxing.oned.OneDReader, com.google.zxing.Reader
    public void reset() {
        this.pairs.clear();
    }

    ExpandedPair retrieveNextPair(BitArray bitArray, List<ExpandedPair> list, int i2) throws NotFoundException {
        FinderPattern parseFoundFinderPattern;
        DataCharacter dataCharacter;
        boolean z3 = list.size() % 2 == 0;
        int i4 = -1;
        boolean z4 = true;
        do {
            findNextPair(bitArray, list, i4);
            parseFoundFinderPattern = parseFoundFinderPattern(bitArray, i2, z3);
            if (parseFoundFinderPattern == null) {
                i4 = getNextSecondBar(bitArray, this.startEnd[0]);
                continue;
            } else {
                z4 = false;
                continue;
            }
        } while (z4);
        boolean checkPairSequence = checkPairSequence(list, parseFoundFinderPattern);
        DataCharacter decodeDataCharacter = decodeDataCharacter(bitArray, parseFoundFinderPattern, z3, true);
        try {
            dataCharacter = decodeDataCharacter(bitArray, parseFoundFinderPattern, z3, false);
        } catch (NotFoundException e4) {
            if (!checkPairSequence) {
                throw e4;
            }
            dataCharacter = null;
        }
        return new ExpandedPair(decodeDataCharacter, dataCharacter, parseFoundFinderPattern, checkPairSequence);
    }
}
