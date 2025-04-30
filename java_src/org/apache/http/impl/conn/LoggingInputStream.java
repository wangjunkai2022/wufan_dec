package org.apache.http.impl.conn;

import java.io.IOException;
import java.io.InputStream;
import org.apache.http.annotation.NotThreadSafe;
@NotThreadSafe
/* loaded from: classes5.dex */
class LoggingInputStream extends InputStream {

    /* renamed from: in  reason: collision with root package name */
    private final InputStream f73200in;
    private final WireHC4 wire;

    public LoggingInputStream(InputStream inputStream, WireHC4 wireHC4) {
        this.f73200in = inputStream;
        this.wire = wireHC4;
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        try {
            return this.f73200in.available();
        } catch (IOException e4) {
            WireHC4 wireHC4 = this.wire;
            wireHC4.input("[available] I/O error : " + e4.getMessage());
            throw e4;
        }
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        try {
            this.f73200in.close();
        } catch (IOException e4) {
            WireHC4 wireHC4 = this.wire;
            wireHC4.input("[close] I/O error: " + e4.getMessage());
            throw e4;
        }
    }

    @Override // java.io.InputStream
    public void mark(int i2) {
        super.mark(i2);
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return false;
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        try {
            int read = this.f73200in.read();
            if (read == -1) {
                this.wire.input("end of stream");
            } else {
                this.wire.input(read);
            }
            return read;
        } catch (IOException e4) {
            WireHC4 wireHC4 = this.wire;
            wireHC4.input("[read] I/O error: " + e4.getMessage());
            throw e4;
        }
    }

    @Override // java.io.InputStream
    public void reset() throws IOException {
        super.reset();
    }

    @Override // java.io.InputStream
    public long skip(long j4) throws IOException {
        try {
            return super.skip(j4);
        } catch (IOException e4) {
            WireHC4 wireHC4 = this.wire;
            wireHC4.input("[skip] I/O error: " + e4.getMessage());
            throw e4;
        }
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        try {
            int read = this.f73200in.read(bArr);
            if (read == -1) {
                this.wire.input("end of stream");
            } else if (read > 0) {
                this.wire.input(bArr, 0, read);
            }
            return read;
        } catch (IOException e4) {
            WireHC4 wireHC4 = this.wire;
            wireHC4.input("[read] I/O error: " + e4.getMessage());
            throw e4;
        }
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i2, int i4) throws IOException {
        try {
            int read = this.f73200in.read(bArr, i2, i4);
            if (read == -1) {
                this.wire.input("end of stream");
            } else if (read > 0) {
                this.wire.input(bArr, i2, read);
            }
            return read;
        } catch (IOException e4) {
            WireHC4 wireHC4 = this.wire;
            wireHC4.input("[read] I/O error: " + e4.getMessage());
            throw e4;
        }
    }
}
