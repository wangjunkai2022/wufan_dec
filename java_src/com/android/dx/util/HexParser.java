package com.android.dx.util;

import m.a;
/* loaded from: classes2.dex */
public final class HexParser {
    private HexParser() {
    }

    public static byte[] parse(String str) {
        String substring;
        int indexOf;
        int length = str.length();
        int i2 = length / 2;
        byte[] bArr = new byte[i2];
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        while (i5 < length) {
            int indexOf2 = str.indexOf(10, i5);
            if (indexOf2 < 0) {
                indexOf2 = length;
            }
            int indexOf3 = str.indexOf(35, i5);
            if (indexOf3 >= 0 && indexOf3 < indexOf2) {
                substring = str.substring(i5, indexOf3);
            } else {
                substring = str.substring(i5, indexOf2);
            }
            int i7 = indexOf2 + 1;
            int indexOf4 = substring.indexOf(58);
            if (indexOf4 != -1 && ((indexOf = substring.indexOf(34)) == -1 || indexOf >= indexOf4)) {
                String trim = substring.substring(i4, indexOf4).trim();
                substring = substring.substring(indexOf4 + 1);
                if (Integer.parseInt(trim, 16) != i6) {
                    throw new RuntimeException("bogus offset marker: " + trim);
                }
            }
            int length2 = substring.length();
            int i8 = -1;
            boolean z3 = false;
            for (int i9 = 0; i9 < length2; i9++) {
                char charAt = substring.charAt(i9);
                if (z3) {
                    if (charAt == '\"') {
                        z3 = false;
                    } else {
                        bArr[i6] = (byte) charAt;
                        i6++;
                    }
                } else if (charAt > ' ') {
                    if (charAt != '\"') {
                        int digit = Character.digit(charAt, 16);
                        if (digit == -1) {
                            throw new RuntimeException("bogus digit character: \"" + charAt + a.f72569g);
                        } else if (i8 == -1) {
                            i8 = digit;
                        } else {
                            bArr[i6] = (byte) ((i8 << 4) | digit);
                            i6++;
                            i8 = -1;
                        }
                    } else if (i8 != -1) {
                        throw new RuntimeException("spare digit around offset " + Hex.u4(i6));
                    } else {
                        z3 = true;
                    }
                }
            }
            if (i8 != -1) {
                throw new RuntimeException("spare digit around offset " + Hex.u4(i6));
            } else if (z3) {
                throw new RuntimeException("unterminated quote around offset " + Hex.u4(i6));
            } else {
                i5 = i7;
                i4 = 0;
            }
        }
        if (i6 < i2) {
            byte[] bArr2 = new byte[i6];
            System.arraycopy(bArr, 0, bArr2, 0, i6);
            return bArr2;
        }
        return bArr;
    }
}
