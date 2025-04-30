package io.netty.buffer;

import io.netty.util.internal.ObjectPool;
import io.netty.util.internal.PlatformDependent;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public class PooledHeapByteBuf extends PooledByteBuf<byte[]> {
    private static final ObjectPool<PooledHeapByteBuf> RECYCLER = ObjectPool.newPool(new ObjectPool.ObjectCreator<PooledHeapByteBuf>() { // from class: io.netty.buffer.PooledHeapByteBuf.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // io.netty.util.internal.ObjectPool.ObjectCreator
        public PooledHeapByteBuf newObject(ObjectPool.Handle<PooledHeapByteBuf> handle) {
            return new PooledHeapByteBuf(handle, 0);
        }
    });

    /* JADX INFO: Access modifiers changed from: package-private */
    public PooledHeapByteBuf(ObjectPool.Handle<? extends PooledHeapByteBuf> handle, int i2) {
        super(handle, i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static PooledHeapByteBuf newInstance(int i2) {
        PooledHeapByteBuf pooledHeapByteBuf = RECYCLER.get();
        pooledHeapByteBuf.reuse(i2);
        return pooledHeapByteBuf;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public byte _getByte(int i2) {
        return HeapByteBufUtil.getByte((byte[]) this.memory, idx(i2));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public int _getInt(int i2) {
        return HeapByteBufUtil.getInt((byte[]) this.memory, idx(i2));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public int _getIntLE(int i2) {
        return HeapByteBufUtil.getIntLE((byte[]) this.memory, idx(i2));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public long _getLong(int i2) {
        return HeapByteBufUtil.getLong((byte[]) this.memory, idx(i2));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public long _getLongLE(int i2) {
        return HeapByteBufUtil.getLongLE((byte[]) this.memory, idx(i2));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public short _getShort(int i2) {
        return HeapByteBufUtil.getShort((byte[]) this.memory, idx(i2));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public short _getShortLE(int i2) {
        return HeapByteBufUtil.getShortLE((byte[]) this.memory, idx(i2));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public int _getUnsignedMedium(int i2) {
        return HeapByteBufUtil.getUnsignedMedium((byte[]) this.memory, idx(i2));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public int _getUnsignedMediumLE(int i2) {
        return HeapByteBufUtil.getUnsignedMediumLE((byte[]) this.memory, idx(i2));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public void _setByte(int i2, int i4) {
        HeapByteBufUtil.setByte((byte[]) this.memory, idx(i2), i4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public void _setInt(int i2, int i4) {
        HeapByteBufUtil.setInt((byte[]) this.memory, idx(i2), i4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public void _setIntLE(int i2, int i4) {
        HeapByteBufUtil.setIntLE((byte[]) this.memory, idx(i2), i4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public void _setLong(int i2, long j4) {
        HeapByteBufUtil.setLong((byte[]) this.memory, idx(i2), j4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public void _setLongLE(int i2, long j4) {
        HeapByteBufUtil.setLongLE((byte[]) this.memory, idx(i2), j4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public void _setMedium(int i2, int i4) {
        HeapByteBufUtil.setMedium((byte[]) this.memory, idx(i2), i4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public void _setMediumLE(int i2, int i4) {
        HeapByteBufUtil.setMediumLE((byte[]) this.memory, idx(i2), i4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public void _setShort(int i2, int i4) {
        HeapByteBufUtil.setShort((byte[]) this.memory, idx(i2), i4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public void _setShortLE(int i2, int i4) {
        HeapByteBufUtil.setShortLE((byte[]) this.memory, idx(i2), i4);
    }

    @Override // io.netty.buffer.ByteBuf
    public final byte[] array() {
        ensureAccessible();
        return (byte[]) this.memory;
    }

    @Override // io.netty.buffer.ByteBuf
    public final int arrayOffset() {
        return this.offset;
    }

    @Override // io.netty.buffer.ByteBuf
    public final ByteBuf copy(int i2, int i4) {
        checkIndex(i2, i4);
        return alloc().heapBuffer(i4, maxCapacity()).writeBytes((byte[]) this.memory, idx(i2), i4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // io.netty.buffer.PooledByteBuf
    public final ByteBuffer duplicateInternalNioBuffer(int i2, int i4) {
        checkIndex(i2, i4);
        return ByteBuffer.wrap((byte[]) this.memory, idx(i2), i4).slice();
    }

    @Override // io.netty.buffer.ByteBuf
    public final ByteBuf getBytes(int i2, ByteBuf byteBuf, int i4, int i5) {
        checkDstIndex(i2, i5, i4, byteBuf.capacity());
        if (byteBuf.hasMemoryAddress()) {
            PlatformDependent.copyMemory((byte[]) this.memory, idx(i2), i4 + byteBuf.memoryAddress(), i5);
        } else if (byteBuf.hasArray()) {
            getBytes(i2, byteBuf.array(), byteBuf.arrayOffset() + i4, i5);
        } else {
            byteBuf.setBytes(i4, (byte[]) this.memory, idx(i2), i5);
        }
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public final boolean hasArray() {
        return true;
    }

    @Override // io.netty.buffer.ByteBuf
    public final boolean hasMemoryAddress() {
        return false;
    }

    @Override // io.netty.buffer.ByteBuf
    public final boolean isDirect() {
        return false;
    }

    @Override // io.netty.buffer.ByteBuf
    public final long memoryAddress() {
        throw new UnsupportedOperationException();
    }

    @Override // io.netty.buffer.ByteBuf
    public final ByteBuf setBytes(int i2, ByteBuf byteBuf, int i4, int i5) {
        checkSrcIndex(i2, i5, i4, byteBuf.capacity());
        if (byteBuf.hasMemoryAddress()) {
            PlatformDependent.copyMemory(byteBuf.memoryAddress() + i4, (byte[]) this.memory, idx(i2), i5);
        } else if (byteBuf.hasArray()) {
            setBytes(i2, byteBuf.array(), byteBuf.arrayOffset() + i4, i5);
        } else {
            byteBuf.getBytes(i4, (byte[]) this.memory, idx(i2), i5);
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.PooledByteBuf
    public final ByteBuffer newInternalNioBuffer(byte[] bArr) {
        return ByteBuffer.wrap(bArr);
    }

    @Override // io.netty.buffer.ByteBuf
    public final ByteBuf getBytes(int i2, byte[] bArr, int i4, int i5) {
        checkDstIndex(i2, i5, i4, bArr.length);
        System.arraycopy(this.memory, idx(i2), bArr, i4, i5);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public final ByteBuf setBytes(int i2, byte[] bArr, int i4, int i5) {
        checkSrcIndex(i2, i5, i4, bArr.length);
        System.arraycopy(bArr, i4, this.memory, idx(i2), i5);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public final ByteBuf getBytes(int i2, ByteBuffer byteBuffer) {
        int remaining = byteBuffer.remaining();
        checkIndex(i2, remaining);
        byteBuffer.put((byte[]) this.memory, idx(i2), remaining);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public final ByteBuf setBytes(int i2, ByteBuffer byteBuffer) {
        int remaining = byteBuffer.remaining();
        checkIndex(i2, remaining);
        byteBuffer.get((byte[]) this.memory, idx(i2), remaining);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public final ByteBuf getBytes(int i2, OutputStream outputStream, int i4) throws IOException {
        checkIndex(i2, i4);
        outputStream.write((byte[]) this.memory, idx(i2), i4);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public final int setBytes(int i2, InputStream inputStream, int i4) throws IOException {
        checkIndex(i2, i4);
        return inputStream.read((byte[]) this.memory, idx(i2), i4);
    }
}
