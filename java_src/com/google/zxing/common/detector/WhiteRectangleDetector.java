package com.google.zxing.common.detector;

import com.google.zxing.NotFoundException;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitMatrix;
/* loaded from: classes2.dex */
public final class WhiteRectangleDetector {
    private static final int CORR = 1;
    private static final int INIT_SIZE = 30;
    private final int downInit;
    private final int height;
    private final BitMatrix image;
    private final int leftInit;
    private final int rightInit;
    private final int upInit;
    private final int width;

    public WhiteRectangleDetector(BitMatrix bitMatrix) throws NotFoundException {
        this.image = bitMatrix;
        int height = bitMatrix.getHeight();
        this.height = height;
        int width = bitMatrix.getWidth();
        this.width = width;
        int i2 = (width - 30) >> 1;
        this.leftInit = i2;
        int i4 = (width + 30) >> 1;
        this.rightInit = i4;
        int i5 = (height - 30) >> 1;
        this.upInit = i5;
        int i6 = (height + 30) >> 1;
        this.downInit = i6;
        if (i5 < 0 || i2 < 0 || i6 >= height || i4 >= width) {
            throw NotFoundException.getNotFoundInstance();
        }
    }

    private ResultPoint[] centerEdges(ResultPoint resultPoint, ResultPoint resultPoint2, ResultPoint resultPoint3, ResultPoint resultPoint4) {
        float x3 = resultPoint.getX();
        float y3 = resultPoint.getY();
        float x4 = resultPoint2.getX();
        float y4 = resultPoint2.getY();
        float x5 = resultPoint3.getX();
        float y5 = resultPoint3.getY();
        float x6 = resultPoint4.getX();
        float y6 = resultPoint4.getY();
        return x3 < ((float) (this.width / 2)) ? new ResultPoint[]{new ResultPoint(x6 - 1.0f, y6 + 1.0f), new ResultPoint(x4 + 1.0f, y4 + 1.0f), new ResultPoint(x5 - 1.0f, y5 - 1.0f), new ResultPoint(x3 + 1.0f, y3 - 1.0f)} : new ResultPoint[]{new ResultPoint(x6 + 1.0f, y6 + 1.0f), new ResultPoint(x4 + 1.0f, y4 - 1.0f), new ResultPoint(x5 - 1.0f, y5 + 1.0f), new ResultPoint(x3 - 1.0f, y3 - 1.0f)};
    }

    private boolean containsBlackPoint(int i2, int i4, int i5, boolean z3) {
        if (z3) {
            while (i2 <= i4) {
                if (this.image.get(i2, i5)) {
                    return true;
                }
                i2++;
            }
            return false;
        }
        while (i2 <= i4) {
            if (this.image.get(i5, i2)) {
                return true;
            }
            i2++;
        }
        return false;
    }

    private static int distanceL2(float f4, float f5, float f6, float f7) {
        float f8 = f4 - f6;
        float f9 = f5 - f7;
        return round((float) Math.sqrt((f8 * f8) + (f9 * f9)));
    }

    private ResultPoint getBlackPointOnSegment(float f4, float f5, float f6, float f7) {
        int distanceL2 = distanceL2(f4, f5, f6, f7);
        float f8 = distanceL2;
        float f9 = (f6 - f4) / f8;
        float f10 = (f7 - f5) / f8;
        for (int i2 = 0; i2 < distanceL2; i2++) {
            float f11 = i2;
            int round = round((f11 * f9) + f4);
            int round2 = round((f11 * f10) + f5);
            if (this.image.get(round, round2)) {
                return new ResultPoint(round, round2);
            }
        }
        return null;
    }

    private static int round(float f4) {
        return (int) (f4 + 0.5f);
    }

    public ResultPoint[] detect() throws NotFoundException {
        int i2 = this.leftInit;
        int i4 = this.rightInit;
        int i5 = this.upInit;
        int i6 = this.downInit;
        boolean z3 = false;
        boolean z4 = true;
        boolean z5 = false;
        while (z4) {
            boolean z6 = true;
            boolean z7 = false;
            while (z6 && i4 < this.width) {
                z6 = containsBlackPoint(i5, i6, i4, false);
                if (z6) {
                    i4++;
                    z7 = true;
                }
            }
            if (i4 < this.width) {
                boolean z8 = true;
                while (z8 && i6 < this.height) {
                    z8 = containsBlackPoint(i2, i4, i6, true);
                    if (z8) {
                        i6++;
                        z7 = true;
                    }
                }
                if (i6 < this.height) {
                    boolean z9 = true;
                    while (z9 && i2 >= 0) {
                        z9 = containsBlackPoint(i5, i6, i2, false);
                        if (z9) {
                            i2--;
                            z7 = true;
                        }
                    }
                    if (i2 >= 0) {
                        z4 = z7;
                        boolean z10 = true;
                        while (z10 && i5 >= 0) {
                            z10 = containsBlackPoint(i2, i4, i5, true);
                            if (z10) {
                                i5--;
                                z4 = true;
                            }
                        }
                        if (i5 >= 0) {
                            if (z4) {
                                z5 = true;
                            }
                        }
                    }
                }
            }
            z3 = true;
            break;
        }
        if (z3 || !z5) {
            throw NotFoundException.getNotFoundInstance();
        }
        int i7 = i4 - i2;
        ResultPoint resultPoint = null;
        ResultPoint resultPoint2 = null;
        for (int i8 = 1; i8 < i7; i8++) {
            resultPoint2 = getBlackPointOnSegment(i2, i6 - i8, i2 + i8, i6);
            if (resultPoint2 != null) {
                break;
            }
        }
        if (resultPoint2 != null) {
            ResultPoint resultPoint3 = null;
            for (int i9 = 1; i9 < i7; i9++) {
                resultPoint3 = getBlackPointOnSegment(i2, i5 + i9, i2 + i9, i5);
                if (resultPoint3 != null) {
                    break;
                }
            }
            if (resultPoint3 != null) {
                ResultPoint resultPoint4 = null;
                for (int i10 = 1; i10 < i7; i10++) {
                    resultPoint4 = getBlackPointOnSegment(i4, i5 + i10, i4 - i10, i5);
                    if (resultPoint4 != null) {
                        break;
                    }
                }
                if (resultPoint4 != null) {
                    for (int i11 = 1; i11 < i7; i11++) {
                        resultPoint = getBlackPointOnSegment(i4, i6 - i11, i4 - i11, i6);
                        if (resultPoint != null) {
                            break;
                        }
                    }
                    if (resultPoint != null) {
                        return centerEdges(resultPoint, resultPoint2, resultPoint4, resultPoint3);
                    }
                    throw NotFoundException.getNotFoundInstance();
                }
                throw NotFoundException.getNotFoundInstance();
            }
            throw NotFoundException.getNotFoundInstance();
        }
        throw NotFoundException.getNotFoundInstance();
    }

    public WhiteRectangleDetector(BitMatrix bitMatrix, int i2, int i4, int i5) throws NotFoundException {
        this.image = bitMatrix;
        int height = bitMatrix.getHeight();
        this.height = height;
        int width = bitMatrix.getWidth();
        this.width = width;
        int i6 = i2 >> 1;
        int i7 = i4 - i6;
        this.leftInit = i7;
        int i8 = i4 + i6;
        this.rightInit = i8;
        int i9 = i5 - i6;
        this.upInit = i9;
        int i10 = i5 + i6;
        this.downInit = i10;
        if (i9 < 0 || i7 < 0 || i10 >= height || i8 >= width) {
            throw NotFoundException.getNotFoundInstance();
        }
    }
}
