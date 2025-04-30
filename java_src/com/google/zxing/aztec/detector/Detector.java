package com.google.zxing.aztec.detector;

import com.google.zxing.NotFoundException;
import com.google.zxing.ResultPoint;
import com.google.zxing.aztec.AztecDetectorResult;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.common.GridSampler;
import com.google.zxing.common.detector.WhiteRectangleDetector;
import com.google.zxing.common.reedsolomon.GenericGF;
import com.google.zxing.common.reedsolomon.ReedSolomonDecoder;
import com.google.zxing.common.reedsolomon.ReedSolomonException;
/* loaded from: classes2.dex */
public final class Detector {
    private boolean compact;
    private final BitMatrix image;
    private int nbCenterLayers;
    private int nbDataBlocks;
    private int nbLayers;
    private int shift;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class Point {

        /* renamed from: x  reason: collision with root package name */
        public final int f16645x;

        /* renamed from: y  reason: collision with root package name */
        public final int f16646y;

        public ResultPoint toResultPoint() {
            return new ResultPoint(this.f16645x, this.f16646y);
        }

        private Point(int i2, int i4) {
            this.f16645x = i2;
            this.f16646y = i4;
        }
    }

    public Detector(BitMatrix bitMatrix) {
        this.image = bitMatrix;
    }

    private static void correctParameterData(boolean[] zArr, boolean z3) throws NotFoundException {
        int i2;
        int i4;
        if (z3) {
            i2 = 7;
            i4 = 2;
        } else {
            i2 = 10;
            i4 = 4;
        }
        int i5 = i2 - i4;
        int[] iArr = new int[i2];
        int i6 = 0;
        while (true) {
            if (i6 >= i2) {
                try {
                    break;
                } catch (ReedSolomonException unused) {
                    throw NotFoundException.getNotFoundInstance();
                }
            }
            int i7 = 1;
            for (int i8 = 1; i8 <= 4; i8++) {
                if (zArr[((4 * i6) + 4) - i8]) {
                    iArr[i6] = iArr[i6] + i7;
                }
                i7 <<= 1;
            }
            i6++;
        }
        new ReedSolomonDecoder(GenericGF.AZTEC_PARAM).decode(iArr, i5);
        for (int i9 = 0; i9 < i4; i9++) {
            int i10 = 1;
            for (int i11 = 1; i11 <= 4; i11++) {
                zArr[((i9 * 4) + 4) - i11] = (iArr[i9] & i10) == i10;
                i10 <<= 1;
            }
        }
    }

    private static float distance(Point point, Point point2) {
        int i2 = point.f16645x;
        int i4 = point2.f16645x;
        int i5 = point.f16646y;
        int i6 = point2.f16646y;
        return (float) Math.sqrt(((i2 - i4) * (i2 - i4)) + ((i5 - i6) * (i5 - i6)));
    }

    private void extractParameters(Point[] pointArr) throws NotFoundException {
        boolean[] zArr;
        int i2 = 0;
        boolean[] sampleLine = sampleLine(pointArr[0], pointArr[1], (this.nbCenterLayers * 2) + 1);
        boolean[] sampleLine2 = sampleLine(pointArr[1], pointArr[2], (this.nbCenterLayers * 2) + 1);
        boolean[] sampleLine3 = sampleLine(pointArr[2], pointArr[3], (this.nbCenterLayers * 2) + 1);
        boolean[] sampleLine4 = sampleLine(pointArr[3], pointArr[0], (this.nbCenterLayers * 2) + 1);
        if (sampleLine[0] && sampleLine[this.nbCenterLayers * 2]) {
            this.shift = 0;
        } else if (sampleLine2[0] && sampleLine2[this.nbCenterLayers * 2]) {
            this.shift = 1;
        } else if (sampleLine3[0] && sampleLine3[this.nbCenterLayers * 2]) {
            this.shift = 2;
        } else if (sampleLine4[0] && sampleLine4[this.nbCenterLayers * 2]) {
            this.shift = 3;
        } else {
            throw NotFoundException.getNotFoundInstance();
        }
        if (this.compact) {
            boolean[] zArr2 = new boolean[28];
            for (int i4 = 0; i4 < 7; i4++) {
                int i5 = i4 + 2;
                zArr2[i4] = sampleLine[i5];
                zArr2[i4 + 7] = sampleLine2[i5];
                zArr2[i4 + 14] = sampleLine3[i5];
                zArr2[i4 + 21] = sampleLine4[i5];
            }
            zArr = new boolean[28];
            while (i2 < 28) {
                zArr[i2] = zArr2[((this.shift * 7) + i2) % 28];
                i2++;
            }
        } else {
            boolean[] zArr3 = new boolean[40];
            for (int i6 = 0; i6 < 11; i6++) {
                if (i6 < 5) {
                    int i7 = i6 + 2;
                    zArr3[i6] = sampleLine[i7];
                    zArr3[i6 + 10] = sampleLine2[i7];
                    zArr3[i6 + 20] = sampleLine3[i7];
                    zArr3[i6 + 30] = sampleLine4[i7];
                }
                if (i6 > 5) {
                    int i8 = i6 + 2;
                    zArr3[i6 - 1] = sampleLine[i8];
                    zArr3[(i6 + 10) - 1] = sampleLine2[i8];
                    zArr3[(i6 + 20) - 1] = sampleLine3[i8];
                    zArr3[(i6 + 30) - 1] = sampleLine4[i8];
                }
            }
            zArr = new boolean[40];
            while (i2 < 40) {
                zArr[i2] = zArr3[((this.shift * 10) + i2) % 40];
                i2++;
            }
        }
        correctParameterData(zArr, this.compact);
        getParameters(zArr);
    }

    private Point[] getBullEyeCornerPoints(Point point) throws NotFoundException {
        int i2;
        int i4;
        this.nbCenterLayers = 1;
        Point point2 = point;
        Point point3 = point2;
        Point point4 = point3;
        Point point5 = point4;
        boolean z3 = true;
        while (this.nbCenterLayers < 9) {
            Point firstDifferent = getFirstDifferent(point2, z3, 1, -1);
            Point firstDifferent2 = getFirstDifferent(point3, z3, 1, 1);
            Point firstDifferent3 = getFirstDifferent(point4, z3, -1, 1);
            Point firstDifferent4 = getFirstDifferent(point5, z3, -1, -1);
            if (this.nbCenterLayers > 2) {
                double distance = (distance(firstDifferent4, firstDifferent) * this.nbCenterLayers) / (distance(point5, point2) * (this.nbCenterLayers + 2));
                if (distance < 0.75d || distance > 1.25d || !isWhiteOrBlackRectangle(firstDifferent, firstDifferent2, firstDifferent3, firstDifferent4)) {
                    break;
                }
            }
            z3 = !z3;
            this.nbCenterLayers++;
            point5 = firstDifferent4;
            point2 = firstDifferent;
            point3 = firstDifferent2;
            point4 = firstDifferent3;
        }
        int i5 = this.nbCenterLayers;
        if (i5 != 5 && i5 != 7) {
            throw NotFoundException.getNotFoundInstance();
        }
        this.compact = i5 == 5;
        float f4 = 1.5f / ((i5 * 2) - 3);
        int i6 = point2.f16645x;
        float f5 = (i6 - i2) * f4;
        int round = round(point4.f16645x - f5);
        float f6 = (point2.f16646y - point4.f16646y) * f4;
        int round2 = round(point4.f16646y - f6);
        int round3 = round(point2.f16645x + f5);
        int round4 = round(point2.f16646y + f6);
        int i7 = point3.f16645x;
        float f7 = (i7 - i4) * f4;
        int round5 = round(point5.f16645x - f7);
        float f8 = f4 * (point3.f16646y - point5.f16646y);
        int round6 = round(point5.f16646y - f8);
        int round7 = round(point3.f16645x + f7);
        int round8 = round(point3.f16646y + f8);
        if (isValid(round3, round4) && isValid(round7, round8) && isValid(round, round2) && isValid(round5, round6)) {
            return new Point[]{new Point(round3, round4), new Point(round7, round8), new Point(round, round2), new Point(round5, round6)};
        }
        throw NotFoundException.getNotFoundInstance();
    }

    private int getColor(Point point, Point point2) {
        float distance = distance(point, point2);
        int i2 = point2.f16645x;
        int i4 = point.f16645x;
        float f4 = (i2 - i4) / distance;
        int i5 = point2.f16646y;
        int i6 = point.f16646y;
        float f5 = (i5 - i6) / distance;
        float f6 = i4;
        float f7 = i6;
        boolean z3 = this.image.get(i4, i6);
        int i7 = 0;
        for (int i8 = 0; i8 < distance; i8++) {
            f6 += f4;
            f7 += f5;
            if (this.image.get(round(f6), round(f7)) != z3) {
                i7++;
            }
        }
        double d4 = i7 / distance;
        if (d4 <= 0.1d || d4 >= 0.9d) {
            return d4 <= 0.1d ? z3 ? 1 : -1 : z3 ? -1 : 1;
        }
        return 0;
    }

    private Point getFirstDifferent(Point point, boolean z3, int i2, int i4) {
        int i5 = point.f16645x + i2;
        int i6 = point.f16646y;
        while (true) {
            i6 += i4;
            if (!isValid(i5, i6) || this.image.get(i5, i6) != z3) {
                break;
            }
            i5 += i2;
        }
        int i7 = i5 - i2;
        int i8 = i6 - i4;
        while (isValid(i7, i8) && this.image.get(i7, i8) == z3) {
            i7 += i2;
        }
        int i9 = i7 - i2;
        while (isValid(i9, i8) && this.image.get(i9, i8) == z3) {
            i8 += i4;
        }
        return new Point(i9, i8 - i4);
    }

    private Point getMatrixCenter() {
        ResultPoint resultPoint;
        ResultPoint resultPoint2;
        ResultPoint resultPoint3;
        ResultPoint resultPoint4;
        ResultPoint resultPoint5;
        ResultPoint resultPoint6;
        ResultPoint resultPoint7;
        ResultPoint resultPoint8;
        try {
            ResultPoint[] detect = new WhiteRectangleDetector(this.image).detect();
            resultPoint3 = detect[0];
            resultPoint4 = detect[1];
            resultPoint2 = detect[2];
            resultPoint = detect[3];
        } catch (NotFoundException unused) {
            int width = this.image.getWidth() / 2;
            int height = this.image.getHeight() / 2;
            int i2 = width + 7;
            int i4 = height - 7;
            ResultPoint resultPoint9 = getFirstDifferent(new Point(i2, i4), false, 1, -1).toResultPoint();
            int i5 = height + 7;
            ResultPoint resultPoint10 = getFirstDifferent(new Point(i2, i5), false, 1, 1).toResultPoint();
            int i6 = width - 7;
            ResultPoint resultPoint11 = getFirstDifferent(new Point(i6, i5), false, -1, 1).toResultPoint();
            resultPoint = getFirstDifferent(new Point(i6, i4), false, -1, -1).toResultPoint();
            resultPoint2 = resultPoint11;
            resultPoint3 = resultPoint9;
            resultPoint4 = resultPoint10;
        }
        int round = round((((resultPoint3.getX() + resultPoint.getX()) + resultPoint4.getX()) + resultPoint2.getX()) / 4.0f);
        int round2 = round((((resultPoint3.getY() + resultPoint.getY()) + resultPoint4.getY()) + resultPoint2.getY()) / 4.0f);
        try {
            ResultPoint[] detect2 = new WhiteRectangleDetector(this.image, 15, round, round2).detect();
            resultPoint5 = detect2[0];
            resultPoint6 = detect2[1];
            resultPoint7 = detect2[2];
            resultPoint8 = detect2[3];
        } catch (NotFoundException unused2) {
            int i7 = round + 7;
            int i8 = round2 - 7;
            resultPoint5 = getFirstDifferent(new Point(i7, i8), false, 1, -1).toResultPoint();
            int i9 = round2 + 7;
            resultPoint6 = getFirstDifferent(new Point(i7, i9), false, 1, 1).toResultPoint();
            int i10 = round - 7;
            resultPoint7 = getFirstDifferent(new Point(i10, i9), false, -1, 1).toResultPoint();
            resultPoint8 = getFirstDifferent(new Point(i10, i8), false, -1, -1).toResultPoint();
        }
        return new Point(round((((resultPoint5.getX() + resultPoint8.getX()) + resultPoint6.getX()) + resultPoint7.getX()) / 4.0f), round((((resultPoint5.getY() + resultPoint8.getY()) + resultPoint6.getY()) + resultPoint7.getY()) / 4.0f));
    }

    private ResultPoint[] getMatrixCornerPoints(Point[] pointArr) throws NotFoundException {
        int i2 = this.nbLayers;
        float f4 = (((i2 * 2) + (i2 > 4 ? 1 : 0)) + ((i2 - 4) / 8)) / (this.nbCenterLayers * 2.0f);
        int i4 = pointArr[0].f16645x - pointArr[2].f16645x;
        int i5 = i4 + (i4 > 0 ? 1 : -1);
        int i6 = pointArr[0].f16646y - pointArr[2].f16646y;
        int i7 = i6 + (i6 > 0 ? 1 : -1);
        float f5 = i5 * f4;
        int round = round(pointArr[2].f16645x - f5);
        float f6 = i7 * f4;
        int round2 = round(pointArr[2].f16646y - f6);
        int round3 = round(pointArr[0].f16645x + f5);
        int round4 = round(pointArr[0].f16646y + f6);
        int i8 = pointArr[1].f16645x - pointArr[3].f16645x;
        int i9 = i8 + (i8 > 0 ? 1 : -1);
        int i10 = pointArr[1].f16646y - pointArr[3].f16646y;
        int i11 = i10 + (i10 > 0 ? 1 : -1);
        float f7 = i9 * f4;
        int round5 = round(pointArr[3].f16645x - f7);
        float f8 = f4 * i11;
        int round6 = round(pointArr[3].f16646y - f8);
        int round7 = round(pointArr[1].f16645x + f7);
        int round8 = round(pointArr[1].f16646y + f8);
        if (isValid(round3, round4) && isValid(round7, round8) && isValid(round, round2) && isValid(round5, round6)) {
            return new ResultPoint[]{new ResultPoint(round3, round4), new ResultPoint(round7, round8), new ResultPoint(round, round2), new ResultPoint(round5, round6)};
        }
        throw NotFoundException.getNotFoundInstance();
    }

    private void getParameters(boolean[] zArr) {
        int i2;
        int i4;
        if (this.compact) {
            i2 = 2;
            i4 = 6;
        } else {
            i2 = 5;
            i4 = 11;
        }
        for (int i5 = 0; i5 < i2; i5++) {
            int i6 = this.nbLayers << 1;
            this.nbLayers = i6;
            if (zArr[i5]) {
                this.nbLayers = i6 + 1;
            }
        }
        for (int i7 = i2; i7 < i2 + i4; i7++) {
            int i8 = this.nbDataBlocks << 1;
            this.nbDataBlocks = i8;
            if (zArr[i7]) {
                this.nbDataBlocks = i8 + 1;
            }
        }
        this.nbLayers++;
        this.nbDataBlocks++;
    }

    private boolean isValid(int i2, int i4) {
        return i2 >= 0 && i2 < this.image.getWidth() && i4 > 0 && i4 < this.image.getHeight();
    }

    private boolean isWhiteOrBlackRectangle(Point point, Point point2, Point point3, Point point4) {
        Point point5 = new Point(point.f16645x - 3, point.f16646y + 3);
        Point point6 = new Point(point2.f16645x - 3, point2.f16646y - 3);
        Point point7 = new Point(point3.f16645x + 3, point3.f16646y - 3);
        Point point8 = new Point(point4.f16645x + 3, point4.f16646y + 3);
        int color = getColor(point8, point5);
        return color != 0 && getColor(point5, point6) == color && getColor(point6, point7) == color && getColor(point7, point8) == color;
    }

    private static int round(float f4) {
        return (int) (f4 + 0.5f);
    }

    private BitMatrix sampleGrid(BitMatrix bitMatrix, ResultPoint resultPoint, ResultPoint resultPoint2, ResultPoint resultPoint3, ResultPoint resultPoint4) throws NotFoundException {
        int i2;
        if (this.compact) {
            i2 = (this.nbLayers * 4) + 11;
        } else {
            int i4 = this.nbLayers;
            i2 = i4 <= 4 ? (i4 * 4) + 15 : (i4 * 4) + ((((i4 - 4) / 8) + 1) * 2) + 15;
        }
        int i5 = i2;
        float f4 = i5 - 0.5f;
        return GridSampler.getInstance().sampleGrid(bitMatrix, i5, i5, 0.5f, 0.5f, f4, 0.5f, f4, f4, 0.5f, f4, resultPoint.getX(), resultPoint.getY(), resultPoint4.getX(), resultPoint4.getY(), resultPoint3.getX(), resultPoint3.getY(), resultPoint2.getX(), resultPoint2.getY());
    }

    private boolean[] sampleLine(Point point, Point point2, int i2) {
        int i4;
        boolean[] zArr = new boolean[i2];
        float distance = distance(point, point2);
        float f4 = distance / (i2 - 1);
        int i5 = point2.f16645x;
        int i6 = point.f16645x;
        float f5 = ((i5 - i6) * f4) / distance;
        int i7 = point2.f16646y;
        float f6 = (f4 * (i7 - i4)) / distance;
        float f7 = i6;
        float f8 = point.f16646y;
        for (int i8 = 0; i8 < i2; i8++) {
            zArr[i8] = this.image.get(round(f7), round(f8));
            f7 += f5;
            f8 += f6;
        }
        return zArr;
    }

    public AztecDetectorResult detect() throws NotFoundException {
        Point[] bullEyeCornerPoints = getBullEyeCornerPoints(getMatrixCenter());
        extractParameters(bullEyeCornerPoints);
        ResultPoint[] matrixCornerPoints = getMatrixCornerPoints(bullEyeCornerPoints);
        BitMatrix bitMatrix = this.image;
        int i2 = this.shift;
        return new AztecDetectorResult(sampleGrid(bitMatrix, matrixCornerPoints[i2 % 4], matrixCornerPoints[(i2 + 3) % 4], matrixCornerPoints[(i2 + 2) % 4], matrixCornerPoints[(i2 + 1) % 4]), matrixCornerPoints, this.compact, this.nbDataBlocks, this.nbLayers);
    }
}
