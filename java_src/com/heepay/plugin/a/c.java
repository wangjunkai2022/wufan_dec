package com.heepay.plugin.a;

import io.netty.handler.codec.http.HttpConstants;
import okio.Utf8;
/* loaded from: classes2.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private static final byte[] f16729a = {65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 43, 47};

    /* renamed from: b  reason: collision with root package name */
    private static final byte[] f16730b = new byte[128];

    static {
        for (int i2 = 0; i2 < 128; i2++) {
            f16730b[i2] = -1;
        }
        for (int i4 = 65; i4 <= 90; i4++) {
            f16730b[i4] = (byte) (i4 - 65);
        }
        for (int i5 = 97; i5 <= 122; i5++) {
            f16730b[i5] = (byte) ((i5 - 97) + 26);
        }
        for (int i6 = 48; i6 <= 57; i6++) {
            f16730b[i6] = (byte) ((i6 - 48) + 52);
        }
        byte[] bArr = f16730b;
        bArr[43] = 62;
        bArr[47] = Utf8.REPLACEMENT_BYTE;
    }

    public static String a(byte[] bArr) {
        int length = bArr.length % 3;
        int length2 = bArr.length;
        byte[] bArr2 = new byte[length == 0 ? (length2 * 4) / 3 : ((length2 / 3) + 1) * 4];
        int length3 = bArr.length - length;
        int i2 = 0;
        int i4 = 0;
        while (i2 < length3) {
            int i5 = bArr[i2] & 255;
            int i6 = bArr[i2 + 1] & 255;
            int i7 = bArr[i2 + 2] & 255;
            byte[] bArr3 = f16729a;
            bArr2[i4] = bArr3[(i5 >>> 2) & 63];
            bArr2[i4 + 1] = bArr3[((i5 << 4) | (i6 >>> 4)) & 63];
            bArr2[i4 + 2] = bArr3[((i6 << 2) | (i7 >>> 6)) & 63];
            bArr2[i4 + 3] = bArr3[i7 & 63];
            i2 += 3;
            i4 += 4;
        }
        if (length == 1) {
            int i8 = bArr[bArr.length - 1] & 255;
            byte[] bArr4 = f16729a;
            bArr2[bArr2.length - 4] = bArr4[(i8 >>> 2) & 63];
            bArr2[bArr2.length - 3] = bArr4[(i8 << 4) & 63];
            bArr2[bArr2.length - 2] = HttpConstants.EQUALS;
            bArr2[bArr2.length - 1] = HttpConstants.EQUALS;
        } else if (length == 2) {
            int i9 = bArr[bArr.length - 2] & 255;
            int i10 = bArr[bArr.length - 1] & 255;
            byte[] bArr5 = f16729a;
            bArr2[bArr2.length - 4] = bArr5[(i9 >>> 2) & 63];
            bArr2[bArr2.length - 3] = bArr5[((i9 << 4) | (i10 >>> 4)) & 63];
            bArr2[bArr2.length - 2] = bArr5[(i10 << 2) & 63];
            bArr2[bArr2.length - 1] = HttpConstants.EQUALS;
        }
        return new String(bArr2);
    }

    private static boolean a(byte b4) {
        if (b4 == 61) {
            return true;
        }
        return b4 >= 0 && b4 < 128 && f16730b[b4] != -1;
    }

    public static byte[] a(String str) {
        String b4 = b(str);
        byte[] bArr = new byte[b4.charAt(b4.length() + (-2)) == '=' ? (((b4.length() / 4) - 1) * 3) + 1 : b4.charAt(b4.length() + (-1)) == '=' ? (((b4.length() / 4) - 1) * 3) + 2 : (b4.length() / 4) * 3];
        int i2 = 0;
        int i4 = 0;
        while (i2 < b4.length() - 4) {
            byte[] bArr2 = f16730b;
            byte b5 = bArr2[b4.charAt(i2)];
            byte b6 = bArr2[b4.charAt(i2 + 1)];
            byte b7 = bArr2[b4.charAt(i2 + 2)];
            byte b8 = bArr2[b4.charAt(i2 + 3)];
            bArr[i4] = (byte) ((b5 << 2) | (b6 >> 4));
            bArr[i4 + 1] = (byte) ((b6 << 4) | (b7 >> 2));
            bArr[i4 + 2] = (byte) (b8 | (b7 << 6));
            i2 += 4;
            i4 += 3;
        }
        if (b4.charAt(b4.length() - 2) == '=') {
            byte[] bArr3 = f16730b;
            bArr[bArr.length - 1] = (byte) ((bArr3[b4.charAt(b4.length() - 3)] >> 4) | (bArr3[b4.charAt(b4.length() - 4)] << 2));
        } else if (b4.charAt(b4.length() - 1) == '=') {
            byte[] bArr4 = f16730b;
            byte b9 = bArr4[b4.charAt(b4.length() - 4)];
            byte b10 = bArr4[b4.charAt(b4.length() - 3)];
            byte b11 = bArr4[b4.charAt(b4.length() - 2)];
            bArr[bArr.length - 2] = (byte) ((b9 << 2) | (b10 >> 4));
            bArr[bArr.length - 1] = (byte) ((b11 >> 2) | (b10 << 4));
        } else {
            byte[] bArr5 = f16730b;
            byte b12 = bArr5[b4.charAt(b4.length() - 4)];
            byte b13 = bArr5[b4.charAt(b4.length() - 3)];
            byte b14 = bArr5[b4.charAt(b4.length() - 2)];
            byte b15 = bArr5[b4.charAt(b4.length() - 1)];
            bArr[bArr.length - 3] = (byte) ((b12 << 2) | (b13 >> 4));
            bArr[bArr.length - 2] = (byte) ((b13 << 4) | (b14 >> 2));
            bArr[bArr.length - 1] = (byte) (b15 | (b14 << 6));
        }
        return bArr;
    }

    private static String b(String str) {
        StringBuffer stringBuffer = new StringBuffer();
        int length = str.length();
        for (int i2 = 0; i2 < length; i2++) {
            if (a((byte) str.charAt(i2))) {
                stringBuffer.append(str.charAt(i2));
            }
        }
        return stringBuffer.toString();
    }
}
