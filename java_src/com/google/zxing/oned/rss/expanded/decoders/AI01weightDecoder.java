package com.google.zxing.oned.rss.expanded.decoders;

import com.google.zxing.common.BitArray;
/* loaded from: classes2.dex */
abstract class AI01weightDecoder extends AI01decoder {
    /* JADX INFO: Access modifiers changed from: package-private */
    public AI01weightDecoder(BitArray bitArray) {
        super(bitArray);
    }

    protected abstract void addWeightCode(StringBuilder sb, int i2);

    protected abstract int checkWeight(int i2);

    /* JADX INFO: Access modifiers changed from: protected */
    public void encodeCompressedWeight(StringBuilder sb, int i2, int i4) {
        int extractNumericValueFromBitArray = getGeneralDecoder().extractNumericValueFromBitArray(i2, i4);
        addWeightCode(sb, extractNumericValueFromBitArray);
        int checkWeight = checkWeight(extractNumericValueFromBitArray);
        int i5 = 100000;
        for (int i6 = 0; i6 < 5; i6++) {
            if (checkWeight / i5 == 0) {
                sb.append('0');
            }
            i5 /= 10;
        }
        sb.append(checkWeight);
    }
}
