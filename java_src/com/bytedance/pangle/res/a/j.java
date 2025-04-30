package com.bytedance.pangle.res.a;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes2.dex */
public abstract class j extends FilterInputStream {
    public j(InputStream inputStream) {
        super(inputStream);
    }

    protected void a(int i2) {
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int available() {
        try {
            return super.available();
        } catch (IOException e4) {
            throw e4;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        try {
            ((FilterInputStream) this).in.close();
        } catch (IOException e4) {
            throw e4;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized void mark(int i2) {
        ((FilterInputStream) this).in.mark(i2);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public boolean markSupported() {
        return ((FilterInputStream) this).in.markSupported();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() {
        try {
            int read = ((FilterInputStream) this).in.read();
            a(read != -1 ? 1 : -1);
            return read;
        } catch (IOException e4) {
            throw e4;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized void reset() {
        try {
            ((FilterInputStream) this).in.reset();
        } catch (IOException e4) {
            throw e4;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public long skip(long j4) {
        try {
            return ((FilterInputStream) this).in.skip(j4);
        } catch (IOException e4) {
            throw e4;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr) {
        try {
            int read = ((FilterInputStream) this).in.read(bArr);
            a(read);
            return read;
        } catch (IOException e4) {
            throw e4;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i2, int i4) {
        try {
            int read = ((FilterInputStream) this).in.read(bArr, i2, i4);
            a(read);
            return read;
        } catch (IOException e4) {
            throw e4;
        }
    }
}
