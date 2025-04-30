package io.netty.buffer;

import io.netty.util.internal.ObjectPool;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class PooledDirectByteBuf extends PooledByteBuf<ByteBuffer> {
    private static final ObjectPool<PooledDirectByteBuf> RECYCLER = ObjectPool.newPool(new ObjectPool.ObjectCreator<PooledDirectByteBuf>() { // from class: io.netty.buffer.PooledDirectByteBuf.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // io.netty.util.internal.ObjectPool.ObjectCreator
        public PooledDirectByteBuf newObject(ObjectPool.Handle<PooledDirectByteBuf> handle) {
            return new PooledDirectByteBuf(handle, 0);
        }
    });

    /* JADX INFO: Access modifiers changed from: package-private */
    public static PooledDirectByteBuf newInstance(int i2) {
        PooledDirectByteBuf pooledDirectByteBuf = RECYCLER.get();
        pooledDirectByteBuf.reuse(i2);
        return pooledDirectByteBuf;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public byte _getByte(int i2) {
        return ((ByteBuffer) this.memory).get(idx(i2));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public int _getInt(int i2) {
        return ((ByteBuffer) this.memory).getInt(idx(i2));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public int _getIntLE(int i2) {
        return ByteBufUtil.swapInt(_getInt(i2));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public long _getLong(int i2) {
        return ((ByteBuffer) this.memory).getLong(idx(i2));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public long _getLongLE(int i2) {
        return ByteBufUtil.swapLong(_getLong(i2));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public short _getShort(int i2) {
        return ((ByteBuffer) this.memory).getShort(idx(i2));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public short _getShortLE(int i2) {
        return ByteBufUtil.swapShort(_getShort(i2));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public int _getUnsignedMedium(int i2) {
        int idx = idx(i2);
        return (((ByteBuffer) this.memory).get(idx + 2) & 255) | ((((ByteBuffer) this.memory).get(idx) & 255) << 16) | ((((ByteBuffer) this.memory).get(idx + 1) & 255) << 8);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public int _getUnsignedMediumLE(int i2) {
        int idx = idx(i2);
        return ((((ByteBuffer) this.memory).get(idx + 2) & 255) << 16) | (((ByteBuffer) this.memory).get(idx) & 255) | ((((ByteBuffer) this.memory).get(idx + 1) & 255) << 8);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public void _setByte(int i2, int i4) {
        ((ByteBuffer) this.memory).put(idx(i2), (byte) i4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public void _setInt(int i2, int i4) {
        ((ByteBuffer) this.memory).putInt(idx(i2), i4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public void _setIntLE(int i2, int i4) {
        _setInt(i2, ByteBufUtil.swapInt(i4));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public void _setLong(int i2, long j4) {
        ((ByteBuffer) this.memory).putLong(idx(i2), j4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public void _setLongLE(int i2, long j4) {
        _setLong(i2, ByteBufUtil.swapLong(j4));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public void _setMedium(int i2, int i4) {
        int idx = idx(i2);
        ((ByteBuffer) this.memory).put(idx, (byte) (i4 >>> 16));
        ((ByteBuffer) this.memory).put(idx + 1, (byte) (i4 >>> 8));
        ((ByteBuffer) this.memory).put(idx + 2, (byte) i4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public void _setMediumLE(int i2, int i4) {
        int idx = idx(i2);
        ((ByteBuffer) this.memory).put(idx, (byte) i4);
        ((ByteBuffer) this.memory).put(idx + 1, (byte) (i4 >>> 8));
        ((ByteBuffer) this.memory).put(idx + 2, (byte) (i4 >>> 16));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public void _setShort(int i2, int i4) {
        ((ByteBuffer) this.memory).putShort(idx(i2), (short) i4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public void _setShortLE(int i2, int i4) {
        _setShort(i2, ByteBufUtil.swapShort((short) i4));
    }

    @Override // io.netty.buffer.ByteBuf
    public byte[] array() {
        throw new UnsupportedOperationException("direct buffer");
    }

    @Override // io.netty.buffer.ByteBuf
    public int arrayOffset() {
        throw new UnsupportedOperationException("direct buffer");
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf copy(int i2, int i4) {
        checkIndex(i2, i4);
        return alloc().directBuffer(i4, maxCapacity()).writeBytes(this, i2, i4);
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf getBytes(int i2, ByteBuf byteBuf, int i4, int i5) {
        checkDstIndex(i2, i5, i4, byteBuf.capacity());
        if (byteBuf.hasArray()) {
            getBytes(i2, byteBuf.array(), byteBuf.arrayOffset() + i4, i5);
        } else if (byteBuf.nioBufferCount() > 0) {
            ByteBuffer[] nioBuffers = byteBuf.nioBuffers(i4, i5);
            for (ByteBuffer byteBuffer : nioBuffers) {
                int remaining = byteBuffer.remaining();
                getBytes(i2, byteBuffer);
                i2 += remaining;
            }
        } else {
            byteBuf.setBytes(i4, this, i2, i5);
        }
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public boolean hasArray() {
        return false;
    }

    @Override // io.netty.buffer.ByteBuf
    public boolean hasMemoryAddress() {
        return false;
    }

    @Override // io.netty.buffer.ByteBuf
    public boolean isDirect() {
        return true;
    }

    @Override // io.netty.buffer.ByteBuf
    public long memoryAddress() {
        throw new UnsupportedOperationException();
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public ByteBuf readBytes(byte[] bArr, int i2, int i4) {
        checkDstIndex(i4, i2, bArr.length);
        _internalNioBuffer(this.readerIndex, i4, false).get(bArr, i2, i4);
        this.readerIndex += i4;
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf setBytes(int i2, ByteBuf byteBuf, int i4, int i5) {
        checkSrcIndex(i2, i5, i4, byteBuf.capacity());
        if (byteBuf.hasArray()) {
            setBytes(i2, byteBuf.array(), byteBuf.arrayOffset() + i4, i5);
        } else if (byteBuf.nioBufferCount() > 0) {
            ByteBuffer[] nioBuffers = byteBuf.nioBuffers(i4, i5);
            for (ByteBuffer byteBuffer : nioBuffers) {
                int remaining = byteBuffer.remaining();
                setBytes(i2, byteBuffer);
                i2 += remaining;
            }
        } else {
            byteBuf.getBytes(i4, this, i2, i5);
        }
        return this;
    }

    private PooledDirectByteBuf(ObjectPool.Handle<PooledDirectByteBuf> handle, int i2) {
        super(handle, i2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.PooledByteBuf
    public ByteBuffer newInternalNioBuffer(ByteBuffer byteBuffer) {
        return byteBuffer.duplicate();
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public ByteBuf readBytes(ByteBuffer byteBuffer) {
        int remaining = byteBuffer.remaining();
        checkReadableBytes(remaining);
        byteBuffer.put(_internalNioBuffer(this.readerIndex, remaining, false));
        this.readerIndex += remaining;
        return this;
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public ByteBuf readBytes(OutputStream outputStream, int i2) throws IOException {
        checkReadableBytes(i2);
        getBytes(this.readerIndex, outputStream, i2, true);
        this.readerIndex += i2;
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf getBytes(int i2, byte[] bArr, int i4, int i5) {
        checkDstIndex(i2, i5, i4, bArr.length);
        _internalNioBuffer(i2, i5, true).get(bArr, i4, i5);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf setBytes(int i2, byte[] bArr, int i4, int i5) {
        checkSrcIndex(i2, i5, i4, bArr.length);
        _internalNioBuffer(i2, i5, false).put(bArr, i4, i5);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf getBytes(int i2, ByteBuffer byteBuffer) {
        byteBuffer.put(duplicateInternalNioBuffer(i2, byteBuffer.remaining()));
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf setBytes(int i2, ByteBuffer byteBuffer) {
        int remaining = byteBuffer.remaining();
        checkIndex(i2, remaining);
        ByteBuffer internalNioBuffer = internalNioBuffer();
        if (byteBuffer == internalNioBuffer) {
            byteBuffer = byteBuffer.duplicate();
        }
        int idx = idx(i2);
        internalNioBuffer.limit(remaining + idx).position(idx);
        internalNioBuffer.put(byteBuffer);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf getBytes(int i2, OutputStream outputStream, int i4) throws IOException {
        getBytes(i2, outputStream, i4, false);
        return this;
    }

    private void getBytes(int i2, OutputStream outputStream, int i4, boolean z3) throws IOException {
        checkIndex(i2, i4);
        if (i4 == 0) {
            return;
        }
        ByteBufUtil.readBytes(alloc(), z3 ? internalNioBuffer() : ((ByteBuffer) this.memory).duplicate(), idx(i2), i4, outputStream);
    }

    @Override // io.netty.buffer.ByteBuf
    public int setBytes(int i2, InputStream inputStream, int i4) throws IOException {
        checkIndex(i2, i4);
        byte[] threadLocalTempArray = ByteBufUtil.threadLocalTempArray(i4);
        int read = inputStream.read(threadLocalTempArray, 0, i4);
        if (read <= 0) {
            return read;
        }
        ByteBuffer internalNioBuffer = internalNioBuffer();
        internalNioBuffer.position(idx(i2));
        internalNioBuffer.put(threadLocalTempArray, 0, read);
        return read;
    }
}
