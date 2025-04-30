package com.google.zxing.oned.rss;

import com.google.zxing.ResultPoint;
/* loaded from: classes2.dex */
public final class FinderPattern {
    private final ResultPoint[] resultPoints;
    private final int[] startEnd;
    private final int value;

    public FinderPattern(int i2, int[] iArr, int i4, int i5, int i6) {
        this.value = i2;
        this.startEnd = iArr;
        float f4 = i6;
        this.resultPoints = new ResultPoint[]{new ResultPoint(i4, f4), new ResultPoint(i5, f4)};
    }

    public ResultPoint[] getResultPoints() {
        return this.resultPoints;
    }

    public int[] getStartEnd() {
        return this.startEnd;
    }

    public int getValue() {
        return this.value;
    }
}
