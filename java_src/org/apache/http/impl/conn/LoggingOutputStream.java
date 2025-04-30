package org.apache.http.impl.conn;

import java.io.IOException;
import java.io.OutputStream;
import org.apache.http.annotation.NotThreadSafe;
@NotThreadSafe
/* loaded from: classes5.dex */
class LoggingOutputStream extends OutputStream {
    private final OutputStream out;
    private final WireHC4 wire;

    public LoggingOutputStream(OutputStream outputStream, WireHC4 wireHC4) {
        this.out = outputStream;
        this.wire = wireHC4;
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        try {
            this.out.close();
        } catch (IOException e4) {
            WireHC4 wireHC4 = this.wire;
            wireHC4.output("[close] I/O error: " + e4.getMessage());
            throw e4;
        }
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
        try {
            this.out.flush();
        } catch (IOException e4) {
            WireHC4 wireHC4 = this.wire;
            wireHC4.output("[flush] I/O error: " + e4.getMessage());
            throw e4;
        }
    }

    @Override // java.io.OutputStream
    public void write(int i2) throws IOException {
        try {
            this.wire.output(i2);
        } catch (IOException e4) {
            WireHC4 wireHC4 = this.wire;
            wireHC4.output("[write] I/O error: " + e4.getMessage());
            throw e4;
        }
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) throws IOException {
        try {
            this.wire.output(bArr);
            this.out.write(bArr);
        } catch (IOException e4) {
            WireHC4 wireHC4 = this.wire;
            wireHC4.output("[write] I/O error: " + e4.getMessage());
            throw e4;
        }
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i2, int i4) throws IOException {
        try {
            this.wire.output(bArr, i2, i4);
            this.out.write(bArr, i2, i4);
        } catch (IOException e4) {
            WireHC4 wireHC4 = this.wire;
            wireHC4.output("[write] I/O error: " + e4.getMessage());
            throw e4;
        }
    }
}
