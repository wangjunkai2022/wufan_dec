package net.lingala.zip4j.io;

import java.io.IOException;
import java.io.RandomAccessFile;
import net.lingala.zip4j.exception.ZipException;
/* compiled from: PartInputStream.java */
/* loaded from: classes5.dex */
public class f extends a {

    /* renamed from: a  reason: collision with root package name */
    private RandomAccessFile f72962a;

    /* renamed from: c  reason: collision with root package name */
    private long f72964c;

    /* renamed from: d  reason: collision with root package name */
    private net.lingala.zip4j.unzip.d f72965d;

    /* renamed from: e  reason: collision with root package name */
    private net.lingala.zip4j.crypto.c f72966e;

    /* renamed from: i  reason: collision with root package name */
    private boolean f72970i;

    /* renamed from: f  reason: collision with root package name */
    private byte[] f72967f = new byte[1];

    /* renamed from: g  reason: collision with root package name */
    private byte[] f72968g = new byte[16];

    /* renamed from: h  reason: collision with root package name */
    private int f72969h = 0;

    /* renamed from: j  reason: collision with root package name */
    private int f72971j = -1;

    /* renamed from: b  reason: collision with root package name */
    private long f72963b = 0;

    public f(RandomAccessFile randomAccessFile, long j4, long j5, net.lingala.zip4j.unzip.d dVar) {
        boolean z3 = true;
        this.f72970i = false;
        this.f72962a = randomAccessFile;
        this.f72965d = dVar;
        this.f72966e = dVar.i();
        this.f72964c = j5;
        this.f72970i = (dVar.j().D() && dVar.j().j() == 99) ? false : false;
    }

    @Override // net.lingala.zip4j.io.a
    public net.lingala.zip4j.unzip.d a() {
        return this.f72965d;
    }

    @Override // net.lingala.zip4j.io.a, java.io.InputStream
    public int available() {
        long j4 = this.f72964c - this.f72963b;
        if (j4 > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        return (int) j4;
    }

    @Override // net.lingala.zip4j.io.a
    public void b(long j4) throws IOException {
        this.f72962a.seek(j4);
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f72962a.close();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void d() throws IOException {
        net.lingala.zip4j.crypto.c cVar;
        if (this.f72970i && (cVar = this.f72966e) != null && (cVar instanceof net.lingala.zip4j.crypto.a) && ((net.lingala.zip4j.crypto.a) cVar).g() == null) {
            byte[] bArr = new byte[10];
            int read = this.f72962a.read(bArr);
            if (read != 10) {
                if (this.f72965d.p().n()) {
                    this.f72962a.close();
                    RandomAccessFile s3 = this.f72965d.s();
                    this.f72962a = s3;
                    s3.read(bArr, read, 10 - read);
                } else {
                    throw new IOException("Error occured while reading stored AES authentication bytes");
                }
            }
            ((net.lingala.zip4j.crypto.a) this.f72965d.i()).i(bArr);
        }
    }

    @Override // net.lingala.zip4j.io.a, java.io.InputStream
    public int read() throws IOException {
        if (this.f72963b >= this.f72964c) {
            return -1;
        }
        if (this.f72970i) {
            int i2 = this.f72969h;
            if (i2 == 0 || i2 == 16) {
                if (read(this.f72968g) == -1) {
                    return -1;
                }
                this.f72969h = 0;
            }
            byte[] bArr = this.f72968g;
            int i4 = this.f72969h;
            this.f72969h = i4 + 1;
            return bArr[i4] & 255;
        } else if (read(this.f72967f, 0, 1) == -1) {
            return -1;
        } else {
            return this.f72967f[0] & 255;
        }
    }

    @Override // java.io.InputStream
    public long skip(long j4) throws IOException {
        if (j4 >= 0) {
            long j5 = this.f72964c;
            long j6 = this.f72963b;
            if (j4 > j5 - j6) {
                j4 = j5 - j6;
            }
            this.f72963b = j6 + j4;
            return j4;
        }
        throw new IllegalArgumentException();
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i2, int i4) throws IOException {
        int i5;
        long j4 = this.f72964c;
        long j5 = this.f72963b;
        if (i4 > j4 - j5 && (i4 = (int) (j4 - j5)) == 0) {
            d();
            return -1;
        }
        if ((this.f72965d.i() instanceof net.lingala.zip4j.crypto.a) && this.f72963b + i4 < this.f72964c && (i5 = i4 % 16) != 0) {
            i4 -= i5;
        }
        synchronized (this.f72962a) {
            int read = this.f72962a.read(bArr, i2, i4);
            this.f72971j = read;
            if (read < i4 && this.f72965d.p().n()) {
                this.f72962a.close();
                RandomAccessFile s3 = this.f72965d.s();
                this.f72962a = s3;
                if (this.f72971j < 0) {
                    this.f72971j = 0;
                }
                int i6 = this.f72971j;
                int read2 = s3.read(bArr, i6, i4 - i6);
                if (read2 > 0) {
                    this.f72971j += read2;
                }
            }
        }
        int i7 = this.f72971j;
        if (i7 > 0) {
            net.lingala.zip4j.crypto.c cVar = this.f72966e;
            if (cVar != null) {
                try {
                    cVar.b(bArr, i2, i7);
                } catch (ZipException e4) {
                    throw new IOException(e4.getMessage());
                }
            }
            this.f72963b += this.f72971j;
        }
        if (this.f72963b >= this.f72964c) {
            d();
        }
        return this.f72971j;
    }
}
