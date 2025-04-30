package com.google.zxing.common;

import com.google.zxing.Binarizer;
import com.google.zxing.LuminanceSource;
import com.google.zxing.NotFoundException;
import java.lang.reflect.Array;
/* loaded from: classes2.dex */
public final class HybridBinarizer extends GlobalHistogramBinarizer {
    private static final int BLOCK_SIZE = 8;
    private static final int BLOCK_SIZE_MASK = 7;
    private static final int BLOCK_SIZE_POWER = 3;
    private static final int MINIMUM_DIMENSION = 40;
    private BitMatrix matrix;

    public HybridBinarizer(LuminanceSource luminanceSource) {
        super(luminanceSource);
    }

    private static int[][] calculateBlackPoints(byte[] bArr, int i2, int i4, int i5, int i6) {
        int[][] iArr = (int[][]) Array.newInstance(int.class, i4, i2);
        for (int i7 = 0; i7 < i4; i7++) {
            int i8 = i7 << 3;
            if (i8 + 8 >= i6) {
                i8 = i6 - 8;
            }
            for (int i9 = 0; i9 < i2; i9++) {
                int i10 = i9 << 3;
                if (i10 + 8 >= i5) {
                    i10 = i5 - 8;
                }
                int i11 = (i8 * i5) + i10;
                int i12 = 0;
                int i13 = 0;
                int i14 = 0;
                int i15 = 255;
                while (true) {
                    if (i12 >= 8) {
                        break;
                    }
                    int i16 = 0;
                    for (int i17 = 8; i16 < i17; i17 = 8) {
                        int i18 = bArr[i11 + i16] & 255;
                        i13 += i18;
                        if (i18 < i15) {
                            i15 = i18;
                        }
                        if (i18 > i14) {
                            i14 = i18;
                        }
                        i16++;
                    }
                    i12++;
                    i11 += i5;
                }
                int i19 = i13 >> 6;
                if (i14 - i15 <= 24) {
                    i19 = i15 >> 1;
                    if (i7 > 0 && i9 > 0) {
                        int i20 = i7 - 1;
                        int i21 = i9 - 1;
                        int i22 = ((iArr[i20][i9] + (iArr[i7][i21] * 2)) + iArr[i20][i21]) >> 2;
                        if (i15 < i22) {
                            i19 = i22;
                        }
                        iArr[i7][i9] = i19;
                    }
                }
                iArr[i7][i9] = i19;
            }
        }
        return iArr;
    }

    private static void calculateThresholdForBlock(byte[] bArr, int i2, int i4, int i5, int i6, int[][] iArr, BitMatrix bitMatrix) {
        int i7 = 0;
        while (i7 < i4) {
            int i8 = i7 << 3;
            if (i8 + 8 >= i6) {
                i8 = i6 - 8;
            }
            int i9 = i8;
            int i10 = 0;
            while (i10 < i2) {
                int i11 = i10 << 3;
                if (i11 + 8 >= i5) {
                    i11 = i5 - 8;
                }
                int i12 = i11;
                int i13 = i10 > 1 ? i10 : 2;
                if (i13 >= i2 - 2) {
                    i13 = i2 - 3;
                }
                int i14 = i7 > 1 ? i7 : 2;
                if (i14 >= i4 - 2) {
                    i14 = i4 - 3;
                }
                int i15 = 0;
                for (int i16 = -2; i16 <= 2; i16++) {
                    int[] iArr2 = iArr[i14 + i16];
                    i15 += iArr2[i13 - 2] + iArr2[i13 - 1] + iArr2[i13] + iArr2[i13 + 1] + iArr2[i13 + 2];
                }
                threshold8x8Block(bArr, i12, i9, i15 / 25, i5, bitMatrix);
                i10++;
            }
            i7++;
        }
    }

    private static void threshold8x8Block(byte[] bArr, int i2, int i4, int i5, int i6, BitMatrix bitMatrix) {
        int i7 = (i4 * i6) + i2;
        int i8 = 0;
        while (i8 < 8) {
            for (int i9 = 0; i9 < 8; i9++) {
                if ((bArr[i7 + i9] & 255) <= i5) {
                    bitMatrix.set(i2 + i9, i4 + i8);
                }
            }
            i8++;
            i7 += i6;
        }
    }

    @Override // com.google.zxing.common.GlobalHistogramBinarizer, com.google.zxing.Binarizer
    public Binarizer createBinarizer(LuminanceSource luminanceSource) {
        return new HybridBinarizer(luminanceSource);
    }

    @Override // com.google.zxing.common.GlobalHistogramBinarizer, com.google.zxing.Binarizer
    public BitMatrix getBlackMatrix() throws NotFoundException {
        BitMatrix bitMatrix = this.matrix;
        if (bitMatrix != null) {
            return bitMatrix;
        }
        LuminanceSource luminanceSource = getLuminanceSource();
        if (luminanceSource.getWidth() >= 40 && luminanceSource.getHeight() >= 40) {
            byte[] matrix = luminanceSource.getMatrix();
            int width = luminanceSource.getWidth();
            int height = luminanceSource.getHeight();
            int i2 = width >> 3;
            if ((width & 7) != 0) {
                i2++;
            }
            int i4 = i2;
            int i5 = height >> 3;
            if ((height & 7) != 0) {
                i5++;
            }
            int i6 = i5;
            int[][] calculateBlackPoints = calculateBlackPoints(matrix, i4, i6, width, height);
            BitMatrix bitMatrix2 = new BitMatrix(width, height);
            calculateThresholdForBlock(matrix, i4, i6, width, height, calculateBlackPoints, bitMatrix2);
            this.matrix = bitMatrix2;
        } else {
            this.matrix = super.getBlackMatrix();
        }
        return this.matrix;
    }
}
