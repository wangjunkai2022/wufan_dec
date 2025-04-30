package com.umeng.analytics.pro;

import com.umeng.analytics.pro.bk;
/* compiled from: TProtocolUtil.java */
/* loaded from: classes4.dex */
public class bt {

    /* renamed from: a  reason: collision with root package name */
    private static int f60606a = Integer.MAX_VALUE;

    public static void a(int i2) {
        f60606a = i2;
    }

    public static void a(bq bqVar, byte b4) throws ax {
        a(bqVar, b4, f60606a);
    }

    public static void a(bq bqVar, byte b4, int i2) throws ax {
        if (i2 > 0) {
            int i4 = 0;
            switch (b4) {
                case 2:
                    bqVar.t();
                    return;
                case 3:
                    bqVar.u();
                    return;
                case 4:
                    bqVar.y();
                    return;
                case 5:
                case 7:
                case 9:
                default:
                    return;
                case 6:
                    bqVar.v();
                    return;
                case 8:
                    bqVar.w();
                    return;
                case 10:
                    bqVar.x();
                    return;
                case 11:
                    bqVar.A();
                    return;
                case 12:
                    bqVar.j();
                    while (true) {
                        byte b5 = bqVar.l().f60583b;
                        if (b5 == 0) {
                            bqVar.k();
                            return;
                        } else {
                            a(bqVar, b5, i2 - 1);
                            bqVar.m();
                        }
                    }
                case 13:
                    bn n4 = bqVar.n();
                    while (i4 < n4.f60589c) {
                        int i5 = i2 - 1;
                        a(bqVar, n4.f60587a, i5);
                        a(bqVar, n4.f60588b, i5);
                        i4++;
                    }
                    bqVar.o();
                    return;
                case 14:
                    bu r3 = bqVar.r();
                    while (i4 < r3.f60608b) {
                        a(bqVar, r3.f60607a, i2 - 1);
                        i4++;
                    }
                    bqVar.s();
                    return;
                case 15:
                    bm p3 = bqVar.p();
                    while (i4 < p3.f60586b) {
                        a(bqVar, p3.f60585a, i2 - 1);
                        i4++;
                    }
                    bqVar.q();
                    return;
            }
        } else {
            throw new ax("Maximum skip depth exceeded");
        }
    }

    public static bs a(byte[] bArr, bs bsVar) {
        if (bArr[0] > 16) {
            return new bk.a();
        }
        return (bArr.length <= 1 || (bArr[1] & 128) == 0) ? bsVar : new bk.a();
    }
}
