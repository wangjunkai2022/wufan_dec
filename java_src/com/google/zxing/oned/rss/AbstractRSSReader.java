package com.google.zxing.oned.rss;

import com.google.zxing.NotFoundException;
import com.google.zxing.oned.OneDReader;
/* loaded from: classes2.dex */
public abstract class AbstractRSSReader extends OneDReader {
    private static final int MAX_AVG_VARIANCE = 51;
    private static final float MAX_FINDER_PATTERN_RATIO = 0.89285713f;
    private static final int MAX_INDIVIDUAL_VARIANCE = 102;
    private static final float MIN_FINDER_PATTERN_RATIO = 0.7916667f;
    private final int[] dataCharacterCounters;
    private final int[] evenCounts;
    private final int[] oddCounts;
    private final int[] decodeFinderCounters = new int[4];
    private final float[] oddRoundingErrors = new float[4];
    private final float[] evenRoundingErrors = new float[4];

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractRSSReader() {
        int[] iArr = new int[8];
        this.dataCharacterCounters = iArr;
        this.oddCounts = new int[iArr.length / 2];
        this.evenCounts = new int[iArr.length / 2];
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static int count(int[] iArr) {
        int i2 = 0;
        for (int i4 : iArr) {
            i2 += i4;
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void decrement(int[] iArr, float[] fArr) {
        int i2 = 0;
        float f4 = fArr[0];
        for (int i4 = 1; i4 < iArr.length; i4++) {
            if (fArr[i4] < f4) {
                f4 = fArr[i4];
                i2 = i4;
            }
        }
        iArr[i2] = iArr[i2] - 1;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void increment(int[] iArr, float[] fArr) {
        int i2 = 0;
        float f4 = fArr[0];
        for (int i4 = 1; i4 < iArr.length; i4++) {
            if (fArr[i4] > f4) {
                f4 = fArr[i4];
                i2 = i4;
            }
        }
        iArr[i2] = iArr[i2] + 1;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static boolean isFinderPattern(int[] iArr) {
        int i2;
        float f4 = (iArr[0] + iArr[1]) / ((iArr[2] + i2) + iArr[3]);
        if (f4 < MIN_FINDER_PATTERN_RATIO || f4 > MAX_FINDER_PATTERN_RATIO) {
            return false;
        }
        int i4 = Integer.MAX_VALUE;
        int i5 = Integer.MIN_VALUE;
        for (int i6 : iArr) {
            if (i6 > i5) {
                i5 = i6;
            }
            if (i6 < i4) {
                i4 = i6;
            }
        }
        return i5 < i4 * 10;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static int parseFinderValue(int[] iArr, int[][] iArr2) throws NotFoundException {
        for (int i2 = 0; i2 < iArr2.length; i2++) {
            if (OneDReader.patternMatchVariance(iArr, iArr2[i2], 102) < 51) {
                return i2;
            }
        }
        throw NotFoundException.getNotFoundInstance();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int[] getDataCharacterCounters() {
        return this.dataCharacterCounters;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int[] getDecodeFinderCounters() {
        return this.decodeFinderCounters;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int[] getEvenCounts() {
        return this.evenCounts;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public float[] getEvenRoundingErrors() {
        return this.evenRoundingErrors;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int[] getOddCounts() {
        return this.oddCounts;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public float[] getOddRoundingErrors() {
        return this.oddRoundingErrors;
    }
}
