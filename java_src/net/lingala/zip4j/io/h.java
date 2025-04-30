package net.lingala.zip4j.io;

import java.io.IOException;
import java.io.InputStream;
import net.lingala.zip4j.exception.ZipException;
/* compiled from: ZipInputStream.java */
/* loaded from: classes5.dex */
public class h extends InputStream {

    /* renamed from: a  reason: collision with root package name */
    private a f72978a;

    public h(a aVar) {
        this.f72978a = aVar;
    }

    public void a(boolean z3) throws IOException {
        try {
            this.f72978a.close();
            if (z3 || this.f72978a.a() == null) {
                return;
            }
            this.f72978a.a().b();
        } catch (ZipException e4) {
            throw new IOException(e4.getMessage());
        }
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        return this.f72978a.available();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        a(false);
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        int read = this.f72978a.read();
        if (read != -1) {
            this.f72978a.a().u(read);
        }
        return read;
    }

    @Override // java.io.InputStream
    public long skip(long j4) throws IOException {
        return this.f72978a.skip(j4);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i2, int i4) throws IOException {
        int read = this.f72978a.read(bArr, i2, i4);
        if (read > 0 && this.f72978a.a() != null) {
            this.f72978a.a().v(bArr, i2, read);
        }
        return read;
    }
}
