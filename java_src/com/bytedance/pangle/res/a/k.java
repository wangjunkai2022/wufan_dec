package com.bytedance.pangle.res.a;

import java.io.ByteArrayInputStream;
/* loaded from: classes2.dex */
public final class k {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(g gVar) {
        return (int) gVar.f10341a.a().b();
    }

    private static byte[] a(int i2) {
        return new byte[]{(byte) (i2 >> 0), (byte) (i2 >> 8), (byte) (i2 >> 16), (byte) (i2 >> 24)};
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(byte[] bArr, int i2, int i4, h hVar) {
        if (i2 >= 2130706432) {
            byte[] a4 = a(hVar.a(i2));
            bArr[i4] = a4[0];
            bArr[i4 + 1] = a4[1];
            bArr[i4 + 2] = a4[2];
            bArr[i4 + 3] = a4[3];
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(byte[] bArr, h hVar) {
        b bVar = new b(bArr, hVar);
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        bVar.a();
        bVar.f10317a = new g(new i(new e(byteArrayInputStream)));
        do {
        } while (bVar.b() != 1);
    }
}
