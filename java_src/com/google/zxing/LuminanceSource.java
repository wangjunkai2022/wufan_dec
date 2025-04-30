package com.google.zxing;

import external.org.apache.commons.lang3.d;
/* loaded from: classes2.dex */
public abstract class LuminanceSource {
    private final int height;
    private final int width;

    /* JADX INFO: Access modifiers changed from: protected */
    public LuminanceSource(int i2, int i4) {
        this.width = i2;
        this.height = i4;
    }

    public LuminanceSource crop(int i2, int i4, int i5, int i6) {
        throw new UnsupportedOperationException("This luminance source does not support cropping.");
    }

    public final int getHeight() {
        return this.height;
    }

    public abstract byte[] getMatrix();

    public abstract byte[] getRow(int i2, byte[] bArr);

    public final int getWidth() {
        return this.width;
    }

    public boolean isCropSupported() {
        return false;
    }

    public boolean isRotateSupported() {
        return false;
    }

    public LuminanceSource rotateCounterClockwise() {
        throw new UnsupportedOperationException("This luminance source does not support rotation.");
    }

    public String toString() {
        int i2 = this.width;
        byte[] bArr = new byte[i2];
        StringBuilder sb = new StringBuilder(this.height * (i2 + 1));
        for (int i4 = 0; i4 < this.height; i4++) {
            bArr = getRow(i4, bArr);
            for (int i5 = 0; i5 < this.width; i5++) {
                int i6 = bArr[i5] & 255;
                sb.append(i6 < 64 ? '#' : i6 < 128 ? '+' : i6 < 192 ? d.f65364a : ' ');
            }
            sb.append('\n');
        }
        return sb.toString();
    }
}
