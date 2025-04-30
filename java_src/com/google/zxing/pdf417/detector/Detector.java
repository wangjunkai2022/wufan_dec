package com.google.zxing.pdf417.detector;

import com.google.zxing.BinaryBitmap;
import com.google.zxing.DecodeHintType;
import com.google.zxing.NotFoundException;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.common.DetectorResult;
import com.google.zxing.common.GridSampler;
import java.util.Arrays;
import java.util.Map;
/* loaded from: classes2.dex */
public final class Detector {
    private static final int MAX_AVG_VARIANCE = 107;
    private static final int MAX_INDIVIDUAL_VARIANCE = 204;
    private static final int SKEW_THRESHOLD = 2;
    private static final int[] START_PATTERN = {8, 1, 1, 1, 1, 1, 1, 3};
    private static final int[] START_PATTERN_REVERSE = {3, 1, 1, 1, 1, 1, 1, 8};
    private static final int[] STOP_PATTERN = {7, 1, 1, 3, 1, 1, 1, 2, 1};
    private static final int[] STOP_PATTERN_REVERSE = {1, 2, 1, 1, 1, 3, 1, 1, 7};
    private final BinaryBitmap image;

    public Detector(BinaryBitmap binaryBitmap) {
        this.image = binaryBitmap;
    }

    private static int computeDimension(ResultPoint resultPoint, ResultPoint resultPoint2, ResultPoint resultPoint3, ResultPoint resultPoint4, float f4) {
        return ((((round(ResultPoint.distance(resultPoint, resultPoint2) / f4) + round(ResultPoint.distance(resultPoint3, resultPoint4) / f4)) >> 1) + 8) / 17) * 17;
    }

    private static float computeModuleWidth(ResultPoint[] resultPointArr) {
        return (((ResultPoint.distance(resultPointArr[0], resultPointArr[4]) + ResultPoint.distance(resultPointArr[1], resultPointArr[5])) / 34.0f) + ((ResultPoint.distance(resultPointArr[6], resultPointArr[2]) + ResultPoint.distance(resultPointArr[7], resultPointArr[3])) / 36.0f)) / 2.0f;
    }

    private static void correctCodeWordVertices(ResultPoint[] resultPointArr, boolean z3) {
        float y3 = resultPointArr[4].getY() - resultPointArr[6].getY();
        if (z3) {
            y3 = -y3;
        }
        if (y3 > 2.0f) {
            resultPointArr[4] = new ResultPoint(resultPointArr[4].getX(), resultPointArr[4].getY() + (((resultPointArr[4].getX() - resultPointArr[0].getX()) * (resultPointArr[6].getY() - resultPointArr[0].getY())) / (resultPointArr[6].getX() - resultPointArr[0].getX())));
        } else if ((-y3) > 2.0f) {
            resultPointArr[6] = new ResultPoint(resultPointArr[6].getX(), resultPointArr[6].getY() - (((resultPointArr[2].getX() - resultPointArr[6].getX()) * (resultPointArr[2].getY() - resultPointArr[4].getY())) / (resultPointArr[2].getX() - resultPointArr[4].getX())));
        }
        float y4 = resultPointArr[7].getY() - resultPointArr[5].getY();
        if (z3) {
            y4 = -y4;
        }
        if (y4 > 2.0f) {
            resultPointArr[5] = new ResultPoint(resultPointArr[5].getX(), resultPointArr[5].getY() + (((resultPointArr[5].getX() - resultPointArr[1].getX()) * (resultPointArr[7].getY() - resultPointArr[1].getY())) / (resultPointArr[7].getX() - resultPointArr[1].getX())));
        } else if ((-y4) > 2.0f) {
            resultPointArr[7] = new ResultPoint(resultPointArr[7].getX(), resultPointArr[7].getY() - (((resultPointArr[3].getX() - resultPointArr[7].getX()) * (resultPointArr[3].getY() - resultPointArr[5].getY())) / (resultPointArr[3].getX() - resultPointArr[5].getX())));
        }
    }

    private static int[] findGuardPattern(BitMatrix bitMatrix, int i2, int i4, int i5, boolean z3, int[] iArr, int[] iArr2) {
        Arrays.fill(iArr2, 0, iArr2.length, 0);
        int length = iArr.length;
        int i6 = i2;
        int i7 = i6;
        boolean z4 = z3;
        int i8 = 0;
        while (i6 < i2 + i5) {
            if (bitMatrix.get(i6, i4) ^ z4) {
                iArr2[i8] = iArr2[i8] + 1;
            } else {
                int i9 = length - 1;
                if (i8 != i9) {
                    i8++;
                } else if (patternMatchVariance(iArr2, iArr, 204) < 107) {
                    return new int[]{i7, i6};
                } else {
                    i7 += iArr2[0] + iArr2[1];
                    int i10 = length - 2;
                    System.arraycopy(iArr2, 2, iArr2, 0, i10);
                    iArr2[i10] = 0;
                    iArr2[i9] = 0;
                    i8--;
                }
                iArr2[i8] = 1;
                z4 = !z4;
            }
            i6++;
        }
        return null;
    }

    private static ResultPoint[] findVertices(BitMatrix bitMatrix) {
        boolean z3;
        int[] findGuardPattern;
        int[] findGuardPattern2;
        int[] findGuardPattern3;
        int[] findGuardPattern4;
        int height = bitMatrix.getHeight();
        int width = bitMatrix.getWidth();
        ResultPoint[] resultPointArr = new ResultPoint[8];
        int[] iArr = new int[START_PATTERN.length];
        boolean z4 = false;
        int i2 = 0;
        while (true) {
            if (i2 >= height) {
                z3 = false;
                break;
            }
            if (findGuardPattern(bitMatrix, 0, i2, width, false, START_PATTERN, iArr) != null) {
                float f4 = i2;
                resultPointArr[0] = new ResultPoint(findGuardPattern4[0], f4);
                resultPointArr[4] = new ResultPoint(findGuardPattern4[1], f4);
                z3 = true;
                break;
            }
            i2++;
        }
        if (z3) {
            int i4 = height - 1;
            while (true) {
                if (i4 <= 0) {
                    z3 = false;
                    break;
                }
                if (findGuardPattern(bitMatrix, 0, i4, width, false, START_PATTERN, iArr) != null) {
                    float f5 = i4;
                    resultPointArr[1] = new ResultPoint(findGuardPattern3[0], f5);
                    resultPointArr[5] = new ResultPoint(findGuardPattern3[1], f5);
                    z3 = true;
                    break;
                }
                i4--;
            }
        }
        int[] iArr2 = new int[STOP_PATTERN.length];
        if (z3) {
            int i5 = 0;
            while (true) {
                if (i5 >= height) {
                    z3 = false;
                    break;
                }
                if (findGuardPattern(bitMatrix, 0, i5, width, false, STOP_PATTERN, iArr2) != null) {
                    float f6 = i5;
                    resultPointArr[2] = new ResultPoint(findGuardPattern2[1], f6);
                    resultPointArr[6] = new ResultPoint(findGuardPattern2[0], f6);
                    z3 = true;
                    break;
                }
                i5++;
            }
        }
        if (z3) {
            int i6 = height - 1;
            while (true) {
                if (i6 <= 0) {
                    break;
                }
                if (findGuardPattern(bitMatrix, 0, i6, width, false, STOP_PATTERN, iArr2) != null) {
                    float f7 = i6;
                    resultPointArr[3] = new ResultPoint(findGuardPattern[1], f7);
                    resultPointArr[7] = new ResultPoint(findGuardPattern[0], f7);
                    z4 = true;
                    break;
                }
                i6--;
            }
        } else {
            z4 = z3;
        }
        if (z4) {
            return resultPointArr;
        }
        return null;
    }

    private static ResultPoint[] findVertices180(BitMatrix bitMatrix) {
        boolean z3;
        int[] findGuardPattern;
        int[] findGuardPattern2;
        int[] findGuardPattern3;
        int[] findGuardPattern4;
        int height = bitMatrix.getHeight();
        boolean z4 = true;
        int width = bitMatrix.getWidth() >> 1;
        ResultPoint[] resultPointArr = new ResultPoint[8];
        int[] iArr = new int[START_PATTERN_REVERSE.length];
        int i2 = height - 1;
        int i4 = i2;
        while (true) {
            if (i4 <= 0) {
                z3 = false;
                break;
            }
            if (findGuardPattern(bitMatrix, width, i4, width, true, START_PATTERN_REVERSE, iArr) != null) {
                float f4 = i4;
                resultPointArr[0] = new ResultPoint(findGuardPattern4[1], f4);
                resultPointArr[4] = new ResultPoint(findGuardPattern4[0], f4);
                z3 = true;
                break;
            }
            i4--;
        }
        if (z3) {
            int i5 = 0;
            while (true) {
                if (i5 >= height) {
                    z3 = false;
                    break;
                }
                if (findGuardPattern(bitMatrix, width, i5, width, true, START_PATTERN_REVERSE, iArr) != null) {
                    float f5 = i5;
                    resultPointArr[1] = new ResultPoint(findGuardPattern3[1], f5);
                    resultPointArr[5] = new ResultPoint(findGuardPattern3[0], f5);
                    z3 = true;
                    break;
                }
                i5++;
            }
        }
        int[] iArr2 = new int[STOP_PATTERN_REVERSE.length];
        if (z3) {
            while (true) {
                if (i2 <= 0) {
                    z3 = false;
                    break;
                }
                if (findGuardPattern(bitMatrix, 0, i2, width, false, STOP_PATTERN_REVERSE, iArr2) != null) {
                    float f6 = i2;
                    resultPointArr[2] = new ResultPoint(findGuardPattern2[0], f6);
                    resultPointArr[6] = new ResultPoint(findGuardPattern2[1], f6);
                    z3 = true;
                    break;
                }
                i2--;
            }
        }
        if (z3) {
            int i6 = 0;
            while (true) {
                if (i6 >= height) {
                    z4 = false;
                    break;
                }
                if (findGuardPattern(bitMatrix, 0, i6, width, false, STOP_PATTERN_REVERSE, iArr2) != null) {
                    float f7 = i6;
                    resultPointArr[3] = new ResultPoint(findGuardPattern[0], f7);
                    resultPointArr[7] = new ResultPoint(findGuardPattern[1], f7);
                    break;
                }
                i6++;
            }
        } else {
            z4 = z3;
        }
        if (z4) {
            return resultPointArr;
        }
        return null;
    }

    private static int patternMatchVariance(int[] iArr, int[] iArr2, int i2) {
        int length = iArr.length;
        int i4 = 0;
        int i5 = 0;
        for (int i6 = 0; i6 < length; i6++) {
            i4 += iArr[i6];
            i5 += iArr2[i6];
        }
        if (i4 < i5) {
            return Integer.MAX_VALUE;
        }
        int i7 = (i4 << 8) / i5;
        int i8 = (i2 * i7) >> 8;
        int i9 = 0;
        for (int i10 = 0; i10 < length; i10++) {
            int i11 = iArr[i10] << 8;
            int i12 = iArr2[i10] * i7;
            int i13 = i11 > i12 ? i11 - i12 : i12 - i11;
            if (i13 > i8) {
                return Integer.MAX_VALUE;
            }
            i9 += i13;
        }
        return i9 / i4;
    }

    private static int round(float f4) {
        return (int) (f4 + 0.5f);
    }

    private static BitMatrix sampleGrid(BitMatrix bitMatrix, ResultPoint resultPoint, ResultPoint resultPoint2, ResultPoint resultPoint3, ResultPoint resultPoint4, int i2) throws NotFoundException {
        float f4 = i2;
        return GridSampler.getInstance().sampleGrid(bitMatrix, i2, i2, 0.0f, 0.0f, f4, 0.0f, f4, f4, 0.0f, f4, resultPoint.getX(), resultPoint.getY(), resultPoint3.getX(), resultPoint3.getY(), resultPoint4.getX(), resultPoint4.getY(), resultPoint2.getX(), resultPoint2.getY());
    }

    public DetectorResult detect() throws NotFoundException {
        return detect(null);
    }

    public DetectorResult detect(Map<DecodeHintType, ?> map) throws NotFoundException {
        BitMatrix blackMatrix = this.image.getBlackMatrix();
        ResultPoint[] findVertices = findVertices(blackMatrix);
        if (findVertices == null) {
            findVertices = findVertices180(blackMatrix);
            if (findVertices != null) {
                correctCodeWordVertices(findVertices, true);
            }
        } else {
            correctCodeWordVertices(findVertices, false);
        }
        if (findVertices != null) {
            float computeModuleWidth = computeModuleWidth(findVertices);
            if (computeModuleWidth >= 1.0f) {
                int computeDimension = computeDimension(findVertices[4], findVertices[6], findVertices[5], findVertices[7], computeModuleWidth);
                if (computeDimension >= 1) {
                    return new DetectorResult(sampleGrid(blackMatrix, findVertices[4], findVertices[5], findVertices[6], findVertices[7], computeDimension), new ResultPoint[]{findVertices[5], findVertices[4], findVertices[6], findVertices[7]});
                }
                throw NotFoundException.getNotFoundInstance();
            }
            throw NotFoundException.getNotFoundInstance();
        }
        throw NotFoundException.getNotFoundInstance();
    }
}
