package com.alipay.security.mobile.module.commonutils.crypto;

import java.io.OutputStream;
/* loaded from: classes2.dex */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    protected final byte[] f9890a = {48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102};

    /* renamed from: b  reason: collision with root package name */
    protected final byte[] f9891b = new byte[128];

    public f() {
        d();
    }

    private void d() {
        int i2 = 0;
        while (true) {
            byte[] bArr = this.f9890a;
            if (i2 >= bArr.length) {
                byte[] bArr2 = this.f9891b;
                bArr2[65] = bArr2[97];
                bArr2[66] = bArr2[98];
                bArr2[67] = bArr2[99];
                bArr2[68] = bArr2[100];
                bArr2[69] = bArr2[101];
                bArr2[70] = bArr2[102];
                return;
            }
            this.f9891b[bArr[i2]] = (byte) i2;
            i2++;
        }
    }

    private static boolean e(char c4) {
        return c4 == '\n' || c4 == '\r' || c4 == '\t' || c4 == ' ';
    }

    public final int a(String str, OutputStream outputStream) {
        int length = str.length();
        while (length > 0 && e(str.charAt(length - 1))) {
            length--;
        }
        int i2 = 0;
        int i4 = 0;
        while (i2 < length) {
            while (i2 < length && e(str.charAt(i2))) {
                i2++;
            }
            int i5 = i2 + 1;
            byte b4 = this.f9891b[str.charAt(i2)];
            while (i5 < length && e(str.charAt(i5))) {
                i5++;
            }
            outputStream.write((b4 << 4) | this.f9891b[str.charAt(i5)]);
            i4++;
            i2 = i5 + 1;
        }
        return i4;
    }

    public final int b(byte[] bArr, int i2, int i4, OutputStream outputStream) {
        for (int i5 = i2; i5 < i2 + i4; i5++) {
            int i6 = bArr[i5] & 255;
            outputStream.write(this.f9890a[i6 >>> 4]);
            outputStream.write(this.f9890a[i6 & 15]);
        }
        return i4 * 2;
    }

    public final int c(byte[] bArr, int i2, OutputStream outputStream) {
        int i4 = 0;
        int i5 = i2 + 0;
        while (i5 > 0 && e((char) bArr[i5 - 1])) {
            i5--;
        }
        int i6 = 0;
        while (i4 < i5) {
            while (i4 < i5 && e((char) bArr[i4])) {
                i4++;
            }
            int i7 = i4 + 1;
            byte b4 = this.f9891b[bArr[i4]];
            while (i7 < i5 && e((char) bArr[i7])) {
                i7++;
            }
            outputStream.write((b4 << 4) | this.f9891b[bArr[i7]]);
            i6++;
            i4 = i7 + 1;
        }
        return i6;
    }
}
