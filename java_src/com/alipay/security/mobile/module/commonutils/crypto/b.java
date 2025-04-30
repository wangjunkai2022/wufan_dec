package com.alipay.security.mobile.module.commonutils.crypto;
/* loaded from: classes2.dex */
public final class b {
    private b() {
    }

    public static boolean a(byte[] bArr) {
        if (bArr != null && bArr.length >= 20) {
            for (int i2 = 0; i2 < 20; i2++) {
                bArr[i2 + 0] = 0;
            }
            return true;
        }
        return false;
    }

    private static boolean b(byte[] bArr, int i2, byte[] bArr2, int i4, int i5) {
        if (bArr == null || bArr2 == null || i5 <= 0 || bArr.length < i2 + i5 || bArr2.length < i4 + i5) {
            return false;
        }
        for (int i6 = 0; i6 < i5; i6++) {
            if (bArr[i2 + i6] != bArr2[i4 + i6]) {
                return false;
            }
        }
        return true;
    }

    private static boolean c(byte[] bArr, byte[] bArr2, int i2) {
        if (bArr == null || bArr2 == null) {
            return false;
        }
        if (i2 >= bArr.length) {
            return true;
        }
        for (int i4 = 0; i4 < bArr2.length; i4++) {
            int i5 = i4 + i2;
            if (i5 + 1 > bArr.length) {
                break;
            }
            bArr[i5] = bArr2[i4];
        }
        return true;
    }
}
