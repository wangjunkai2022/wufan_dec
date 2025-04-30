package io.netty.buffer;

import io.netty.util.internal.ObjectUtil;
import io.netty.util.internal.PlatformDependent;
import java.nio.ByteBuffer;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class ReadOnlyUnsafeDirectByteBuf extends ReadOnlyByteBufferBuf {
    private final long memoryAddress;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ReadOnlyUnsafeDirectByteBuf(ByteBufAllocator byteBufAllocator, ByteBuffer byteBuffer) {
        super(byteBufAllocator, byteBuffer);
        this.memoryAddress = PlatformDependent.directBufferAddress(this.buffer);
    }

    private long addr(int i2) {
        return this.memoryAddress + i2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.ReadOnlyByteBufferBuf, io.netty.buffer.AbstractByteBuf
    public byte _getByte(int i2) {
        return UnsafeByteBufUtil.getByte(addr(i2));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.ReadOnlyByteBufferBuf, io.netty.buffer.AbstractByteBuf
    public int _getInt(int i2) {
        return UnsafeByteBufUtil.getInt(addr(i2));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.ReadOnlyByteBufferBuf, io.netty.buffer.AbstractByteBuf
    public long _getLong(int i2) {
        return UnsafeByteBufUtil.getLong(addr(i2));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.ReadOnlyByteBufferBuf, io.netty.buffer.AbstractByteBuf
    public short _getShort(int i2) {
        return UnsafeByteBufUtil.getShort(addr(i2));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.ReadOnlyByteBufferBuf, io.netty.buffer.AbstractByteBuf
    public int _getUnsignedMedium(int i2) {
        return UnsafeByteBufUtil.getUnsignedMedium(addr(i2));
    }

    @Override // io.netty.buffer.ReadOnlyByteBufferBuf, io.netty.buffer.ByteBuf
    public ByteBuf copy(int i2, int i4) {
        checkIndex(i2, i4);
        ByteBuf directBuffer = alloc().directBuffer(i4, maxCapacity());
        if (i4 != 0) {
            if (directBuffer.hasMemoryAddress()) {
                PlatformDependent.copyMemory(addr(i2), directBuffer.memoryAddress(), i4);
                directBuffer.setIndex(0, i4);
            } else {
                directBuffer.writeBytes(this, i2, i4);
            }
        }
        return directBuffer;
    }

    @Override // io.netty.buffer.ReadOnlyByteBufferBuf, io.netty.buffer.ByteBuf
    public ByteBuf getBytes(int i2, ByteBuf byteBuf, int i4, int i5) {
        checkIndex(i2, i5);
        ObjectUtil.checkNotNull(byteBuf, "dst");
        if (i4 >= 0 && i4 <= byteBuf.capacity() - i5) {
            if (byteBuf.hasMemoryAddress()) {
                PlatformDependent.copyMemory(addr(i2), i4 + byteBuf.memoryAddress(), i5);
            } else if (byteBuf.hasArray()) {
                PlatformDependent.copyMemory(addr(i2), byteBuf.array(), byteBuf.arrayOffset() + i4, i5);
            } else {
                byteBuf.setBytes(i4, this, i2, i5);
            }
            return this;
        }
        throw new IndexOutOfBoundsException("dstIndex: " + i4);
    }

    @Override // io.netty.buffer.ReadOnlyByteBufferBuf, io.netty.buffer.ByteBuf
    public boolean hasMemoryAddress() {
        return true;
    }

    @Override // io.netty.buffer.ReadOnlyByteBufferBuf, io.netty.buffer.ByteBuf
    public long memoryAddress() {
        return this.memoryAddress;
    }

    @Override // io.netty.buffer.ReadOnlyByteBufferBuf, io.netty.buffer.ByteBuf
    public ByteBuf getBytes(int i2, byte[] bArr, int i4, int i5) {
        checkIndex(i2, i5);
        ObjectUtil.checkNotNull(bArr, "dst");
        if (i4 < 0 || i4 > bArr.length - i5) {
            throw new IndexOutOfBoundsException(String.format("dstIndex: %d, length: %d (expected: range(0, %d))", Integer.valueOf(i4), Integer.valueOf(i5), Integer.valueOf(bArr.length)));
        }
        if (i5 != 0) {
            PlatformDependent.copyMemory(addr(i2), bArr, i4, i5);
        }
        return this;
    }
}
