package com.umeng.analytics.pro;
/* compiled from: TApplicationException.java */
/* loaded from: classes4.dex */
public class aq extends ax {

    /* renamed from: a  reason: collision with root package name */
    public static final int f60493a = 0;

    /* renamed from: b  reason: collision with root package name */
    public static final int f60494b = 1;

    /* renamed from: c  reason: collision with root package name */
    public static final int f60495c = 2;

    /* renamed from: d  reason: collision with root package name */
    public static final int f60496d = 3;

    /* renamed from: e  reason: collision with root package name */
    public static final int f60497e = 4;

    /* renamed from: f  reason: collision with root package name */
    public static final int f60498f = 5;

    /* renamed from: g  reason: collision with root package name */
    public static final int f60499g = 6;

    /* renamed from: h  reason: collision with root package name */
    public static final int f60500h = 7;

    /* renamed from: j  reason: collision with root package name */
    private static final bv f60501j = new bv("TApplicationException");

    /* renamed from: k  reason: collision with root package name */
    private static final bl f60502k = new bl("message", (byte) 11, 1);

    /* renamed from: l  reason: collision with root package name */
    private static final bl f60503l = new bl("type", (byte) 8, 2);

    /* renamed from: m  reason: collision with root package name */
    private static final long f60504m = 1;

    /* renamed from: i  reason: collision with root package name */
    protected int f60505i;

    public aq() {
        this.f60505i = 0;
    }

    public int a() {
        return this.f60505i;
    }

    public void b(bq bqVar) throws ax {
        bqVar.a(f60501j);
        if (getMessage() != null) {
            bqVar.a(f60502k);
            bqVar.a(getMessage());
            bqVar.c();
        }
        bqVar.a(f60503l);
        bqVar.a(this.f60505i);
        bqVar.c();
        bqVar.d();
        bqVar.b();
    }

    public static aq a(bq bqVar) throws ax {
        bqVar.j();
        String str = null;
        int i2 = 0;
        while (true) {
            bl l4 = bqVar.l();
            byte b4 = l4.f60583b;
            if (b4 == 0) {
                bqVar.k();
                return new aq(i2, str);
            }
            short s3 = l4.f60584c;
            if (s3 != 1) {
                if (s3 != 2) {
                    bt.a(bqVar, b4);
                } else if (b4 == 8) {
                    i2 = bqVar.w();
                } else {
                    bt.a(bqVar, b4);
                }
            } else if (b4 == 11) {
                str = bqVar.z();
            } else {
                bt.a(bqVar, b4);
            }
            bqVar.m();
        }
    }

    public aq(int i2) {
        this.f60505i = 0;
        this.f60505i = i2;
    }

    public aq(int i2, String str) {
        super(str);
        this.f60505i = 0;
        this.f60505i = i2;
    }

    public aq(String str) {
        super(str);
        this.f60505i = 0;
    }
}
