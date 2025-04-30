package net.lingala.zip4j.io;

import java.io.EOFException;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.Objects;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;
/* compiled from: InflaterInputStream.java */
/* loaded from: classes5.dex */
public class e extends f {

    /* renamed from: k  reason: collision with root package name */
    private Inflater f72956k;

    /* renamed from: l  reason: collision with root package name */
    private byte[] f72957l;

    /* renamed from: m  reason: collision with root package name */
    private byte[] f72958m;

    /* renamed from: n  reason: collision with root package name */
    private net.lingala.zip4j.unzip.d f72959n;

    /* renamed from: o  reason: collision with root package name */
    private long f72960o;

    /* renamed from: p  reason: collision with root package name */
    private long f72961p;

    public e(RandomAccessFile randomAccessFile, long j4, long j5, net.lingala.zip4j.unzip.d dVar) {
        super(randomAccessFile, j4, j5, dVar);
        this.f72958m = new byte[1];
        this.f72956k = new Inflater(true);
        this.f72957l = new byte[4096];
        this.f72959n = dVar;
        this.f72960o = 0L;
        this.f72961p = dVar.j().x();
    }

    private void e() throws IOException {
        byte[] bArr = this.f72957l;
        int read = super.read(bArr, 0, bArr.length);
        if (read != -1) {
            this.f72956k.setInput(this.f72957l, 0, read);
            return;
        }
        throw new EOFException("Unexpected end of ZLIB input stream");
    }

    private void g() throws IOException {
        do {
        } while (super.read(new byte[1024], 0, 1024) != -1);
        d();
    }

    @Override // net.lingala.zip4j.io.f, net.lingala.zip4j.io.a
    public net.lingala.zip4j.unzip.d a() {
        return super.a();
    }

    @Override // net.lingala.zip4j.io.f, net.lingala.zip4j.io.a, java.io.InputStream
    public int available() {
        return !this.f72956k.finished();
    }

    @Override // net.lingala.zip4j.io.f, net.lingala.zip4j.io.a
    public void b(long j4) throws IOException {
        super.b(j4);
    }

    @Override // net.lingala.zip4j.io.f, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f72956k.end();
        super.close();
    }

    @Override // net.lingala.zip4j.io.f, net.lingala.zip4j.io.a, java.io.InputStream
    public int read() throws IOException {
        if (read(this.f72958m, 0, 1) == -1) {
            return -1;
        }
        return this.f72958m[0] & 255;
    }

    @Override // net.lingala.zip4j.io.f, java.io.InputStream
    public long skip(long j4) throws IOException {
        if (j4 >= 0) {
            int min = (int) Math.min(j4, 2147483647L);
            byte[] bArr = new byte[512];
            int i2 = 0;
            while (i2 < min) {
                int i4 = min - i2;
                if (i4 > 512) {
                    i4 = 512;
                }
                int read = read(bArr, 0, i4);
                if (read == -1) {
                    break;
                }
                i2 += read;
            }
            return i2;
        }
        throw new IllegalArgumentException("negative skip length");
    }

    @Override // net.lingala.zip4j.io.f, java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        Objects.requireNonNull(bArr, "input buffer is null");
        return read(bArr, 0, bArr.length);
    }

    @Override // net.lingala.zip4j.io.f, java.io.InputStream
    public int read(byte[] bArr, int i2, int i4) throws IOException {
        Objects.requireNonNull(bArr, "input buffer is null");
        if (i2 < 0 || i4 < 0 || i4 > bArr.length - i2) {
            throw new IndexOutOfBoundsException();
        }
        if (i4 == 0) {
            return 0;
        }
        try {
            if (this.f72960o >= this.f72961p) {
                g();
                return -1;
            }
            while (true) {
                int inflate = this.f72956k.inflate(bArr, i2, i4);
                if (inflate != 0) {
                    this.f72960o += inflate;
                    return inflate;
                } else if (this.f72956k.finished() || this.f72956k.needsDictionary()) {
                    break;
                } else if (this.f72956k.needsInput()) {
                    e();
                }
            }
            g();
            return -1;
        } catch (DataFormatException e4) {
            String message = e4.getMessage() != null ? e4.getMessage() : "Invalid ZLIB data format";
            net.lingala.zip4j.unzip.d dVar = this.f72959n;
            if (dVar != null && dVar.l().u() && this.f72959n.l().f() == 0) {
                StringBuffer stringBuffer = new StringBuffer(String.valueOf(message));
                stringBuffer.append(" - Wrong Password?");
                message = stringBuffer.toString();
            }
            throw new IOException(message);
        }
    }
}
