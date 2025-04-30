package com.google.zxing.qrcode.encoder;

import java.lang.reflect.Array;
/* loaded from: classes2.dex */
public final class ByteMatrix {
    private final byte[][] bytes;
    private final int height;
    private final int width;

    public ByteMatrix(int i2, int i4) {
        this.bytes = (byte[][]) Array.newInstance(byte.class, i4, i2);
        this.width = i2;
        this.height = i4;
    }

    public void clear(byte b4) {
        for (int i2 = 0; i2 < this.height; i2++) {
            for (int i4 = 0; i4 < this.width; i4++) {
                this.bytes[i2][i4] = b4;
            }
        }
    }

    public byte get(int i2, int i4) {
        return this.bytes[i4][i2];
    }

    public byte[][] getArray() {
        return this.bytes;
    }

    public int getHeight() {
        return this.height;
    }

    public int getWidth() {
        return this.width;
    }

    public void set(int i2, int i4, byte b4) {
        this.bytes[i4][i2] = b4;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder((this.width * 2 * this.height) + 2);
        for (int i2 = 0; i2 < this.height; i2++) {
            for (int i4 = 0; i4 < this.width; i4++) {
                byte b4 = this.bytes[i2][i4];
                if (b4 == 0) {
                    sb.append(" 0");
                } else if (b4 != 1) {
                    sb.append("  ");
                } else {
                    sb.append(" 1");
                }
            }
            sb.append('\n');
        }
        return sb.toString();
    }

    public void set(int i2, int i4, int i5) {
        this.bytes[i4][i2] = (byte) i5;
    }

    public void set(int i2, int i4, boolean z3) {
        this.bytes[i4][i2] = z3 ? (byte) 1 : (byte) 0;
    }
}
