package net.lingala.zip4j.crypto;

import e3.i;
import java.util.Arrays;
import net.lingala.zip4j.exception.ZipException;
/* compiled from: AESDecrypter.java */
/* loaded from: classes5.dex */
public class a implements c {

    /* renamed from: a  reason: collision with root package name */
    private i f72891a;

    /* renamed from: b  reason: collision with root package name */
    private net.lingala.zip4j.crypto.engine.a f72892b;

    /* renamed from: c  reason: collision with root package name */
    private net.lingala.zip4j.crypto.PBKDF2.b f72893c;

    /* renamed from: e  reason: collision with root package name */
    private int f72895e;

    /* renamed from: f  reason: collision with root package name */
    private int f72896f;

    /* renamed from: g  reason: collision with root package name */
    private int f72897g;

    /* renamed from: h  reason: collision with root package name */
    private byte[] f72898h;

    /* renamed from: i  reason: collision with root package name */
    private byte[] f72899i;

    /* renamed from: j  reason: collision with root package name */
    private byte[] f72900j;

    /* renamed from: k  reason: collision with root package name */
    private byte[] f72901k;

    /* renamed from: m  reason: collision with root package name */
    private byte[] f72903m;

    /* renamed from: n  reason: collision with root package name */
    private byte[] f72904n;

    /* renamed from: d  reason: collision with root package name */
    private final int f72894d = 2;

    /* renamed from: l  reason: collision with root package name */
    private int f72902l = 1;

    /* renamed from: o  reason: collision with root package name */
    private int f72905o = 0;

    public a(i iVar, byte[] bArr, byte[] bArr2) throws ZipException {
        if (iVar != null) {
            this.f72891a = iVar;
            this.f72901k = null;
            this.f72903m = new byte[16];
            this.f72904n = new byte[16];
            h(bArr, bArr2);
            return;
        }
        throw new ZipException("one of the input parameters is null in AESDecryptor Constructor");
    }

    private byte[] c(byte[] bArr, char[] cArr) throws ZipException {
        try {
            return new net.lingala.zip4j.crypto.PBKDF2.c(new net.lingala.zip4j.crypto.PBKDF2.e(com.alipay.security.mobile.module.commonutils.crypto.c.f9885a, "ISO-8859-1", bArr, 1000)).g(cArr, this.f72895e + this.f72896f + 2);
        } catch (Exception e4) {
            throw new ZipException(e4);
        }
    }

    private void h(byte[] bArr, byte[] bArr2) throws ZipException {
        i iVar = this.f72891a;
        if (iVar != null) {
            e3.a a4 = iVar.a();
            if (a4 != null) {
                int a5 = a4.a();
                if (a5 == 1) {
                    this.f72895e = 16;
                    this.f72896f = 16;
                    this.f72897g = 8;
                } else if (a5 == 2) {
                    this.f72895e = 24;
                    this.f72896f = 24;
                    this.f72897g = 12;
                } else if (a5 == 3) {
                    this.f72895e = 32;
                    this.f72896f = 32;
                    this.f72897g = 16;
                } else {
                    StringBuffer stringBuffer = new StringBuffer("invalid aes key strength for file: ");
                    stringBuffer.append(this.f72891a.j());
                    throw new ZipException(stringBuffer.toString());
                }
                if (this.f72891a.o() != null && this.f72891a.o().length > 0) {
                    byte[] c4 = c(bArr, this.f72891a.o());
                    if (c4 != null) {
                        int length = c4.length;
                        int i2 = this.f72895e;
                        int i4 = this.f72896f;
                        if (length == i2 + i4 + 2) {
                            byte[] bArr3 = new byte[i2];
                            this.f72898h = bArr3;
                            this.f72899i = new byte[i4];
                            this.f72900j = new byte[2];
                            System.arraycopy(c4, 0, bArr3, 0, i2);
                            System.arraycopy(c4, this.f72895e, this.f72899i, 0, this.f72896f);
                            System.arraycopy(c4, this.f72895e + this.f72896f, this.f72900j, 0, 2);
                            byte[] bArr4 = this.f72900j;
                            if (bArr4 != null) {
                                if (Arrays.equals(bArr2, bArr4)) {
                                    this.f72892b = new net.lingala.zip4j.crypto.engine.a(this.f72898h);
                                    net.lingala.zip4j.crypto.PBKDF2.b bVar = new net.lingala.zip4j.crypto.PBKDF2.b(com.alipay.security.mobile.module.commonutils.crypto.c.f9885a);
                                    this.f72893c = bVar;
                                    bVar.b(this.f72899i);
                                    return;
                                }
                                StringBuffer stringBuffer2 = new StringBuffer("Wrong Password for file: ");
                                stringBuffer2.append(this.f72891a.j());
                                throw new ZipException(stringBuffer2.toString(), 5);
                            }
                            throw new ZipException("invalid derived password verifier for AES");
                        }
                    }
                    throw new ZipException("invalid derived key");
                }
                throw new ZipException("empty or null password provided for AES Decryptor");
            }
            throw new ZipException("invalid aes extra data record - in init method of AESDecryptor");
        }
        throw new ZipException("invalid file header in init method of AESDecryptor");
    }

    @Override // net.lingala.zip4j.crypto.c
    public int a(byte[] bArr) throws ZipException {
        return b(bArr, 0, bArr.length);
    }

    @Override // net.lingala.zip4j.crypto.c
    public int b(byte[] bArr, int i2, int i4) throws ZipException {
        if (this.f72892b == null) {
            throw new ZipException("AES not initialized properly");
        }
        int i5 = i2;
        while (true) {
            int i6 = i2 + i4;
            if (i5 >= i6) {
                return i4;
            }
            int i7 = i5 + 16;
            int i8 = i7 <= i6 ? 16 : i6 - i5;
            try {
                this.f72905o = i8;
                this.f72893c.update(bArr, i5, i8);
                net.lingala.zip4j.util.f.d(this.f72903m, this.f72902l, 16);
                this.f72892b.e(this.f72903m, this.f72904n);
                for (int i9 = 0; i9 < this.f72905o; i9++) {
                    int i10 = i5 + i9;
                    bArr[i10] = (byte) (bArr[i10] ^ this.f72904n[i9]);
                }
                this.f72902l++;
                i5 = i7;
            } catch (ZipException e4) {
                throw e4;
            } catch (Exception e5) {
                throw new ZipException(e5);
            }
        }
    }

    public byte[] d() {
        return this.f72893c.d();
    }

    public int e() {
        return 2;
    }

    public int f() {
        return this.f72897g;
    }

    public byte[] g() {
        return this.f72901k;
    }

    public void i(byte[] bArr) {
        this.f72901k = bArr;
    }
}
