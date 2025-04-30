package com.facebook.imageformat;

import com.facebook.common.internal.h;
import java.io.UnsupportedEncodingException;
/* compiled from: ImageFormatCheckerUtils.java */
/* loaded from: classes2.dex */
public class e {
    private e() {
    }

    public static byte[] a(String str) {
        h.i(str);
        try {
            return str.getBytes("ASCII");
        } catch (UnsupportedEncodingException e4) {
            throw new RuntimeException("ASCII not found!", e4);
        }
    }

    public static int b(byte[] bArr, int i2, byte[] bArr2, int i4) {
        h.i(bArr);
        h.i(bArr2);
        if (i4 > i2) {
            return -1;
        }
        int i5 = 0;
        byte b4 = bArr2[0];
        int i6 = i2 - i4;
        while (i5 <= i6) {
            if (bArr[i5] != b4) {
                do {
                    i5++;
                    if (i5 > i6) {
                        break;
                    }
                } while (bArr[i5] != b4);
            }
            if (i5 <= i6) {
                int i7 = i5 + 1;
                int i8 = (i7 + i4) - 1;
                for (int i9 = 1; i7 < i8 && bArr[i7] == bArr2[i9]; i9++) {
                    i7++;
                }
                if (i7 == i8) {
                    return i5;
                }
            }
            i5++;
        }
        return -1;
    }

    public static boolean c(byte[] bArr, byte[] bArr2) {
        h.i(bArr);
        h.i(bArr2);
        if (bArr2.length > bArr.length) {
            return false;
        }
        for (int i2 = 0; i2 < bArr2.length; i2++) {
            if (bArr[i2] != bArr2[i2]) {
                return false;
            }
        }
        return true;
    }
}
