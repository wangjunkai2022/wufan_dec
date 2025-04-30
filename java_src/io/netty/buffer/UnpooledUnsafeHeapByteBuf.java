package io.netty.buffer;

import io.netty.util.internal.PlatformDependent;
/* loaded from: classes5.dex */
public class UnpooledUnsafeHeapByteBuf extends UnpooledHeapByteBuf {
    public UnpooledUnsafeHeapByteBuf(ByteBufAllocator byteBufAllocator, int i2, int i4) {
        super(byteBufAllocator, i2, i4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.UnpooledHeapByteBuf, io.netty.buffer.AbstractByteBuf
    public byte _getByte(int i2) {
        return UnsafeByteBufUtil.getByte(this.array, i2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.UnpooledHeapByteBuf, io.netty.buffer.AbstractByteBuf
    public int _getInt(int i2) {
        return UnsafeByteBufUtil.getInt(this.array, i2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.UnpooledHeapByteBuf, io.netty.buffer.AbstractByteBuf
    public int _getIntLE(int i2) {
        return UnsafeByteBufUtil.getIntLE(this.array, i2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.UnpooledHeapByteBuf, io.netty.buffer.AbstractByteBuf
    public long _getLong(int i2) {
        return UnsafeByteBufUtil.getLong(this.array, i2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.UnpooledHeapByteBuf, io.netty.buffer.AbstractByteBuf
    public long _getLongLE(int i2) {
        return UnsafeByteBufUtil.getLongLE(this.array, i2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.UnpooledHeapByteBuf, io.netty.buffer.AbstractByteBuf
    public short _getShort(int i2) {
        return UnsafeByteBufUtil.getShort(this.array, i2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.UnpooledHeapByteBuf, io.netty.buffer.AbstractByteBuf
    public short _getShortLE(int i2) {
        return UnsafeByteBufUtil.getShortLE(this.array, i2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.UnpooledHeapByteBuf, io.netty.buffer.AbstractByteBuf
    public int _getUnsignedMedium(int i2) {
        return UnsafeByteBufUtil.getUnsignedMedium(this.array, i2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.UnpooledHeapByteBuf, io.netty.buffer.AbstractByteBuf
    public int _getUnsignedMediumLE(int i2) {
        return UnsafeByteBufUtil.getUnsignedMediumLE(this.array, i2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.UnpooledHeapByteBuf, io.netty.buffer.AbstractByteBuf
    public void _setByte(int i2, int i4) {
        UnsafeByteBufUtil.setByte(this.array, i2, i4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.UnpooledHeapByteBuf, io.netty.buffer.AbstractByteBuf
    public void _setInt(int i2, int i4) {
        UnsafeByteBufUtil.setInt(this.array, i2, i4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.UnpooledHeapByteBuf, io.netty.buffer.AbstractByteBuf
    public void _setIntLE(int i2, int i4) {
        UnsafeByteBufUtil.setIntLE(this.array, i2, i4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.UnpooledHeapByteBuf, io.netty.buffer.AbstractByteBuf
    public void _setLong(int i2, long j4) {
        UnsafeByteBufUtil.setLong(this.array, i2, j4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.UnpooledHeapByteBuf, io.netty.buffer.AbstractByteBuf
    public void _setLongLE(int i2, long j4) {
        UnsafeByteBufUtil.setLongLE(this.array, i2, j4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.UnpooledHeapByteBuf, io.netty.buffer.AbstractByteBuf
    public void _setMedium(int i2, int i4) {
        UnsafeByteBufUtil.setMedium(this.array, i2, i4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.UnpooledHeapByteBuf, io.netty.buffer.AbstractByteBuf
    public void _setMediumLE(int i2, int i4) {
        UnsafeByteBufUtil.setMediumLE(this.array, i2, i4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.UnpooledHeapByteBuf, io.netty.buffer.AbstractByteBuf
    public void _setShort(int i2, int i4) {
        UnsafeByteBufUtil.setShort(this.array, i2, i4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.UnpooledHeapByteBuf, io.netty.buffer.AbstractByteBuf
    public void _setShortLE(int i2, int i4) {
        UnsafeByteBufUtil.setShortLE(this.array, i2, i4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.UnpooledHeapByteBuf
    public byte[] allocateArray(int i2) {
        return PlatformDependent.allocateUninitializedArray(i2);
    }

    @Override // io.netty.buffer.UnpooledHeapByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public byte getByte(int i2) {
        checkIndex(i2);
        return _getByte(i2);
    }

    @Override // io.netty.buffer.UnpooledHeapByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public int getInt(int i2) {
        checkIndex(i2, 4);
        return _getInt(i2);
    }

    @Override // io.netty.buffer.UnpooledHeapByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public int getIntLE(int i2) {
        checkIndex(i2, 4);
        return _getIntLE(i2);
    }

    @Override // io.netty.buffer.UnpooledHeapByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public long getLong(int i2) {
        checkIndex(i2, 8);
        return _getLong(i2);
    }

    @Override // io.netty.buffer.UnpooledHeapByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public long getLongLE(int i2) {
        checkIndex(i2, 8);
        return _getLongLE(i2);
    }

    @Override // io.netty.buffer.UnpooledHeapByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public short getShort(int i2) {
        checkIndex(i2, 2);
        return _getShort(i2);
    }

    @Override // io.netty.buffer.UnpooledHeapByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public short getShortLE(int i2) {
        checkIndex(i2, 2);
        return _getShortLE(i2);
    }

    @Override // io.netty.buffer.UnpooledHeapByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public int getUnsignedMedium(int i2) {
        checkIndex(i2, 3);
        return _getUnsignedMedium(i2);
    }

    @Override // io.netty.buffer.UnpooledHeapByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public int getUnsignedMediumLE(int i2) {
        checkIndex(i2, 3);
        return _getUnsignedMediumLE(i2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    @Deprecated
    public SwappedByteBuf newSwappedByteBuf() {
        if (PlatformDependent.isUnaligned()) {
            return new UnsafeHeapSwappedByteBuf(this);
        }
        return super.newSwappedByteBuf();
    }

    @Override // io.netty.buffer.UnpooledHeapByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public ByteBuf setByte(int i2, int i4) {
        checkIndex(i2);
        _setByte(i2, i4);
        return this;
    }

    @Override // io.netty.buffer.UnpooledHeapByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public ByteBuf setInt(int i2, int i4) {
        checkIndex(i2, 4);
        _setInt(i2, i4);
        return this;
    }

    @Override // io.netty.buffer.UnpooledHeapByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public ByteBuf setIntLE(int i2, int i4) {
        checkIndex(i2, 4);
        _setIntLE(i2, i4);
        return this;
    }

    @Override // io.netty.buffer.UnpooledHeapByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public ByteBuf setLong(int i2, long j4) {
        checkIndex(i2, 8);
        _setLong(i2, j4);
        return this;
    }

    @Override // io.netty.buffer.UnpooledHeapByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public ByteBuf setLongLE(int i2, long j4) {
        checkIndex(i2, 8);
        _setLongLE(i2, j4);
        return this;
    }

    @Override // io.netty.buffer.UnpooledHeapByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public ByteBuf setMedium(int i2, int i4) {
        checkIndex(i2, 3);
        _setMedium(i2, i4);
        return this;
    }

    @Override // io.netty.buffer.UnpooledHeapByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public ByteBuf setMediumLE(int i2, int i4) {
        checkIndex(i2, 3);
        _setMediumLE(i2, i4);
        return this;
    }

    @Override // io.netty.buffer.UnpooledHeapByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public ByteBuf setShort(int i2, int i4) {
        checkIndex(i2, 2);
        _setShort(i2, i4);
        return this;
    }

    @Override // io.netty.buffer.UnpooledHeapByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public ByteBuf setShortLE(int i2, int i4) {
        checkIndex(i2, 2);
        _setShortLE(i2, i4);
        return this;
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public ByteBuf setZero(int i2, int i4) {
        if (PlatformDependent.javaVersion() >= 7) {
            checkIndex(i2, i4);
            UnsafeByteBufUtil.setZero(this.array, i2, i4);
            return this;
        }
        return super.setZero(i2, i4);
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public ByteBuf writeZero(int i2) {
        if (PlatformDependent.javaVersion() >= 7) {
            ensureWritable(i2);
            int i4 = this.writerIndex;
            UnsafeByteBufUtil.setZero(this.array, i4, i2);
            this.writerIndex = i4 + i2;
            return this;
        }
        return super.writeZero(i2);
    }
}
