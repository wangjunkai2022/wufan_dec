package io.netty.buffer;

import io.netty.util.internal.PlatformDependent;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
/* loaded from: classes5.dex */
public class UnpooledUnsafeDirectByteBuf extends UnpooledDirectByteBuf {
    long memoryAddress;

    public UnpooledUnsafeDirectByteBuf(ByteBufAllocator byteBufAllocator, int i2, int i4) {
        super(byteBufAllocator, i2, i4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.UnpooledDirectByteBuf, io.netty.buffer.AbstractByteBuf
    public byte _getByte(int i2) {
        return UnsafeByteBufUtil.getByte(addr(i2));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.UnpooledDirectByteBuf, io.netty.buffer.AbstractByteBuf
    public int _getInt(int i2) {
        return UnsafeByteBufUtil.getInt(addr(i2));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.UnpooledDirectByteBuf, io.netty.buffer.AbstractByteBuf
    public int _getIntLE(int i2) {
        return UnsafeByteBufUtil.getIntLE(addr(i2));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.UnpooledDirectByteBuf, io.netty.buffer.AbstractByteBuf
    public long _getLong(int i2) {
        return UnsafeByteBufUtil.getLong(addr(i2));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.UnpooledDirectByteBuf, io.netty.buffer.AbstractByteBuf
    public long _getLongLE(int i2) {
        return UnsafeByteBufUtil.getLongLE(addr(i2));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.UnpooledDirectByteBuf, io.netty.buffer.AbstractByteBuf
    public short _getShort(int i2) {
        return UnsafeByteBufUtil.getShort(addr(i2));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.UnpooledDirectByteBuf, io.netty.buffer.AbstractByteBuf
    public short _getShortLE(int i2) {
        return UnsafeByteBufUtil.getShortLE(addr(i2));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.UnpooledDirectByteBuf, io.netty.buffer.AbstractByteBuf
    public int _getUnsignedMedium(int i2) {
        return UnsafeByteBufUtil.getUnsignedMedium(addr(i2));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.UnpooledDirectByteBuf, io.netty.buffer.AbstractByteBuf
    public int _getUnsignedMediumLE(int i2) {
        return UnsafeByteBufUtil.getUnsignedMediumLE(addr(i2));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.UnpooledDirectByteBuf, io.netty.buffer.AbstractByteBuf
    public void _setByte(int i2, int i4) {
        UnsafeByteBufUtil.setByte(addr(i2), i4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.UnpooledDirectByteBuf, io.netty.buffer.AbstractByteBuf
    public void _setInt(int i2, int i4) {
        UnsafeByteBufUtil.setInt(addr(i2), i4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.UnpooledDirectByteBuf, io.netty.buffer.AbstractByteBuf
    public void _setIntLE(int i2, int i4) {
        UnsafeByteBufUtil.setIntLE(addr(i2), i4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.UnpooledDirectByteBuf, io.netty.buffer.AbstractByteBuf
    public void _setLong(int i2, long j4) {
        UnsafeByteBufUtil.setLong(addr(i2), j4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.UnpooledDirectByteBuf, io.netty.buffer.AbstractByteBuf
    public void _setLongLE(int i2, long j4) {
        UnsafeByteBufUtil.setLongLE(addr(i2), j4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.UnpooledDirectByteBuf, io.netty.buffer.AbstractByteBuf
    public void _setMedium(int i2, int i4) {
        UnsafeByteBufUtil.setMedium(addr(i2), i4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.UnpooledDirectByteBuf, io.netty.buffer.AbstractByteBuf
    public void _setMediumLE(int i2, int i4) {
        UnsafeByteBufUtil.setMediumLE(addr(i2), i4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.UnpooledDirectByteBuf, io.netty.buffer.AbstractByteBuf
    public void _setShort(int i2, int i4) {
        UnsafeByteBufUtil.setShort(addr(i2), i4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.UnpooledDirectByteBuf, io.netty.buffer.AbstractByteBuf
    public void _setShortLE(int i2, int i4) {
        UnsafeByteBufUtil.setShortLE(addr(i2), i4);
    }

    final long addr(int i2) {
        return this.memoryAddress + i2;
    }

    @Override // io.netty.buffer.UnpooledDirectByteBuf, io.netty.buffer.ByteBuf
    public ByteBuf copy(int i2, int i4) {
        return UnsafeByteBufUtil.copy(this, addr(i2), i2, i4);
    }

    @Override // io.netty.buffer.UnpooledDirectByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public byte getByte(int i2) {
        checkIndex(i2);
        return _getByte(i2);
    }

    @Override // io.netty.buffer.UnpooledDirectByteBuf, io.netty.buffer.ByteBuf
    public ByteBuf getBytes(int i2, ByteBuf byteBuf, int i4, int i5) {
        UnsafeByteBufUtil.getBytes(this, addr(i2), i2, byteBuf, i4, i5);
        return this;
    }

    @Override // io.netty.buffer.UnpooledDirectByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public int getInt(int i2) {
        checkIndex(i2, 4);
        return _getInt(i2);
    }

    @Override // io.netty.buffer.UnpooledDirectByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public long getLong(int i2) {
        checkIndex(i2, 8);
        return _getLong(i2);
    }

    @Override // io.netty.buffer.UnpooledDirectByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public short getShort(int i2) {
        checkIndex(i2, 2);
        return _getShort(i2);
    }

    @Override // io.netty.buffer.UnpooledDirectByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public int getUnsignedMedium(int i2) {
        checkIndex(i2, 3);
        return _getUnsignedMedium(i2);
    }

    @Override // io.netty.buffer.UnpooledDirectByteBuf, io.netty.buffer.ByteBuf
    public boolean hasMemoryAddress() {
        return true;
    }

    @Override // io.netty.buffer.UnpooledDirectByteBuf, io.netty.buffer.ByteBuf
    public long memoryAddress() {
        ensureAccessible();
        return this.memoryAddress;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public SwappedByteBuf newSwappedByteBuf() {
        if (PlatformDependent.isUnaligned()) {
            return new UnsafeDirectSwappedByteBuf(this);
        }
        return super.newSwappedByteBuf();
    }

    @Override // io.netty.buffer.UnpooledDirectByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public ByteBuf setByte(int i2, int i4) {
        checkIndex(i2);
        _setByte(i2, i4);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // io.netty.buffer.UnpooledDirectByteBuf
    public final void setByteBuffer(ByteBuffer byteBuffer, boolean z3) {
        super.setByteBuffer(byteBuffer, z3);
        this.memoryAddress = PlatformDependent.directBufferAddress(byteBuffer);
    }

    @Override // io.netty.buffer.UnpooledDirectByteBuf, io.netty.buffer.ByteBuf
    public ByteBuf setBytes(int i2, ByteBuf byteBuf, int i4, int i5) {
        UnsafeByteBufUtil.setBytes(this, addr(i2), i2, byteBuf, i4, i5);
        return this;
    }

    @Override // io.netty.buffer.UnpooledDirectByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public ByteBuf setInt(int i2, int i4) {
        checkIndex(i2, 4);
        _setInt(i2, i4);
        return this;
    }

    @Override // io.netty.buffer.UnpooledDirectByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public ByteBuf setLong(int i2, long j4) {
        checkIndex(i2, 8);
        _setLong(i2, j4);
        return this;
    }

    @Override // io.netty.buffer.UnpooledDirectByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public ByteBuf setMedium(int i2, int i4) {
        checkIndex(i2, 3);
        _setMedium(i2, i4);
        return this;
    }

    @Override // io.netty.buffer.UnpooledDirectByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public ByteBuf setShort(int i2, int i4) {
        checkIndex(i2, 2);
        _setShort(i2, i4);
        return this;
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public ByteBuf setZero(int i2, int i4) {
        checkIndex(i2, i4);
        UnsafeByteBufUtil.setZero(addr(i2), i4);
        return this;
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public ByteBuf writeZero(int i2) {
        ensureWritable(i2);
        int i4 = this.writerIndex;
        UnsafeByteBufUtil.setZero(addr(i4), i2);
        this.writerIndex = i4 + i2;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public UnpooledUnsafeDirectByteBuf(ByteBufAllocator byteBufAllocator, ByteBuffer byteBuffer, int i2) {
        super(byteBufAllocator, byteBuffer, i2, false, true);
    }

    @Override // io.netty.buffer.UnpooledDirectByteBuf
    void getBytes(int i2, byte[] bArr, int i4, int i5, boolean z3) {
        UnsafeByteBufUtil.getBytes(this, addr(i2), i2, bArr, i4, i5);
    }

    @Override // io.netty.buffer.UnpooledDirectByteBuf, io.netty.buffer.ByteBuf
    public ByteBuf setBytes(int i2, byte[] bArr, int i4, int i5) {
        UnsafeByteBufUtil.setBytes(this, addr(i2), i2, bArr, i4, i5);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public UnpooledUnsafeDirectByteBuf(ByteBufAllocator byteBufAllocator, ByteBuffer byteBuffer, int i2, boolean z3) {
        super(byteBufAllocator, byteBuffer, i2, z3, false);
    }

    @Override // io.netty.buffer.UnpooledDirectByteBuf
    void getBytes(int i2, ByteBuffer byteBuffer, boolean z3) {
        UnsafeByteBufUtil.getBytes(this, addr(i2), i2, byteBuffer);
    }

    @Override // io.netty.buffer.UnpooledDirectByteBuf, io.netty.buffer.ByteBuf
    public ByteBuf setBytes(int i2, ByteBuffer byteBuffer) {
        UnsafeByteBufUtil.setBytes(this, addr(i2), i2, byteBuffer);
        return this;
    }

    @Override // io.netty.buffer.UnpooledDirectByteBuf
    void getBytes(int i2, OutputStream outputStream, int i4, boolean z3) throws IOException {
        UnsafeByteBufUtil.getBytes(this, addr(i2), i2, outputStream, i4);
    }

    @Override // io.netty.buffer.UnpooledDirectByteBuf, io.netty.buffer.ByteBuf
    public int setBytes(int i2, InputStream inputStream, int i4) throws IOException {
        return UnsafeByteBufUtil.setBytes(this, addr(i2), i2, inputStream, i4);
    }
}
