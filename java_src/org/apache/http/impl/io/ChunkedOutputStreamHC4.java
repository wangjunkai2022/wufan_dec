package org.apache.http.impl.io;

import java.io.IOException;
import java.io.OutputStream;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.io.SessionOutputBuffer;
@NotThreadSafe
/* loaded from: classes5.dex */
public class ChunkedOutputStreamHC4 extends OutputStream {
    private final byte[] cache;
    private int cachePosition;
    private boolean closed;
    private final SessionOutputBuffer out;
    private boolean wroteLastChunk;

    @Deprecated
    public ChunkedOutputStreamHC4(SessionOutputBuffer sessionOutputBuffer, int i2) throws IOException {
        this(i2, sessionOutputBuffer);
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.closed) {
            return;
        }
        this.closed = true;
        finish();
        this.out.flush();
    }

    public void finish() throws IOException {
        if (this.wroteLastChunk) {
            return;
        }
        flushCache();
        writeClosingChunk();
        this.wroteLastChunk = true;
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
        flushCache();
        this.out.flush();
    }

    protected void flushCache() throws IOException {
        int i2 = this.cachePosition;
        if (i2 > 0) {
            this.out.writeLine(Integer.toHexString(i2));
            this.out.write(this.cache, 0, this.cachePosition);
            this.out.writeLine("");
            this.cachePosition = 0;
        }
    }

    protected void flushCacheWithAppend(byte[] bArr, int i2, int i4) throws IOException {
        this.out.writeLine(Integer.toHexString(this.cachePosition + i4));
        this.out.write(this.cache, 0, this.cachePosition);
        this.out.write(bArr, i2, i4);
        this.out.writeLine("");
        this.cachePosition = 0;
    }

    @Override // java.io.OutputStream
    public void write(int i2) throws IOException {
        if (!this.closed) {
            byte[] bArr = this.cache;
            int i4 = this.cachePosition;
            bArr[i4] = (byte) i2;
            int i5 = i4 + 1;
            this.cachePosition = i5;
            if (i5 == bArr.length) {
                flushCache();
                return;
            }
            return;
        }
        throw new IOException("Attempted write to closed stream.");
    }

    protected void writeClosingChunk() throws IOException {
        this.out.writeLine("0");
        this.out.writeLine("");
    }

    @Deprecated
    public ChunkedOutputStreamHC4(SessionOutputBuffer sessionOutputBuffer) throws IOException {
        this(2048, sessionOutputBuffer);
    }

    public ChunkedOutputStreamHC4(int i2, SessionOutputBuffer sessionOutputBuffer) {
        this.cachePosition = 0;
        this.wroteLastChunk = false;
        this.closed = false;
        this.cache = new byte[i2];
        this.out = sessionOutputBuffer;
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) throws IOException {
        write(bArr, 0, bArr.length);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i2, int i4) throws IOException {
        if (!this.closed) {
            byte[] bArr2 = this.cache;
            int length = bArr2.length;
            int i5 = this.cachePosition;
            if (i4 >= length - i5) {
                flushCacheWithAppend(bArr, i2, i4);
                return;
            }
            System.arraycopy(bArr, i2, bArr2, i5, i4);
            this.cachePosition += i4;
            return;
        }
        throw new IOException("Attempted write to closed stream.");
    }
}
