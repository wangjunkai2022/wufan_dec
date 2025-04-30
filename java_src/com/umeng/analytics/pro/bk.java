package com.umeng.analytics.pro;

import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import kotlin.jvm.internal.ByteCompanionObject;
/* compiled from: TCompactProtocol.java */
/* loaded from: classes4.dex */
public class bk extends bq {

    /* renamed from: d  reason: collision with root package name */
    private static final bv f60552d = new bv("");

    /* renamed from: e  reason: collision with root package name */
    private static final bl f60553e = new bl("", (byte) 0, 0);

    /* renamed from: f  reason: collision with root package name */
    private static final byte[] f60554f;

    /* renamed from: h  reason: collision with root package name */
    private static final byte f60555h = -126;

    /* renamed from: i  reason: collision with root package name */
    private static final byte f60556i = 1;

    /* renamed from: j  reason: collision with root package name */
    private static final byte f60557j = 31;

    /* renamed from: k  reason: collision with root package name */
    private static final byte f60558k = -32;

    /* renamed from: l  reason: collision with root package name */
    private static final int f60559l = 5;

    /* renamed from: a  reason: collision with root package name */
    byte[] f60560a;

    /* renamed from: b  reason: collision with root package name */
    byte[] f60561b;

    /* renamed from: c  reason: collision with root package name */
    byte[] f60562c;

    /* renamed from: m  reason: collision with root package name */
    private ap f60563m;

    /* renamed from: n  reason: collision with root package name */
    private short f60564n;

    /* renamed from: o  reason: collision with root package name */
    private bl f60565o;

    /* renamed from: p  reason: collision with root package name */
    private Boolean f60566p;

    /* renamed from: q  reason: collision with root package name */
    private final long f60567q;

    /* renamed from: r  reason: collision with root package name */
    private byte[] f60568r;

    /* compiled from: TCompactProtocol.java */
    /* loaded from: classes4.dex */
    private static class b {

        /* renamed from: a  reason: collision with root package name */
        public static final byte f60570a = 1;

        /* renamed from: b  reason: collision with root package name */
        public static final byte f60571b = 2;

        /* renamed from: c  reason: collision with root package name */
        public static final byte f60572c = 3;

        /* renamed from: d  reason: collision with root package name */
        public static final byte f60573d = 4;

        /* renamed from: e  reason: collision with root package name */
        public static final byte f60574e = 5;

        /* renamed from: f  reason: collision with root package name */
        public static final byte f60575f = 6;

        /* renamed from: g  reason: collision with root package name */
        public static final byte f60576g = 7;

        /* renamed from: h  reason: collision with root package name */
        public static final byte f60577h = 8;

        /* renamed from: i  reason: collision with root package name */
        public static final byte f60578i = 9;

        /* renamed from: j  reason: collision with root package name */
        public static final byte f60579j = 10;

        /* renamed from: k  reason: collision with root package name */
        public static final byte f60580k = 11;

        /* renamed from: l  reason: collision with root package name */
        public static final byte f60581l = 12;

        private b() {
        }
    }

    static {
        f60554f = r0;
        byte[] bArr = {0, 0, 1, 3, 7, 0, 4, 0, 5, 0, 6, 8, 12, 11, 10, 9};
    }

    public bk(ce ceVar, long j4) {
        super(ceVar);
        this.f60563m = new ap(15);
        this.f60564n = (short) 0;
        this.f60565o = null;
        this.f60566p = null;
        this.f60560a = new byte[5];
        this.f60561b = new byte[10];
        this.f60568r = new byte[1];
        this.f60562c = new byte[1];
        this.f60567q = j4;
    }

    private int E() throws ax {
        int i2 = 0;
        if (this.f60597g.h() >= 5) {
            byte[] f4 = this.f60597g.f();
            int g4 = this.f60597g.g();
            int i4 = 0;
            int i5 = 0;
            while (true) {
                byte b4 = f4[g4 + i2];
                i4 |= (b4 & ByteCompanionObject.MAX_VALUE) << i5;
                if ((b4 & 128) != 128) {
                    this.f60597g.a(i2 + 1);
                    return i4;
                }
                i5 += 7;
                i2++;
            }
        } else {
            int i6 = 0;
            while (true) {
                byte u3 = u();
                i2 |= (u3 & ByteCompanionObject.MAX_VALUE) << i6;
                if ((u3 & 128) != 128) {
                    return i2;
                }
                i6 += 7;
            }
        }
    }

    private long F() throws ax {
        byte u3;
        byte b4;
        int i2 = 0;
        long j4 = 0;
        if (this.f60597g.h() >= 10) {
            byte[] f4 = this.f60597g.f();
            int g4 = this.f60597g.g();
            long j5 = 0;
            int i4 = 0;
            while (true) {
                j5 |= (b4 & ByteCompanionObject.MAX_VALUE) << i4;
                if ((f4[g4 + i2] & 128) != 128) {
                    this.f60597g.a(i2 + 1);
                    return j5;
                }
                i4 += 7;
                i2++;
            }
        } else {
            while (true) {
                j4 |= (u3 & ByteCompanionObject.MAX_VALUE) << i2;
                if ((u() & 128) != 128) {
                    return j4;
                }
                i2 += 7;
            }
        }
    }

    private int c(int i2) {
        return (i2 >> 31) ^ (i2 << 1);
    }

    private long c(long j4) {
        return (j4 >> 63) ^ (j4 << 1);
    }

    private boolean c(byte b4) {
        int i2 = b4 & 15;
        return i2 == 1 || i2 == 2;
    }

    private long d(long j4) {
        return (-(j4 & 1)) ^ (j4 >>> 1);
    }

    private byte[] e(int i2) throws ax {
        if (i2 == 0) {
            return new byte[0];
        }
        byte[] bArr = new byte[i2];
        this.f60597g.d(bArr, 0, i2);
        return bArr;
    }

    private void f(int i2) throws br {
        if (i2 >= 0) {
            long j4 = this.f60567q;
            if (j4 == -1 || i2 <= j4) {
                return;
            }
            throw new br("Length exceeded max allowed: " + i2);
        }
        throw new br("Negative length: " + i2);
    }

    private int g(int i2) {
        return (-(i2 & 1)) ^ (i2 >>> 1);
    }

    @Override // com.umeng.analytics.pro.bq
    public ByteBuffer A() throws ax {
        int E = E();
        f(E);
        if (E == 0) {
            return ByteBuffer.wrap(new byte[0]);
        }
        byte[] bArr = new byte[E];
        this.f60597g.d(bArr, 0, E);
        return ByteBuffer.wrap(bArr);
    }

    @Override // com.umeng.analytics.pro.bq
    public void B() {
        this.f60563m.c();
        this.f60564n = (short) 0;
    }

    @Override // com.umeng.analytics.pro.bq
    public void a() throws ax {
    }

    @Override // com.umeng.analytics.pro.bq
    public void a(bo boVar) throws ax {
        b(f60555h);
        d(((boVar.f60591b << 5) & (-32)) | 1);
        b(boVar.f60592c);
        a(boVar.f60590a);
    }

    @Override // com.umeng.analytics.pro.bq
    public void b() throws ax {
        this.f60564n = this.f60563m.a();
    }

    @Override // com.umeng.analytics.pro.bq
    public void c() throws ax {
    }

    @Override // com.umeng.analytics.pro.bq
    public void d() throws ax {
        b((byte) 0);
    }

    @Override // com.umeng.analytics.pro.bq
    public void e() throws ax {
    }

    @Override // com.umeng.analytics.pro.bq
    public void f() throws ax {
    }

    @Override // com.umeng.analytics.pro.bq
    public void g() throws ax {
    }

    @Override // com.umeng.analytics.pro.bq
    public bo h() throws ax {
        byte u3 = u();
        if (u3 == -126) {
            byte u4 = u();
            byte b4 = (byte) (u4 & f60557j);
            if (b4 == 1) {
                int E = E();
                return new bo(z(), (byte) ((u4 >> 5) & 3), E);
            }
            throw new br("Expected version 1 but got " + ((int) b4));
        }
        throw new br("Expected protocol id " + Integer.toHexString(-126) + " but got " + Integer.toHexString(u3));
    }

    @Override // com.umeng.analytics.pro.bq
    public void i() throws ax {
    }

    @Override // com.umeng.analytics.pro.bq
    public bv j() throws ax {
        this.f60563m.a(this.f60564n);
        this.f60564n = (short) 0;
        return f60552d;
    }

    @Override // com.umeng.analytics.pro.bq
    public void k() throws ax {
        this.f60564n = this.f60563m.a();
    }

    @Override // com.umeng.analytics.pro.bq
    public bl l() throws ax {
        short s3;
        byte u3 = u();
        if (u3 == 0) {
            return f60553e;
        }
        short s4 = (short) ((u3 & 240) >> 4);
        if (s4 == 0) {
            s3 = v();
        } else {
            s3 = (short) (this.f60564n + s4);
        }
        byte b4 = (byte) (u3 & 15);
        bl blVar = new bl("", d(b4), s3);
        if (c(u3)) {
            this.f60566p = b4 == 1 ? Boolean.TRUE : Boolean.FALSE;
        }
        this.f60564n = blVar.f60584c;
        return blVar;
    }

    @Override // com.umeng.analytics.pro.bq
    public void m() throws ax {
    }

    @Override // com.umeng.analytics.pro.bq
    public bn n() throws ax {
        int E = E();
        byte u3 = E == 0 ? (byte) 0 : u();
        return new bn(d((byte) (u3 >> 4)), d((byte) (u3 & 15)), E);
    }

    @Override // com.umeng.analytics.pro.bq
    public void o() throws ax {
    }

    @Override // com.umeng.analytics.pro.bq
    public bm p() throws ax {
        byte u3 = u();
        int i2 = (u3 >> 4) & 15;
        if (i2 == 15) {
            i2 = E();
        }
        return new bm(d(u3), i2);
    }

    @Override // com.umeng.analytics.pro.bq
    public void q() throws ax {
    }

    @Override // com.umeng.analytics.pro.bq
    public bu r() throws ax {
        return new bu(p());
    }

    @Override // com.umeng.analytics.pro.bq
    public void s() throws ax {
    }

    @Override // com.umeng.analytics.pro.bq
    public boolean t() throws ax {
        Boolean bool = this.f60566p;
        if (bool == null) {
            return u() == 1;
        }
        boolean booleanValue = bool.booleanValue();
        this.f60566p = null;
        return booleanValue;
    }

    @Override // com.umeng.analytics.pro.bq
    public byte u() throws ax {
        if (this.f60597g.h() > 0) {
            byte b4 = this.f60597g.f()[this.f60597g.g()];
            this.f60597g.a(1);
            return b4;
        }
        this.f60597g.d(this.f60562c, 0, 1);
        return this.f60562c[0];
    }

    @Override // com.umeng.analytics.pro.bq
    public short v() throws ax {
        return (short) g(E());
    }

    @Override // com.umeng.analytics.pro.bq
    public int w() throws ax {
        return g(E());
    }

    @Override // com.umeng.analytics.pro.bq
    public long x() throws ax {
        return d(F());
    }

    @Override // com.umeng.analytics.pro.bq
    public double y() throws ax {
        byte[] bArr = new byte[8];
        this.f60597g.d(bArr, 0, 8);
        return Double.longBitsToDouble(a(bArr));
    }

    @Override // com.umeng.analytics.pro.bq
    public String z() throws ax {
        int E = E();
        f(E);
        if (E == 0) {
            return "";
        }
        try {
            if (this.f60597g.h() >= E) {
                String str = new String(this.f60597g.f(), this.f60597g.g(), E, "UTF-8");
                this.f60597g.a(E);
                return str;
            }
            return new String(e(E), "UTF-8");
        } catch (UnsupportedEncodingException unused) {
            throw new ax("UTF-8 not supported!");
        }
    }

    /* compiled from: TCompactProtocol.java */
    /* loaded from: classes4.dex */
    public static class a implements bs {

        /* renamed from: a  reason: collision with root package name */
        private final long f60569a;

        public a() {
            this.f60569a = -1L;
        }

        @Override // com.umeng.analytics.pro.bs
        public bq a(ce ceVar) {
            return new bk(ceVar, this.f60569a);
        }

        public a(int i2) {
            this.f60569a = i2;
        }
    }

    private void b(int i2) throws ax {
        int i4 = 0;
        while ((i2 & (-128)) != 0) {
            this.f60560a[i4] = (byte) ((i2 & 127) | 128);
            i2 >>>= 7;
            i4++;
        }
        byte[] bArr = this.f60560a;
        bArr[i4] = (byte) i2;
        this.f60597g.b(bArr, 0, i4 + 1);
    }

    private void d(int i2) throws ax {
        b((byte) i2);
    }

    private byte d(byte b4) throws br {
        byte b5 = (byte) (b4 & 15);
        switch (b5) {
            case 0:
                return (byte) 0;
            case 1:
            case 2:
                return (byte) 2;
            case 3:
                return (byte) 3;
            case 4:
                return (byte) 6;
            case 5:
                return (byte) 8;
            case 6:
                return (byte) 10;
            case 7:
                return (byte) 4;
            case 8:
                return (byte) 11;
            case 9:
                return (byte) 15;
            case 10:
                return (byte) 14;
            case 11:
                return (byte) 13;
            case 12:
                return (byte) 12;
            default:
                throw new br("don't know what type: " + ((int) b5));
        }
    }

    private byte e(byte b4) {
        return f60554f[b4];
    }

    private void b(long j4) throws ax {
        int i2 = 0;
        while (((-128) & j4) != 0) {
            this.f60561b[i2] = (byte) ((127 & j4) | 128);
            j4 >>>= 7;
            i2++;
        }
        byte[] bArr = this.f60561b;
        bArr[i2] = (byte) j4;
        this.f60597g.b(bArr, 0, i2 + 1);
    }

    @Override // com.umeng.analytics.pro.bq
    public void a(bv bvVar) throws ax {
        this.f60563m.a(this.f60564n);
        this.f60564n = (short) 0;
    }

    @Override // com.umeng.analytics.pro.bq
    public void a(bl blVar) throws ax {
        if (blVar.f60583b == 2) {
            this.f60565o = blVar;
        } else {
            a(blVar, (byte) -1);
        }
    }

    private void b(byte b4) throws ax {
        byte[] bArr = this.f60568r;
        bArr[0] = b4;
        this.f60597g.b(bArr);
    }

    private void a(bl blVar, byte b4) throws ax {
        if (b4 == -1) {
            b4 = e(blVar.f60583b);
        }
        short s3 = blVar.f60584c;
        short s4 = this.f60564n;
        if (s3 > s4 && s3 - s4 <= 15) {
            d(b4 | ((s3 - s4) << 4));
        } else {
            b(b4);
            a(blVar.f60584c);
        }
        this.f60564n = blVar.f60584c;
    }

    public bk(ce ceVar) {
        this(ceVar, -1L);
    }

    @Override // com.umeng.analytics.pro.bq
    public void a(bn bnVar) throws ax {
        int i2 = bnVar.f60589c;
        if (i2 == 0) {
            d(0);
            return;
        }
        b(i2);
        d(e(bnVar.f60588b) | (e(bnVar.f60587a) << 4));
    }

    @Override // com.umeng.analytics.pro.bq
    public void a(bm bmVar) throws ax {
        a(bmVar.f60585a, bmVar.f60586b);
    }

    @Override // com.umeng.analytics.pro.bq
    public void a(bu buVar) throws ax {
        a(buVar.f60607a, buVar.f60608b);
    }

    @Override // com.umeng.analytics.pro.bq
    public void a(boolean z3) throws ax {
        bl blVar = this.f60565o;
        if (blVar != null) {
            a(blVar, z3 ? (byte) 1 : (byte) 2);
            this.f60565o = null;
            return;
        }
        b(z3 ? (byte) 1 : (byte) 2);
    }

    @Override // com.umeng.analytics.pro.bq
    public void a(byte b4) throws ax {
        b(b4);
    }

    @Override // com.umeng.analytics.pro.bq
    public void a(short s3) throws ax {
        b(c((int) s3));
    }

    @Override // com.umeng.analytics.pro.bq
    public void a(int i2) throws ax {
        b(c(i2));
    }

    @Override // com.umeng.analytics.pro.bq
    public void a(long j4) throws ax {
        b(c(j4));
    }

    @Override // com.umeng.analytics.pro.bq
    public void a(double d4) throws ax {
        byte[] bArr = {0, 0, 0, 0, 0, 0, 0, 0};
        a(Double.doubleToLongBits(d4), bArr, 0);
        this.f60597g.b(bArr);
    }

    @Override // com.umeng.analytics.pro.bq
    public void a(String str) throws ax {
        try {
            byte[] bytes = str.getBytes("UTF-8");
            a(bytes, 0, bytes.length);
        } catch (UnsupportedEncodingException unused) {
            throw new ax("UTF-8 not supported!");
        }
    }

    @Override // com.umeng.analytics.pro.bq
    public void a(ByteBuffer byteBuffer) throws ax {
        a(byteBuffer.array(), byteBuffer.position() + byteBuffer.arrayOffset(), byteBuffer.limit() - byteBuffer.position());
    }

    private void a(byte[] bArr, int i2, int i4) throws ax {
        b(i4);
        this.f60597g.b(bArr, i2, i4);
    }

    protected void a(byte b4, int i2) throws ax {
        if (i2 <= 14) {
            d(e(b4) | (i2 << 4));
            return;
        }
        d(e(b4) | 240);
        b(i2);
    }

    private void a(long j4, byte[] bArr, int i2) {
        bArr[i2 + 0] = (byte) (j4 & 255);
        bArr[i2 + 1] = (byte) ((j4 >> 8) & 255);
        bArr[i2 + 2] = (byte) ((j4 >> 16) & 255);
        bArr[i2 + 3] = (byte) ((j4 >> 24) & 255);
        bArr[i2 + 4] = (byte) ((j4 >> 32) & 255);
        bArr[i2 + 5] = (byte) ((j4 >> 40) & 255);
        bArr[i2 + 6] = (byte) ((j4 >> 48) & 255);
        bArr[i2 + 7] = (byte) ((j4 >> 56) & 255);
    }

    private long a(byte[] bArr) {
        return ((bArr[7] & 255) << 56) | ((bArr[6] & 255) << 48) | ((bArr[5] & 255) << 40) | ((bArr[4] & 255) << 32) | ((bArr[3] & 255) << 24) | ((bArr[2] & 255) << 16) | ((bArr[1] & 255) << 8) | (255 & bArr[0]);
    }
}
