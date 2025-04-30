package org.apache.http.impl.io;

import java.io.IOException;
import java.io.InputStream;
import org.apache.http.Header;
import org.apache.http.HttpException;
import org.apache.http.MalformedChunkCodingException;
import org.apache.http.TruncatedChunkException;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.io.BufferInfo;
import org.apache.http.io.SessionInputBuffer;
import org.apache.http.util.Args;
import org.apache.http.util.CharArrayBuffer;
@NotThreadSafe
/* loaded from: classes5.dex */
public class ChunkedInputStreamHC4 extends InputStream {
    private static final int BUFFER_SIZE = 2048;
    private static final int CHUNK_CRLF = 3;
    private static final int CHUNK_DATA = 2;
    private static final int CHUNK_LEN = 1;
    private int chunkSize;

    /* renamed from: in  reason: collision with root package name */
    private final SessionInputBuffer f73201in;
    private boolean eof = false;
    private boolean closed = false;
    private Header[] footers = new Header[0];
    private int pos = 0;
    private final CharArrayBuffer buffer = new CharArrayBuffer(16);
    private int state = 1;

    public ChunkedInputStreamHC4(SessionInputBuffer sessionInputBuffer) {
        this.f73201in = (SessionInputBuffer) Args.notNull(sessionInputBuffer, "Session input buffer");
    }

    private int getChunkSize() throws IOException {
        int i2 = this.state;
        if (i2 != 1) {
            if (i2 == 3) {
                this.buffer.clear();
                if (this.f73201in.readLine(this.buffer) == -1) {
                    return 0;
                }
                if (this.buffer.isEmpty()) {
                    this.state = 1;
                } else {
                    throw new MalformedChunkCodingException("Unexpected content at the end of chunk");
                }
            } else {
                throw new IllegalStateException("Inconsistent codec state");
            }
        }
        this.buffer.clear();
        if (this.f73201in.readLine(this.buffer) == -1) {
            return 0;
        }
        int indexOf = this.buffer.indexOf(59);
        if (indexOf < 0) {
            indexOf = this.buffer.length();
        }
        try {
            return Integer.parseInt(this.buffer.substringTrimmed(0, indexOf), 16);
        } catch (NumberFormatException unused) {
            throw new MalformedChunkCodingException("Bad chunk header");
        }
    }

    private void nextChunk() throws IOException {
        int chunkSize = getChunkSize();
        this.chunkSize = chunkSize;
        if (chunkSize >= 0) {
            this.state = 2;
            this.pos = 0;
            if (chunkSize == 0) {
                this.eof = true;
                parseTrailerHeaders();
                return;
            }
            return;
        }
        throw new MalformedChunkCodingException("Negative chunk size");
    }

    private void parseTrailerHeaders() throws IOException {
        try {
            this.footers = AbstractMessageParserHC4.parseHeaders(this.f73201in, -1, -1, null);
        } catch (HttpException e4) {
            MalformedChunkCodingException malformedChunkCodingException = new MalformedChunkCodingException("Invalid footer: " + e4.getMessage());
            malformedChunkCodingException.initCause(e4);
            throw malformedChunkCodingException;
        }
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        BufferInfo bufferInfo = this.f73201in;
        if (bufferInfo instanceof BufferInfo) {
            return Math.min(bufferInfo.length(), this.chunkSize - this.pos);
        }
        return 0;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.closed) {
            return;
        }
        try {
            if (this.eof) {
            }
            do {
            } while (read(new byte[2048]) >= 0);
        } finally {
            this.eof = true;
            this.closed = true;
        }
    }

    public Header[] getFooters() {
        return (Header[]) this.footers.clone();
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        if (!this.closed) {
            if (this.eof) {
                return -1;
            }
            if (this.state != 2) {
                nextChunk();
                if (this.eof) {
                    return -1;
                }
            }
            int read = this.f73201in.read();
            if (read != -1) {
                int i2 = this.pos + 1;
                this.pos = i2;
                if (i2 >= this.chunkSize) {
                    this.state = 3;
                }
            }
            return read;
        }
        throw new IOException("Attempted read from closed stream.");
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i2, int i4) throws IOException {
        if (!this.closed) {
            if (this.eof) {
                return -1;
            }
            if (this.state != 2) {
                nextChunk();
                if (this.eof) {
                    return -1;
                }
            }
            int read = this.f73201in.read(bArr, i2, Math.min(i4, this.chunkSize - this.pos));
            if (read != -1) {
                int i5 = this.pos + read;
                this.pos = i5;
                if (i5 >= this.chunkSize) {
                    this.state = 3;
                }
                return read;
            }
            this.eof = true;
            throw new TruncatedChunkException("Truncated chunk ( expected size: " + this.chunkSize + "; actual size: " + this.pos + ")");
        }
        throw new IOException("Attempted read from closed stream.");
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }
}
