package com.google.zxing.common;

import com.google.zxing.NotFoundException;
/* loaded from: classes2.dex */
public final class DefaultGridSampler extends GridSampler {
    @Override // com.google.zxing.common.GridSampler
    public BitMatrix sampleGrid(BitMatrix bitMatrix, int i2, int i4, float f4, float f5, float f6, float f7, float f8, float f9, float f10, float f11, float f12, float f13, float f14, float f15, float f16, float f17, float f18, float f19) throws NotFoundException {
        return sampleGrid(bitMatrix, i2, i4, PerspectiveTransform.quadrilateralToQuadrilateral(f4, f5, f6, f7, f8, f9, f10, f11, f12, f13, f14, f15, f16, f17, f18, f19));
    }

    @Override // com.google.zxing.common.GridSampler
    public BitMatrix sampleGrid(BitMatrix bitMatrix, int i2, int i4, PerspectiveTransform perspectiveTransform) throws NotFoundException {
        if (i2 > 0 && i4 > 0) {
            BitMatrix bitMatrix2 = new BitMatrix(i2, i4);
            int i5 = i2 << 1;
            float[] fArr = new float[i5];
            for (int i6 = 0; i6 < i4; i6++) {
                float f4 = i6 + 0.5f;
                for (int i7 = 0; i7 < i5; i7 += 2) {
                    fArr[i7] = (i7 >> 1) + 0.5f;
                    fArr[i7 + 1] = f4;
                }
                perspectiveTransform.transformPoints(fArr);
                GridSampler.checkAndNudgePoints(bitMatrix, fArr);
                for (int i8 = 0; i8 < i5; i8 += 2) {
                    try {
                        if (bitMatrix.get((int) fArr[i8], (int) fArr[i8 + 1])) {
                            bitMatrix2.set(i8 >> 1, i6);
                        }
                    } catch (ArrayIndexOutOfBoundsException unused) {
                        throw NotFoundException.getNotFoundInstance();
                    }
                }
            }
            return bitMatrix2;
        }
        throw NotFoundException.getNotFoundInstance();
    }
}
