package com.umeng.analytics.pro;
/* compiled from: EncodingUtils.java */
/* loaded from: classes4.dex */
public class ao {
    public static final void a(int i2, byte[] bArr) {
        a(i2, bArr, 0);
    }

    public static final boolean a(int i2, int i4) {
        return (i2 & (1 << i4)) != 0;
    }

    public static final boolean a(long j4, int i2) {
        return (j4 & (1 << i2)) != 0;
    }

    public static final byte b(byte b4, int i2) {
        return (byte) b((int) b4, i2);
    }

    public static final int b(int i2, int i4) {
        return i2 & ((1 << i4) ^ (-1));
    }

    public static final long b(long j4, int i2) {
        return j4 & ((1 << i2) ^ (-1));
    }

    public static final void a(int i2, byte[] bArr, int i4) {
        bArr[i4] = (byte) ((i2 >> 24) & 255);
        bArr[i4 + 1] = (byte) ((i2 >> 16) & 255);
        bArr[i4 + 2] = (byte) ((i2 >> 8) & 255);
        bArr[i4 + 3] = (byte) (i2 & 255);
    }

    public static final short b(short s3, int i2) {
        return (short) b((int) s3, i2);
    }

    public static final int a(byte[] bArr) {
        return a(bArr, 0);
    }

    public static final int a(byte[] bArr, int i2) {
        return (bArr[i2 + 3] & 255) | ((bArr[i2] & 255) << 24) | ((bArr[i2 + 1] & 255) << 16) | ((bArr[i2 + 2] & 255) << 8);
    }

    public static final boolean a(byte b4, int i2) {
        return a((int) b4, i2);
    }

    public static final boolean a(short s3, int i2) {
        return a((int) s3, i2);
    }

    public static final byte a(byte b4, int i2, boolean z3) {
        return (byte) a((int) b4, i2, z3);
    }

    public static final short a(short s3, int i2, boolean z3) {
        return (short) a((int) s3, i2, z3);
    }

    public static final int a(int i2, int i4, boolean z3) {
        return z3 ? i2 | (1 << i4) : b(i2, i4);
    }

    public static final long a(long j4, int i2, boolean z3) {
        return z3 ? j4 | (1 << i2) : b(j4, i2);
    }
}
