package com.join.mgps.Util;

import java.io.ByteArrayOutputStream;
/* compiled from: Base62.java */
/* loaded from: classes3.dex */
public class j {

    /* renamed from: c  reason: collision with root package name */
    private static final int f27633c = 256;

    /* renamed from: d  reason: collision with root package name */
    private static final int f27634d = 62;

    /* renamed from: a  reason: collision with root package name */
    private final byte[] f27635a;

    /* renamed from: b  reason: collision with root package name */
    private byte[] f27636b;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Base62.java */
    /* loaded from: classes3.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private static final byte[] f27637a = {48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122};

        /* renamed from: b  reason: collision with root package name */
        private static final byte[] f27638b = {48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90};

        private a() {
        }
    }

    private j(byte[] bArr) {
        this.f27635a = bArr;
        e();
    }

    private byte[] a(byte[] bArr, int i2, int i4) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(h(bArr.length, i2, i4));
        byte[] bArr2 = bArr;
        while (true) {
            if (bArr2.length <= 0) {
                break;
            }
            ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream(bArr2.length);
            int i5 = 0;
            for (byte b4 : bArr2) {
                int i6 = (b4 & 255) + (i5 * i2);
                i5 = i6 % i4;
                int i7 = (i6 - i5) / i4;
                if (byteArrayOutputStream2.size() > 0 || i7 > 0) {
                    byteArrayOutputStream2.write(i7);
                }
            }
            byteArrayOutputStream.write(i5);
            bArr2 = byteArrayOutputStream2.toByteArray();
        }
        for (int i8 = 0; i8 < bArr.length - 1 && bArr[i8] == 0; i8++) {
            byteArrayOutputStream.write(0);
        }
        return j(byteArrayOutputStream.toByteArray());
    }

    public static j b() {
        return c();
    }

    public static j c() {
        return new j(a.f27637a);
    }

    public static j d() {
        return new j(a.f27638b);
    }

    private void e() {
        this.f27636b = new byte[256];
        int i2 = 0;
        while (true) {
            byte[] bArr = this.f27635a;
            if (i2 >= bArr.length) {
                return;
            }
            this.f27636b[bArr[i2]] = (byte) (i2 & 255);
            i2++;
        }
    }

    private int h(int i2, int i4, int i5) {
        double d4 = i2;
        Double.isNaN(d4);
        return (int) Math.ceil((Math.log(i4) / Math.log(i5)) * d4);
    }

    private byte[] j(byte[] bArr) {
        int length = bArr.length;
        byte[] bArr2 = new byte[length];
        for (int i2 = 0; i2 < length; i2++) {
            bArr2[(length - i2) - 1] = bArr[i2];
        }
        return bArr2;
    }

    private byte[] k(byte[] bArr, byte[] bArr2) {
        byte[] bArr3 = new byte[bArr.length];
        for (int i2 = 0; i2 < bArr.length; i2++) {
            bArr3[i2] = bArr2[bArr[i2]];
        }
        return bArr3;
    }

    public byte[] f(byte[] bArr) {
        if (i(bArr)) {
            return a(k(bArr, this.f27636b), 62, 256);
        }
        throw new IllegalArgumentException("Input is not encoded correctly");
    }

    public byte[] g(byte[] bArr) {
        return k(a(bArr, 256, 62), this.f27635a);
    }

    public boolean i(byte[] bArr) {
        if (bArr == null) {
            return false;
        }
        for (byte b4 : bArr) {
            if ((48 > b4 || 57 < b4) && ((97 > b4 || 122 < b4) && (65 > b4 || 90 < b4))) {
                return false;
            }
        }
        return true;
    }
}
