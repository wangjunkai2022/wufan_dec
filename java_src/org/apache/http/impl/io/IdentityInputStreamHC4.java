package org.apache.http.impl.io;

import java.io.IOException;
import java.io.InputStream;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.io.BufferInfo;
import org.apache.http.io.SessionInputBuffer;
import org.apache.http.util.Args;
@NotThreadSafe
/* loaded from: classes5.dex */
public class IdentityInputStreamHC4 extends InputStream {
    private boolean closed = false;

    /* renamed from: in  reason: collision with root package name */
    private final SessionInputBuffer f73203in;

    public IdentityInputStreamHC4(SessionInputBuffer sessionInputBuffer) {
        this.f73203in = (SessionInputBuffer) Args.notNull(sessionInputBuffer, "Session input buffer");
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        BufferInfo bufferInfo = this.f73203in;
        if (bufferInfo instanceof BufferInfo) {
            return bufferInfo.length();
        }
        return 0;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.closed = true;
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        if (this.closed) {
            return -1;
        }
        return this.f73203in.read();
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i2, int i4) throws IOException {
        if (this.closed) {
            return -1;
        }
        return this.f73203in.read(bArr, i2, i4);
    }
}
