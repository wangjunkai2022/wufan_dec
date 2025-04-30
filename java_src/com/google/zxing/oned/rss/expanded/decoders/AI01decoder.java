package com.google.zxing.oned.rss.expanded.decoders;

import com.google.zxing.common.BitArray;
/* loaded from: classes2.dex */
abstract class AI01decoder extends AbstractExpandedDecoder {
    protected static final int GTIN_SIZE = 40;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AI01decoder(BitArray bitArray) {
        super(bitArray);
    }

    private static void appendCheckDigit(StringBuilder sb, int i2) {
        int i4 = 0;
        for (int i5 = 0; i5 < 13; i5++) {
            int charAt = sb.charAt(i5 + i2) - '0';
            if ((i5 & 1) == 0) {
                charAt *= 3;
            }
            i4 += charAt;
        }
        int i6 = 10 - (i4 % 10);
        sb.append(i6 != 10 ? i6 : 0);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void encodeCompressedGtin(StringBuilder sb, int i2) {
        sb.append("(01)");
        int length = sb.length();
        sb.append('9');
        encodeCompressedGtinWithoutAI(sb, i2, length);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void encodeCompressedGtinWithoutAI(StringBuilder sb, int i2, int i4) {
        for (int i5 = 0; i5 < 4; i5++) {
            int extractNumericValueFromBitArray = getGeneralDecoder().extractNumericValueFromBitArray((i5 * 10) + i2, 10);
            if (extractNumericValueFromBitArray / 100 == 0) {
                sb.append('0');
            }
            if (extractNumericValueFromBitArray / 10 == 0) {
                sb.append('0');
            }
            sb.append(extractNumericValueFromBitArray);
        }
        appendCheckDigit(sb, i4);
    }
}
