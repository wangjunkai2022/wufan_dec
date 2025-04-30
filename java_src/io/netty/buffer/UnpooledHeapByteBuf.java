package io.netty.buffer;

import io.netty.util.internal.EmptyArrays;
import io.netty.util.internal.ObjectUtil;
import io.netty.util.internal.PlatformDependent;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.ClosedChannelException;
import java.nio.channels.FileChannel;
import java.nio.channels.GatheringByteChannel;
import java.nio.channels.ScatteringByteChannel;
/* loaded from: classes5.dex */
public class UnpooledHeapByteBuf extends AbstractReferenceCountedByteBuf {
    private final ByteBufAllocator alloc;
    byte[] array;
    private ByteBuffer tmpNioBuf;

    public UnpooledHeapByteBuf(ByteBufAllocator byteBufAllocator, int i2, int i4) {
        super(i4);
        if (i2 <= i4) {
            this.alloc = (ByteBufAllocator) ObjectUtil.checkNotNull(byteBufAllocator, "alloc");
            setArray(allocateArray(i2));
            setIndex(0, 0);
            return;
        }
        throw new IllegalArgumentException(String.format("initialCapacity(%d) > maxCapacity(%d)", Integer.valueOf(i2), Integer.valueOf(i4)));
    }

    private void setArray(byte[] bArr) {
        this.array = bArr;
        this.tmpNioBuf = null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public byte _getByte(int i2) {
        return HeapByteBufUtil.getByte(this.array, i2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public int _getInt(int i2) {
        return HeapByteBufUtil.getInt(this.array, i2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public int _getIntLE(int i2) {
        return HeapByteBufUtil.getIntLE(this.array, i2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public long _getLong(int i2) {
        return HeapByteBufUtil.getLong(this.array, i2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public long _getLongLE(int i2) {
        return HeapByteBufUtil.getLongLE(this.array, i2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public short _getShort(int i2) {
        return HeapByteBufUtil.getShort(this.array, i2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public short _getShortLE(int i2) {
        return HeapByteBufUtil.getShortLE(this.array, i2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public int _getUnsignedMedium(int i2) {
        return HeapByteBufUtil.getUnsignedMedium(this.array, i2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public int _getUnsignedMediumLE(int i2) {
        return HeapByteBufUtil.getUnsignedMediumLE(this.array, i2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public void _setByte(int i2, int i4) {
        HeapByteBufUtil.setByte(this.array, i2, i4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public void _setInt(int i2, int i4) {
        HeapByteBufUtil.setInt(this.array, i2, i4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public void _setIntLE(int i2, int i4) {
        HeapByteBufUtil.setIntLE(this.array, i2, i4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public void _setLong(int i2, long j4) {
        HeapByteBufUtil.setLong(this.array, i2, j4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public void _setLongLE(int i2, long j4) {
        HeapByteBufUtil.setLongLE(this.array, i2, j4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public void _setMedium(int i2, int i4) {
        HeapByteBufUtil.setMedium(this.array, i2, i4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public void _setMediumLE(int i2, int i4) {
        HeapByteBufUtil.setMediumLE(this.array, i2, i4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public void _setShort(int i2, int i4) {
        HeapByteBufUtil.setShort(this.array, i2, i4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public void _setShortLE(int i2, int i4) {
        HeapByteBufUtil.setShortLE(this.array, i2, i4);
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBufAllocator alloc() {
        return this.alloc;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public byte[] allocateArray(int i2) {
        return new byte[i2];
    }

    @Override // io.netty.buffer.ByteBuf
    public byte[] array() {
        ensureAccessible();
        return this.array;
    }

    @Override // io.netty.buffer.ByteBuf
    public int arrayOffset() {
        return 0;
    }

    @Override // io.netty.buffer.ByteBuf
    public int capacity() {
        return this.array.length;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf copy(int i2, int i4) {
        checkIndex(i2, i4);
        return alloc().heapBuffer(i4, maxCapacity()).writeBytes(this.array, i2, i4);
    }

    @Override // io.netty.buffer.AbstractReferenceCountedByteBuf
    protected void deallocate() {
        freeArray(this.array);
        this.array = EmptyArrays.EMPTY_BYTES;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void freeArray(byte[] bArr) {
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public byte getByte(int i2) {
        ensureAccessible();
        return _getByte(i2);
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf getBytes(int i2, ByteBuf byteBuf, int i4, int i5) {
        checkDstIndex(i2, i5, i4, byteBuf.capacity());
        if (byteBuf.hasMemoryAddress()) {
            PlatformDependent.copyMemory(this.array, i2, i4 + byteBuf.memoryAddress(), i5);
        } else if (byteBuf.hasArray()) {
            getBytes(i2, byteBuf.array(), byteBuf.arrayOffset() + i4, i5);
        } else {
            byteBuf.setBytes(i4, this.array, i2, i5);
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
        return true;
    }

    @Override // io.netty.buffer.ByteBuf
    public boolean hasMemoryAddress() {
        return false;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuffer internalNioBuffer(int i2, int i4) {
        checkIndex(i2, i4);
        return (ByteBuffer) internalNioBuffer().clear().position(i2).limit(i2 + i4);
    }

    @Override // io.netty.buffer.ByteBuf
    public final boolean isContiguous() {
        return true;
    }

    @Override // io.netty.buffer.ByteBuf
    public boolean isDirect() {
        return false;
    }

    @Override // io.netty.buffer.ByteBuf
    public long memoryAddress() {
        throw new UnsupportedOperationException();
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuffer nioBuffer(int i2, int i4) {
        ensureAccessible();
        return ByteBuffer.wrap(this.array, i2, i4).slice();
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
    public int readBytes(GatheringByteChannel gatheringByteChannel, int i2) throws IOException {
        checkReadableBytes(i2);
        int bytes = getBytes(this.readerIndex, gatheringByteChannel, i2, true);
        this.readerIndex += bytes;
        return bytes;
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public ByteBuf setByte(int i2, int i4) {
        ensureAccessible();
        _setByte(i2, i4);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf setBytes(int i2, ByteBuf byteBuf, int i4, int i5) {
        checkSrcIndex(i2, i5, i4, byteBuf.capacity());
        if (byteBuf.hasMemoryAddress()) {
            PlatformDependent.copyMemory(byteBuf.memoryAddress() + i4, this.array, i2, i5);
        } else if (byteBuf.hasArray()) {
            setBytes(i2, byteBuf.array(), byteBuf.arrayOffset() + i4, i5);
        } else {
            byteBuf.getBytes(i4, this.array, i2, i5);
        }
        return this;
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public ByteBuf setInt(int i2, int i4) {
        ensureAccessible();
        _setInt(i2, i4);
        return this;
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public ByteBuf setIntLE(int i2, int i4) {
        ensureAccessible();
        _setIntLE(i2, i4);
        return this;
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public ByteBuf setLong(int i2, long j4) {
        ensureAccessible();
        _setLong(i2, j4);
        return this;
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public ByteBuf setLongLE(int i2, long j4) {
        ensureAccessible();
        _setLongLE(i2, j4);
        return this;
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public ByteBuf setMedium(int i2, int i4) {
        ensureAccessible();
        _setMedium(i2, i4);
        return this;
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public ByteBuf setMediumLE(int i2, int i4) {
        ensureAccessible();
        _setMediumLE(i2, i4);
        return this;
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public ByteBuf setShort(int i2, int i4) {
        ensureAccessible();
        _setShort(i2, i4);
        return this;
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public ByteBuf setShortLE(int i2, int i4) {
        ensureAccessible();
        _setShortLE(i2, i4);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf unwrap() {
        return null;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf capacity(int i2) {
        checkNewCapacity(i2);
        byte[] bArr = this.array;
        int length = bArr.length;
        if (i2 == length) {
            return this;
        }
        if (i2 <= length) {
            trimIndicesToCapacity(i2);
            length = i2;
        }
        byte[] allocateArray = allocateArray(i2);
        System.arraycopy(bArr, 0, allocateArray, 0, length);
        setArray(allocateArray);
        freeArray(bArr);
        return this;
    }

    private ByteBuffer internalNioBuffer() {
        ByteBuffer byteBuffer = this.tmpNioBuf;
        if (byteBuffer == null) {
            ByteBuffer wrap = ByteBuffer.wrap(this.array);
            this.tmpNioBuf = wrap;
            return wrap;
        }
        return byteBuffer;
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public int readBytes(FileChannel fileChannel, long j4, int i2) throws IOException {
        checkReadableBytes(i2);
        int bytes = getBytes(this.readerIndex, fileChannel, j4, i2, true);
        this.readerIndex += bytes;
        return bytes;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf getBytes(int i2, byte[] bArr, int i4, int i5) {
        checkDstIndex(i2, i5, i4, bArr.length);
        System.arraycopy(this.array, i2, bArr, i4, i5);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf setBytes(int i2, byte[] bArr, int i4, int i5) {
        checkSrcIndex(i2, i5, i4, bArr.length);
        System.arraycopy(bArr, i4, this.array, i2, i5);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public UnpooledHeapByteBuf(ByteBufAllocator byteBufAllocator, byte[] bArr, int i2) {
        super(i2);
        ObjectUtil.checkNotNull(byteBufAllocator, "alloc");
        ObjectUtil.checkNotNull(bArr, "initialArray");
        if (bArr.length <= i2) {
            this.alloc = byteBufAllocator;
            setArray(bArr);
            setIndex(0, bArr.length);
            return;
        }
        throw new IllegalArgumentException(String.format("initialCapacity(%d) > maxCapacity(%d)", Integer.valueOf(bArr.length), Integer.valueOf(i2)));
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf getBytes(int i2, ByteBuffer byteBuffer) {
        ensureAccessible();
        byteBuffer.put(this.array, i2, byteBuffer.remaining());
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf setBytes(int i2, ByteBuffer byteBuffer) {
        ensureAccessible();
        byteBuffer.get(this.array, i2, byteBuffer.remaining());
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf getBytes(int i2, OutputStream outputStream, int i4) throws IOException {
        ensureAccessible();
        outputStream.write(this.array, i2, i4);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public int setBytes(int i2, InputStream inputStream, int i4) throws IOException {
        ensureAccessible();
        return inputStream.read(this.array, i2, i4);
    }

    @Override // io.netty.buffer.ByteBuf
    public int getBytes(int i2, GatheringByteChannel gatheringByteChannel, int i4) throws IOException {
        ensureAccessible();
        return getBytes(i2, gatheringByteChannel, i4, false);
    }

    @Override // io.netty.buffer.ByteBuf
    public int setBytes(int i2, ScatteringByteChannel scatteringByteChannel, int i4) throws IOException {
        ensureAccessible();
        try {
            return scatteringByteChannel.read((ByteBuffer) internalNioBuffer().clear().position(i2).limit(i2 + i4));
        } catch (ClosedChannelException unused) {
            return -1;
        }
    }

    @Override // io.netty.buffer.ByteBuf
    public int getBytes(int i2, FileChannel fileChannel, long j4, int i4) throws IOException {
        ensureAccessible();
        return getBytes(i2, fileChannel, j4, i4, false);
    }

    @Override // io.netty.buffer.ByteBuf
    public int setBytes(int i2, FileChannel fileChannel, long j4, int i4) throws IOException {
        ensureAccessible();
        try {
            return fileChannel.read((ByteBuffer) internalNioBuffer().clear().position(i2).limit(i2 + i4), j4);
        } catch (ClosedChannelException unused) {
            return -1;
        }
    }

    private int getBytes(int i2, GatheringByteChannel gatheringByteChannel, int i4, boolean z3) throws IOException {
        ByteBuffer wrap;
        ensureAccessible();
        if (z3) {
            wrap = internalNioBuffer();
        } else {
            wrap = ByteBuffer.wrap(this.array);
        }
        return gatheringByteChannel.write((ByteBuffer) wrap.clear().position(i2).limit(i2 + i4));
    }

    private int getBytes(int i2, FileChannel fileChannel, long j4, int i4, boolean z3) throws IOException {
        ensureAccessible();
        return fileChannel.write((ByteBuffer) (z3 ? internalNioBuffer() : ByteBuffer.wrap(this.array)).clear().position(i2).limit(i2 + i4), j4);
    }
}
