package com.google.zxing.common;

import com.google.zxing.Binarizer;
import com.google.zxing.LuminanceSource;
import com.google.zxing.NotFoundException;
/* loaded from: classes2.dex */
public class GlobalHistogramBinarizer extends Binarizer {
    private static final int LUMINANCE_BITS = 5;
    private static final int LUMINANCE_BUCKETS = 32;
    private static final int LUMINANCE_SHIFT = 3;
    private final int[] buckets;
    private byte[] luminances;

    public GlobalHistogramBinarizer(LuminanceSource luminanceSource) {
        super(luminanceSource);
        this.luminances = new byte[0];
        this.buckets = new int[32];
    }

    private static int estimateBlackPoint(int[] iArr) throws NotFoundException {
        int length = iArr.length;
        int i2 = 0;
        int i4 = 0;
        int i5 = 0;
        for (int i6 = 0; i6 < length; i6++) {
            if (iArr[i6] > i2) {
                i2 = iArr[i6];
                i5 = i6;
            }
            if (iArr[i6] > i4) {
                i4 = iArr[i6];
            }
        }
        int i7 = 0;
        int i8 = 0;
        for (int i9 = 0; i9 < length; i9++) {
            int i10 = i9 - i5;
            int i11 = iArr[i9] * i10 * i10;
            if (i11 > i8) {
                i7 = i9;
                i8 = i11;
            }
        }
        if (i5 <= i7) {
            int i12 = i5;
            i5 = i7;
            i7 = i12;
        }
        if (i5 - i7 > (length >> 4)) {
            int i13 = i5 - 1;
            int i14 = i13;
            int i15 = -1;
            while (i13 > i7) {
                int i16 = i13 - i7;
                int i17 = i16 * i16 * (i5 - i13) * (i4 - iArr[i13]);
                if (i17 > i15) {
                    i14 = i13;
                    i15 = i17;
                }
                i13--;
            }
            return i14 << 3;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    private void initArrays(int i2) {
        if (this.luminances.length < i2) {
            this.luminances = new byte[i2];
        }
        for (int i4 = 0; i4 < 32; i4++) {
            this.buckets[i4] = 0;
        }
    }

    @Override // com.google.zxing.Binarizer
    public Binarizer createBinarizer(LuminanceSource luminanceSource) {
        return new GlobalHistogramBinarizer(luminanceSource);
    }

    @Override // com.google.zxing.Binarizer
    public BitMatrix getBlackMatrix() throws NotFoundException {
        LuminanceSource luminanceSource = getLuminanceSource();
        int width = luminanceSource.getWidth();
        int height = luminanceSource.getHeight();
        BitMatrix bitMatrix = new BitMatrix(width, height);
        initArrays(width);
        int[] iArr = this.buckets;
        for (int i2 = 1; i2 < 5; i2++) {
            byte[] row = luminanceSource.getRow((height * i2) / 5, this.luminances);
            int i4 = (width << 2) / 5;
            for (int i5 = width / 5; i5 < i4; i5++) {
                int i6 = (row[i5] & 255) >> 3;
                iArr[i6] = iArr[i6] + 1;
            }
        }
        int estimateBlackPoint = estimateBlackPoint(iArr);
        byte[] matrix = luminanceSource.getMatrix();
        for (int i7 = 0; i7 < height; i7++) {
            int i8 = i7 * width;
            for (int i9 = 0; i9 < width; i9++) {
                if ((matrix[i8 + i9] & 255) < estimateBlackPoint) {
                    bitMatrix.set(i9, i7);
                }
            }
        }
        return bitMatrix;
    }

    @Override // com.google.zxing.Binarizer
    public BitArray getBlackRow(int i2, BitArray bitArray) throws NotFoundException {
        LuminanceSource luminanceSource = getLuminanceSource();
        int width = luminanceSource.getWidth();
        if (bitArray != null && bitArray.getSize() >= width) {
            bitArray.clear();
        } else {
            bitArray = new BitArray(width);
        }
        initArrays(width);
        byte[] row = luminanceSource.getRow(i2, this.luminances);
        int[] iArr = this.buckets;
        for (int i4 = 0; i4 < width; i4++) {
            int i5 = (row[i4] & 255) >> 3;
            iArr[i5] = iArr[i5] + 1;
        }
        int estimateBlackPoint = estimateBlackPoint(iArr);
        int i6 = row[1] & 255;
        int i7 = 1;
        int i8 = row[0] & 255;
        int i9 = i6;
        while (i7 < width - 1) {
            int i10 = i7 + 1;
            int i11 = row[i10] & 255;
            if (((((i9 << 2) - i8) - i11) >> 1) < estimateBlackPoint) {
                bitArray.set(i7);
            }
            i8 = i9;
            i7 = i10;
            i9 = i11;
        }
        return bitArray;
    }
}
