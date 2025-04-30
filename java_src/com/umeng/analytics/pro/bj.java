package com.umeng.analytics.pro;

import io.netty.handler.codec.http2.Http2CodecUtil;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
/* compiled from: TBinaryProtocol.java */
/* loaded from: classes4.dex */
public class bj extends bq {

    /* renamed from: a  reason: collision with root package name */
    protected static final int f60534a = -65536;

    /* renamed from: b  reason: collision with root package name */
    protected static final int f60535b = -2147418112;

    /* renamed from: h  reason: collision with root package name */
    private static final bv f60536h = new bv();

    /* renamed from: c  reason: collision with root package name */
    protected boolean f60537c;

    /* renamed from: d  reason: collision with root package name */
    protected boolean f60538d;

    /* renamed from: e  reason: collision with root package name */
    protected int f60539e;

    /* renamed from: f  reason: collision with root package name */
    protected boolean f60540f;

    /* renamed from: i  reason: collision with root package name */
    private byte[] f60541i;

    /* renamed from: j  reason: collision with root package name */
    private byte[] f60542j;

    /* renamed from: k  reason: collision with root package name */
    private byte[] f60543k;

    /* renamed from: l  reason: collision with root package name */
    private byte[] f60544l;

    /* renamed from: m  reason: collision with root package name */
    private byte[] f60545m;

    /* renamed from: n  reason: collision with root package name */
    private byte[] f60546n;

    /* renamed from: o  reason: collision with root package name */
    private byte[] f60547o;

    /* renamed from: p  reason: collision with root package name */
    private byte[] f60548p;

    /* compiled from: TBinaryProtocol.java */
    /* loaded from: classes4.dex */
    public static class a implements bs {

        /* renamed from: a  reason: collision with root package name */
        protected boolean f60549a;

        /* renamed from: b  reason: collision with root package name */
        protected boolean f60550b;

        /* renamed from: c  reason: collision with root package name */
        protected int f60551c;

        public a() {
            this(false, true);
        }

        @Override // com.umeng.analytics.pro.bs
        public bq a(ce ceVar) {
            bj bjVar = new bj(ceVar, this.f60549a, this.f60550b);
            int i2 = this.f60551c;
            if (i2 != 0) {
                bjVar.c(i2);
            }
            return bjVar;
        }

        public a(boolean z3, boolean z4) {
            this(z3, z4, 0);
        }

        public a(boolean z3, boolean z4, int i2) {
            this.f60549a = false;
            this.f60550b = true;
            this.f60549a = z3;
            this.f60550b = z4;
            this.f60551c = i2;
        }
    }

    public bj(ce ceVar) {
        this(ceVar, false, true);
    }

    @Override // com.umeng.analytics.pro.bq
    public ByteBuffer A() throws ax {
        int w3 = w();
        d(w3);
        if (this.f60597g.h() >= w3) {
            ByteBuffer wrap = ByteBuffer.wrap(this.f60597g.f(), this.f60597g.g(), w3);
            this.f60597g.a(w3);
            return wrap;
        }
        byte[] bArr = new byte[w3];
        this.f60597g.d(bArr, 0, w3);
        return ByteBuffer.wrap(bArr);
    }

    @Override // com.umeng.analytics.pro.bq
    public void a() {
    }

    @Override // com.umeng.analytics.pro.bq
    public void a(bo boVar) throws ax {
        if (this.f60538d) {
            a(f60535b | boVar.f60591b);
            a(boVar.f60590a);
            a(boVar.f60592c);
            return;
        }
        a(boVar.f60590a);
        a(boVar.f60591b);
        a(boVar.f60592c);
    }

    @Override // com.umeng.analytics.pro.bq
    public void a(bv bvVar) {
    }

    public String b(int i2) throws ax {
        try {
            d(i2);
            byte[] bArr = new byte[i2];
            this.f60597g.d(bArr, 0, i2);
            return new String(bArr, "UTF-8");
        } catch (UnsupportedEncodingException unused) {
            throw new ax("JVM DOES NOT SUPPORT UTF-8");
        }
    }

    @Override // com.umeng.analytics.pro.bq
    public void b() {
    }

    @Override // com.umeng.analytics.pro.bq
    public void c() {
    }

    public void c(int i2) {
        this.f60539e = i2;
        this.f60540f = true;
    }

    @Override // com.umeng.analytics.pro.bq
    public void d() throws ax {
        a((byte) 0);
    }

    @Override // com.umeng.analytics.pro.bq
    public void e() {
    }

    @Override // com.umeng.analytics.pro.bq
    public void f() {
    }

    @Override // com.umeng.analytics.pro.bq
    public void g() {
    }

    @Override // com.umeng.analytics.pro.bq
    public bo h() throws ax {
        int w3 = w();
        if (w3 < 0) {
            if (((-65536) & w3) == f60535b) {
                return new bo(z(), (byte) (w3 & 255), w());
            }
            throw new br(4, "Bad version in readMessageBegin");
        } else if (!this.f60537c) {
            return new bo(b(w3), u(), w());
        } else {
            throw new br(4, "Missing version in readMessageBegin, old client?");
        }
    }

    @Override // com.umeng.analytics.pro.bq
    public void i() {
    }

    @Override // com.umeng.analytics.pro.bq
    public bv j() {
        return f60536h;
    }

    @Override // com.umeng.analytics.pro.bq
    public void k() {
    }

    @Override // com.umeng.analytics.pro.bq
    public bl l() throws ax {
        byte u3 = u();
        return new bl("", u3, u3 == 0 ? (short) 0 : v());
    }

    @Override // com.umeng.analytics.pro.bq
    public void m() {
    }

    @Override // com.umeng.analytics.pro.bq
    public bn n() throws ax {
        return new bn(u(), u(), w());
    }

    @Override // com.umeng.analytics.pro.bq
    public void o() {
    }

    @Override // com.umeng.analytics.pro.bq
    public bm p() throws ax {
        return new bm(u(), w());
    }

    @Override // com.umeng.analytics.pro.bq
    public void q() {
    }

    @Override // com.umeng.analytics.pro.bq
    public bu r() throws ax {
        return new bu(u(), w());
    }

    @Override // com.umeng.analytics.pro.bq
    public void s() {
    }

    @Override // com.umeng.analytics.pro.bq
    public boolean t() throws ax {
        return u() == 1;
    }

    @Override // com.umeng.analytics.pro.bq
    public byte u() throws ax {
        if (this.f60597g.h() >= 1) {
            byte b4 = this.f60597g.f()[this.f60597g.g()];
            this.f60597g.a(1);
            return b4;
        }
        a(this.f60545m, 0, 1);
        return this.f60545m[0];
    }

    @Override // com.umeng.analytics.pro.bq
    public short v() throws ax {
        byte[] bArr = this.f60546n;
        int i2 = 0;
        if (this.f60597g.h() >= 2) {
            bArr = this.f60597g.f();
            i2 = this.f60597g.g();
            this.f60597g.a(2);
        } else {
            a(this.f60546n, 0, 2);
        }
        return (short) ((bArr[i2 + 1] & 255) | ((bArr[i2] & 255) << 8));
    }

    @Override // com.umeng.analytics.pro.bq
    public int w() throws ax {
        byte[] bArr = this.f60547o;
        int i2 = 0;
        if (this.f60597g.h() >= 4) {
            bArr = this.f60597g.f();
            i2 = this.f60597g.g();
            this.f60597g.a(4);
        } else {
            a(this.f60547o, 0, 4);
        }
        return (bArr[i2 + 3] & 255) | ((bArr[i2] & 255) << 24) | ((bArr[i2 + 1] & 255) << 16) | ((bArr[i2 + 2] & 255) << 8);
    }

    @Override // com.umeng.analytics.pro.bq
    public long x() throws ax {
        byte[] bArr = this.f60548p;
        int i2 = 0;
        if (this.f60597g.h() >= 8) {
            bArr = this.f60597g.f();
            i2 = this.f60597g.g();
            this.f60597g.a(8);
        } else {
            a(this.f60548p, 0, 8);
        }
        return (bArr[i2 + 7] & 255) | ((bArr[i2] & 255) << 56) | ((bArr[i2 + 1] & 255) << 48) | ((bArr[i2 + 2] & 255) << 40) | ((bArr[i2 + 3] & 255) << 32) | ((bArr[i2 + 4] & 255) << 24) | ((bArr[i2 + 5] & 255) << 16) | ((bArr[i2 + 6] & 255) << 8);
    }

    @Override // com.umeng.analytics.pro.bq
    public double y() throws ax {
        return Double.longBitsToDouble(x());
    }

    @Override // com.umeng.analytics.pro.bq
    public String z() throws ax {
        int w3 = w();
        if (this.f60597g.h() >= w3) {
            try {
                String str = new String(this.f60597g.f(), this.f60597g.g(), w3, "UTF-8");
                this.f60597g.a(w3);
                return str;
            } catch (UnsupportedEncodingException unused) {
                throw new ax("JVM DOES NOT SUPPORT UTF-8");
            }
        }
        return b(w3);
    }

    public bj(ce ceVar, boolean z3, boolean z4) {
        super(ceVar);
        this.f60537c = false;
        this.f60538d = true;
        this.f60540f = false;
        this.f60541i = new byte[1];
        this.f60542j = new byte[2];
        this.f60543k = new byte[4];
        this.f60544l = new byte[8];
        this.f60545m = new byte[1];
        this.f60546n = new byte[2];
        this.f60547o = new byte[4];
        this.f60548p = new byte[8];
        this.f60537c = z3;
        this.f60538d = z4;
    }

    protected void d(int i2) throws ax {
        if (i2 >= 0) {
            if (this.f60540f) {
                int i4 = this.f60539e - i2;
                this.f60539e = i4;
                if (i4 >= 0) {
                    return;
                }
                throw new br("Message length exceeded: " + i2);
            }
            return;
        }
        throw new br("Negative length: " + i2);
    }

    @Override // com.umeng.analytics.pro.bq
    public void a(bl blVar) throws ax {
        a(blVar.f60583b);
        a(blVar.f60584c);
    }

    @Override // com.umeng.analytics.pro.bq
    public void a(bn bnVar) throws ax {
        a(bnVar.f60587a);
        a(bnVar.f60588b);
        a(bnVar.f60589c);
    }

    @Override // com.umeng.analytics.pro.bq
    public void a(bm bmVar) throws ax {
        a(bmVar.f60585a);
        a(bmVar.f60586b);
    }

    @Override // com.umeng.analytics.pro.bq
    public void a(bu buVar) throws ax {
        a(buVar.f60607a);
        a(buVar.f60608b);
    }

    @Override // com.umeng.analytics.pro.bq
    public void a(boolean z3) throws ax {
        a(z3 ? (byte) 1 : (byte) 0);
    }

    @Override // com.umeng.analytics.pro.bq
    public void a(byte b4) throws ax {
        byte[] bArr = this.f60541i;
        bArr[0] = b4;
        this.f60597g.b(bArr, 0, 1);
    }

    @Override // com.umeng.analytics.pro.bq
    public void a(short s3) throws ax {
        byte[] bArr = this.f60542j;
        bArr[0] = (byte) ((s3 >> 8) & 255);
        bArr[1] = (byte) (s3 & Http2CodecUtil.MAX_UNSIGNED_BYTE);
        this.f60597g.b(bArr, 0, 2);
    }

    @Override // com.umeng.analytics.pro.bq
    public void a(int i2) throws ax {
        byte[] bArr = this.f60543k;
        bArr[0] = (byte) ((i2 >> 24) & 255);
        bArr[1] = (byte) ((i2 >> 16) & 255);
        bArr[2] = (byte) ((i2 >> 8) & 255);
        bArr[3] = (byte) (i2 & 255);
        this.f60597g.b(bArr, 0, 4);
    }

    @Override // com.umeng.analytics.pro.bq
    public void a(long j4) throws ax {
        byte[] bArr = this.f60544l;
        bArr[0] = (byte) ((j4 >> 56) & 255);
        bArr[1] = (byte) ((j4 >> 48) & 255);
        bArr[2] = (byte) ((j4 >> 40) & 255);
        bArr[3] = (byte) ((j4 >> 32) & 255);
        bArr[4] = (byte) ((j4 >> 24) & 255);
        bArr[5] = (byte) ((j4 >> 16) & 255);
        bArr[6] = (byte) ((j4 >> 8) & 255);
        bArr[7] = (byte) (j4 & 255);
        this.f60597g.b(bArr, 0, 8);
    }

    @Override // com.umeng.analytics.pro.bq
    public void a(double d4) throws ax {
        a(Double.doubleToLongBits(d4));
    }

    @Override // com.umeng.analytics.pro.bq
    public void a(String str) throws ax {
        try {
            byte[] bytes = str.getBytes("UTF-8");
            a(bytes.length);
            this.f60597g.b(bytes, 0, bytes.length);
        } catch (UnsupportedEncodingException unused) {
            throw new ax("JVM DOES NOT SUPPORT UTF-8");
        }
    }

    @Override // com.umeng.analytics.pro.bq
    public void a(ByteBuffer byteBuffer) throws ax {
        int limit = byteBuffer.limit() - byteBuffer.position();
        a(limit);
        this.f60597g.b(byteBuffer.array(), byteBuffer.position() + byteBuffer.arrayOffset(), limit);
    }

    private int a(byte[] bArr, int i2, int i4) throws ax {
        d(i4);
        return this.f60597g.d(bArr, i2, i4);
    }
}
