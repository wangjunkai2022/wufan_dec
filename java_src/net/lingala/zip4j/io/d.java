package net.lingala.zip4j.io;

import e3.o;
import e3.p;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.util.zip.Deflater;
import net.lingala.zip4j.exception.ZipException;
/* compiled from: DeflaterOutputStream.java */
/* loaded from: classes5.dex */
public class d extends c {

    /* renamed from: n  reason: collision with root package name */
    private byte[] f72953n;

    /* renamed from: o  reason: collision with root package name */
    protected Deflater f72954o;

    /* renamed from: p  reason: collision with root package name */
    private boolean f72955p;

    public d(OutputStream outputStream, o oVar) {
        super(outputStream, oVar);
        this.f72954o = new Deflater();
        this.f72953n = new byte[4096];
        this.f72955p = false;
    }

    private void t() throws IOException {
        Deflater deflater = this.f72954o;
        byte[] bArr = this.f72953n;
        int deflate = deflater.deflate(bArr, 0, bArr.length);
        if (deflate > 0) {
            if (this.f72954o.finished()) {
                if (deflate == 4) {
                    return;
                }
                if (deflate < 4) {
                    e(4 - deflate);
                    return;
                }
                deflate -= 4;
            }
            if (!this.f72955p) {
                super.write(this.f72953n, 2, deflate - 2);
                this.f72955p = true;
                return;
            }
            super.write(this.f72953n, 0, deflate);
        }
    }

    @Override // net.lingala.zip4j.io.c
    public void a() throws IOException, ZipException {
        if (this.f72945f.c() == 8) {
            if (!this.f72954o.finished()) {
                this.f72954o.finish();
                while (!this.f72954o.finished()) {
                    t();
                }
            }
            this.f72955p = false;
        }
        super.a();
    }

    @Override // net.lingala.zip4j.io.c
    public void h() throws IOException, ZipException {
        super.h();
    }

    @Override // net.lingala.zip4j.io.c
    public void q(File file, p pVar) throws ZipException {
        super.q(file, pVar);
        if (pVar.c() == 8) {
            this.f72954o.reset();
            if ((pVar.b() >= 0 && pVar.b() <= 9) || pVar.b() == -1) {
                this.f72954o.setLevel(pVar.b());
                return;
            }
            throw new ZipException("invalid compression level for deflater. compression level should be in the range of 0-9");
        }
    }

    @Override // net.lingala.zip4j.io.c, java.io.OutputStream
    public void write(byte[] bArr) throws IOException {
        write(bArr, 0, bArr.length);
    }

    @Override // net.lingala.zip4j.io.c, net.lingala.zip4j.io.b, java.io.OutputStream
    public void write(int i2) throws IOException {
        write(new byte[]{(byte) i2}, 0, 1);
    }

    @Override // net.lingala.zip4j.io.c, java.io.OutputStream
    public void write(byte[] bArr, int i2, int i4) throws IOException {
        if (this.f72945f.c() != 8) {
            super.write(bArr, i2, i4);
            return;
        }
        this.f72954o.setInput(bArr, i2, i4);
        while (!this.f72954o.needsInput()) {
            t();
        }
    }
}
