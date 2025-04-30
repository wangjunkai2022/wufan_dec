package com.android.dx.util;

import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class ByteArray {
    private final byte[] bytes;
    private final int size;
    private final int start;

    /* loaded from: classes2.dex */
    public interface GetCursor {
        int getCursor();
    }

    /* loaded from: classes2.dex */
    public static class MyDataInputStream extends DataInputStream {
        private final MyInputStream wrapped;

        public MyDataInputStream(MyInputStream myInputStream) {
            super(myInputStream);
            this.wrapped = myInputStream;
        }
    }

    public ByteArray(byte[] bArr, int i2, int i4) {
        Objects.requireNonNull(bArr, "bytes == null");
        if (i2 < 0) {
            throw new IllegalArgumentException("start < 0");
        }
        if (i4 >= i2) {
            if (i4 <= bArr.length) {
                this.bytes = bArr;
                this.start = i2;
                this.size = i4 - i2;
                return;
            }
            throw new IllegalArgumentException("end > bytes.length");
        }
        throw new IllegalArgumentException("end < start");
    }

    private void checkOffsets(int i2, int i4) {
        if (i2 < 0 || i4 < i2 || i4 > this.size) {
            throw new IllegalArgumentException("bad range: " + i2 + ".." + i4 + "; actual size " + this.size);
        }
    }

    private int getByte0(int i2) {
        return this.bytes[this.start + i2];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getUnsignedByte0(int i2) {
        return this.bytes[this.start + i2] & 255;
    }

    public int getByte(int i2) {
        checkOffsets(i2, i2 + 1);
        return getByte0(i2);
    }

    public void getBytes(byte[] bArr, int i2) {
        int length = bArr.length - i2;
        int i4 = this.size;
        if (length >= i4) {
            System.arraycopy(this.bytes, this.start, bArr, i2, i4);
            return;
        }
        throw new IndexOutOfBoundsException("(out.length - offset) < size()");
    }

    public int getInt(int i2) {
        checkOffsets(i2, i2 + 4);
        return getUnsignedByte0(i2 + 3) | (getByte0(i2) << 24) | (getUnsignedByte0(i2 + 1) << 16) | (getUnsignedByte0(i2 + 2) << 8);
    }

    public long getLong(int i2) {
        checkOffsets(i2, i2 + 8);
        int byte0 = (getByte0(i2) << 24) | (getUnsignedByte0(i2 + 1) << 16) | (getUnsignedByte0(i2 + 2) << 8) | getUnsignedByte0(i2 + 3);
        return ((getUnsignedByte0(i2 + 7) | (getByte0(i2 + 4) << 24) | (getUnsignedByte0(i2 + 5) << 16) | (getUnsignedByte0(i2 + 6) << 8)) & 4294967295L) | (byte0 << 32);
    }

    public int getShort(int i2) {
        checkOffsets(i2, i2 + 2);
        return getUnsignedByte0(i2 + 1) | (getByte0(i2) << 8);
    }

    public int getUnsignedByte(int i2) {
        checkOffsets(i2, i2 + 1);
        return getUnsignedByte0(i2);
    }

    public int getUnsignedShort(int i2) {
        checkOffsets(i2, i2 + 2);
        return getUnsignedByte0(i2 + 1) | (getUnsignedByte0(i2) << 8);
    }

    public MyDataInputStream makeDataInputStream() {
        return new MyDataInputStream(makeInputStream());
    }

    public MyInputStream makeInputStream() {
        return new MyInputStream();
    }

    public int size() {
        return this.size;
    }

    public ByteArray slice(int i2, int i4) {
        checkOffsets(i2, i4);
        return new ByteArray(Arrays.copyOfRange(this.bytes, i2, i4));
    }

    public int underlyingOffset(int i2) {
        return this.start + i2;
    }

    /* loaded from: classes2.dex */
    public class MyInputStream extends InputStream {
        private int cursor = 0;
        private int mark = 0;

        public MyInputStream() {
        }

        @Override // java.io.InputStream
        public int available() {
            return ByteArray.this.size - this.cursor;
        }

        @Override // java.io.InputStream
        public void mark(int i2) {
            this.mark = this.cursor;
        }

        @Override // java.io.InputStream
        public boolean markSupported() {
            return true;
        }

        @Override // java.io.InputStream
        public int read() throws IOException {
            if (this.cursor >= ByteArray.this.size) {
                return -1;
            }
            int unsignedByte0 = ByteArray.this.getUnsignedByte0(this.cursor);
            this.cursor++;
            return unsignedByte0;
        }

        @Override // java.io.InputStream
        public void reset() {
            this.cursor = this.mark;
        }

        @Override // java.io.InputStream
        public int read(byte[] bArr, int i2, int i4) {
            if (i2 + i4 > bArr.length) {
                i4 = bArr.length - i2;
            }
            int i5 = ByteArray.this.size - this.cursor;
            if (i4 > i5) {
                i4 = i5;
            }
            System.arraycopy(ByteArray.this.bytes, this.cursor + ByteArray.this.start, bArr, i2, i4);
            this.cursor += i4;
            return i4;
        }
    }

    public ByteArray(byte[] bArr) {
        this(bArr, 0, bArr.length);
    }
}
