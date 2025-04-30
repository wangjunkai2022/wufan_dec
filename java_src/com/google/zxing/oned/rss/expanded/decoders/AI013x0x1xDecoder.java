package com.google.zxing.oned.rss.expanded.decoders;

import com.google.zxing.NotFoundException;
import com.google.zxing.common.BitArray;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class AI013x0x1xDecoder extends AI01weightDecoder {
    private static final int DATE_SIZE = 16;
    private static final int HEADER_SIZE = 8;
    private static final int WEIGHT_SIZE = 20;
    private final String dateCode;
    private final String firstAIdigits;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AI013x0x1xDecoder(BitArray bitArray, String str, String str2) {
        super(bitArray);
        this.dateCode = str2;
        this.firstAIdigits = str;
    }

    private void encodeCompressedDate(StringBuilder sb, int i2) {
        int extractNumericValueFromBitArray = getGeneralDecoder().extractNumericValueFromBitArray(i2, 16);
        if (extractNumericValueFromBitArray == 38400) {
            return;
        }
        sb.append('(');
        sb.append(this.dateCode);
        sb.append(')');
        int i4 = extractNumericValueFromBitArray % 32;
        int i5 = extractNumericValueFromBitArray / 32;
        int i6 = (i5 % 12) + 1;
        int i7 = i5 / 12;
        if (i7 / 10 == 0) {
            sb.append('0');
        }
        sb.append(i7);
        if (i6 / 10 == 0) {
            sb.append('0');
        }
        sb.append(i6);
        if (i4 / 10 == 0) {
            sb.append('0');
        }
        sb.append(i4);
    }

    @Override // com.google.zxing.oned.rss.expanded.decoders.AI01weightDecoder
    protected void addWeightCode(StringBuilder sb, int i2) {
        sb.append('(');
        sb.append(this.firstAIdigits);
        sb.append(i2 / 100000);
        sb.append(')');
    }

    @Override // com.google.zxing.oned.rss.expanded.decoders.AI01weightDecoder
    protected int checkWeight(int i2) {
        return i2 % 100000;
    }

    @Override // com.google.zxing.oned.rss.expanded.decoders.AbstractExpandedDecoder
    public String parseInformation() throws NotFoundException {
        if (getInformation().getSize() == 84) {
            StringBuilder sb = new StringBuilder();
            encodeCompressedGtin(sb, 8);
            encodeCompressedWeight(sb, 48, 20);
            encodeCompressedDate(sb, 68);
            return sb.toString();
        }
        throw NotFoundException.getNotFoundInstance();
    }
}
