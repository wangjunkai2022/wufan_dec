package net.lingala.zip4j.io;

import e3.o;
import java.io.IOException;
import java.io.OutputStream;
/* compiled from: ZipOutputStream.java */
/* loaded from: classes5.dex */
public class i extends d {
    public i(OutputStream outputStream) {
        this(outputStream, null);
    }

    @Override // net.lingala.zip4j.io.d, net.lingala.zip4j.io.c, net.lingala.zip4j.io.b, java.io.OutputStream
    public void write(int i2) throws IOException {
        write(new byte[]{(byte) i2}, 0, 1);
    }

    public i(OutputStream outputStream, o oVar) {
        super(outputStream, oVar);
    }

    @Override // net.lingala.zip4j.io.d, net.lingala.zip4j.io.c, java.io.OutputStream
    public void write(byte[] bArr) throws IOException {
        write(bArr, 0, bArr.length);
    }

    @Override // net.lingala.zip4j.io.d, net.lingala.zip4j.io.c, java.io.OutputStream
    public void write(byte[] bArr, int i2, int i4) throws IOException {
        this.f72948i.update(bArr, i2, i4);
        s(i4);
        super.write(bArr, i2, i4);
    }
}
