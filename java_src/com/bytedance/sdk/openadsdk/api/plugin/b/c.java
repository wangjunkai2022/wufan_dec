package com.bytedance.sdk.openadsdk.api.plugin.b;

import java.util.Objects;
/* compiled from: DigestUtils.java */
/* loaded from: classes2.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private static final char[] f10586a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    public static String a(byte[] bArr) {
        Objects.requireNonNull(bArr, "bytes is null");
        return a(bArr, 0, bArr.length);
    }

    public static String a(byte[] bArr, int i2, int i4) {
        Objects.requireNonNull(bArr, "bytes is null");
        if (i2 >= 0 && i2 + i4 <= bArr.length) {
            int i5 = i4 * 2;
            char[] cArr = new char[i5];
            int i6 = 0;
            for (int i7 = 0; i7 < i4; i7++) {
                int i8 = bArr[i7 + i2] & 255;
                int i9 = i6 + 1;
                char[] cArr2 = f10586a;
                cArr[i6] = cArr2[i8 >> 4];
                i6 = i9 + 1;
                cArr[i9] = cArr2[i8 & 15];
            }
            return new String(cArr, 0, i5);
        }
        throw new IndexOutOfBoundsException();
    }
}
