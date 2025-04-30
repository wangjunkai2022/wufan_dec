package net.lingala.zip4j.crypto;

import e3.h;
import io.netty.handler.codec.memcache.binary.BinaryMemcacheOpcodes;
import net.lingala.zip4j.exception.ZipException;
/* compiled from: StandardDecrypter.java */
/* loaded from: classes5.dex */
public class e implements c {

    /* renamed from: a  reason: collision with root package name */
    private h f72923a;

    /* renamed from: b  reason: collision with root package name */
    private byte[] f72924b = new byte[4];

    /* renamed from: c  reason: collision with root package name */
    private net.lingala.zip4j.crypto.engine.b f72925c;

    public e(h hVar, byte[] bArr) throws ZipException {
        if (hVar != null) {
            this.f72923a = hVar;
            this.f72925c = new net.lingala.zip4j.crypto.engine.b();
            c(bArr);
            return;
        }
        throw new ZipException("one of more of the input parameters were null in StandardDecryptor");
    }

    @Override // net.lingala.zip4j.crypto.c
    public int a(byte[] bArr) throws ZipException {
        return b(bArr, 0, bArr.length);
    }

    @Override // net.lingala.zip4j.crypto.c
    public int b(byte[] bArr, int i2, int i4) throws ZipException {
        if (i2 < 0 || i4 < 0) {
            throw new ZipException("one of the input parameters were null in standard decrpyt data");
        }
        for (int i5 = i2; i5 < i2 + i4; i5++) {
            try {
                byte b4 = (byte) (((bArr[i5] & 255) ^ this.f72925c.b()) & 255);
                this.f72925c.d(b4);
                bArr[i5] = b4;
            } catch (Exception e4) {
                throw new ZipException(e4);
            }
        }
        return i4;
    }

    public void c(byte[] bArr) throws ZipException {
        byte[] h4 = this.f72923a.h();
        byte[] bArr2 = this.f72924b;
        bArr2[3] = (byte) (h4[3] & 255);
        bArr2[2] = (byte) ((h4[3] >> 8) & 255);
        bArr2[1] = (byte) ((h4[3] >> 16) & 255);
        int i2 = 0;
        bArr2[0] = (byte) ((h4[3] >> BinaryMemcacheOpcodes.FLUSHQ) & 255);
        if (bArr2[2] <= 0 && bArr2[1] <= 0 && bArr2[0] <= 0) {
            if (this.f72923a.v() != null && this.f72923a.v().length > 0) {
                this.f72925c.c(this.f72923a.v());
                try {
                    byte b4 = bArr[0];
                    while (i2 < 12) {
                        net.lingala.zip4j.crypto.engine.b bVar = this.f72925c;
                        bVar.d((byte) (bVar.b() ^ b4));
                        i2++;
                        if (i2 != 12) {
                            b4 = bArr[i2];
                        }
                    }
                    return;
                } catch (Exception e4) {
                    throw new ZipException(e4);
                }
            }
            throw new ZipException("Wrong password!", 5);
        }
        throw new IllegalStateException("Invalid CRC in File Header");
    }
}
