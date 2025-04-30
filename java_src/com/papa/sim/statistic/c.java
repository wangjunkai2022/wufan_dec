package com.papa.sim.statistic;

import com.android.dx.io.Opcodes;
import okio.Utf8;
/* compiled from: Base64.java */
/* loaded from: classes4.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    private static final int f55389a = 128;

    /* renamed from: b  reason: collision with root package name */
    private static final int f55390b = 64;

    /* renamed from: c  reason: collision with root package name */
    private static final int f55391c = 24;

    /* renamed from: d  reason: collision with root package name */
    private static final int f55392d = 8;

    /* renamed from: e  reason: collision with root package name */
    private static final int f55393e = 16;

    /* renamed from: f  reason: collision with root package name */
    private static final int f55394f = 4;

    /* renamed from: g  reason: collision with root package name */
    private static final int f55395g = -128;

    /* renamed from: h  reason: collision with root package name */
    private static char f55396h = '=';

    /* renamed from: i  reason: collision with root package name */
    private static byte[] f55397i = new byte[128];

    /* renamed from: j  reason: collision with root package name */
    private static char[] f55398j = new char[64];

    static {
        int i2;
        int i4;
        int i5 = 0;
        for (int i6 = 0; i6 < 128; i6++) {
            f55397i[i6] = -1;
        }
        for (int i7 = 90; i7 >= 65; i7--) {
            f55397i[i7] = (byte) (i7 - 65);
        }
        int i8 = 122;
        while (true) {
            i2 = 26;
            if (i8 < 97) {
                break;
            }
            f55397i[i8] = (byte) ((i8 - 97) + 26);
            i8--;
        }
        int i9 = 57;
        while (true) {
            i4 = 52;
            if (i9 < 48) {
                break;
            }
            f55397i[i9] = (byte) ((i9 - 48) + 52);
            i9--;
        }
        byte[] bArr = f55397i;
        bArr[43] = 62;
        bArr[47] = Utf8.REPLACEMENT_BYTE;
        for (int i10 = 0; i10 <= 25; i10++) {
            f55398j[i10] = (char) (i10 + 65);
        }
        int i11 = 0;
        while (i2 <= 51) {
            f55398j[i2] = (char) (i11 + 97);
            i2++;
            i11++;
        }
        while (i4 <= 61) {
            f55398j[i4] = (char) (i5 + 48);
            i4++;
            i5++;
        }
        char[] cArr = f55398j;
        cArr[62] = '+';
        cArr[63] = '/';
    }

    public static byte[] a(String str) {
        if (str == null) {
            return null;
        }
        char[] charArray = str.toCharArray();
        int f4 = f(charArray);
        if (f4 % 4 != 0) {
            return null;
        }
        int i2 = f4 / 4;
        if (i2 == 0) {
            return new byte[0];
        }
        byte[] bArr = new byte[i2 * 3];
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        while (i4 < i2 - 1) {
            int i7 = i5 + 1;
            char c4 = charArray[i5];
            if (c(c4)) {
                int i8 = i7 + 1;
                char c5 = charArray[i7];
                if (c(c5)) {
                    int i9 = i8 + 1;
                    char c6 = charArray[i8];
                    if (c(c6)) {
                        int i10 = i9 + 1;
                        char c7 = charArray[i9];
                        if (c(c7)) {
                            byte[] bArr2 = f55397i;
                            byte b4 = bArr2[c4];
                            byte b5 = bArr2[c5];
                            byte b6 = bArr2[c6];
                            byte b7 = bArr2[c7];
                            int i11 = i6 + 1;
                            bArr[i6] = (byte) ((b4 << 2) | (b5 >> 4));
                            int i12 = i11 + 1;
                            bArr[i11] = (byte) (((b5 & 15) << 4) | ((b6 >> 2) & 15));
                            i6 = i12 + 1;
                            bArr[i12] = (byte) ((b6 << 6) | b7);
                            i4++;
                            i5 = i10;
                        }
                    }
                }
            }
            return null;
        }
        int i13 = i5 + 1;
        char c8 = charArray[i5];
        if (c(c8)) {
            int i14 = i13 + 1;
            char c9 = charArray[i13];
            if (c(c9)) {
                byte[] bArr3 = f55397i;
                byte b8 = bArr3[c8];
                byte b9 = bArr3[c9];
                int i15 = i14 + 1;
                char c10 = charArray[i14];
                char c11 = charArray[i15];
                if (c(c10) && c(c11)) {
                    byte[] bArr4 = f55397i;
                    byte b10 = bArr4[c10];
                    byte b11 = bArr4[c11];
                    int i16 = i6 + 1;
                    bArr[i6] = (byte) ((b8 << 2) | (b9 >> 4));
                    bArr[i16] = (byte) (((b9 & 15) << 4) | ((b10 >> 2) & 15));
                    bArr[i16 + 1] = (byte) (b11 | (b10 << 6));
                    return bArr;
                } else if (d(c10) && d(c11)) {
                    if ((b9 & 15) != 0) {
                        return null;
                    }
                    int i17 = i4 * 3;
                    byte[] bArr5 = new byte[i17 + 1];
                    System.arraycopy(bArr, 0, bArr5, 0, i17);
                    bArr5[i6] = (byte) ((b8 << 2) | (b9 >> 4));
                    return bArr5;
                } else if (d(c10) || !d(c11)) {
                    return null;
                } else {
                    byte b12 = f55397i[c10];
                    if ((b12 & 3) != 0) {
                        return null;
                    }
                    int i18 = i4 * 3;
                    byte[] bArr6 = new byte[i18 + 2];
                    System.arraycopy(bArr, 0, bArr6, 0, i18);
                    bArr6[i6] = (byte) ((b8 << 2) | (b9 >> 4));
                    bArr6[i6 + 1] = (byte) (((b12 >> 2) & 15) | ((b9 & 15) << 4));
                    return bArr6;
                }
            }
            return null;
        }
        return null;
    }

    public static String b(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        int length = bArr.length * 8;
        if (length == 0) {
            return "";
        }
        int i2 = length % 24;
        int i4 = length / 24;
        char[] cArr = new char[(i2 != 0 ? i4 + 1 : i4) * 4];
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        while (i5 < i4) {
            int i8 = i6 + 1;
            byte b4 = bArr[i6];
            int i9 = i8 + 1;
            byte b5 = bArr[i8];
            int i10 = i9 + 1;
            byte b6 = bArr[i9];
            byte b7 = (byte) (b5 & 15);
            byte b8 = (byte) (b4 & 3);
            byte b9 = (byte) ((b4 & Byte.MIN_VALUE) == 0 ? b4 >> 2 : (b4 >> 2) ^ 192);
            byte b10 = (byte) ((b5 & Byte.MIN_VALUE) == 0 ? b5 >> 4 : (b5 >> 4) ^ 240);
            int i11 = (b6 & Byte.MIN_VALUE) == 0 ? b6 >> 6 : (b6 >> 6) ^ Opcodes.INVOKE_CUSTOM;
            int i12 = i7 + 1;
            char[] cArr2 = f55398j;
            cArr[i7] = cArr2[b9];
            int i13 = i12 + 1;
            cArr[i12] = cArr2[(b8 << 4) | b10];
            int i14 = i13 + 1;
            cArr[i13] = cArr2[(b7 << 2) | ((byte) i11)];
            cArr[i14] = cArr2[b6 & Utf8.REPLACEMENT_BYTE];
            i5++;
            i7 = i14 + 1;
            i6 = i10;
        }
        if (i2 == 8) {
            byte b11 = bArr[i6];
            byte b12 = (byte) (b11 & 3);
            int i15 = (b11 & Byte.MIN_VALUE) == 0 ? b11 >> 2 : (b11 >> 2) ^ 192;
            int i16 = i7 + 1;
            char[] cArr3 = f55398j;
            cArr[i7] = cArr3[(byte) i15];
            int i17 = i16 + 1;
            cArr[i16] = cArr3[b12 << 4];
            char c4 = f55396h;
            cArr[i17] = c4;
            cArr[i17 + 1] = c4;
        } else if (i2 == 16) {
            byte b13 = bArr[i6];
            byte b14 = bArr[i6 + 1];
            byte b15 = (byte) (b14 & 15);
            byte b16 = (byte) (b13 & 3);
            byte b17 = (byte) ((b13 & Byte.MIN_VALUE) == 0 ? b13 >> 2 : (b13 >> 2) ^ 192);
            int i18 = (b14 & Byte.MIN_VALUE) == 0 ? b14 >> 4 : (b14 >> 4) ^ 240;
            int i19 = i7 + 1;
            char[] cArr4 = f55398j;
            cArr[i7] = cArr4[b17];
            int i20 = i19 + 1;
            cArr[i19] = cArr4[((byte) i18) | (b16 << 4)];
            cArr[i20] = cArr4[b15 << 2];
            cArr[i20 + 1] = f55396h;
        }
        return new String(cArr);
    }

    private static boolean c(char c4) {
        return c4 < 128 && f55397i[c4] != -1;
    }

    private static boolean d(char c4) {
        return c4 == f55396h;
    }

    private static boolean e(char c4) {
        return c4 == ' ' || c4 == '\r' || c4 == '\n' || c4 == '\t';
    }

    private static int f(char[] cArr) {
        if (cArr == null) {
            return 0;
        }
        int length = cArr.length;
        int i2 = 0;
        for (int i4 = 0; i4 < length; i4++) {
            if (!e(cArr[i4])) {
                cArr[i2] = cArr[i4];
                i2++;
            }
        }
        return i2;
    }
}
