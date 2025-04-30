package io.netty.buffer;

import io.netty.util.internal.ObjectUtil;
import java.io.DataInput;
import java.io.DataInputStream;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import kotlin.UShort;
/* loaded from: classes5.dex */
public class ByteBufInputStream extends InputStream implements DataInput {
    private final ByteBuf buffer;
    private boolean closed;
    private final int endIndex;
    private StringBuilder lineBuf;
    private final boolean releaseOnClose;
    private final int startIndex;

    public ByteBufInputStream(ByteBuf byteBuf) {
        this(byteBuf, byteBuf.readableBytes());
    }

    private void checkAvailable(int i2) throws IOException {
        if (i2 >= 0) {
            if (i2 <= available()) {
                return;
            }
            throw new EOFException("fieldSize is too long! Length is " + i2 + ", but maximum is " + available());
        }
        throw new IndexOutOfBoundsException("fieldSize cannot be a negative number");
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        return this.endIndex - this.buffer.readerIndex();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        try {
            super.close();
        } finally {
            if (this.releaseOnClose && !this.closed) {
                this.closed = true;
                this.buffer.release();
            }
        }
    }

    @Override // java.io.InputStream
    public void mark(int i2) {
        this.buffer.markReaderIndex();
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return true;
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        if (available() == 0) {
            return -1;
        }
        return this.buffer.readByte() & 255;
    }

    @Override // java.io.DataInput
    public boolean readBoolean() throws IOException {
        checkAvailable(1);
        return read() != 0;
    }

    @Override // java.io.DataInput
    public byte readByte() throws IOException {
        if (available() != 0) {
            return this.buffer.readByte();
        }
        throw new EOFException();
    }

    public int readBytes() {
        return this.buffer.readerIndex() - this.startIndex;
    }

    @Override // java.io.DataInput
    public char readChar() throws IOException {
        return (char) readShort();
    }

    @Override // java.io.DataInput
    public double readDouble() throws IOException {
        return Double.longBitsToDouble(readLong());
    }

    @Override // java.io.DataInput
    public float readFloat() throws IOException {
        return Float.intBitsToFloat(readInt());
    }

    @Override // java.io.DataInput
    public void readFully(byte[] bArr) throws IOException {
        readFully(bArr, 0, bArr.length);
    }

    @Override // java.io.DataInput
    public int readInt() throws IOException {
        checkAvailable(4);
        return this.buffer.readInt();
    }

    @Override // java.io.DataInput
    public String readLine() throws IOException {
        int available = available();
        if (available == 0) {
            return null;
        }
        StringBuilder sb = this.lineBuf;
        if (sb != null) {
            sb.setLength(0);
        }
        while (true) {
            short readUnsignedByte = this.buffer.readUnsignedByte();
            available--;
            if (readUnsignedByte == 10) {
                break;
            } else if (readUnsignedByte != 13) {
                if (this.lineBuf == null) {
                    this.lineBuf = new StringBuilder();
                }
                this.lineBuf.append((char) readUnsignedByte);
                if (available <= 0) {
                    break;
                }
            } else if (available > 0) {
                ByteBuf byteBuf = this.buffer;
                if (((char) byteBuf.getUnsignedByte(byteBuf.readerIndex())) == '\n') {
                    this.buffer.skipBytes(1);
                }
            }
        }
        StringBuilder sb2 = this.lineBuf;
        return (sb2 == null || sb2.length() <= 0) ? "" : this.lineBuf.toString();
    }

    @Override // java.io.DataInput
    public long readLong() throws IOException {
        checkAvailable(8);
        return this.buffer.readLong();
    }

    @Override // java.io.DataInput
    public short readShort() throws IOException {
        checkAvailable(2);
        return this.buffer.readShort();
    }

    @Override // java.io.DataInput
    public String readUTF() throws IOException {
        return DataInputStream.readUTF(this);
    }

    @Override // java.io.DataInput
    public int readUnsignedByte() throws IOException {
        return readByte() & 255;
    }

    @Override // java.io.DataInput
    public int readUnsignedShort() throws IOException {
        return readShort() & UShort.MAX_VALUE;
    }

    @Override // java.io.InputStream
    public void reset() throws IOException {
        this.buffer.resetReaderIndex();
    }

    @Override // java.io.InputStream
    public long skip(long j4) throws IOException {
        int skipBytes;
        if (j4 > 2147483647L) {
            skipBytes = skipBytes(Integer.MAX_VALUE);
        } else {
            skipBytes = skipBytes((int) j4);
        }
        return skipBytes;
    }

    @Override // java.io.DataInput
    public int skipBytes(int i2) throws IOException {
        int min = Math.min(available(), i2);
        this.buffer.skipBytes(min);
        return min;
    }

    public ByteBufInputStream(ByteBuf byteBuf, int i2) {
        this(byteBuf, i2, false);
    }

    @Override // java.io.DataInput
    public void readFully(byte[] bArr, int i2, int i4) throws IOException {
        checkAvailable(i4);
        this.buffer.readBytes(bArr, i2, i4);
    }

    public ByteBufInputStream(ByteBuf byteBuf, boolean z3) {
        this(byteBuf, byteBuf.readableBytes(), z3);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i2, int i4) throws IOException {
        int available = available();
        if (available == 0) {
            return -1;
        }
        int min = Math.min(available, i4);
        this.buffer.readBytes(bArr, i2, min);
        return min;
    }

    public ByteBufInputStream(ByteBuf byteBuf, int i2, boolean z3) {
        ObjectUtil.checkNotNull(byteBuf, "buffer");
        if (i2 < 0) {
            if (z3) {
                byteBuf.release();
            }
            throw new IllegalArgumentException("length: " + i2);
        } else if (i2 > byteBuf.readableBytes()) {
            if (z3) {
                byteBuf.release();
            }
            throw new IndexOutOfBoundsException("Too many bytes to be read - Needs " + i2 + ", maximum is " + byteBuf.readableBytes());
        } else {
            this.releaseOnClose = z3;
            this.buffer = byteBuf;
            int readerIndex = byteBuf.readerIndex();
            this.startIndex = readerIndex;
            this.endIndex = readerIndex + i2;
            byteBuf.markReaderIndex();
        }
    }
}
