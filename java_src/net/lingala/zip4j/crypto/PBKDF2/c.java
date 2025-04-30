package net.lingala.zip4j.crypto.PBKDF2;

import java.util.Objects;
/* compiled from: PBKDF2Engine.java */
/* loaded from: classes5.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    protected e f72884a;

    /* renamed from: b  reason: collision with root package name */
    protected f f72885b;

    public c() {
        this.f72884a = null;
        this.f72885b = null;
    }

    protected void a(byte[] bArr, int i2, int i4) {
        bArr[i2 + 0] = (byte) (i4 / 16777216);
        bArr[i2 + 1] = (byte) (i4 / 65536);
        bArr[i2 + 2] = (byte) (i4 / 256);
        bArr[i2 + 3] = (byte) i4;
    }

    protected byte[] b(f fVar, byte[] bArr, int i2, int i4) {
        byte[] bArr2 = bArr == null ? new byte[0] : bArr;
        int a4 = fVar.a();
        int e4 = e(i4, a4);
        int i5 = i4 - ((e4 - 1) * a4);
        byte[] bArr3 = new byte[e4 * a4];
        int i6 = 0;
        for (int i7 = 1; i7 <= e4; i7++) {
            c(bArr3, i6, fVar, bArr2, i2, i7);
            i6 += a4;
        }
        if (i5 < a4) {
            byte[] bArr4 = new byte[i4];
            System.arraycopy(bArr3, 0, bArr4, 0, i4);
            return bArr4;
        }
        return bArr3;
    }

    protected void c(byte[] bArr, int i2, f fVar, byte[] bArr2, int i4, int i5) {
        int a4 = fVar.a();
        byte[] bArr3 = new byte[a4];
        byte[] bArr4 = new byte[bArr2.length + 4];
        System.arraycopy(bArr2, 0, bArr4, 0, bArr2.length);
        a(bArr4, bArr2.length, i5);
        for (int i6 = 0; i6 < i4; i6++) {
            bArr4 = fVar.c(bArr4);
            m(bArr3, bArr4);
        }
        System.arraycopy(bArr3, 0, bArr, i2, a4);
    }

    protected void d(byte[] bArr) {
        if (this.f72885b == null) {
            this.f72885b = new b(this.f72884a.b());
        }
        this.f72885b.b(bArr);
    }

    protected int e(int i2, int i4) {
        return (i2 / i4) + (i2 % i4 > 0 ? 1 : 0);
    }

    public byte[] f(char[] cArr) {
        return g(cArr, 0);
    }

    public byte[] g(char[] cArr, int i2) {
        Objects.requireNonNull(cArr);
        d(net.lingala.zip4j.util.f.c(cArr));
        if (i2 == 0) {
            i2 = this.f72885b.a();
        }
        return b(this.f72885b, this.f72884a.e(), this.f72884a.d(), i2);
    }

    public e h() {
        return this.f72884a;
    }

    public f i() {
        return this.f72885b;
    }

    public void j(e eVar) {
        this.f72884a = eVar;
    }

    public void k(f fVar) {
        this.f72885b = fVar;
    }

    public boolean l(char[] cArr) {
        byte[] g4;
        byte[] a4 = h().a();
        if (a4 == null || a4.length == 0 || (g4 = g(cArr, a4.length)) == null || g4.length != a4.length) {
            return false;
        }
        for (int i2 = 0; i2 < g4.length; i2++) {
            if (g4[i2] != a4[i2]) {
                return false;
            }
        }
        return true;
    }

    protected void m(byte[] bArr, byte[] bArr2) {
        for (int i2 = 0; i2 < bArr.length; i2++) {
            bArr[i2] = (byte) (bArr[i2] ^ bArr2[i2]);
        }
    }

    public c(e eVar) {
        this.f72884a = eVar;
        this.f72885b = null;
    }

    public c(e eVar, f fVar) {
        this.f72884a = eVar;
        this.f72885b = fVar;
    }
}
