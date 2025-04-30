package com.google.zxing.pdf417.encoder;

import java.lang.reflect.Array;
/* loaded from: classes2.dex */
final class BarcodeMatrix {
    private int currentRow;
    private final int height;
    private final BarcodeRow[] matrix;
    private final int width;

    /* JADX INFO: Access modifiers changed from: package-private */
    public BarcodeMatrix(int i2, int i4) {
        int i5 = i2 + 2;
        BarcodeRow[] barcodeRowArr = new BarcodeRow[i5];
        this.matrix = barcodeRowArr;
        int length = barcodeRowArr.length;
        for (int i6 = 0; i6 < length; i6++) {
            this.matrix[i6] = new BarcodeRow(((i4 + 4) * 17) + 1);
        }
        this.width = i4 * 17;
        this.height = i5;
        this.currentRow = 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public BarcodeRow getCurrentRow() {
        return this.matrix[this.currentRow];
    }

    byte[][] getMatrix() {
        return getScaledMatrix(1, 1);
    }

    byte[][] getScaledMatrix(int i2) {
        return getScaledMatrix(i2, i2);
    }

    void set(int i2, int i4, byte b4) {
        this.matrix[i4].set(i2, b4);
    }

    void setMatrix(int i2, int i4, boolean z3) {
        set(i2, i4, z3 ? (byte) 1 : (byte) 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void startRow() {
        this.currentRow++;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public byte[][] getScaledMatrix(int i2, int i4) {
        byte[][] bArr = (byte[][]) Array.newInstance(byte.class, this.height * i4, this.width * i2);
        int i5 = this.height * i4;
        for (int i6 = 0; i6 < i5; i6++) {
            bArr[(i5 - i6) - 1] = this.matrix[i6 / i4].getScaledRow(i2);
        }
        return bArr;
    }
}
