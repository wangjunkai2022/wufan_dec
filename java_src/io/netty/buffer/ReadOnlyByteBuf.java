package io.netty.buffer;

import io.netty.util.ByteProcessor;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.ReadOnlyBufferException;
import java.nio.channels.FileChannel;
import java.nio.channels.GatheringByteChannel;
import java.nio.channels.ScatteringByteChannel;
@Deprecated
/* loaded from: classes5.dex */
public class ReadOnlyByteBuf extends AbstractDerivedByteBuf {
    private final ByteBuf buffer;

    public ReadOnlyByteBuf(ByteBuf byteBuf) {
        super(byteBuf.maxCapacity());
        if (!(byteBuf instanceof ReadOnlyByteBuf) && !(byteBuf instanceof DuplicatedByteBuf)) {
            this.buffer = byteBuf;
        } else {
            this.buffer = byteBuf.unwrap();
        }
        setIndex(byteBuf.readerIndex(), byteBuf.writerIndex());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public byte _getByte(int i2) {
        return unwrap().getByte(i2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public int _getInt(int i2) {
        return unwrap().getInt(i2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public int _getIntLE(int i2) {
        return unwrap().getIntLE(i2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public long _getLong(int i2) {
        return unwrap().getLong(i2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public long _getLongLE(int i2) {
        return unwrap().getLongLE(i2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public short _getShort(int i2) {
        return unwrap().getShort(i2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public short _getShortLE(int i2) {
        return unwrap().getShortLE(i2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public int _getUnsignedMedium(int i2) {
        return unwrap().getUnsignedMedium(i2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public int _getUnsignedMediumLE(int i2) {
        return unwrap().getUnsignedMediumLE(i2);
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
        return unwrap().alloc();
    }

    @Override // io.netty.buffer.ByteBuf
    public byte[] array() {
        throw new ReadOnlyBufferException();
    }

    @Override // io.netty.buffer.ByteBuf
    public int arrayOffset() {
        throw new ReadOnlyBufferException();
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public ByteBuf asReadOnly() {
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public int capacity() {
        return unwrap().capacity();
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf copy(int i2, int i4) {
        return unwrap().copy(i2, i4);
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public ByteBuf discardReadBytes() {
        throw new ReadOnlyBufferException();
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public ByteBuf duplicate() {
        return new ReadOnlyByteBuf(this);
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
    public int forEachByte(int i2, int i4, ByteProcessor byteProcessor) {
        return unwrap().forEachByte(i2, i4, byteProcessor);
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public int forEachByteDesc(int i2, int i4, ByteProcessor byteProcessor) {
        return unwrap().forEachByteDesc(i2, i4, byteProcessor);
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public byte getByte(int i2) {
        return unwrap().getByte(i2);
    }

    @Override // io.netty.buffer.ByteBuf
    public int getBytes(int i2, GatheringByteChannel gatheringByteChannel, int i4) throws IOException {
        return unwrap().getBytes(i2, gatheringByteChannel, i4);
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public int getInt(int i2) {
        return unwrap().getInt(i2);
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public int getIntLE(int i2) {
        return unwrap().getIntLE(i2);
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public long getLong(int i2) {
        return unwrap().getLong(i2);
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public long getLongLE(int i2) {
        return unwrap().getLongLE(i2);
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public short getShort(int i2) {
        return unwrap().getShort(i2);
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public short getShortLE(int i2) {
        return unwrap().getShortLE(i2);
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public int getUnsignedMedium(int i2) {
        return unwrap().getUnsignedMedium(i2);
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public int getUnsignedMediumLE(int i2) {
        return unwrap().getUnsignedMediumLE(i2);
    }

    @Override // io.netty.buffer.ByteBuf
    public boolean hasArray() {
        return false;
    }

    @Override // io.netty.buffer.ByteBuf
    public boolean hasMemoryAddress() {
        return unwrap().hasMemoryAddress();
    }

    @Override // io.netty.buffer.ByteBuf
    public boolean isDirect() {
        return unwrap().isDirect();
    }

    @Override // io.netty.buffer.AbstractDerivedByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public boolean isReadOnly() {
        return true;
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
        return unwrap().memoryAddress();
    }

    @Override // io.netty.buffer.AbstractDerivedByteBuf, io.netty.buffer.ByteBuf
    public ByteBuffer nioBuffer(int i2, int i4) {
        return unwrap().nioBuffer(i2, i4).asReadOnlyBuffer();
    }

    @Override // io.netty.buffer.ByteBuf
    public int nioBufferCount() {
        return unwrap().nioBufferCount();
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuffer[] nioBuffers(int i2, int i4) {
        return unwrap().nioBuffers(i2, i4);
    }

    @Override // io.netty.buffer.ByteBuf
    @Deprecated
    public ByteOrder order() {
        return unwrap().order();
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

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public ByteBuf slice(int i2, int i4) {
        return Unpooled.unmodifiableBuffer(unwrap().slice(i2, i4));
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf unwrap() {
        return this.buffer;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf capacity(int i2) {
        throw new ReadOnlyBufferException();
    }

    @Override // io.netty.buffer.ByteBuf
    public int getBytes(int i2, FileChannel fileChannel, long j4, int i4) throws IOException {
        return unwrap().getBytes(i2, fileChannel, j4, i4);
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf setBytes(int i2, byte[] bArr, int i4, int i5) {
        throw new ReadOnlyBufferException();
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf getBytes(int i2, OutputStream outputStream, int i4) throws IOException {
        unwrap().getBytes(i2, outputStream, i4);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf setBytes(int i2, ByteBuffer byteBuffer) {
        throw new ReadOnlyBufferException();
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf getBytes(int i2, byte[] bArr, int i4, int i5) {
        unwrap().getBytes(i2, bArr, i4, i5);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public int setBytes(int i2, InputStream inputStream, int i4) {
        throw new ReadOnlyBufferException();
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf getBytes(int i2, ByteBuf byteBuf, int i4, int i5) {
        unwrap().getBytes(i2, byteBuf, i4, i5);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public int setBytes(int i2, ScatteringByteChannel scatteringByteChannel, int i4) {
        throw new ReadOnlyBufferException();
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf getBytes(int i2, ByteBuffer byteBuffer) {
        unwrap().getBytes(i2, byteBuffer);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public int setBytes(int i2, FileChannel fileChannel, long j4, int i4) {
        throw new ReadOnlyBufferException();
    }
}
