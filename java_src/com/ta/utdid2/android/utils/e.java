package com.ta.utdid2.android.utils;
/* loaded from: classes4.dex */
public class e {
    public static byte[] a(int i2) {
        byte[] bArr = {(byte) ((r3 >> 8) % 256), (byte) (r3 % 256), (byte) (r3 % 256), (byte) (i2 % 256)};
        int i4 = i2 >> 8;
        int i5 = i4 >> 8;
        return bArr;
    }

    public static byte[] b(byte[] bArr, int i2) {
        if (bArr.length == 4) {
            bArr[3] = (byte) (i2 % 256);
            int i4 = i2 >> 8;
            bArr[2] = (byte) (i4 % 256);
            int i5 = i4 >> 8;
            bArr[1] = (byte) (i5 % 256);
            bArr[0] = (byte) ((i5 >> 8) % 256);
            return bArr;
        }
        return null;
    }
}
