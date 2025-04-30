package com.google.zxing.qrcode.encoder;
/* loaded from: classes2.dex */
final class MaskUtil {
    private MaskUtil() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int applyMaskPenaltyRule1(ByteMatrix byteMatrix) {
        return applyMaskPenaltyRule1Internal(byteMatrix, true) + applyMaskPenaltyRule1Internal(byteMatrix, false);
    }

    private static int applyMaskPenaltyRule1Internal(ByteMatrix byteMatrix, boolean z3) {
        int height = z3 ? byteMatrix.getHeight() : byteMatrix.getWidth();
        int width = z3 ? byteMatrix.getWidth() : byteMatrix.getHeight();
        byte[][] array = byteMatrix.getArray();
        byte b4 = -1;
        int i2 = 0;
        for (int i4 = 0; i4 < height; i4++) {
            int i5 = 0;
            for (int i6 = 0; i6 < width; i6++) {
                byte b5 = z3 ? array[i4][i6] : array[i6][i4];
                if (b5 == b4) {
                    i5++;
                    if (i5 == 5) {
                        i2 += 3;
                    } else if (i5 > 5) {
                        i2++;
                    }
                } else {
                    b4 = b5;
                    i5 = 1;
                }
            }
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int applyMaskPenaltyRule2(ByteMatrix byteMatrix) {
        byte[][] array = byteMatrix.getArray();
        int width = byteMatrix.getWidth();
        int height = byteMatrix.getHeight();
        int i2 = 0;
        for (int i4 = 0; i4 < height - 1; i4++) {
            int i5 = 0;
            while (i5 < width - 1) {
                byte b4 = array[i4][i5];
                int i6 = i5 + 1;
                if (b4 == array[i4][i6]) {
                    int i7 = i4 + 1;
                    if (b4 == array[i7][i5] && b4 == array[i7][i6]) {
                        i2 += 3;
                    }
                }
                i5 = i6;
            }
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int applyMaskPenaltyRule3(ByteMatrix byteMatrix) {
        int i2;
        int i4;
        int i5;
        int i6;
        byte[][] array = byteMatrix.getArray();
        int width = byteMatrix.getWidth();
        int height = byteMatrix.getHeight();
        int i7 = 0;
        for (int i8 = 0; i8 < height; i8++) {
            for (int i9 = 0; i9 < width; i9++) {
                int i10 = i9 + 6;
                if (i10 < width && array[i8][i9] == 1 && array[i8][i9 + 1] == 0 && array[i8][i9 + 2] == 1 && array[i8][i9 + 3] == 1 && array[i8][i9 + 4] == 1 && array[i8][i9 + 5] == 0 && array[i8][i10] == 1 && (((i5 = i9 + 10) < width && array[i8][i9 + 7] == 0 && array[i8][i9 + 8] == 0 && array[i8][i9 + 9] == 0 && array[i8][i5] == 0) || (i9 - 4 >= 0 && array[i8][i9 - 1] == 0 && array[i8][i9 - 2] == 0 && array[i8][i9 - 3] == 0 && array[i8][i6] == 0))) {
                    i7 += 40;
                }
                int i11 = i8 + 6;
                if (i11 < height && array[i8][i9] == 1 && array[i8 + 1][i9] == 0 && array[i8 + 2][i9] == 1 && array[i8 + 3][i9] == 1 && array[i8 + 4][i9] == 1 && array[i8 + 5][i9] == 0 && array[i11][i9] == 1 && (((i2 = i8 + 10) < height && array[i8 + 7][i9] == 0 && array[i8 + 8][i9] == 0 && array[i8 + 9][i9] == 0 && array[i2][i9] == 0) || (i8 - 4 >= 0 && array[i8 - 1][i9] == 0 && array[i8 - 2][i9] == 0 && array[i8 - 3][i9] == 0 && array[i4][i9] == 0))) {
                    i7 += 40;
                }
            }
        }
        return i7;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int applyMaskPenaltyRule4(ByteMatrix byteMatrix) {
        byte[][] array = byteMatrix.getArray();
        int width = byteMatrix.getWidth();
        int height = byteMatrix.getHeight();
        int i2 = 0;
        for (int i4 = 0; i4 < height; i4++) {
            for (int i5 = 0; i5 < width; i5++) {
                if (array[i4][i5] == 1) {
                    i2++;
                }
            }
        }
        double d4 = i2;
        double height2 = byteMatrix.getHeight() * byteMatrix.getWidth();
        Double.isNaN(d4);
        Double.isNaN(height2);
        return (Math.abs((int) (((d4 / height2) * 100.0d) - 50.0d)) / 5) * 10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean getDataMaskBit(int i2, int i4, int i5) {
        int i6;
        int i7;
        int i8;
        int i9;
        if (QRCode.isValidMaskPattern(i2)) {
            switch (i2) {
                case 0:
                    i5 += i4;
                case 1:
                    i6 = i5 & 1;
                    break;
                case 2:
                    i6 = i4 % 3;
                    break;
                case 3:
                    i6 = (i5 + i4) % 3;
                    break;
                case 4:
                    i7 = i5 >>> 1;
                    i8 = i4 / 3;
                    i9 = i7 + i8;
                    i6 = i9 & 1;
                    break;
                case 5:
                    int i10 = i5 * i4;
                    i6 = (i10 & 1) + (i10 % 3);
                    break;
                case 6:
                    int i11 = i5 * i4;
                    i9 = (i11 & 1) + (i11 % 3);
                    i6 = i9 & 1;
                    break;
                case 7:
                    i7 = (i5 * i4) % 3;
                    i8 = (i5 + i4) & 1;
                    i9 = i7 + i8;
                    i6 = i9 & 1;
                    break;
                default:
                    throw new IllegalArgumentException("Invalid mask pattern: " + i2);
            }
            return i6 == 0;
        }
        throw new IllegalArgumentException("Invalid mask pattern");
    }
}
