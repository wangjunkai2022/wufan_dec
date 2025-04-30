package io.netty.buffer;

import io.netty.util.ByteProcessor;
import io.netty.util.internal.ObjectPool;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.channels.GatheringByteChannel;
import java.nio.channels.ScatteringByteChannel;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class PooledSlicedByteBuf extends AbstractPooledDerivedByteBuf {
    private static final ObjectPool<PooledSlicedByteBuf> RECYCLER = ObjectPool.newPool(new ObjectPool.ObjectCreator<PooledSlicedByteBuf>() { // from class: io.netty.buffer.PooledSlicedByteBuf.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // io.netty.util.internal.ObjectPool.ObjectCreator
        public PooledSlicedByteBuf newObject(ObjectPool.Handle<PooledSlicedByteBuf> handle) {
            return new PooledSlicedByteBuf(handle);
        }
    });
    int adjustment;

    private int idx(int i2) {
        return i2 + this.adjustment;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static PooledSlicedByteBuf newInstance(AbstractByteBuf abstractByteBuf, ByteBuf byteBuf, int i2, int i4) {
        AbstractUnpooledSlicedByteBuf.checkSliceOutOfBounds(i2, i4, abstractByteBuf);
        return newInstance0(abstractByteBuf, byteBuf, i2, i4);
    }

    private static PooledSlicedByteBuf newInstance0(AbstractByteBuf abstractByteBuf, ByteBuf byteBuf, int i2, int i4) {
        PooledSlicedByteBuf pooledSlicedByteBuf = RECYCLER.get();
        pooledSlicedByteBuf.init(abstractByteBuf, byteBuf, 0, i4, i4);
        pooledSlicedByteBuf.discardMarks();
        pooledSlicedByteBuf.adjustment = i2;
        return pooledSlicedByteBuf;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public byte _getByte(int i2) {
        return unwrap()._getByte(idx(i2));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public int _getInt(int i2) {
        return unwrap()._getInt(idx(i2));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public int _getIntLE(int i2) {
        return unwrap()._getIntLE(idx(i2));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public long _getLong(int i2) {
        return unwrap()._getLong(idx(i2));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public long _getLongLE(int i2) {
        return unwrap()._getLongLE(idx(i2));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public short _getShort(int i2) {
        return unwrap()._getShort(idx(i2));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public short _getShortLE(int i2) {
        return unwrap()._getShortLE(idx(i2));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public int _getUnsignedMedium(int i2) {
        return unwrap()._getUnsignedMedium(idx(i2));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public int _getUnsignedMediumLE(int i2) {
        return unwrap()._getUnsignedMediumLE(idx(i2));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public void _setByte(int i2, int i4) {
        unwrap()._setByte(idx(i2), i4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public void _setInt(int i2, int i4) {
        unwrap()._setInt(idx(i2), i4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public void _setIntLE(int i2, int i4) {
        unwrap()._setIntLE(idx(i2), i4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public void _setLong(int i2, long j4) {
        unwrap()._setLong(idx(i2), j4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public void _setLongLE(int i2, long j4) {
        unwrap().setLongLE(idx(i2), j4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public void _setMedium(int i2, int i4) {
        unwrap()._setMedium(idx(i2), i4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public void _setMediumLE(int i2, int i4) {
        unwrap()._setMediumLE(idx(i2), i4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public void _setShort(int i2, int i4) {
        unwrap()._setShort(idx(i2), i4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public void _setShortLE(int i2, int i4) {
        unwrap()._setShortLE(idx(i2), i4);
    }

    @Override // io.netty.buffer.ByteBuf
    public int arrayOffset() {
        return idx(unwrap().arrayOffset());
    }

    @Override // io.netty.buffer.ByteBuf
    public int capacity() {
        return maxCapacity();
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf copy(int i2, int i4) {
        checkIndex0(i2, i4);
        return unwrap().copy(idx(i2), i4);
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public ByteBuf duplicate() {
        return duplicate0().setIndex(idx(readerIndex()), idx(writerIndex()));
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public int forEachByte(int i2, int i4, ByteProcessor byteProcessor) {
        checkIndex0(i2, i4);
        int forEachByte = unwrap().forEachByte(idx(i2), i4, byteProcessor);
        int i5 = this.adjustment;
        if (forEachByte < i5) {
            return -1;
        }
        return forEachByte - i5;
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public int forEachByteDesc(int i2, int i4, ByteProcessor byteProcessor) {
        checkIndex0(i2, i4);
        int forEachByteDesc = unwrap().forEachByteDesc(idx(i2), i4, byteProcessor);
        int i5 = this.adjustment;
        if (forEachByteDesc < i5) {
            return -1;
        }
        return forEachByteDesc - i5;
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public byte getByte(int i2) {
        checkIndex0(i2, 1);
        return unwrap().getByte(idx(i2));
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf getBytes(int i2, ByteBuf byteBuf, int i4, int i5) {
        checkIndex0(i2, i5);
        unwrap().getBytes(idx(i2), byteBuf, i4, i5);
        return this;
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public int getInt(int i2) {
        checkIndex0(i2, 4);
        return unwrap().getInt(idx(i2));
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public int getIntLE(int i2) {
        checkIndex0(i2, 4);
        return unwrap().getIntLE(idx(i2));
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public long getLong(int i2) {
        checkIndex0(i2, 8);
        return unwrap().getLong(idx(i2));
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public long getLongLE(int i2) {
        checkIndex0(i2, 8);
        return unwrap().getLongLE(idx(i2));
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public short getShort(int i2) {
        checkIndex0(i2, 2);
        return unwrap().getShort(idx(i2));
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public short getShortLE(int i2) {
        checkIndex0(i2, 2);
        return unwrap().getShortLE(idx(i2));
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public int getUnsignedMedium(int i2) {
        checkIndex0(i2, 3);
        return unwrap().getUnsignedMedium(idx(i2));
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public int getUnsignedMediumLE(int i2) {
        checkIndex0(i2, 3);
        return unwrap().getUnsignedMediumLE(idx(i2));
    }

    @Override // io.netty.buffer.ByteBuf
    public long memoryAddress() {
        return unwrap().memoryAddress() + this.adjustment;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuffer nioBuffer(int i2, int i4) {
        checkIndex0(i2, i4);
        return unwrap().nioBuffer(idx(i2), i4);
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuffer[] nioBuffers(int i2, int i4) {
        checkIndex0(i2, i4);
        return unwrap().nioBuffers(idx(i2), i4);
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public ByteBuf retainedDuplicate() {
        return PooledDuplicatedByteBuf.newInstance(unwrap(), this, idx(readerIndex()), idx(writerIndex()));
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public ByteBuf retainedSlice(int i2, int i4) {
        checkIndex0(i2, i4);
        return newInstance0(unwrap(), this, idx(i2), i4);
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public ByteBuf setByte(int i2, int i4) {
        checkIndex0(i2, 1);
        unwrap().setByte(idx(i2), i4);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf setBytes(int i2, byte[] bArr, int i4, int i5) {
        checkIndex0(i2, i5);
        unwrap().setBytes(idx(i2), bArr, i4, i5);
        return this;
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public ByteBuf setInt(int i2, int i4) {
        checkIndex0(i2, 4);
        unwrap().setInt(idx(i2), i4);
        return this;
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public ByteBuf setIntLE(int i2, int i4) {
        checkIndex0(i2, 4);
        unwrap().setIntLE(idx(i2), i4);
        return this;
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public ByteBuf setLong(int i2, long j4) {
        checkIndex0(i2, 8);
        unwrap().setLong(idx(i2), j4);
        return this;
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public ByteBuf setLongLE(int i2, long j4) {
        checkIndex0(i2, 8);
        unwrap().setLongLE(idx(i2), j4);
        return this;
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public ByteBuf setMedium(int i2, int i4) {
        checkIndex0(i2, 3);
        unwrap().setMedium(idx(i2), i4);
        return this;
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public ByteBuf setMediumLE(int i2, int i4) {
        checkIndex0(i2, 3);
        unwrap().setMediumLE(idx(i2), i4);
        return this;
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public ByteBuf setShort(int i2, int i4) {
        checkIndex0(i2, 2);
        unwrap().setShort(idx(i2), i4);
        return this;
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public ByteBuf setShortLE(int i2, int i4) {
        checkIndex0(i2, 2);
        unwrap().setShortLE(idx(i2), i4);
        return this;
    }

    @Override // io.netty.buffer.AbstractPooledDerivedByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public ByteBuf slice(int i2, int i4) {
        checkIndex0(i2, i4);
        return super.slice(idx(i2), i4);
    }

    private PooledSlicedByteBuf(ObjectPool.Handle<PooledSlicedByteBuf> handle) {
        super(handle);
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf capacity(int i2) {
        throw new UnsupportedOperationException("sliced buffer");
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf getBytes(int i2, byte[] bArr, int i4, int i5) {
        checkIndex0(i2, i5);
        unwrap().getBytes(idx(i2), bArr, i4, i5);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf setBytes(int i2, ByteBuf byteBuf, int i4, int i5) {
        checkIndex0(i2, i5);
        unwrap().setBytes(idx(i2), byteBuf, i4, i5);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf getBytes(int i2, ByteBuffer byteBuffer) {
        checkIndex0(i2, byteBuffer.remaining());
        unwrap().getBytes(idx(i2), byteBuffer);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf setBytes(int i2, ByteBuffer byteBuffer) {
        checkIndex0(i2, byteBuffer.remaining());
        unwrap().setBytes(idx(i2), byteBuffer);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf getBytes(int i2, OutputStream outputStream, int i4) throws IOException {
        checkIndex0(i2, i4);
        unwrap().getBytes(idx(i2), outputStream, i4);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public int setBytes(int i2, InputStream inputStream, int i4) throws IOException {
        checkIndex0(i2, i4);
        return unwrap().setBytes(idx(i2), inputStream, i4);
    }

    @Override // io.netty.buffer.ByteBuf
    public int getBytes(int i2, GatheringByteChannel gatheringByteChannel, int i4) throws IOException {
        checkIndex0(i2, i4);
        return unwrap().getBytes(idx(i2), gatheringByteChannel, i4);
    }

    @Override // io.netty.buffer.ByteBuf
    public int setBytes(int i2, ScatteringByteChannel scatteringByteChannel, int i4) throws IOException {
        checkIndex0(i2, i4);
        return unwrap().setBytes(idx(i2), scatteringByteChannel, i4);
    }

    @Override // io.netty.buffer.ByteBuf
    public int getBytes(int i2, FileChannel fileChannel, long j4, int i4) throws IOException {
        checkIndex0(i2, i4);
        return unwrap().getBytes(idx(i2), fileChannel, j4, i4);
    }

    @Override // io.netty.buffer.ByteBuf
    public int setBytes(int i2, FileChannel fileChannel, long j4, int i4) throws IOException {
        checkIndex0(i2, i4);
        return unwrap().setBytes(idx(i2), fileChannel, j4, i4);
    }
}
