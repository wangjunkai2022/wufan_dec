package com.google.zxing.qrcode.decoder;

import com.google.zxing.common.BitMatrix;
/* loaded from: classes2.dex */
abstract class DataMask {
    private static final DataMask[] DATA_MASKS = {new DataMask000(), new DataMask001(), new DataMask010(), new DataMask011(), new DataMask100(), new DataMask101(), new DataMask110(), new DataMask111()};

    /* loaded from: classes2.dex */
    private static class DataMask000 extends DataMask {
        private DataMask000() {
            super();
        }

        @Override // com.google.zxing.qrcode.decoder.DataMask
        boolean isMasked(int i2, int i4) {
            return ((i2 + i4) & 1) == 0;
        }
    }

    /* loaded from: classes2.dex */
    private static class DataMask001 extends DataMask {
        private DataMask001() {
            super();
        }

        @Override // com.google.zxing.qrcode.decoder.DataMask
        boolean isMasked(int i2, int i4) {
            return (i2 & 1) == 0;
        }
    }

    /* loaded from: classes2.dex */
    private static class DataMask010 extends DataMask {
        private DataMask010() {
            super();
        }

        @Override // com.google.zxing.qrcode.decoder.DataMask
        boolean isMasked(int i2, int i4) {
            return i4 % 3 == 0;
        }
    }

    /* loaded from: classes2.dex */
    private static class DataMask011 extends DataMask {
        private DataMask011() {
            super();
        }

        @Override // com.google.zxing.qrcode.decoder.DataMask
        boolean isMasked(int i2, int i4) {
            return (i2 + i4) % 3 == 0;
        }
    }

    /* loaded from: classes2.dex */
    private static class DataMask100 extends DataMask {
        private DataMask100() {
            super();
        }

        @Override // com.google.zxing.qrcode.decoder.DataMask
        boolean isMasked(int i2, int i4) {
            return (((i2 >>> 1) + (i4 / 3)) & 1) == 0;
        }
    }

    /* loaded from: classes2.dex */
    private static class DataMask101 extends DataMask {
        private DataMask101() {
            super();
        }

        @Override // com.google.zxing.qrcode.decoder.DataMask
        boolean isMasked(int i2, int i4) {
            int i5 = i2 * i4;
            return (i5 & 1) + (i5 % 3) == 0;
        }
    }

    /* loaded from: classes2.dex */
    private static class DataMask110 extends DataMask {
        private DataMask110() {
            super();
        }

        @Override // com.google.zxing.qrcode.decoder.DataMask
        boolean isMasked(int i2, int i4) {
            int i5 = i2 * i4;
            return (((i5 & 1) + (i5 % 3)) & 1) == 0;
        }
    }

    /* loaded from: classes2.dex */
    private static class DataMask111 extends DataMask {
        private DataMask111() {
            super();
        }

        @Override // com.google.zxing.qrcode.decoder.DataMask
        boolean isMasked(int i2, int i4) {
            return ((((i2 + i4) & 1) + ((i2 * i4) % 3)) & 1) == 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static DataMask forReference(int i2) {
        if (i2 >= 0 && i2 <= 7) {
            return DATA_MASKS[i2];
        }
        throw new IllegalArgumentException();
    }

    abstract boolean isMasked(int i2, int i4);

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void unmaskBitMatrix(BitMatrix bitMatrix, int i2) {
        for (int i4 = 0; i4 < i2; i4++) {
            for (int i5 = 0; i5 < i2; i5++) {
                if (isMasked(i4, i5)) {
                    bitMatrix.flip(i5, i4);
                }
            }
        }
    }

    private DataMask() {
    }
}
