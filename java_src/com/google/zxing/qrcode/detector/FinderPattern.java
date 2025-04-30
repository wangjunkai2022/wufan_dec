package com.google.zxing.qrcode.detector;

import com.google.zxing.ResultPoint;
/* loaded from: classes2.dex */
public final class FinderPattern extends ResultPoint {
    private int count;
    private final float estimatedModuleSize;

    /* JADX INFO: Access modifiers changed from: package-private */
    public FinderPattern(float f4, float f5, float f6) {
        this(f4, f5, f6, 1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean aboutEquals(float f4, float f5, float f6) {
        if (Math.abs(f5 - getY()) > f4 || Math.abs(f6 - getX()) > f4) {
            return false;
        }
        float abs = Math.abs(f4 - this.estimatedModuleSize);
        return abs <= 1.0f || abs <= this.estimatedModuleSize;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public FinderPattern combineEstimate(float f4, float f5, float f6) {
        int i2 = this.count;
        int i4 = i2 + 1;
        float x3 = (i2 * getX()) + f5;
        float f7 = i4;
        return new FinderPattern(x3 / f7, ((this.count * getY()) + f4) / f7, ((this.count * this.estimatedModuleSize) + f6) / f7, i4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getCount() {
        return this.count;
    }

    public float getEstimatedModuleSize() {
        return this.estimatedModuleSize;
    }

    void incrementCount() {
        this.count++;
    }

    FinderPattern(float f4, float f5, float f6, int i2) {
        super(f4, f5);
        this.estimatedModuleSize = f6;
        this.count = i2;
    }
}
