package com.xinzhu.overmind.utils;
/* compiled from: HexEncoding.java */
/* loaded from: classes3.dex */
public class k {

    /* renamed from: a  reason: collision with root package name */
    private static final char[] f64750a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    /* renamed from: b  reason: collision with root package name */
    private static final char[] f64751b = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    private k() {
    }

    public static byte[] a(String encoded) throws IllegalArgumentException {
        return c(encoded.toCharArray());
    }

    public static byte[] b(String encoded, boolean allowSingleChar) throws IllegalArgumentException {
        return d(encoded.toCharArray(), allowSingleChar);
    }

    public static byte[] c(char[] encoded) throws IllegalArgumentException {
        return d(encoded, false);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x001f A[LOOP:0: B:10:0x001d->B:11:0x001f, LOOP_END] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static byte[] d(char[] r6, boolean r7) throws java.lang.IllegalArgumentException {
        /*
            int r0 = r6.length
            int r1 = r0 + 1
            int r1 = r1 / 2
            byte[] r1 = new byte[r1]
            r2 = 0
            r3 = 1
            if (r7 == 0) goto L18
            int r7 = r0 % 2
            if (r7 == 0) goto L1c
            int r7 = l(r6, r2)
            byte r7 = (byte) r7
            r1[r2] = r7
            r2 = 1
            goto L1d
        L18:
            int r7 = r0 % 2
            if (r7 != 0) goto L36
        L1c:
            r3 = 0
        L1d:
            if (r2 >= r0) goto L35
            int r7 = r3 + 1
            int r4 = l(r6, r2)
            int r4 = r4 << 4
            int r5 = r2 + 1
            int r5 = l(r6, r5)
            r4 = r4 | r5
            byte r4 = (byte) r4
            r1[r3] = r4
            int r2 = r2 + 2
            r3 = r7
            goto L1d
        L35:
            return r1
        L36:
            java.lang.IllegalArgumentException r6 = new java.lang.IllegalArgumentException
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            r7.<init>()
            java.lang.String r1 = "Invalid input length: "
            r7.append(r1)
            r7.append(r0)
            java.lang.String r7 = r7.toString()
            r6.<init>(r7)
            goto L4e
        L4d:
            throw r6
        L4e:
            goto L4d
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xinzhu.overmind.utils.k.d(char[], boolean):byte[]");
    }

    public static char[] e(byte[] data) {
        return g(data, 0, data.length, true);
    }

    public static char[] f(byte[] data, int offset, int len) {
        return g(data, offset, len, true);
    }

    private static char[] g(byte[] data, int offset, int len, boolean upperCase) {
        char[] cArr = upperCase ? f64751b : f64750a;
        char[] cArr2 = new char[len * 2];
        for (int i2 = 0; i2 < len; i2++) {
            byte b4 = data[offset + i2];
            int i4 = i2 * 2;
            cArr2[i4] = cArr[(b4 >> 4) & 15];
            cArr2[i4 + 1] = cArr[b4 & 15];
        }
        return cArr2;
    }

    public static char[] h(byte[] data, boolean upperCase) {
        return g(data, 0, data.length, upperCase);
    }

    public static String i(byte b4, boolean upperCase) {
        char[] cArr = upperCase ? f64751b : f64750a;
        return new String(new char[]{cArr[(b4 >> 4) & 15], cArr[b4 & 15]}, 0, 2);
    }

    public static String j(byte[] data) {
        return k(data, true);
    }

    public static String k(byte[] data, boolean upperCase) {
        return new String(h(data, upperCase));
    }

    private static int l(char[] str, int offset) throws IllegalArgumentException {
        char c4 = str[offset];
        if ('0' > c4 || c4 > '9') {
            char c5 = 'a';
            if ('a' > c4 || c4 > 'f') {
                c5 = 'A';
                if ('A' > c4 || c4 > 'F') {
                    throw new IllegalArgumentException("Illegal char: " + str[offset] + " at offset " + offset);
                }
            }
            return (c4 - c5) + 10;
        }
        return c4 - '0';
    }
}
