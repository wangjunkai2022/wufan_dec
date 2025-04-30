package com.facebook.common.util;
/* compiled from: Hex.java */
/* loaded from: classes2.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private static final char[] f11759a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    /* renamed from: b  reason: collision with root package name */
    private static final char[] f11760b = new char[256];

    /* renamed from: c  reason: collision with root package name */
    private static final char[] f11761c = new char[256];

    /* renamed from: d  reason: collision with root package name */
    private static final byte[] f11762d;

    static {
        for (int i2 = 0; i2 < 256; i2++) {
            char[] cArr = f11760b;
            char[] cArr2 = f11759a;
            cArr[i2] = cArr2[(i2 >> 4) & 15];
            f11761c[i2] = cArr2[i2 & 15];
        }
        f11762d = new byte[103];
        for (int i4 = 0; i4 <= 70; i4++) {
            f11762d[i4] = -1;
        }
        for (byte b4 = 0; b4 < 10; b4 = (byte) (b4 + 1)) {
            f11762d[b4 + 48] = b4;
        }
        for (byte b5 = 0; b5 < 6; b5 = (byte) (b5 + 1)) {
            byte[] bArr = f11762d;
            byte b6 = (byte) (b5 + 10);
            bArr[b5 + 65] = b6;
            bArr[b5 + 97] = b6;
        }
    }

    public static String a(int i2) {
        if (i2 <= 255 && i2 >= 0) {
            return String.valueOf(f11760b[i2]) + String.valueOf(f11761c[i2]);
        }
        throw new IllegalArgumentException("The int converting to hex should be in range 0~255");
    }

    public static byte[] b(String str) {
        byte[] bArr;
        byte b4;
        byte b5;
        int length = str.length();
        if ((length & 1) == 0) {
            byte[] bArr2 = new byte[length >> 1];
            boolean z3 = false;
            int i2 = 0;
            int i4 = 0;
            while (i2 < length) {
                int i5 = i2 + 1;
                char charAt = str.charAt(i2);
                if (charAt <= 'f' && (b4 = (bArr = f11762d)[charAt]) != -1) {
                    int i6 = i5 + 1;
                    char charAt2 = str.charAt(i5);
                    if (charAt2 <= 'f' && (b5 = bArr[charAt2]) != -1) {
                        bArr2[i4] = (byte) ((b4 << 4) | b5);
                        i4++;
                        i2 = i6;
                    }
                }
                z3 = true;
            }
            if (z3) {
                throw new IllegalArgumentException("Invalid hexadecimal digit: " + str);
            }
            return bArr2;
        }
        throw new IllegalArgumentException("Odd number of characters.");
    }

    public static String c(byte[] bArr, boolean z3) {
        int i2;
        char[] cArr = new char[bArr.length * 2];
        int i4 = 0;
        for (int i5 = 0; i5 < bArr.length && ((i2 = bArr[i5] & 255) != 0 || !z3); i5++) {
            int i6 = i4 + 1;
            cArr[i4] = f11760b[i2];
            i4 = i6 + 1;
            cArr[i6] = f11761c[i2];
        }
        return new String(cArr, 0, i4);
    }

    public static byte[] d(String str) {
        return b(str.replaceAll(" ", ""));
    }
}
