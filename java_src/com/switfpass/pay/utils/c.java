package com.switfpass.pay.utils;

import com.android.dx.io.Opcodes;
import okio.Utf8;
/* loaded from: classes4.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    private static final byte[] f58944a = new byte[128];

    /* renamed from: b  reason: collision with root package name */
    private static final char[] f58945b = new char[64];

    static {
        int i2;
        int i4;
        int i5 = 0;
        for (int i6 = 0; i6 < 128; i6++) {
            f58944a[i6] = -1;
        }
        for (int i7 = 90; i7 >= 65; i7--) {
            f58944a[i7] = (byte) (i7 - 65);
        }
        int i8 = 122;
        while (true) {
            i2 = 26;
            if (i8 < 97) {
                break;
            }
            f58944a[i8] = (byte) ((i8 - 97) + 26);
            i8--;
        }
        int i9 = 57;
        while (true) {
            i4 = 52;
            if (i9 < 48) {
                break;
            }
            f58944a[i9] = (byte) ((i9 - 48) + 52);
            i9--;
        }
        byte[] bArr = f58944a;
        bArr[43] = 62;
        bArr[47] = Utf8.REPLACEMENT_BYTE;
        for (int i10 = 0; i10 <= 25; i10++) {
            f58945b[i10] = (char) (i10 + 65);
        }
        int i11 = 0;
        while (i2 <= 51) {
            f58945b[i2] = (char) (i11 + 97);
            i2++;
            i11++;
        }
        while (i4 <= 61) {
            f58945b[i4] = (char) (i5 + 48);
            i4++;
            i5++;
        }
        char[] cArr = f58945b;
        cArr[62] = '+';
        cArr[63] = '/';
    }

    private static boolean a(char c4) {
        return c4 == '=';
    }

    private static boolean b(char c4) {
        return c4 < 128 && f58944a[c4] != -1;
    }

    public static byte[] c(String str) {
        int i2;
        if (str == null) {
            return null;
        }
        char[] charArray = str.toCharArray();
        if (charArray == null) {
            i2 = 0;
        } else {
            int length = charArray.length;
            i2 = 0;
            for (int i4 = 0; i4 < length; i4++) {
                char c4 = charArray[i4];
                if (!(c4 == ' ' || c4 == '\r' || c4 == '\n' || c4 == '\t')) {
                    charArray[i2] = charArray[i4];
                    i2++;
                }
            }
        }
        if (i2 % 4 != 0) {
            return null;
        }
        int i5 = i2 / 4;
        if (i5 == 0) {
            return new byte[0];
        }
        byte[] bArr = new byte[i5 * 3];
        int i6 = 0;
        int i7 = 0;
        int i8 = 0;
        while (i6 < i5 - 1) {
            int i9 = i7 + 1;
            char c5 = charArray[i7];
            if (b(c5)) {
                int i10 = i9 + 1;
                char c6 = charArray[i9];
                if (b(c6)) {
                    int i11 = i10 + 1;
                    char c7 = charArray[i10];
                    if (b(c7)) {
                        int i12 = i11 + 1;
                        char c8 = charArray[i11];
                        if (b(c8)) {
                            byte[] bArr2 = f58944a;
                            byte b4 = bArr2[c5];
                            byte b5 = bArr2[c6];
                            byte b6 = bArr2[c7];
                            byte b7 = bArr2[c8];
                            int i13 = i8 + 1;
                            bArr[i8] = (byte) ((b4 << 2) | (b5 >> 4));
                            int i14 = i13 + 1;
                            bArr[i13] = (byte) (((b5 & 15) << 4) | ((b6 >> 2) & 15));
                            i8 = i14 + 1;
                            bArr[i14] = (byte) ((b6 << 6) | b7);
                            i6++;
                            i7 = i12;
                        }
                    }
                }
            }
            return null;
        }
        int i15 = i7 + 1;
        char c9 = charArray[i7];
        if (b(c9)) {
            int i16 = i15 + 1;
            char c10 = charArray[i15];
            if (b(c10)) {
                byte[] bArr3 = f58944a;
                byte b8 = bArr3[c9];
                byte b9 = bArr3[c10];
                int i17 = i16 + 1;
                char c11 = charArray[i16];
                char c12 = charArray[i17];
                if (b(c11) && b(c12)) {
                    byte b10 = bArr3[c11];
                    byte b11 = bArr3[c12];
                    int i18 = i8 + 1;
                    bArr[i8] = (byte) ((b8 << 2) | (b9 >> 4));
                    bArr[i18] = (byte) (((b9 & 15) << 4) | ((b10 >> 2) & 15));
                    bArr[i18 + 1] = (byte) (b11 | (b10 << 6));
                    return bArr;
                } else if (a(c11) && a(c12)) {
                    if ((b9 & 15) != 0) {
                        return null;
                    }
                    int i19 = i6 * 3;
                    byte[] bArr4 = new byte[i19 + 1];
                    System.arraycopy(bArr, 0, bArr4, 0, i19);
                    bArr4[i8] = (byte) ((b8 << 2) | (b9 >> 4));
                    return bArr4;
                } else if (a(c11) || !a(c12)) {
                    return null;
                } else {
                    byte b12 = bArr3[c11];
                    if ((b12 & 3) != 0) {
                        return null;
                    }
                    int i20 = i6 * 3;
                    byte[] bArr5 = new byte[i20 + 2];
                    System.arraycopy(bArr, 0, bArr5, 0, i20);
                    bArr5[i8] = (byte) ((b8 << 2) | (b9 >> 4));
                    bArr5[i8 + 1] = (byte) (((b12 >> 2) & 15) | ((b9 & 15) << 4));
                    return bArr5;
                }
            }
            return null;
        }
        return null;
    }

    public static String d(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        int length = bArr.length << 3;
        if (length == 0) {
            return "";
        }
        int i2 = length % 24;
        int i4 = length / 24;
        char[] cArr = new char[(i2 != 0 ? i4 + 1 : i4) << 2];
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
            int i11 = b4 & Byte.MIN_VALUE;
            int i12 = b4 >> 2;
            if (i11 != 0) {
                i12 ^= 192;
            }
            byte b9 = (byte) i12;
            int i13 = b5 & Byte.MIN_VALUE;
            int i14 = b5 >> 4;
            if (i13 != 0) {
                i14 ^= 240;
            }
            byte b10 = (byte) i14;
            int i15 = (b6 & Byte.MIN_VALUE) == 0 ? b6 >> 6 : (b6 >> 6) ^ Opcodes.INVOKE_CUSTOM;
            int i16 = i7 + 1;
            char[] cArr2 = f58945b;
            cArr[i7] = cArr2[b9];
            int i17 = i16 + 1;
            cArr[i16] = cArr2[(b8 << 4) | b10];
            int i18 = i17 + 1;
            cArr[i17] = cArr2[(b7 << 2) | ((byte) i15)];
            cArr[i18] = cArr2[b6 & Utf8.REPLACEMENT_BYTE];
            i5++;
            i7 = i18 + 1;
            i6 = i10;
        }
        if (i2 == 8) {
            byte b11 = bArr[i6];
            byte b12 = (byte) (b11 & 3);
            int i19 = b11 & Byte.MIN_VALUE;
            int i20 = b11 >> 2;
            if (i19 != 0) {
                i20 ^= 192;
            }
            int i21 = i7 + 1;
            char[] cArr3 = f58945b;
            cArr[i7] = cArr3[(byte) i20];
            int i22 = i21 + 1;
            cArr[i21] = cArr3[b12 << 4];
            cArr[i22] = '=';
            cArr[i22 + 1] = '=';
        } else if (i2 == 16) {
            byte b13 = bArr[i6];
            byte b14 = bArr[i6 + 1];
            byte b15 = (byte) (b14 & 15);
            byte b16 = (byte) (b13 & 3);
            int i23 = b13 & Byte.MIN_VALUE;
            int i24 = b13 >> 2;
            if (i23 != 0) {
                i24 ^= 192;
            }
            byte b17 = (byte) i24;
            int i25 = b14 & Byte.MIN_VALUE;
            int i26 = b14 >> 4;
            if (i25 != 0) {
                i26 ^= 240;
            }
            int i27 = i7 + 1;
            char[] cArr4 = f58945b;
            cArr[i7] = cArr4[b17];
            int i28 = i27 + 1;
            cArr[i27] = cArr4[((byte) i26) | (b16 << 4)];
            cArr[i28] = cArr4[b15 << 2];
            cArr[i28 + 1] = '=';
        }
        return new String(cArr);
    }
}
