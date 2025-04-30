package com.umeng.analytics.pro;
/* compiled from: TMemoryInputTransport.java */
/* loaded from: classes4.dex */
public final class cd extends ce {

    /* renamed from: a  reason: collision with root package name */
    private byte[] f60652a;

    /* renamed from: b  reason: collision with root package name */
    private int f60653b;

    /* renamed from: c  reason: collision with root package name */
    private int f60654c;

    public cd() {
    }

    public void a(byte[] bArr) {
        c(bArr, 0, bArr.length);
    }

    @Override // com.umeng.analytics.pro.ce
    public boolean a() {
        return true;
    }

    @Override // com.umeng.analytics.pro.ce
    public void b() throws cf {
    }

    @Override // com.umeng.analytics.pro.ce
    public void b(byte[] bArr, int i2, int i4) throws cf {
        throw new UnsupportedOperationException("No writing allowed!");
    }

    @Override // com.umeng.analytics.pro.ce
    public void c() {
    }

    public void c(byte[] bArr, int i2, int i4) {
        this.f60652a = bArr;
        this.f60653b = i2;
        this.f60654c = i2 + i4;
    }

    public void e() {
        this.f60652a = null;
    }

    @Override // com.umeng.analytics.pro.ce
    public byte[] f() {
        return this.f60652a;
    }

    @Override // com.umeng.analytics.pro.ce
    public int g() {
        return this.f60653b;
    }

    @Override // com.umeng.analytics.pro.ce
    public int h() {
        return this.f60654c - this.f60653b;
    }

    public cd(byte[] bArr) {
        a(bArr);
    }

    @Override // com.umeng.analytics.pro.ce
    public int a(byte[] bArr, int i2, int i4) throws cf {
        int h4 = h();
        if (i4 > h4) {
            i4 = h4;
        }
        if (i4 > 0) {
            System.arraycopy(this.f60652a, this.f60653b, bArr, i2, i4);
            a(i4);
        }
        return i4;
    }

    public cd(byte[] bArr, int i2, int i4) {
        c(bArr, i2, i4);
    }

    @Override // com.umeng.analytics.pro.ce
    public void a(int i2) {
        this.f60653b += i2;
    }
}
