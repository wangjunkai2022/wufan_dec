package io.netty.buffer;

import io.netty.util.ByteProcessor;
import io.netty.util.internal.MathUtil;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.FileChannel;
import java.nio.channels.GatheringByteChannel;
import java.nio.channels.ScatteringByteChannel;
import java.nio.charset.Charset;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public abstract class AbstractUnpooledSlicedByteBuf extends AbstractDerivedByteBuf {
    private final int adjustment;
    private final ByteBuf buffer;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractUnpooledSlicedByteBuf(ByteBuf byteBuf, int i2, int i4) {
        super(i4);
        checkSliceOutOfBounds(i2, i4, byteBuf);
        if (byteBuf instanceof AbstractUnpooledSlicedByteBuf) {
            AbstractUnpooledSlicedByteBuf abstractUnpooledSlicedByteBuf = (AbstractUnpooledSlicedByteBuf) byteBuf;
            this.buffer = abstractUnpooledSlicedByteBuf.buffer;
            this.adjustment = abstractUnpooledSlicedByteBuf.adjustment + i2;
        } else if (byteBuf instanceof DuplicatedByteBuf) {
            this.buffer = byteBuf.unwrap();
            this.adjustment = i2;
        } else {
            this.buffer = byteBuf;
            this.adjustment = i2;
        }
        initLength(i4);
        writerIndex(i4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void checkSliceOutOfBounds(int i2, int i4, ByteBuf byteBuf) {
        if (MathUtil.isOutOfBounds(i2, i4, byteBuf.capacity())) {
            throw new IndexOutOfBoundsException(byteBuf + ".slice(" + i2 + ", " + i4 + ')');
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public byte _getByte(int i2) {
        return unwrap().getByte(idx(i2));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public int _getInt(int i2) {
        return unwrap().getInt(idx(i2));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public int _getIntLE(int i2) {
        return unwrap().getIntLE(idx(i2));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public long _getLong(int i2) {
        return unwrap().getLong(idx(i2));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public long _getLongLE(int i2) {
        return unwrap().getLongLE(idx(i2));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public short _getShort(int i2) {
        return unwrap().getShort(idx(i2));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public short _getShortLE(int i2) {
        return unwrap().getShortLE(idx(i2));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public int _getUnsignedMedium(int i2) {
        return unwrap().getUnsignedMedium(idx(i2));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public int _getUnsignedMediumLE(int i2) {
        return unwrap().getUnsignedMediumLE(idx(i2));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public void _setByte(int i2, int i4) {
        unwrap().setByte(idx(i2), i4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public void _setInt(int i2, int i4) {
        unwrap().setInt(idx(i2), i4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public void _setIntLE(int i2, int i4) {
        unwrap().setIntLE(idx(i2), i4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public void _setLong(int i2, long j4) {
        unwrap().setLong(idx(i2), j4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public void _setLongLE(int i2, long j4) {
        unwrap().setLongLE(idx(i2), j4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public void _setMedium(int i2, int i4) {
        unwrap().setMedium(idx(i2), i4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public void _setMediumLE(int i2, int i4) {
        unwrap().setMediumLE(idx(i2), i4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public void _setShort(int i2, int i4) {
        unwrap().setShort(idx(i2), i4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public void _setShortLE(int i2, int i4) {
        unwrap().setShortLE(idx(i2), i4);
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBufAllocator alloc() {
        return unwrap().alloc();
    }

    @Override // io.netty.buffer.ByteBuf
    public byte[] array() {
        return unwrap().array();
    }

    @Override // io.netty.buffer.ByteBuf
    public int arrayOffset() {
        return idx(unwrap().arrayOffset());
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf capacity(int i2) {
        throw new UnsupportedOperationException("sliced buffer");
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf copy(int i2, int i4) {
        checkIndex0(i2, i4);
        return unwrap().copy(idx(i2), i4);
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public ByteBuf duplicate() {
        return unwrap().duplicate().setIndex(idx(readerIndex()), idx(writerIndex()));
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public int forEachByte(int i2, int i4, ByteProcessor byteProcessor) {
        checkIndex0(i2, i4);
        int forEachByte = unwrap().forEachByte(idx(i2), i4, byteProcessor);
        int i5 = this.adjustment;
        if (forEachByte >= i5) {
            return forEachByte - i5;
        }
        return -1;
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public int forEachByteDesc(int i2, int i4, ByteProcessor byteProcessor) {
        checkIndex0(i2, i4);
        int forEachByteDesc = unwrap().forEachByteDesc(idx(i2), i4, byteProcessor);
        int i5 = this.adjustment;
        if (forEachByteDesc >= i5) {
            return forEachByteDesc - i5;
        }
        return -1;
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
    public CharSequence getCharSequence(int i2, int i4, Charset charset) {
        checkIndex0(i2, i4);
        return unwrap().getCharSequence(idx(i2), i4, charset);
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
    public boolean hasArray() {
        return unwrap().hasArray();
    }

    @Override // io.netty.buffer.ByteBuf
    public boolean hasMemoryAddress() {
        return unwrap().hasMemoryAddress();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int idx(int i2) {
        return i2 + this.adjustment;
    }

    void initLength(int i2) {
    }

    @Override // io.netty.buffer.ByteBuf
    public boolean isDirect() {
        return unwrap().isDirect();
    }

    int length() {
        return capacity();
    }

    @Override // io.netty.buffer.ByteBuf
    public long memoryAddress() {
        return unwrap().memoryAddress() + this.adjustment;
    }

    @Override // io.netty.buffer.AbstractDerivedByteBuf, io.netty.buffer.ByteBuf
    public ByteBuffer nioBuffer(int i2, int i4) {
        checkIndex0(i2, i4);
        return unwrap().nioBuffer(idx(i2), i4);
    }

    @Override // io.netty.buffer.ByteBuf
    public int nioBufferCount() {
        return unwrap().nioBufferCount();
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuffer[] nioBuffers(int i2, int i4) {
        checkIndex0(i2, i4);
        return unwrap().nioBuffers(idx(i2), i4);
    }

    @Override // io.netty.buffer.ByteBuf
    @Deprecated
    public ByteOrder order() {
        return unwrap().order();
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

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public ByteBuf slice(int i2, int i4) {
        checkIndex0(i2, i4);
        return unwrap().slice(idx(i2), i4);
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf unwrap() {
        return this.buffer;
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
