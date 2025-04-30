package net.lingala.zip4j.crypto;

import java.util.Random;
import net.lingala.zip4j.exception.ZipException;
/* compiled from: AESEncrpyter.java */
/* loaded from: classes5.dex */
public class b implements d {

    /* renamed from: a  reason: collision with root package name */
    private char[] f72906a;

    /* renamed from: b  reason: collision with root package name */
    private int f72907b;

    /* renamed from: c  reason: collision with root package name */
    private net.lingala.zip4j.crypto.engine.a f72908c;

    /* renamed from: d  reason: collision with root package name */
    private net.lingala.zip4j.crypto.PBKDF2.b f72909d;

    /* renamed from: e  reason: collision with root package name */
    private int f72910e;

    /* renamed from: f  reason: collision with root package name */
    private int f72911f;

    /* renamed from: g  reason: collision with root package name */
    private int f72912g;

    /* renamed from: i  reason: collision with root package name */
    private byte[] f72914i;

    /* renamed from: j  reason: collision with root package name */
    private byte[] f72915j;

    /* renamed from: k  reason: collision with root package name */
    private byte[] f72916k;

    /* renamed from: l  reason: collision with root package name */
    private byte[] f72917l;

    /* renamed from: m  reason: collision with root package name */
    private boolean f72918m;

    /* renamed from: p  reason: collision with root package name */
    private byte[] f72921p;

    /* renamed from: q  reason: collision with root package name */
    private byte[] f72922q;

    /* renamed from: h  reason: collision with root package name */
    private final int f72913h = 2;

    /* renamed from: n  reason: collision with root package name */
    private int f72919n = 1;

    /* renamed from: o  reason: collision with root package name */
    private int f72920o = 0;

    public b(char[] cArr, int i2) throws ZipException {
        if (cArr == null || cArr.length == 0) {
            throw new ZipException("input password is empty or null in AES encrypter constructor");
        }
        if (i2 != 1 && i2 != 3) {
            throw new ZipException("Invalid key strength in AES encrypter constructor");
        }
        this.f72906a = cArr;
        this.f72907b = i2;
        this.f72918m = false;
        this.f72922q = new byte[16];
        this.f72921p = new byte[16];
        j();
    }

    private byte[] c(byte[] bArr, char[] cArr) throws ZipException {
        try {
            return new net.lingala.zip4j.crypto.PBKDF2.c(new net.lingala.zip4j.crypto.PBKDF2.e(com.alipay.security.mobile.module.commonutils.crypto.c.f9885a, "ISO-8859-1", bArr, 1000)).g(cArr, this.f72910e + this.f72911f + 2);
        } catch (Exception e4) {
            throw new ZipException(e4);
        }
    }

    private static byte[] d(int i2) throws ZipException {
        if (i2 != 8 && i2 != 16) {
            throw new ZipException("invalid salt size, cannot generate salt");
        }
        int i4 = i2 == 8 ? 2 : 0;
        if (i2 == 16) {
            i4 = 4;
        }
        byte[] bArr = new byte[i2];
        for (int i5 = 0; i5 < i4; i5++) {
            int nextInt = new Random().nextInt();
            int i6 = i5 * 4;
            bArr[i6 + 0] = (byte) (nextInt >> 24);
            bArr[i6 + 1] = (byte) (nextInt >> 16);
            bArr[i6 + 2] = (byte) (nextInt >> 8);
            bArr[i6 + 3] = (byte) nextInt;
        }
        return bArr;
    }

    private void j() throws ZipException {
        int i2 = this.f72907b;
        if (i2 == 1) {
            this.f72910e = 16;
            this.f72911f = 16;
            this.f72912g = 8;
        } else if (i2 == 3) {
            this.f72910e = 32;
            this.f72911f = 32;
            this.f72912g = 16;
        } else {
            throw new ZipException("invalid aes key strength, cannot determine key sizes");
        }
        byte[] d4 = d(this.f72912g);
        this.f72917l = d4;
        byte[] c4 = c(d4, this.f72906a);
        if (c4 != null) {
            int length = c4.length;
            int i4 = this.f72910e;
            int i5 = this.f72911f;
            if (length == i4 + i5 + 2) {
                byte[] bArr = new byte[i4];
                this.f72914i = bArr;
                this.f72915j = new byte[i5];
                this.f72916k = new byte[2];
                System.arraycopy(c4, 0, bArr, 0, i4);
                System.arraycopy(c4, this.f72910e, this.f72915j, 0, this.f72911f);
                System.arraycopy(c4, this.f72910e + this.f72911f, this.f72916k, 0, 2);
                this.f72908c = new net.lingala.zip4j.crypto.engine.a(this.f72914i);
                net.lingala.zip4j.crypto.PBKDF2.b bVar = new net.lingala.zip4j.crypto.PBKDF2.b(com.alipay.security.mobile.module.commonutils.crypto.c.f9885a);
                this.f72909d = bVar;
                bVar.b(this.f72915j);
                return;
            }
        }
        throw new ZipException("invalid key generated, cannot decrypt file");
    }

    @Override // net.lingala.zip4j.crypto.d
    public int a(byte[] bArr, int i2, int i4) throws ZipException {
        int i5;
        if (!this.f72918m) {
            if (i4 % 16 != 0) {
                this.f72918m = true;
            }
            int i6 = i2;
            while (true) {
                int i7 = i2 + i4;
                if (i6 >= i7) {
                    return i4;
                }
                int i8 = i6 + 16;
                this.f72920o = i8 <= i7 ? 16 : i7 - i6;
                net.lingala.zip4j.util.f.d(this.f72921p, this.f72919n, 16);
                this.f72908c.e(this.f72921p, this.f72922q);
                int i9 = 0;
                while (true) {
                    i5 = this.f72920o;
                    if (i9 >= i5) {
                        break;
                    }
                    int i10 = i6 + i9;
                    bArr[i10] = (byte) (bArr[i10] ^ this.f72922q[i9]);
                    i9++;
                }
                this.f72909d.update(bArr, i6, i5);
                this.f72919n++;
                i6 = i8;
            }
        } else {
            throw new ZipException("AES Encrypter is in finished state (A non 16 byte block has already been passed to encrypter)");
        }
    }

    @Override // net.lingala.zip4j.crypto.d
    public int b(byte[] bArr) throws ZipException {
        if (bArr != null) {
            return a(bArr, 0, bArr.length);
        }
        throw new ZipException("input bytes are null, cannot perform AES encrpytion");
    }

    public byte[] e() {
        return this.f72916k;
    }

    public byte[] f() {
        byte[] bArr = new byte[10];
        System.arraycopy(this.f72909d.d(), 0, bArr, 0, 10);
        return bArr;
    }

    public int g() {
        return 2;
    }

    public byte[] h() {
        return this.f72917l;
    }

    public int i() {
        return this.f72912g;
    }

    public void k(byte[] bArr) {
        this.f72916k = bArr;
    }

    public void l(byte[] bArr) {
        this.f72917l = bArr;
    }
}
