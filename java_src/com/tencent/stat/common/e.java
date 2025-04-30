package com.tencent.stat.common;
/* loaded from: classes4.dex */
public class e {

    /* renamed from: a  reason: collision with root package name */
    static final byte[] f60065a = "03a976511e2cbe3a7f26808fb7af3c05".getBytes();

    public static byte[] a(byte[] bArr) {
        return a(bArr, f60065a);
    }

    static byte[] a(byte[] bArr, byte[] bArr2) {
        int[] iArr = new int[256];
        int[] iArr2 = new int[256];
        int length = bArr2.length;
        if (length < 1 || length > 256) {
            throw new IllegalArgumentException("key must be between 1 and 256 bytes");
        }
        for (int i2 = 0; i2 < 256; i2++) {
            iArr[i2] = i2;
            iArr2[i2] = bArr2[i2 % length];
        }
        int i4 = 0;
        for (int i5 = 0; i5 < 256; i5++) {
            i4 = (i4 + iArr[i5] + iArr2[i5]) & 255;
            int i6 = iArr[i5];
            iArr[i5] = iArr[i4];
            iArr[i4] = i6;
        }
        byte[] bArr3 = new byte[bArr.length];
        int i7 = 0;
        int i8 = 0;
        for (int i9 = 0; i9 < bArr.length; i9++) {
            i7 = (i7 + 1) & 255;
            i8 = (i8 + iArr[i7]) & 255;
            int i10 = iArr[i7];
            iArr[i7] = iArr[i8];
            iArr[i8] = i10;
            bArr3[i9] = (byte) (iArr[(iArr[i7] + iArr[i8]) & 255] ^ bArr[i9]);
        }
        return bArr3;
    }

    public static byte[] b(byte[] bArr) {
        return b(bArr, f60065a);
    }

    static byte[] b(byte[] bArr, byte[] bArr2) {
        return a(bArr, bArr2);
    }
}
