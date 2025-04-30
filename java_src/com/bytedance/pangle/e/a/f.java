package com.bytedance.pangle.e.a;
/* loaded from: classes2.dex */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    int[] f10211a;

    /* renamed from: b  reason: collision with root package name */
    int[] f10212b;

    public final String a(int i2) {
        int[] iArr;
        if (i2 < 0 || (iArr = this.f10211a) == null || i2 >= iArr.length) {
            return null;
        }
        int i4 = iArr[i2];
        int a4 = a(this.f10212b, i4);
        StringBuilder sb = new StringBuilder(a4);
        while (a4 != 0) {
            i4 += 2;
            sb.append((char) a(this.f10212b, i4));
            a4--;
        }
        return sb.toString();
    }

    private static final int a(int[] iArr, int i2) {
        int i4 = iArr[i2 / 4];
        return (i2 % 4) / 2 == 0 ? i4 & 65535 : i4 >>> 16;
    }
}
