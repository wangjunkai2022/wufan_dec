package com.tencent.stat.common;
/* loaded from: classes4.dex */
public class g {

    /* renamed from: a  reason: collision with root package name */
    static final /* synthetic */ boolean f60067a = true;

    private g() {
    }

    public static byte[] a(byte[] bArr, int i2) {
        return a(bArr, 0, bArr.length, i2);
    }

    public static byte[] a(byte[] bArr, int i2, int i4, int i5) {
        i iVar = new i(i5, new byte[(i4 * 3) / 4]);
        if (iVar.a(bArr, i2, i4, true)) {
            int i6 = iVar.f60069b;
            byte[] bArr2 = iVar.f60068a;
            if (i6 == bArr2.length) {
                return bArr2;
            }
            byte[] bArr3 = new byte[i6];
            System.arraycopy(bArr2, 0, bArr3, 0, i6);
            return bArr3;
        }
        throw new IllegalArgumentException("bad base-64");
    }

    public static byte[] b(byte[] bArr, int i2) {
        return b(bArr, 0, bArr.length, i2);
    }

    public static byte[] b(byte[] bArr, int i2, int i4, int i5) {
        j jVar = new j(i5, null);
        int i6 = (i4 / 3) * 4;
        if (!jVar.f60079d) {
            int i7 = i4 % 3;
            if (i7 == 1) {
                i6 += 2;
            } else if (i7 == 2) {
                i6 += 3;
            }
        } else if (i4 % 3 > 0) {
            i6 += 4;
        }
        if (jVar.f60080e && i4 > 0) {
            i6 += (((i4 - 1) / 57) + 1) * (jVar.f60081f ? 2 : 1);
        }
        jVar.f60068a = new byte[i6];
        jVar.a(bArr, i2, i4, true);
        if (f60067a || jVar.f60069b == i6) {
            return jVar.f60068a;
        }
        throw new AssertionError();
    }
}
