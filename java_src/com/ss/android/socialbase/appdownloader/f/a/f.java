package com.ss.android.socialbase.appdownloader.f.a;

import java.io.IOException;
/* compiled from: StringBlock.java */
/* loaded from: classes4.dex */
public class f {

    /* renamed from: a  reason: collision with root package name */
    private int[] f57704a;

    /* renamed from: b  reason: collision with root package name */
    private int[] f57705b;

    private f() {
    }

    public static f a(d dVar) throws IOException {
        b.a(dVar, 1835009);
        int b4 = dVar.b();
        int b5 = dVar.b();
        int b6 = dVar.b();
        dVar.b();
        int b7 = dVar.b();
        int b8 = dVar.b();
        f fVar = new f();
        fVar.f57704a = dVar.b(b5);
        if (b6 != 0) {
            dVar.b(b6);
        }
        int i2 = (b8 == 0 ? b4 : b8) - b7;
        if (i2 % 4 == 0) {
            fVar.f57705b = dVar.b(i2 / 4);
            if (b8 != 0) {
                int i4 = b4 - b8;
                if (i4 % 4 == 0) {
                    dVar.b(i4 / 4);
                } else {
                    throw new IOException("Style data size is not multiple of 4 (" + i4 + ").");
                }
            }
            return fVar;
        }
        throw new IOException("String data size is not multiple of 4 (" + i2 + ").");
    }

    public String a(int i2) {
        int[] iArr;
        if (i2 < 0 || (iArr = this.f57704a) == null || i2 >= iArr.length) {
            return null;
        }
        int i4 = iArr[i2];
        int a4 = a(this.f57705b, i4);
        StringBuilder sb = new StringBuilder(a4);
        while (a4 != 0) {
            i4 += 2;
            sb.append((char) a(this.f57705b, i4));
            a4--;
        }
        return sb.toString();
    }

    private static final int a(int[] iArr, int i2) {
        int i4 = iArr[i2 / 4];
        return (i2 % 4) / 2 == 0 ? i4 & 65535 : i4 >>> 16;
    }
}
