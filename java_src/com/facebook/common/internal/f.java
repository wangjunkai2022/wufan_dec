package com.facebook.common.internal;
/* compiled from: Ints.java */
/* loaded from: classes2.dex */
public class f {
    private f() {
    }

    public static int a(int... iArr) {
        h.d(iArr.length > 0);
        int i2 = iArr[0];
        for (int i4 = 1; i4 < iArr.length; i4++) {
            if (iArr[i4] > i2) {
                i2 = iArr[i4];
            }
        }
        return i2;
    }
}
