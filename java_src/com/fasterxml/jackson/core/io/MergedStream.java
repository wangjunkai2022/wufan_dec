package com.fasterxml.jackson.core.io;

import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes2.dex */
public final class MergedStream extends InputStream {
    private byte[] _b;
    private final IOContext _ctxt;
    private final int _end;
    private final InputStream _in;
    private int _ptr;

    public MergedStream(IOContext iOContext, InputStream inputStream, byte[] bArr, int i2, int i4) {
        this._ctxt = iOContext;
        this._in = inputStream;
        this._b = bArr;
        this._ptr = i2;
        this._end = i4;
    }

    private void _free() {
        byte[] bArr = this._b;
        if (bArr != null) {
            this._b = null;
            IOContext iOContext = this._ctxt;
            if (iOContext != null) {
                iOContext.releaseReadIOBuffer(bArr);
            }
        }
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        if (this._b != null) {
            return this._end - this._ptr;
        }
        return this._in.available();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        _free();
        this._in.close();
    }

    @Override // java.io.InputStream
    public void mark(int i2) {
        if (this._b == null) {
            this._in.mark(i2);
        }
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return this._b == null && this._in.markSupported();
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        byte[] bArr = this._b;
        if (bArr != null) {
            int i2 = this._ptr;
            int i4 = i2 + 1;
            this._ptr = i4;
            int i5 = bArr[i2] & 255;
            if (i4 >= this._end) {
                _free();
            }
            return i5;
        }
        return this._in.read();
    }

    @Override // java.io.InputStream
    public void reset() throws IOException {
        if (this._b == null) {
            this._in.reset();
        }
    }

    @Override // java.io.InputStream
    public long skip(long j4) throws IOException {
        long j5;
        if (this._b != null) {
            int i2 = this._end;
            int i4 = this._ptr;
            long j6 = i2 - i4;
            if (j6 > j4) {
                this._ptr = i4 + ((int) j4);
                return j4;
            }
            _free();
            j5 = j6 + 0;
            j4 -= j6;
        } else {
            j5 = 0;
        }
        return j4 > 0 ? j5 + this._in.skip(j4) : j5;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i2, int i4) throws IOException {
        byte[] bArr2 = this._b;
        if (bArr2 != null) {
            int i5 = this._end;
            int i6 = this._ptr;
            int i7 = i5 - i6;
            if (i4 > i7) {
                i4 = i7;
            }
            System.arraycopy(bArr2, i6, bArr, i2, i4);
            int i8 = this._ptr + i4;
            this._ptr = i8;
            if (i8 >= this._end) {
                _free();
            }
            return i4;
        }
        return this._in.read(bArr, i2, i4);
    }
}
