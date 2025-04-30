package com.google.zxing.pdf417.encoder;
/* loaded from: classes2.dex */
final class BarcodeRow {
    private int currentLocation = 0;
    private final byte[] row;

    /* JADX INFO: Access modifiers changed from: package-private */
    public BarcodeRow(int i2) {
        this.row = new byte[i2];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void addBar(boolean z3, int i2) {
        for (int i4 = 0; i4 < i2; i4++) {
            int i5 = this.currentLocation;
            this.currentLocation = i5 + 1;
            set(i5, z3);
        }
    }

    byte[] getRow() {
        return this.row;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public byte[] getScaledRow(int i2) {
        int length = this.row.length * i2;
        byte[] bArr = new byte[length];
        for (int i4 = 0; i4 < length; i4++) {
            bArr[i4] = this.row[i4 / i2];
        }
        return bArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void set(int i2, byte b4) {
        this.row[i2] = b4;
    }

    void set(int i2, boolean z3) {
        this.row[i2] = z3 ? (byte) 1 : (byte) 0;
    }
}
