package com.fasterxml.jackson.core.util;

import java.io.OutputStream;
import java.util.Iterator;
import java.util.LinkedList;
/* loaded from: classes2.dex */
public final class ByteArrayBuilder extends OutputStream {
    static final int DEFAULT_BLOCK_ARRAY_SIZE = 40;
    private static final int INITIAL_BLOCK_SIZE = 500;
    private static final int MAX_BLOCK_SIZE = 131072;
    public static final byte[] NO_BYTES = new byte[0];
    private final BufferRecycler _bufferRecycler;
    private byte[] _currBlock;
    private int _currBlockPtr;
    private final LinkedList<byte[]> _pastBlocks;
    private int _pastLen;

    public ByteArrayBuilder() {
        this((BufferRecycler) null);
    }

    private void _allocMore() {
        int length = this._pastLen + this._currBlock.length;
        if (length >= 0) {
            this._pastLen = length;
            int max = Math.max(length >> 1, 1000);
            if (max > 131072) {
                max = 131072;
            }
            this._pastBlocks.add(this._currBlock);
            this._currBlock = new byte[max];
            this._currBlockPtr = 0;
            return;
        }
        throw new IllegalStateException("Maximum Java array size (2GB) exceeded by `ByteArrayBuilder`");
    }

    public static ByteArrayBuilder fromInitial(byte[] bArr, int i2) {
        return new ByteArrayBuilder(null, bArr, i2);
    }

    public void append(int i2) {
        if (this._currBlockPtr >= this._currBlock.length) {
            _allocMore();
        }
        byte[] bArr = this._currBlock;
        int i4 = this._currBlockPtr;
        this._currBlockPtr = i4 + 1;
        bArr[i4] = (byte) i2;
    }

    public void appendFourBytes(int i2) {
        int i4 = this._currBlockPtr;
        int i5 = i4 + 3;
        byte[] bArr = this._currBlock;
        if (i5 < bArr.length) {
            int i6 = i4 + 1;
            this._currBlockPtr = i6;
            bArr[i4] = (byte) (i2 >> 24);
            int i7 = i6 + 1;
            this._currBlockPtr = i7;
            bArr[i6] = (byte) (i2 >> 16);
            int i8 = i7 + 1;
            this._currBlockPtr = i8;
            bArr[i7] = (byte) (i2 >> 8);
            this._currBlockPtr = i8 + 1;
            bArr[i8] = (byte) i2;
            return;
        }
        append(i2 >> 24);
        append(i2 >> 16);
        append(i2 >> 8);
        append(i2);
    }

    public void appendThreeBytes(int i2) {
        int i4 = this._currBlockPtr;
        int i5 = i4 + 2;
        byte[] bArr = this._currBlock;
        if (i5 < bArr.length) {
            int i6 = i4 + 1;
            this._currBlockPtr = i6;
            bArr[i4] = (byte) (i2 >> 16);
            int i7 = i6 + 1;
            this._currBlockPtr = i7;
            bArr[i6] = (byte) (i2 >> 8);
            this._currBlockPtr = i7 + 1;
            bArr[i7] = (byte) i2;
            return;
        }
        append(i2 >> 16);
        append(i2 >> 8);
        append(i2);
    }

    public void appendTwoBytes(int i2) {
        int i4 = this._currBlockPtr;
        int i5 = i4 + 1;
        byte[] bArr = this._currBlock;
        if (i5 < bArr.length) {
            int i6 = i4 + 1;
            this._currBlockPtr = i6;
            bArr[i4] = (byte) (i2 >> 8);
            this._currBlockPtr = i6 + 1;
            bArr[i6] = (byte) i2;
            return;
        }
        append(i2 >> 8);
        append(i2);
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    public byte[] completeAndCoalesce(int i2) {
        this._currBlockPtr = i2;
        return toByteArray();
    }

    public byte[] finishCurrentSegment() {
        _allocMore();
        return this._currBlock;
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() {
    }

    public byte[] getCurrentSegment() {
        return this._currBlock;
    }

    public int getCurrentSegmentLength() {
        return this._currBlockPtr;
    }

    public void release() {
        byte[] bArr;
        reset();
        BufferRecycler bufferRecycler = this._bufferRecycler;
        if (bufferRecycler == null || (bArr = this._currBlock) == null) {
            return;
        }
        bufferRecycler.releaseByteBuffer(2, bArr);
        this._currBlock = null;
    }

    public void reset() {
        this._pastLen = 0;
        this._currBlockPtr = 0;
        if (this._pastBlocks.isEmpty()) {
            return;
        }
        this._pastBlocks.clear();
    }

    public byte[] resetAndGetFirstSegment() {
        reset();
        return this._currBlock;
    }

    public void setCurrentSegmentLength(int i2) {
        this._currBlockPtr = i2;
    }

    public int size() {
        return this._pastLen + this._currBlockPtr;
    }

    public byte[] toByteArray() {
        int i2 = this._pastLen + this._currBlockPtr;
        if (i2 == 0) {
            return NO_BYTES;
        }
        byte[] bArr = new byte[i2];
        Iterator<byte[]> it2 = this._pastBlocks.iterator();
        int i4 = 0;
        while (it2.hasNext()) {
            byte[] next = it2.next();
            int length = next.length;
            System.arraycopy(next, 0, bArr, i4, length);
            i4 += length;
        }
        System.arraycopy(this._currBlock, 0, bArr, i4, this._currBlockPtr);
        int i5 = i4 + this._currBlockPtr;
        if (i5 == i2) {
            if (!this._pastBlocks.isEmpty()) {
                reset();
            }
            return bArr;
        }
        throw new RuntimeException("Internal error: total len assumed to be " + i2 + ", copied " + i5 + " bytes");
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) {
        write(bArr, 0, bArr.length);
    }

    public ByteArrayBuilder(BufferRecycler bufferRecycler) {
        this(bufferRecycler, 500);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i2, int i4) {
        while (true) {
            int min = Math.min(this._currBlock.length - this._currBlockPtr, i4);
            if (min > 0) {
                System.arraycopy(bArr, i2, this._currBlock, this._currBlockPtr, min);
                i2 += min;
                this._currBlockPtr += min;
                i4 -= min;
            }
            if (i4 <= 0) {
                return;
            }
            _allocMore();
        }
    }

    public ByteArrayBuilder(int i2) {
        this(null, i2);
    }

    public ByteArrayBuilder(BufferRecycler bufferRecycler, int i2) {
        this._pastBlocks = new LinkedList<>();
        this._bufferRecycler = bufferRecycler;
        this._currBlock = bufferRecycler == null ? new byte[i2 > 131072 ? 131072 : i2] : bufferRecycler.allocByteBuffer(2);
    }

    @Override // java.io.OutputStream
    public void write(int i2) {
        append(i2);
    }

    private ByteArrayBuilder(BufferRecycler bufferRecycler, byte[] bArr, int i2) {
        this._pastBlocks = new LinkedList<>();
        this._bufferRecycler = null;
        this._currBlock = bArr;
        this._currBlockPtr = i2;
    }
}
