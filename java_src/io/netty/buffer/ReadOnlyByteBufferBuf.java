package io.netty.buffer;

import io.netty.util.internal.StringUtil;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.ReadOnlyBufferException;
import java.nio.channels.FileChannel;
import java.nio.channels.GatheringByteChannel;
import java.nio.channels.ScatteringByteChannel;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public class ReadOnlyByteBufferBuf extends AbstractReferenceCountedByteBuf {
    private final ByteBufAllocator allocator;
    protected final ByteBuffer buffer;
    private ByteBuffer tmpNioBuf;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ReadOnlyByteBufferBuf(ByteBufAllocator byteBufAllocator, ByteBuffer byteBuffer) {
        super(byteBuffer.remaining());
        if (byteBuffer.isReadOnly()) {
            this.allocator = byteBufAllocator;
            ByteBuffer order = byteBuffer.slice().order(ByteOrder.BIG_ENDIAN);
            this.buffer = order;
            writerIndex(order.limit());
            return;
        }
        throw new IllegalArgumentException("must be a readonly buffer: " + StringUtil.simpleClassName(byteBuffer));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public byte _getByte(int i2) {
        return this.buffer.get(i2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public int _getInt(int i2) {
        return this.buffer.getInt(i2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public int _getIntLE(int i2) {
        return ByteBufUtil.swapInt(this.buffer.getInt(i2));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public long _getLong(int i2) {
        return this.buffer.getLong(i2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public long _getLongLE(int i2) {
        return ByteBufUtil.swapLong(this.buffer.getLong(i2));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public short _getShort(int i2) {
        return this.buffer.getShort(i2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public short _getShortLE(int i2) {
        return ByteBufUtil.swapShort(this.buffer.getShort(i2));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public int _getUnsignedMedium(int i2) {
        return (getByte(i2 + 2) & 255) | ((getByte(i2) & 255) << 16) | ((getByte(i2 + 1) & 255) << 8);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public int _getUnsignedMediumLE(int i2) {
        return ((getByte(i2 + 2) & 255) << 16) | (getByte(i2) & 255) | ((getByte(i2 + 1) & 255) << 8);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public void _setByte(int i2, int i4) {
        throw new ReadOnlyBufferException();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public void _setInt(int i2, int i4) {
        throw new ReadOnlyBufferException();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public void _setIntLE(int i2, int i4) {
        throw new ReadOnlyBufferException();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public void _setLong(int i2, long j4) {
        throw new ReadOnlyBufferException();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public void _setLongLE(int i2, long j4) {
        throw new ReadOnlyBufferException();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public void _setMedium(int i2, int i4) {
        throw new ReadOnlyBufferException();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public void _setMediumLE(int i2, int i4) {
        throw new ReadOnlyBufferException();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public void _setShort(int i2, int i4) {
        throw new ReadOnlyBufferException();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public void _setShortLE(int i2, int i4) {
        throw new ReadOnlyBufferException();
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBufAllocator alloc() {
        return this.allocator;
    }

    @Override // io.netty.buffer.ByteBuf
    public byte[] array() {
        return this.buffer.array();
    }

    @Override // io.netty.buffer.ByteBuf
    public int arrayOffset() {
        return this.buffer.arrayOffset();
    }

    @Override // io.netty.buffer.ByteBuf
    public int capacity() {
        return maxCapacity();
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf copy(int i2, int i4) {
        ensureAccessible();
        try {
            ByteBuffer byteBuffer = (ByteBuffer) internalNioBuffer().clear().position(i2).limit(i2 + i4);
            ByteBuf directBuffer = byteBuffer.isDirect() ? alloc().directBuffer(i4) : alloc().heapBuffer(i4);
            directBuffer.writeBytes(byteBuffer);
            return directBuffer;
        } catch (IllegalArgumentException unused) {
            throw new IndexOutOfBoundsException("Too many bytes to read - Need " + (i2 + i4));
        }
    }

    @Override // io.netty.buffer.AbstractReferenceCountedByteBuf
    protected void deallocate() {
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public int ensureWritable(int i2, boolean z3) {
        return 1;
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public ByteBuf ensureWritable(int i2) {
        throw new ReadOnlyBufferException();
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public byte getByte(int i2) {
        ensureAccessible();
        return _getByte(i2);
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

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public int getInt(int i2) {
        ensureAccessible();
        return _getInt(i2);
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public int getIntLE(int i2) {
        ensureAccessible();
        return _getIntLE(i2);
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public long getLong(int i2) {
        ensureAccessible();
        return _getLong(i2);
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public long getLongLE(int i2) {
        ensureAccessible();
        return _getLongLE(i2);
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public short getShort(int i2) {
        ensureAccessible();
        return _getShort(i2);
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public short getShortLE(int i2) {
        ensureAccessible();
        return _getShortLE(i2);
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public int getUnsignedMedium(int i2) {
        ensureAccessible();
        return _getUnsignedMedium(i2);
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public int getUnsignedMediumLE(int i2) {
        ensureAccessible();
        return _getUnsignedMediumLE(i2);
    }

    @Override // io.netty.buffer.ByteBuf
    public boolean hasArray() {
        return this.buffer.hasArray();
    }

    @Override // io.netty.buffer.ByteBuf
    public boolean hasMemoryAddress() {
        return false;
    }

    protected final ByteBuffer internalNioBuffer() {
        ByteBuffer byteBuffer = this.tmpNioBuf;
        if (byteBuffer == null) {
            ByteBuffer duplicate = this.buffer.duplicate();
            this.tmpNioBuf = duplicate;
            return duplicate;
        }
        return byteBuffer;
    }

    @Override // io.netty.buffer.ByteBuf
    public final boolean isContiguous() {
        return true;
    }

    @Override // io.netty.buffer.ByteBuf
    public boolean isDirect() {
        return this.buffer.isDirect();
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public boolean isReadOnly() {
        return this.buffer.isReadOnly();
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public boolean isWritable() {
        return false;
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public boolean isWritable(int i2) {
        return false;
    }

    @Override // io.netty.buffer.ByteBuf
    public long memoryAddress() {
        throw new UnsupportedOperationException();
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuffer nioBuffer(int i2, int i4) {
        checkIndex(i2, i4);
        return (ByteBuffer) this.buffer.duplicate().position(i2).limit(i2 + i4);
    }

    @Override // io.netty.buffer.ByteBuf
    public int nioBufferCount() {
        return 1;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuffer[] nioBuffers(int i2, int i4) {
        return new ByteBuffer[]{nioBuffer(i2, i4)};
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteOrder order() {
        return ByteOrder.BIG_ENDIAN;
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public ByteBuf setByte(int i2, int i4) {
        throw new ReadOnlyBufferException();
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf setBytes(int i2, ByteBuf byteBuf, int i4, int i5) {
        throw new ReadOnlyBufferException();
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public ByteBuf setInt(int i2, int i4) {
        throw new ReadOnlyBufferException();
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public ByteBuf setIntLE(int i2, int i4) {
        throw new ReadOnlyBufferException();
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public ByteBuf setLong(int i2, long j4) {
        throw new ReadOnlyBufferException();
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public ByteBuf setLongLE(int i2, long j4) {
        throw new ReadOnlyBufferException();
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public ByteBuf setMedium(int i2, int i4) {
        throw new ReadOnlyBufferException();
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public ByteBuf setMediumLE(int i2, int i4) {
        throw new ReadOnlyBufferException();
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public ByteBuf setShort(int i2, int i4) {
        throw new ReadOnlyBufferException();
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public ByteBuf setShortLE(int i2, int i4) {
        throw new ReadOnlyBufferException();
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf unwrap() {
        return null;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf capacity(int i2) {
        throw new ReadOnlyBufferException();
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf setBytes(int i2, byte[] bArr, int i4, int i5) {
        throw new ReadOnlyBufferException();
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuffer internalNioBuffer(int i2, int i4) {
        ensureAccessible();
        return (ByteBuffer) internalNioBuffer().clear().position(i2).limit(i2 + i4);
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf setBytes(int i2, ByteBuffer byteBuffer) {
        throw new ReadOnlyBufferException();
    }

    @Override // io.netty.buffer.ByteBuf
    public int setBytes(int i2, InputStream inputStream, int i4) throws IOException {
        throw new ReadOnlyBufferException();
    }

    @Override // io.netty.buffer.ByteBuf
    public int setBytes(int i2, ScatteringByteChannel scatteringByteChannel, int i4) throws IOException {
        throw new ReadOnlyBufferException();
    }

    @Override // io.netty.buffer.ByteBuf
    public int setBytes(int i2, FileChannel fileChannel, long j4, int i4) throws IOException {
        throw new ReadOnlyBufferException();
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf getBytes(int i2, byte[] bArr, int i4, int i5) {
        checkDstIndex(i2, i5, i4, bArr.length);
        ByteBuffer internalNioBuffer = internalNioBuffer();
        internalNioBuffer.clear().position(i2).limit(i2 + i5);
        internalNioBuffer.get(bArr, i4, i5);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf getBytes(int i2, ByteBuffer byteBuffer) {
        checkIndex(i2, byteBuffer.remaining());
        ByteBuffer internalNioBuffer = internalNioBuffer();
        internalNioBuffer.clear().position(i2).limit(i2 + byteBuffer.remaining());
        byteBuffer.put(internalNioBuffer);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf getBytes(int i2, OutputStream outputStream, int i4) throws IOException {
        ensureAccessible();
        if (i4 == 0) {
            return this;
        }
        if (this.buffer.hasArray()) {
            outputStream.write(this.buffer.array(), i2 + this.buffer.arrayOffset(), i4);
        } else {
            byte[] threadLocalTempArray = ByteBufUtil.threadLocalTempArray(i4);
            ByteBuffer internalNioBuffer = internalNioBuffer();
            internalNioBuffer.clear().position(i2);
            internalNioBuffer.get(threadLocalTempArray, 0, i4);
            outputStream.write(threadLocalTempArray, 0, i4);
        }
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public int getBytes(int i2, GatheringByteChannel gatheringByteChannel, int i4) throws IOException {
        ensureAccessible();
        if (i4 == 0) {
            return 0;
        }
        ByteBuffer internalNioBuffer = internalNioBuffer();
        internalNioBuffer.clear().position(i2).limit(i2 + i4);
        return gatheringByteChannel.write(internalNioBuffer);
    }

    @Override // io.netty.buffer.ByteBuf
    public int getBytes(int i2, FileChannel fileChannel, long j4, int i4) throws IOException {
        ensureAccessible();
        if (i4 == 0) {
            return 0;
        }
        ByteBuffer internalNioBuffer = internalNioBuffer();
        internalNioBuffer.clear().position(i2).limit(i2 + i4);
        return fileChannel.write(internalNioBuffer, j4);
    }
}
