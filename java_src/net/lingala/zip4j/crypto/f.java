package net.lingala.zip4j.crypto;

import java.util.Objects;
import java.util.Random;
import net.lingala.zip4j.exception.ZipException;
/* compiled from: StandardEncrypter.java */
/* loaded from: classes5.dex */
public class f implements d {

    /* renamed from: a  reason: collision with root package name */
    private net.lingala.zip4j.crypto.engine.b f72937a;

    /* renamed from: b  reason: collision with root package name */
    private byte[] f72938b;

    public f(char[] cArr, int i2) throws ZipException {
        if (cArr != null && cArr.length > 0) {
            this.f72937a = new net.lingala.zip4j.crypto.engine.b();
            this.f72938b = new byte[12];
            f(cArr, i2);
            return;
        }
        throw new ZipException("input password is null or empty in standard encrpyter constructor");
    }

    private void f(char[] cArr, int i2) throws ZipException {
        if (cArr != null && cArr.length > 0) {
            this.f72937a.c(cArr);
            this.f72938b = d(12);
            this.f72937a.c(cArr);
            byte[] bArr = this.f72938b;
            bArr[11] = (byte) (i2 >>> 24);
            bArr[10] = (byte) (i2 >>> 16);
            if (bArr.length >= 12) {
                b(bArr);
                return;
            }
            throw new ZipException("invalid header bytes generated, cannot perform standard encryption");
        }
        throw new ZipException("input password is null or empty, cannot initialize standard encrypter");
    }

    @Override // net.lingala.zip4j.crypto.d
    public int a(byte[] bArr, int i2, int i4) throws ZipException {
        if (i4 >= 0) {
            for (int i5 = i2; i5 < i2 + i4; i5++) {
                try {
                    bArr[i5] = c(bArr[i5]);
                } catch (Exception e4) {
                    throw new ZipException(e4);
                }
            }
            return i4;
        }
        throw new ZipException("invalid length specified to decrpyt data");
    }

    @Override // net.lingala.zip4j.crypto.d
    public int b(byte[] bArr) throws ZipException {
        Objects.requireNonNull(bArr);
        return a(bArr, 0, bArr.length);
    }

    protected byte c(byte b4) {
        byte b5 = (byte) ((this.f72937a.b() & 255) ^ b4);
        this.f72937a.d(b4);
        return b5;
    }

    protected byte[] d(int i2) throws ZipException {
        if (i2 > 0) {
            byte[] bArr = new byte[i2];
            Random random = new Random();
            for (int i4 = 0; i4 < i2; i4++) {
                bArr[i4] = c((byte) random.nextInt(256));
            }
            return bArr;
        }
        throw new ZipException("size is either 0 or less than 0, cannot generate header for standard encryptor");
    }

    public byte[] e() {
        return this.f72938b;
    }
}
