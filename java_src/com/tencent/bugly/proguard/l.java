package com.tencent.bugly.proguard;

import java.nio.ByteBuffer;
/* compiled from: BUGLY */
/* loaded from: classes4.dex */
public final class l {
    static {
        byte[] bArr = {48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 65, 66, 67, 68, 69, 70};
        byte[] bArr2 = new byte[256];
        byte[] bArr3 = new byte[256];
        for (int i2 = 0; i2 < 256; i2++) {
            bArr2[i2] = bArr[i2 >>> 4];
            bArr3[i2] = bArr[i2 & 15];
        }
    }

    public static boolean a(int i2, int i4) {
        return i2 == i4;
    }

    public static boolean a(long j4, long j5) {
        return j4 == j5;
    }

    public static boolean a(Object obj, Object obj2) {
        return obj.equals(obj2);
    }

    public static boolean a(boolean z3, boolean z4) {
        return z3 == z4;
    }

    public static byte[] a(ByteBuffer byteBuffer) {
        int position = byteBuffer.position();
        byte[] bArr = new byte[position];
        System.arraycopy(byteBuffer.array(), 0, bArr, 0, position);
        return bArr;
    }
}
