package com.umeng.analytics.pro;
/* compiled from: TTransport.java */
/* loaded from: classes4.dex */
public abstract class ce {
    public abstract int a(byte[] bArr, int i2, int i4) throws cf;

    public void a(int i2) {
    }

    public abstract boolean a();

    public abstract void b() throws cf;

    public void b(byte[] bArr) throws cf {
        b(bArr, 0, bArr.length);
    }

    public abstract void b(byte[] bArr, int i2, int i4) throws cf;

    public abstract void c();

    public int d(byte[] bArr, int i2, int i4) throws cf {
        int i5 = 0;
        while (i5 < i4) {
            int a4 = a(bArr, i2 + i5, i4 - i5);
            if (a4 <= 0) {
                throw new cf("Cannot read. Remote side has closed. Tried to read " + i4 + " bytes, but only got " + i5 + " bytes. (This is often indicative of an internal error on the server side. Please check your server logs.)");
            }
            i5 += a4;
        }
        return i5;
    }

    public void d() throws cf {
    }

    public byte[] f() {
        return null;
    }

    public int g() {
        return 0;
    }

    public int h() {
        return -1;
    }

    public boolean i() {
        return a();
    }
}
