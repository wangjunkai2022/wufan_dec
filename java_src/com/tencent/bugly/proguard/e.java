package com.tencent.bugly.proguard;
/* compiled from: BUGLY */
/* loaded from: classes4.dex */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    private static final char[] f59732a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    public static String a(byte[] bArr) {
        if (bArr == null || bArr.length == 0) {
            return null;
        }
        char[] cArr = new char[bArr.length * 2];
        for (int i2 = 0; i2 < bArr.length; i2++) {
            byte b4 = bArr[i2];
            int i4 = i2 * 2;
            char[] cArr2 = f59732a;
            cArr[i4 + 1] = cArr2[b4 & 15];
            cArr[i4] = cArr2[((byte) (b4 >>> 4)) & 15];
        }
        return new String(cArr);
    }
}
