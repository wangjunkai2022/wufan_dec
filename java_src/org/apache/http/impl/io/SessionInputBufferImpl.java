package org.apache.http.impl.io;

import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CoderResult;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.config.MessageConstraints;
import org.apache.http.io.BufferInfo;
import org.apache.http.io.HttpTransportMetrics;
import org.apache.http.io.SessionInputBuffer;
import org.apache.http.util.Args;
import org.apache.http.util.Asserts;
import org.apache.http.util.ByteArrayBuffer;
import org.apache.http.util.CharArrayBuffer;
@NotThreadSafe
/* loaded from: classes5.dex */
public class SessionInputBufferImpl implements SessionInputBuffer, BufferInfo {
    private final byte[] buffer;
    private int bufferlen;
    private int bufferpos;
    private CharBuffer cbuf;
    private final MessageConstraints constraints;
    private final CharsetDecoder decoder;
    private InputStream instream;
    private final ByteArrayBuffer linebuffer;
    private final HttpTransportMetricsImpl metrics;
    private final int minChunkLimit;

    public SessionInputBufferImpl(HttpTransportMetricsImpl httpTransportMetricsImpl, int i2, int i4, MessageConstraints messageConstraints, CharsetDecoder charsetDecoder) {
        Args.notNull(httpTransportMetricsImpl, "HTTP transport metrcis");
        Args.positive(i2, "Buffer size");
        this.metrics = httpTransportMetricsImpl;
        this.buffer = new byte[i2];
        this.bufferpos = 0;
        this.bufferlen = 0;
        this.minChunkLimit = i4 < 0 ? 512 : i4;
        this.constraints = messageConstraints == null ? MessageConstraints.DEFAULT : messageConstraints;
        this.linebuffer = new ByteArrayBuffer(i2);
        this.decoder = charsetDecoder;
    }

    private int appendDecoded(CharArrayBuffer charArrayBuffer, ByteBuffer byteBuffer) throws IOException {
        int i2 = 0;
        if (byteBuffer.hasRemaining()) {
            if (this.cbuf == null) {
                this.cbuf = CharBuffer.allocate(1024);
            }
            this.decoder.reset();
            while (byteBuffer.hasRemaining()) {
                i2 += handleDecodingResult(this.decoder.decode(byteBuffer, this.cbuf, true), charArrayBuffer, byteBuffer);
            }
            int handleDecodingResult = i2 + handleDecodingResult(this.decoder.flush(this.cbuf), charArrayBuffer, byteBuffer);
            this.cbuf.clear();
            return handleDecodingResult;
        }
        return 0;
    }

    private int handleDecodingResult(CoderResult coderResult, CharArrayBuffer charArrayBuffer, ByteBuffer byteBuffer) throws IOException {
        if (coderResult.isError()) {
            coderResult.throwException();
        }
        this.cbuf.flip();
        int remaining = this.cbuf.remaining();
        while (this.cbuf.hasRemaining()) {
            charArrayBuffer.append(this.cbuf.get());
        }
        this.cbuf.compact();
        return remaining;
    }

    private int lineFromLineBuffer(CharArrayBuffer charArrayBuffer) throws IOException {
        int length = this.linebuffer.length();
        if (length > 0) {
            if (this.linebuffer.byteAt(length - 1) == 10) {
                length--;
            }
            if (length > 0 && this.linebuffer.byteAt(length - 1) == 13) {
                length--;
            }
        }
        if (this.decoder == null) {
            charArrayBuffer.append(this.linebuffer, 0, length);
        } else {
            length = appendDecoded(charArrayBuffer, ByteBuffer.wrap(this.linebuffer.buffer(), 0, length));
        }
        this.linebuffer.clear();
        return length;
    }

    private int lineFromReadBuffer(CharArrayBuffer charArrayBuffer, int i2) throws IOException {
        int i4 = this.bufferpos;
        this.bufferpos = i2 + 1;
        if (i2 > i4 && this.buffer[i2 - 1] == 13) {
            i2--;
        }
        int i5 = i2 - i4;
        if (this.decoder == null) {
            charArrayBuffer.append(this.buffer, i4, i5);
            return i5;
        }
        return appendDecoded(charArrayBuffer, ByteBuffer.wrap(this.buffer, i4, i5));
    }

    private int locateLF() {
        for (int i2 = this.bufferpos; i2 < this.bufferlen; i2++) {
            if (this.buffer[i2] == 10) {
                return i2;
            }
        }
        return -1;
    }

    private int streamRead(byte[] bArr, int i2, int i4) throws IOException {
        Asserts.notNull(this.instream, "Input stream");
        return this.instream.read(bArr, i2, i4);
    }

    @Override // org.apache.http.io.BufferInfo
    public int available() {
        return capacity() - length();
    }

    public void bind(InputStream inputStream) {
        this.instream = inputStream;
    }

    @Override // org.apache.http.io.BufferInfo
    public int capacity() {
        return this.buffer.length;
    }

    public void clear() {
        this.bufferpos = 0;
        this.bufferlen = 0;
    }

    public int fillBuffer() throws IOException {
        int i2 = this.bufferpos;
        if (i2 > 0) {
            int i4 = this.bufferlen - i2;
            if (i4 > 0) {
                byte[] bArr = this.buffer;
                System.arraycopy(bArr, i2, bArr, 0, i4);
            }
            this.bufferpos = 0;
            this.bufferlen = i4;
        }
        int i5 = this.bufferlen;
        byte[] bArr2 = this.buffer;
        int streamRead = streamRead(bArr2, i5, bArr2.length - i5);
        if (streamRead == -1) {
            return -1;
        }
        this.bufferlen = i5 + streamRead;
        this.metrics.incrementBytesTransferred(streamRead);
        return streamRead;
    }

    public HttpTransportMetrics getMetrics() {
        return this.metrics;
    }

    public boolean hasBufferedData() {
        return this.bufferpos < this.bufferlen;
    }

    public boolean isBound() {
        return this.instream != null;
    }

    public boolean isDataAvailable(int i2) throws IOException {
        return hasBufferedData();
    }

    @Override // org.apache.http.io.BufferInfo
    public int length() {
        return this.bufferlen - this.bufferpos;
    }

    public int read() throws IOException {
        while (!hasBufferedData()) {
            if (fillBuffer() == -1) {
                return -1;
            }
        }
        byte[] bArr = this.buffer;
        int i2 = this.bufferpos;
        this.bufferpos = i2 + 1;
        return bArr[i2] & 255;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0049, code lost:
        if (r2 == (-1)) goto L9;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int readLine(org.apache.http.util.CharArrayBuffer r8) throws java.io.IOException {
        /*
            r7 = this;
            java.lang.String r0 = "Char array buffer"
            org.apache.http.util.Args.notNull(r8, r0)
            r0 = 1
            r1 = 0
            r2 = 0
        L8:
            r3 = -1
            if (r0 == 0) goto L65
            int r4 = r7.locateLF()
            if (r4 == r3) goto L2f
            org.apache.http.util.ByteArrayBuffer r0 = r7.linebuffer
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L1e
            int r8 = r7.lineFromReadBuffer(r8, r4)
            return r8
        L1e:
            int r4 = r4 + 1
            int r0 = r7.bufferpos
            int r3 = r4 - r0
            org.apache.http.util.ByteArrayBuffer r5 = r7.linebuffer
            byte[] r6 = r7.buffer
            r5.append(r6, r0, r3)
            r7.bufferpos = r4
        L2d:
            r0 = 0
            goto L4c
        L2f:
            boolean r2 = r7.hasBufferedData()
            if (r2 == 0) goto L45
            int r2 = r7.bufferlen
            int r4 = r7.bufferpos
            int r2 = r2 - r4
            org.apache.http.util.ByteArrayBuffer r5 = r7.linebuffer
            byte[] r6 = r7.buffer
            r5.append(r6, r4, r2)
            int r2 = r7.bufferlen
            r7.bufferpos = r2
        L45:
            int r2 = r7.fillBuffer()
            if (r2 != r3) goto L4c
            goto L2d
        L4c:
            org.apache.http.config.MessageConstraints r3 = r7.constraints
            int r3 = r3.getMaxLineLength()
            if (r3 <= 0) goto L8
            org.apache.http.util.ByteArrayBuffer r4 = r7.linebuffer
            int r4 = r4.length()
            if (r4 >= r3) goto L5d
            goto L8
        L5d:
            org.apache.http.MessageConstraintException r8 = new org.apache.http.MessageConstraintException
            java.lang.String r0 = "Maximum line length limit exceeded"
            r8.<init>(r0)
            throw r8
        L65:
            if (r2 != r3) goto L70
            org.apache.http.util.ByteArrayBuffer r0 = r7.linebuffer
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L70
            return r3
        L70:
            int r8 = r7.lineFromLineBuffer(r8)
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.http.impl.io.SessionInputBufferImpl.readLine(org.apache.http.util.CharArrayBuffer):int");
    }

    public int read(byte[] bArr, int i2, int i4) throws IOException {
        if (bArr == null) {
            return 0;
        }
        if (hasBufferedData()) {
            int min = Math.min(i4, this.bufferlen - this.bufferpos);
            System.arraycopy(this.buffer, this.bufferpos, bArr, i2, min);
            this.bufferpos += min;
            return min;
        } else if (i4 > this.minChunkLimit) {
            int streamRead = streamRead(bArr, i2, i4);
            if (streamRead > 0) {
                this.metrics.incrementBytesTransferred(streamRead);
            }
            return streamRead;
        } else {
            while (!hasBufferedData()) {
                if (fillBuffer() == -1) {
                    return -1;
                }
            }
            int min2 = Math.min(i4, this.bufferlen - this.bufferpos);
            System.arraycopy(this.buffer, this.bufferpos, bArr, i2, min2);
            this.bufferpos += min2;
            return min2;
        }
    }

    public SessionInputBufferImpl(HttpTransportMetricsImpl httpTransportMetricsImpl, int i2) {
        this(httpTransportMetricsImpl, i2, i2, null, null);
    }

    public int read(byte[] bArr) throws IOException {
        if (bArr == null) {
            return 0;
        }
        return read(bArr, 0, bArr.length);
    }

    public String readLine() throws IOException {
        CharArrayBuffer charArrayBuffer = new CharArrayBuffer(64);
        if (readLine(charArrayBuffer) != -1) {
            return charArrayBuffer.toString();
        }
        return null;
    }
}
