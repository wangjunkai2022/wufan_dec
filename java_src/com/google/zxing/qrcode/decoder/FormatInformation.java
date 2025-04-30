package com.google.zxing.qrcode.decoder;
/* loaded from: classes2.dex */
final class FormatInformation {
    private final byte dataMask;
    private final ErrorCorrectionLevel errorCorrectionLevel;
    private static final int FORMAT_INFO_MASK_QR = 21522;
    private static final int[][] FORMAT_INFO_DECODE_LOOKUP = {new int[]{FORMAT_INFO_MASK_QR, 0}, new int[]{20773, 1}, new int[]{24188, 2}, new int[]{23371, 3}, new int[]{17913, 4}, new int[]{16590, 5}, new int[]{20375, 6}, new int[]{19104, 7}, new int[]{30660, 8}, new int[]{29427, 9}, new int[]{32170, 10}, new int[]{30877, 11}, new int[]{26159, 12}, new int[]{25368, 13}, new int[]{27713, 14}, new int[]{26998, 15}, new int[]{5769, 16}, new int[]{5054, 17}, new int[]{7399, 18}, new int[]{6608, 19}, new int[]{1890, 20}, new int[]{597, 21}, new int[]{3340, 22}, new int[]{2107, 23}, new int[]{13663, 24}, new int[]{12392, 25}, new int[]{16177, 26}, new int[]{14854, 27}, new int[]{9396, 28}, new int[]{8579, 29}, new int[]{11994, 30}, new int[]{11245, 31}};
    private static final int[] BITS_SET_IN_HALF_BYTE = {0, 1, 1, 2, 1, 2, 2, 3, 1, 2, 2, 3, 2, 3, 3, 4};

    private FormatInformation(int i2) {
        this.errorCorrectionLevel = ErrorCorrectionLevel.forBits((i2 >> 3) & 3);
        this.dataMask = (byte) (i2 & 7);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static FormatInformation decodeFormatInformation(int i2, int i4) {
        FormatInformation doDecodeFormatInformation = doDecodeFormatInformation(i2, i4);
        return doDecodeFormatInformation != null ? doDecodeFormatInformation : doDecodeFormatInformation(i2 ^ FORMAT_INFO_MASK_QR, i4 ^ FORMAT_INFO_MASK_QR);
    }

    private static FormatInformation doDecodeFormatInformation(int i2, int i4) {
        int[][] iArr;
        int numBitsDiffering;
        int i5 = Integer.MAX_VALUE;
        int i6 = 0;
        for (int[] iArr2 : FORMAT_INFO_DECODE_LOOKUP) {
            int i7 = iArr2[0];
            if (i7 != i2 && i7 != i4) {
                int numBitsDiffering2 = numBitsDiffering(i2, i7);
                if (numBitsDiffering2 < i5) {
                    i6 = iArr2[1];
                    i5 = numBitsDiffering2;
                }
                if (i2 != i4 && (numBitsDiffering = numBitsDiffering(i4, i7)) < i5) {
                    i6 = iArr2[1];
                    i5 = numBitsDiffering;
                }
            } else {
                return new FormatInformation(iArr2[1]);
            }
        }
        if (i5 <= 3) {
            return new FormatInformation(i6);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int numBitsDiffering(int i2, int i4) {
        int i5 = i2 ^ i4;
        int[] iArr = BITS_SET_IN_HALF_BYTE;
        return iArr[i5 & 15] + iArr[(i5 >>> 4) & 15] + iArr[(i5 >>> 8) & 15] + iArr[(i5 >>> 12) & 15] + iArr[(i5 >>> 16) & 15] + iArr[(i5 >>> 20) & 15] + iArr[(i5 >>> 24) & 15] + iArr[(i5 >>> 28) & 15];
    }

    public boolean equals(Object obj) {
        if (obj instanceof FormatInformation) {
            FormatInformation formatInformation = (FormatInformation) obj;
            return this.errorCorrectionLevel == formatInformation.errorCorrectionLevel && this.dataMask == formatInformation.dataMask;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public byte getDataMask() {
        return this.dataMask;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ErrorCorrectionLevel getErrorCorrectionLevel() {
        return this.errorCorrectionLevel;
    }

    public int hashCode() {
        return (this.errorCorrectionLevel.ordinal() << 3) | this.dataMask;
    }
}
