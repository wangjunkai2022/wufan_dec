package com.google.zxing.common.reedsolomon;

import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
public final class ReedSolomonEncoder {
    private final List<GenericGFPoly> cachedGenerators;
    private final GenericGF field;

    public ReedSolomonEncoder(GenericGF genericGF) {
        if (GenericGF.QR_CODE_FIELD_256.equals(genericGF)) {
            this.field = genericGF;
            ArrayList arrayList = new ArrayList();
            this.cachedGenerators = arrayList;
            arrayList.add(new GenericGFPoly(genericGF, new int[]{1}));
            return;
        }
        throw new IllegalArgumentException("Only QR Code is supported at this time");
    }

    private GenericGFPoly buildGenerator(int i2) {
        if (i2 >= this.cachedGenerators.size()) {
            List<GenericGFPoly> list = this.cachedGenerators;
            GenericGFPoly genericGFPoly = list.get(list.size() - 1);
            for (int size = this.cachedGenerators.size(); size <= i2; size++) {
                GenericGF genericGF = this.field;
                genericGFPoly = genericGFPoly.multiply(new GenericGFPoly(genericGF, new int[]{1, genericGF.exp(size - 1)}));
                this.cachedGenerators.add(genericGFPoly);
            }
        }
        return this.cachedGenerators.get(i2);
    }

    public void encode(int[] iArr, int i2) {
        if (i2 != 0) {
            int length = iArr.length - i2;
            if (length > 0) {
                GenericGFPoly buildGenerator = buildGenerator(i2);
                int[] iArr2 = new int[length];
                System.arraycopy(iArr, 0, iArr2, 0, length);
                int[] coefficients = new GenericGFPoly(this.field, iArr2).multiplyByMonomial(i2, 1).divide(buildGenerator)[1].getCoefficients();
                int length2 = i2 - coefficients.length;
                for (int i4 = 0; i4 < length2; i4++) {
                    iArr[length + i4] = 0;
                }
                System.arraycopy(coefficients, 0, iArr, length + length2, coefficients.length);
                return;
            }
            throw new IllegalArgumentException("No data bytes provided");
        }
        throw new IllegalArgumentException("No error correction bytes");
    }
}
