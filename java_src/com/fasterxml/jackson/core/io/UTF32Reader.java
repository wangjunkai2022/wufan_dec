package com.fasterxml.jackson.core.io;

import com.fasterxml.jackson.core.base.GeneratorBase;
import com.papa91.arc.ext.Log;
import java.io.CharConversionException;
import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
/* loaded from: classes2.dex */
public class UTF32Reader extends Reader {
    protected static final int LAST_VALID_UNICODE_CHAR = 1114111;
    protected static final char NC = 0;
    protected final boolean _bigEndian;
    protected byte[] _buffer;
    protected int _byteCount;
    protected int _charCount;
    protected final IOContext _context;
    protected InputStream _in;
    protected int _length;
    protected final boolean _managedBuffers;
    protected int _ptr;
    protected char _surrogate = 0;
    protected char[] _tmpBuf;

    public UTF32Reader(IOContext iOContext, InputStream inputStream, byte[] bArr, int i2, int i4, boolean z3) {
        this._context = iOContext;
        this._in = inputStream;
        this._buffer = bArr;
        this._ptr = i2;
        this._length = i4;
        this._bigEndian = z3;
        this._managedBuffers = inputStream != null;
    }

    private void freeBuffers() {
        byte[] bArr = this._buffer;
        if (bArr != null) {
            this._buffer = null;
            this._context.releaseReadIOBuffer(bArr);
        }
    }

    private boolean loadMore(int i2) throws IOException {
        int read;
        this._byteCount += this._length - i2;
        if (i2 > 0) {
            int i4 = this._ptr;
            if (i4 > 0) {
                byte[] bArr = this._buffer;
                System.arraycopy(bArr, i4, bArr, 0, i2);
                this._ptr = 0;
            }
            this._length = i2;
        } else {
            this._ptr = 0;
            InputStream inputStream = this._in;
            int read2 = inputStream == null ? -1 : inputStream.read(this._buffer);
            if (read2 < 1) {
                this._length = 0;
                if (read2 < 0) {
                    if (this._managedBuffers) {
                        freeBuffers();
                    }
                    return false;
                }
                reportStrangeStream();
            }
            this._length = read2;
        }
        while (true) {
            int i5 = this._length;
            if (i5 >= 4) {
                return true;
            }
            InputStream inputStream2 = this._in;
            if (inputStream2 == null) {
                read = -1;
            } else {
                byte[] bArr2 = this._buffer;
                read = inputStream2.read(bArr2, i5, bArr2.length - i5);
            }
            if (read < 1) {
                if (read < 0) {
                    if (this._managedBuffers) {
                        freeBuffers();
                    }
                    reportUnexpectedEOF(this._length, 4);
                }
                reportStrangeStream();
            }
            this._length += read;
        }
    }

    private void reportBounds(char[] cArr, int i2, int i4) throws IOException {
        throw new ArrayIndexOutOfBoundsException("read(buf," + i2 + "," + i4 + "), cbuf[" + cArr.length + "]");
    }

    private void reportInvalid(int i2, int i4, String str) throws IOException {
        StringBuilder sb = new StringBuilder();
        sb.append("Invalid UTF-32 character 0x");
        sb.append(Integer.toHexString(i2));
        sb.append(str);
        sb.append(" at char #");
        sb.append(this._charCount + i4);
        sb.append(", byte #");
        sb.append((this._byteCount + this._ptr) - 1);
        sb.append(")");
        throw new CharConversionException(sb.toString());
    }

    private void reportStrangeStream() throws IOException {
        throw new IOException("Strange I/O stream, returned 0 bytes on read");
    }

    private void reportUnexpectedEOF(int i2, int i4) throws IOException {
        int i5 = this._charCount;
        throw new CharConversionException("Unexpected EOF in the middle of a 4-byte UTF-32 char: got " + i2 + ", needed " + i4 + ", at char #" + i5 + ", byte #" + (this._byteCount + i2) + ")");
    }

    @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        InputStream inputStream = this._in;
        if (inputStream != null) {
            this._in = null;
            freeBuffers();
            inputStream.close();
        }
    }

    @Override // java.io.Reader
    public int read() throws IOException {
        if (this._tmpBuf == null) {
            this._tmpBuf = new char[1];
        }
        if (read(this._tmpBuf, 0, 1) < 1) {
            return -1;
        }
        return this._tmpBuf[0];
    }

    @Override // java.io.Reader
    public int read(char[] cArr, int i2, int i4) throws IOException {
        int i5;
        int i6;
        int i7;
        int i8;
        if (this._buffer == null) {
            return -1;
        }
        if (i4 < 1) {
            return i4;
        }
        if (i2 < 0 || i2 + i4 > cArr.length) {
            reportBounds(cArr, i2, i4);
        }
        int i9 = i4 + i2;
        char c4 = this._surrogate;
        if (c4 != 0) {
            i5 = i2 + 1;
            cArr[i2] = c4;
            this._surrogate = (char) 0;
        } else {
            int i10 = this._length - this._ptr;
            if (i10 < 4 && !loadMore(i10)) {
                if (i10 == 0) {
                    return -1;
                }
                reportUnexpectedEOF(this._length - this._ptr, 4);
            }
            i5 = i2;
        }
        int i11 = this._length - 4;
        while (i5 < i9) {
            int i12 = this._ptr;
            if (this._bigEndian) {
                byte[] bArr = this._buffer;
                i6 = (bArr[i12] << 8) | (bArr[i12 + 1] & 255);
                i7 = (bArr[i12 + 3] & 255) | ((bArr[i12 + 2] & 255) << 8);
            } else {
                byte[] bArr2 = this._buffer;
                int i13 = (bArr2[i12] & 255) | ((bArr2[i12 + 1] & 255) << 8);
                i6 = (bArr2[i12 + 3] << 8) | (bArr2[i12 + 2] & 255);
                i7 = i13;
            }
            this._ptr = i12 + 4;
            if (i6 != 0) {
                int i14 = 65535 & i6;
                int i15 = i7 | ((i14 - 1) << 16);
                if (i14 > 16) {
                    reportInvalid(i15, i5 - i2, String.format(" (above 0x%08x)", Integer.valueOf((int) LAST_VALID_UNICODE_CHAR)));
                }
                i8 = i5 + 1;
                cArr[i5] = (char) ((i15 >> 10) + GeneratorBase.SURR1_FIRST);
                int i16 = 56320 | (i15 & Log.LogWrapper.MAX_MSG_LEN);
                if (i8 >= i9) {
                    this._surrogate = (char) i15;
                    i5 = i8;
                    break;
                }
                i7 = i16;
                i5 = i8;
            }
            i8 = i5 + 1;
            cArr[i5] = (char) i7;
            if (this._ptr > i11) {
                i5 = i8;
                break;
            }
            i5 = i8;
        }
        int i17 = i5 - i2;
        this._charCount += i17;
        return i17;
    }
}
