package com.google.zxing.qrcode.detector;

import com.google.zxing.DecodeHintType;
import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.ResultPoint;
import com.google.zxing.ResultPointCallback;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.common.DetectorResult;
import com.google.zxing.common.GridSampler;
import com.google.zxing.common.PerspectiveTransform;
import com.google.zxing.qrcode.decoder.Version;
import java.util.Map;
/* loaded from: classes2.dex */
public class Detector {
    private final BitMatrix image;
    private ResultPointCallback resultPointCallback;

    public Detector(BitMatrix bitMatrix) {
        this.image = bitMatrix;
    }

    private float calculateModuleSizeOneWay(ResultPoint resultPoint, ResultPoint resultPoint2) {
        float sizeOfBlackWhiteBlackRunBothWays = sizeOfBlackWhiteBlackRunBothWays((int) resultPoint.getX(), (int) resultPoint.getY(), (int) resultPoint2.getX(), (int) resultPoint2.getY());
        float sizeOfBlackWhiteBlackRunBothWays2 = sizeOfBlackWhiteBlackRunBothWays((int) resultPoint2.getX(), (int) resultPoint2.getY(), (int) resultPoint.getX(), (int) resultPoint.getY());
        return Float.isNaN(sizeOfBlackWhiteBlackRunBothWays) ? sizeOfBlackWhiteBlackRunBothWays2 / 7.0f : Float.isNaN(sizeOfBlackWhiteBlackRunBothWays2) ? sizeOfBlackWhiteBlackRunBothWays / 7.0f : (sizeOfBlackWhiteBlackRunBothWays + sizeOfBlackWhiteBlackRunBothWays2) / 14.0f;
    }

    protected static int computeDimension(ResultPoint resultPoint, ResultPoint resultPoint2, ResultPoint resultPoint3, float f4) throws NotFoundException {
        int round = ((round(ResultPoint.distance(resultPoint, resultPoint2) / f4) + round(ResultPoint.distance(resultPoint, resultPoint3) / f4)) >> 1) + 7;
        int i2 = round & 3;
        if (i2 != 0) {
            if (i2 != 2) {
                if (i2 != 3) {
                    return round;
                }
                throw NotFoundException.getNotFoundInstance();
            }
            return round - 1;
        }
        return round + 1;
    }

    public static PerspectiveTransform createTransform(ResultPoint resultPoint, ResultPoint resultPoint2, ResultPoint resultPoint3, ResultPoint resultPoint4, int i2) {
        float x3;
        float y3;
        float f4;
        float f5 = i2 - 3.5f;
        if (resultPoint4 != null) {
            x3 = resultPoint4.getX();
            y3 = resultPoint4.getY();
            f4 = f5 - 3.0f;
        } else {
            x3 = (resultPoint2.getX() - resultPoint.getX()) + resultPoint3.getX();
            y3 = (resultPoint2.getY() - resultPoint.getY()) + resultPoint3.getY();
            f4 = f5;
        }
        return PerspectiveTransform.quadrilateralToQuadrilateral(3.5f, 3.5f, f5, 3.5f, f4, f4, 3.5f, f5, resultPoint.getX(), resultPoint.getY(), resultPoint2.getX(), resultPoint2.getY(), x3, y3, resultPoint3.getX(), resultPoint3.getY());
    }

    private static int round(float f4) {
        return (int) (f4 + 0.5f);
    }

    private static BitMatrix sampleGrid(BitMatrix bitMatrix, PerspectiveTransform perspectiveTransform, int i2) throws NotFoundException {
        return GridSampler.getInstance().sampleGrid(bitMatrix, i2, i2, perspectiveTransform);
    }

    private float sizeOfBlackWhiteBlackRun(int i2, int i4, int i5, int i6) {
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        double sqrt;
        Detector detector;
        boolean z3;
        int i13 = 1;
        boolean z4 = Math.abs(i6 - i4) > Math.abs(i5 - i2);
        if (z4) {
            i8 = i2;
            i7 = i4;
            i10 = i5;
            i9 = i6;
        } else {
            i7 = i2;
            i8 = i4;
            i9 = i5;
            i10 = i6;
        }
        int abs = Math.abs(i9 - i7);
        int i14 = i10 - i8;
        int abs2 = Math.abs(i14);
        int i15 = (-abs) >> 1;
        int i16 = i7 < i9 ? 1 : -1;
        int i17 = i8 < i10 ? 1 : -1;
        int i18 = i9 + i16;
        int i19 = i7;
        int i20 = i8;
        int i21 = 0;
        while (true) {
            if (i19 == i18) {
                i11 = i18;
                i12 = i14;
                break;
            }
            int i22 = z4 ? i20 : i19;
            boolean z5 = z4;
            int i23 = z4 ? i19 : i20;
            if (i21 == i13) {
                detector = this;
                i11 = i18;
                i12 = i14;
                z3 = true;
            } else {
                detector = this;
                i11 = i18;
                i12 = i14;
                z3 = false;
            }
            if (z3 == detector.image.get(i22, i23)) {
                if (i21 == 2) {
                    int i24 = i19 - i7;
                    int i25 = i20 - i8;
                    sqrt = Math.sqrt((i24 * i24) + (i25 * i25));
                    break;
                }
                i21++;
            }
            i15 += abs2;
            if (i15 > 0) {
                if (i20 == i10) {
                    break;
                }
                i20 += i17;
                i15 -= abs;
            }
            i19 += i16;
            i14 = i12;
            i18 = i11;
            z4 = z5;
            i13 = 1;
        }
        if (i21 == 2) {
            int i26 = i11 - i7;
            sqrt = Math.sqrt((i26 * i26) + (i12 * i12));
            return (float) sqrt;
        }
        return Float.NaN;
    }

    private float sizeOfBlackWhiteBlackRunBothWays(int i2, int i4, int i5, int i6) {
        float f4;
        float f5;
        float sizeOfBlackWhiteBlackRun = sizeOfBlackWhiteBlackRun(i2, i4, i5, i6);
        int i7 = i2 - (i5 - i2);
        int i8 = 0;
        if (i7 < 0) {
            f4 = i2 / (i2 - i7);
            i7 = 0;
        } else if (i7 >= this.image.getWidth()) {
            f4 = ((this.image.getWidth() - 1) - i2) / (i7 - i2);
            i7 = this.image.getWidth() - 1;
        } else {
            f4 = 1.0f;
        }
        float f6 = i4;
        int i9 = (int) (f6 - ((i6 - i4) * f4));
        if (i9 < 0) {
            f5 = f6 / (i4 - i9);
        } else if (i9 >= this.image.getHeight()) {
            f5 = ((this.image.getHeight() - 1) - i4) / (i9 - i4);
            i8 = this.image.getHeight() - 1;
        } else {
            i8 = i9;
            f5 = 1.0f;
        }
        return (sizeOfBlackWhiteBlackRun + sizeOfBlackWhiteBlackRun(i2, i4, (int) (i2 + ((i7 - i2) * f5)), i8)) - 1.0f;
    }

    protected float calculateModuleSize(ResultPoint resultPoint, ResultPoint resultPoint2, ResultPoint resultPoint3) {
        return (calculateModuleSizeOneWay(resultPoint, resultPoint2) + calculateModuleSizeOneWay(resultPoint, resultPoint3)) / 2.0f;
    }

    public DetectorResult detect() throws NotFoundException, FormatException {
        return detect(null);
    }

    protected AlignmentPattern findAlignmentInRegion(float f4, int i2, int i4, float f5) throws NotFoundException {
        int i5 = (int) (f5 * f4);
        int max = Math.max(0, i2 - i5);
        int min = Math.min(this.image.getWidth() - 1, i2 + i5) - max;
        float f6 = 3.0f * f4;
        if (min >= f6) {
            int max2 = Math.max(0, i4 - i5);
            int min2 = Math.min(this.image.getHeight() - 1, i4 + i5) - max2;
            if (min2 >= f6) {
                return new AlignmentPatternFinder(this.image, max, max2, min, min2, f4, this.resultPointCallback).find();
            }
            throw NotFoundException.getNotFoundInstance();
        }
        throw NotFoundException.getNotFoundInstance();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public BitMatrix getImage() {
        return this.image;
    }

    protected ResultPointCallback getResultPointCallback() {
        return this.resultPointCallback;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public DetectorResult processFinderPatternInfo(FinderPatternInfo finderPatternInfo) throws NotFoundException, FormatException {
        FinderPattern topLeft = finderPatternInfo.getTopLeft();
        FinderPattern topRight = finderPatternInfo.getTopRight();
        FinderPattern bottomLeft = finderPatternInfo.getBottomLeft();
        float calculateModuleSize = calculateModuleSize(topLeft, topRight, bottomLeft);
        if (calculateModuleSize >= 1.0f) {
            int computeDimension = computeDimension(topLeft, topRight, bottomLeft, calculateModuleSize);
            Version provisionalVersionForDimension = Version.getProvisionalVersionForDimension(computeDimension);
            int dimensionForVersion = provisionalVersionForDimension.getDimensionForVersion() - 7;
            AlignmentPattern alignmentPattern = null;
            if (provisionalVersionForDimension.getAlignmentPatternCenters().length > 0) {
                float x3 = (topRight.getX() - topLeft.getX()) + bottomLeft.getX();
                float y3 = (topRight.getY() - topLeft.getY()) + bottomLeft.getY();
                float f4 = 1.0f - (3.0f / dimensionForVersion);
                int x4 = (int) (topLeft.getX() + ((x3 - topLeft.getX()) * f4));
                int y4 = (int) (topLeft.getY() + (f4 * (y3 - topLeft.getY())));
                for (int i2 = 4; i2 <= 16; i2 <<= 1) {
                    try {
                        alignmentPattern = findAlignmentInRegion(calculateModuleSize, x4, y4, i2);
                        break;
                    } catch (NotFoundException unused) {
                    }
                }
            }
            return new DetectorResult(sampleGrid(this.image, createTransform(topLeft, topRight, bottomLeft, alignmentPattern, computeDimension), computeDimension), alignmentPattern == null ? new ResultPoint[]{bottomLeft, topLeft, topRight} : new ResultPoint[]{bottomLeft, topLeft, topRight, alignmentPattern});
        }
        throw NotFoundException.getNotFoundInstance();
    }

    public DetectorResult detect(Map<DecodeHintType, ?> map) throws NotFoundException, FormatException {
        ResultPointCallback resultPointCallback = map == null ? null : (ResultPointCallback) map.get(DecodeHintType.NEED_RESULT_POINT_CALLBACK);
        this.resultPointCallback = resultPointCallback;
        return processFinderPatternInfo(new FinderPatternFinder(this.image, resultPointCallback).find(map));
    }
}
