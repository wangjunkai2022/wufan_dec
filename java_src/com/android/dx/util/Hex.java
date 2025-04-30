package com.android.dx.util;
/* loaded from: classes2.dex */
public final class Hex {
    private Hex() {
    }

    public static String dump(byte[] bArr, int i2, int i4, int i5, int i6, int i7) {
        String u12;
        int i8 = i2 + i4;
        if ((i2 | i4 | i8) < 0 || i8 > bArr.length) {
            throw new IndexOutOfBoundsException("arr.length " + bArr.length + "; " + i2 + "..!" + i8);
        } else if (i5 >= 0) {
            if (i4 == 0) {
                return "";
            }
            StringBuilder sb = new StringBuilder((i4 * 4) + 6);
            int i9 = 0;
            while (i4 > 0) {
                if (i9 == 0) {
                    if (i7 == 2) {
                        u12 = u1(i5);
                    } else if (i7 == 4) {
                        u12 = u2(i5);
                    } else if (i7 != 6) {
                        u12 = u4(i5);
                    } else {
                        u12 = u3(i5);
                    }
                    sb.append(u12);
                    sb.append(": ");
                } else if ((i9 & 1) == 0) {
                    sb.append(' ');
                }
                sb.append(u1(bArr[i2]));
                i5++;
                i2++;
                i9++;
                if (i9 == i6) {
                    sb.append('\n');
                    i9 = 0;
                }
                i4--;
            }
            if (i9 != 0) {
                sb.append('\n');
            }
            return sb.toString();
        } else {
            throw new IllegalArgumentException("outOffset < 0");
        }
    }

    public static String s1(int i2) {
        char[] cArr = new char[3];
        if (i2 < 0) {
            cArr[0] = '-';
            i2 = -i2;
        } else {
            cArr[0] = '+';
        }
        for (int i4 = 0; i4 < 2; i4++) {
            cArr[2 - i4] = Character.forDigit(i2 & 15, 16);
            i2 >>= 4;
        }
        return new String(cArr);
    }

    public static String s2(int i2) {
        char[] cArr = new char[5];
        if (i2 < 0) {
            cArr[0] = '-';
            i2 = -i2;
        } else {
            cArr[0] = '+';
        }
        for (int i4 = 0; i4 < 4; i4++) {
            cArr[4 - i4] = Character.forDigit(i2 & 15, 16);
            i2 >>= 4;
        }
        return new String(cArr);
    }

    public static String s4(int i2) {
        char[] cArr = new char[9];
        if (i2 < 0) {
            cArr[0] = '-';
            i2 = -i2;
        } else {
            cArr[0] = '+';
        }
        for (int i4 = 0; i4 < 8; i4++) {
            cArr[8 - i4] = Character.forDigit(i2 & 15, 16);
            i2 >>= 4;
        }
        return new String(cArr);
    }

    public static String s8(long j4) {
        char[] cArr = new char[17];
        if (j4 < 0) {
            cArr[0] = '-';
            j4 = -j4;
        } else {
            cArr[0] = '+';
        }
        for (int i2 = 0; i2 < 16; i2++) {
            cArr[16 - i2] = Character.forDigit(((int) j4) & 15, 16);
            j4 >>= 4;
        }
        return new String(cArr);
    }

    public static String u1(int i2) {
        char[] cArr = new char[2];
        for (int i4 = 0; i4 < 2; i4++) {
            cArr[1 - i4] = Character.forDigit(i2 & 15, 16);
            i2 >>= 4;
        }
        return new String(cArr);
    }

    public static String u2(int i2) {
        char[] cArr = new char[4];
        for (int i4 = 0; i4 < 4; i4++) {
            cArr[3 - i4] = Character.forDigit(i2 & 15, 16);
            i2 >>= 4;
        }
        return new String(cArr);
    }

    public static String u2or4(int i2) {
        if (i2 == ((char) i2)) {
            return u2(i2);
        }
        return u4(i2);
    }

    public static String u3(int i2) {
        char[] cArr = new char[6];
        for (int i4 = 0; i4 < 6; i4++) {
            cArr[5 - i4] = Character.forDigit(i2 & 15, 16);
            i2 >>= 4;
        }
        return new String(cArr);
    }

    public static String u4(int i2) {
        char[] cArr = new char[8];
        for (int i4 = 0; i4 < 8; i4++) {
            cArr[7 - i4] = Character.forDigit(i2 & 15, 16);
            i2 >>= 4;
        }
        return new String(cArr);
    }

    public static String u8(long j4) {
        char[] cArr = new char[16];
        for (int i2 = 0; i2 < 16; i2++) {
            cArr[15 - i2] = Character.forDigit(((int) j4) & 15, 16);
            j4 >>= 4;
        }
        return new String(cArr);
    }

    public static String uNibble(int i2) {
        return new String(new char[]{Character.forDigit(i2 & 15, 16)});
    }
}
