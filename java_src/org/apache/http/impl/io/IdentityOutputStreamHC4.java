package org.apache.http.impl.io;

import java.io.IOException;
import java.io.OutputStream;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.io.SessionOutputBuffer;
import org.apache.http.util.Args;
@NotThreadSafe
/* loaded from: classes5.dex */
public class IdentityOutputStreamHC4 extends OutputStream {
    private boolean closed = false;
    private final SessionOutputBuffer out;

    public IdentityOutputStreamHC4(SessionOutputBuffer sessionOutputBuffer) {
        this.out = (SessionOutputBuffer) Args.notNull(sessionOutputBuffer, "Session output buffer");
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.closed) {
            return;
        }
        this.closed = true;
        this.out.flush();
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
        this.out.flush();
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i2, int i4) throws IOException {
        if (!this.closed) {
            this.out.write(bArr, i2, i4);
            return;
        }
        throw new IOException("Attempted write to closed stream.");
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) throws IOException {
        write(bArr, 0, bArr.length);
    }

    @Override // java.io.OutputStream
    public void write(int i2) throws IOException {
        if (!this.closed) {
            this.out.write(i2);
            return;
        }
        throw new IOException("Attempted write to closed stream.");
    }
}
