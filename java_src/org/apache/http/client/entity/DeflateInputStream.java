package org.apache.http.client.entity;

import java.io.IOException;
import java.io.InputStream;
import java.io.PushbackInputStream;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;
import java.util.zip.InflaterInputStream;
/* loaded from: classes5.dex */
public class DeflateInputStream extends InputStream {
    private InputStream sourceStream;

    /* loaded from: classes5.dex */
    static class DeflateStream extends InflaterInputStream {
        private boolean closed;

        public DeflateStream(InputStream inputStream, Inflater inflater) {
            super(inputStream, inflater);
            this.closed = false;
        }

        @Override // java.util.zip.InflaterInputStream, java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (this.closed) {
                return;
            }
            this.closed = true;
            ((InflaterInputStream) this).inf.end();
            super.close();
        }
    }

    public DeflateInputStream(InputStream inputStream) throws IOException {
        int inflate;
        byte[] bArr = new byte[6];
        PushbackInputStream pushbackInputStream = new PushbackInputStream(inputStream, 6);
        int read = pushbackInputStream.read(bArr);
        if (read != -1) {
            byte[] bArr2 = new byte[1];
            Inflater inflater = new Inflater();
            while (true) {
                try {
                    try {
                        inflate = inflater.inflate(bArr2);
                        if (inflate != 0) {
                            break;
                        } else if (!inflater.finished()) {
                            if (inflater.needsDictionary()) {
                                break;
                            } else if (inflater.needsInput()) {
                                inflater.setInput(bArr);
                            }
                        } else {
                            throw new IOException("Unable to read the response");
                        }
                    } catch (DataFormatException unused) {
                        pushbackInputStream.unread(bArr, 0, read);
                        this.sourceStream = new DeflateStream(pushbackInputStream, new Inflater(true));
                    }
                } finally {
                    inflater.end();
                }
            }
            if (inflate != -1) {
                pushbackInputStream.unread(bArr, 0, read);
                this.sourceStream = new DeflateStream(pushbackInputStream, new Inflater());
                return;
            }
            throw new IOException("Unable to read the response");
        }
        throw new IOException("Unable to read the response");
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        return this.sourceStream.available();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.sourceStream.close();
    }

    @Override // java.io.InputStream
    public void mark(int i2) {
        this.sourceStream.mark(i2);
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return this.sourceStream.markSupported();
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        return this.sourceStream.read();
    }

    @Override // java.io.InputStream
    public void reset() throws IOException {
        this.sourceStream.reset();
    }

    @Override // java.io.InputStream
    public long skip(long j4) throws IOException {
        return this.sourceStream.skip(j4);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        return this.sourceStream.read(bArr);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i2, int i4) throws IOException {
        return this.sourceStream.read(bArr, i2, i4);
    }
}
