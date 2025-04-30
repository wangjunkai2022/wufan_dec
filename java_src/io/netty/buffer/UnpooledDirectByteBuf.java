package io.netty.buffer;

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
public class UnpooledDirectByteBuf extends AbstractReferenceCountedByteBuf {
    private final ByteBufAllocator alloc;
    ByteBuffer buffer;
    private int capacity;
    private boolean doNotFree;
    private ByteBuffer tmpNioBuf;

    public UnpooledDirectByteBuf(ByteBufAllocator byteBufAllocator, int i2, int i4) {
        super(i4);
        ObjectUtil.checkNotNull(byteBufAllocator, "alloc");
        ObjectUtil.checkPositiveOrZero(i2, "initialCapacity");
        ObjectUtil.checkPositiveOrZero(i4, "maxCapacity");
        if (i2 <= i4) {
            this.alloc = byteBufAllocator;
            setByteBuffer(allocateDirect(i2), false);
            return;
        }
        throw new IllegalArgumentException(String.format("initialCapacity(%d) > maxCapacity(%d)", Integer.valueOf(i2), Integer.valueOf(i4)));
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
        this.buffer.put(i2, (byte) i4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public void _setInt(int i2, int i4) {
        this.buffer.putInt(i2, i4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public void _setIntLE(int i2, int i4) {
        this.buffer.putInt(i2, ByteBufUtil.swapInt(i4));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public void _setLong(int i2, long j4) {
        this.buffer.putLong(i2, j4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public void _setLongLE(int i2, long j4) {
        this.buffer.putLong(i2, ByteBufUtil.swapLong(j4));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public void _setMedium(int i2, int i4) {
        setByte(i2, (byte) (i4 >>> 16));
        setByte(i2 + 1, (byte) (i4 >>> 8));
        setByte(i2 + 2, (byte) i4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public void _setMediumLE(int i2, int i4) {
        setByte(i2, (byte) i4);
        setByte(i2 + 1, (byte) (i4 >>> 8));
        setByte(i2 + 2, (byte) (i4 >>> 16));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public void _setShort(int i2, int i4) {
        this.buffer.putShort(i2, (short) i4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public void _setShortLE(int i2, int i4) {
        this.buffer.putShort(i2, ByteBufUtil.swapShort((short) i4));
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBufAllocator alloc() {
        return this.alloc;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ByteBuffer allocateDirect(int i2) {
        return ByteBuffer.allocateDirect(i2);
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
    public int capacity() {
        return this.capacity;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf copy(int i2, int i4) {
        ensureAccessible();
        try {
            return alloc().directBuffer(i4, maxCapacity()).writeBytes((ByteBuffer) this.buffer.duplicate().clear().position(i2).limit(i2 + i4));
        } catch (IllegalArgumentException unused) {
            throw new IndexOutOfBoundsException("Too many bytes to read - Need " + (i2 + i4));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractReferenceCountedByteBuf
    public void deallocate() {
        ByteBuffer byteBuffer = this.buffer;
        if (byteBuffer == null) {
            return;
        }
        this.buffer = null;
        if (this.doNotFree) {
            return;
        }
        freeDirect(byteBuffer);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void freeDirect(ByteBuffer byteBuffer) {
        PlatformDependent.freeDirectBuffer(byteBuffer);
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
    public long getLong(int i2) {
        ensureAccessible();
        return _getLong(i2);
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public short getShort(int i2) {
        ensureAccessible();
        return _getShort(i2);
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public int getUnsignedMedium(int i2) {
        ensureAccessible();
        return _getUnsignedMedium(i2);
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
        return true;
    }

    @Override // io.netty.buffer.ByteBuf
    public long memoryAddress() {
        throw new UnsupportedOperationException();
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuffer nioBuffer(int i2, int i4) {
        checkIndex(i2, i4);
        return ((ByteBuffer) this.buffer.duplicate().position(i2).limit(i2 + i4)).slice();
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
    public ByteBuf readBytes(byte[] bArr, int i2, int i4) {
        checkReadableBytes(i4);
        getBytes(this.readerIndex, bArr, i2, i4, true);
        this.readerIndex += i4;
        return this;
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public ByteBuf setByte(int i2, int i4) {
        ensureAccessible();
        _setByte(i2, i4);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setByteBuffer(ByteBuffer byteBuffer, boolean z3) {
        ByteBuffer byteBuffer2;
        if (z3 && (byteBuffer2 = this.buffer) != null) {
            if (this.doNotFree) {
                this.doNotFree = false;
            } else {
                freeDirect(byteBuffer2);
            }
        }
        this.buffer = byteBuffer;
        this.tmpNioBuf = null;
        this.capacity = byteBuffer.remaining();
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf setBytes(int i2, ByteBuf byteBuf, int i4, int i5) {
        checkSrcIndex(i2, i5, i4, byteBuf.capacity());
        if (byteBuf.nioBufferCount() > 0) {
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

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public ByteBuf setInt(int i2, int i4) {
        ensureAccessible();
        _setInt(i2, i4);
        return this;
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public ByteBuf setLong(int i2, long j4) {
        ensureAccessible();
        _setLong(i2, j4);
        return this;
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public ByteBuf setMedium(int i2, int i4) {
        ensureAccessible();
        _setMedium(i2, i4);
        return this;
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public ByteBuf setShort(int i2, int i4) {
        ensureAccessible();
        _setShort(i2, i4);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf unwrap() {
        return null;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf capacity(int i2) {
        checkNewCapacity(i2);
        int i4 = this.capacity;
        if (i2 == i4) {
            return this;
        }
        if (i2 <= i4) {
            trimIndicesToCapacity(i2);
            i4 = i2;
        }
        ByteBuffer byteBuffer = this.buffer;
        ByteBuffer allocateDirect = allocateDirect(i2);
        byteBuffer.position(0).limit(i4);
        allocateDirect.position(0).limit(i4);
        allocateDirect.put(byteBuffer).clear();
        setByteBuffer(allocateDirect, true);
        return this;
    }

    private ByteBuffer internalNioBuffer() {
        ByteBuffer byteBuffer = this.tmpNioBuf;
        if (byteBuffer == null) {
            ByteBuffer duplicate = this.buffer.duplicate();
            this.tmpNioBuf = duplicate;
            return duplicate;
        }
        return byteBuffer;
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public ByteBuf readBytes(ByteBuffer byteBuffer) {
        int remaining = byteBuffer.remaining();
        checkReadableBytes(remaining);
        getBytes(this.readerIndex, byteBuffer, true);
        this.readerIndex += remaining;
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf setBytes(int i2, byte[] bArr, int i4, int i5) {
        checkSrcIndex(i2, i5, i4, bArr.length);
        ByteBuffer internalNioBuffer = internalNioBuffer();
        internalNioBuffer.clear().position(i2).limit(i2 + i5);
        internalNioBuffer.put(bArr, i4, i5);
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
        getBytes(i2, bArr, i4, i5, false);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public UnpooledDirectByteBuf(ByteBufAllocator byteBufAllocator, ByteBuffer byteBuffer, int i2) {
        this(byteBufAllocator, byteBuffer, i2, false, true);
    }

    void getBytes(int i2, byte[] bArr, int i4, int i5, boolean z3) {
        ByteBuffer duplicate;
        checkDstIndex(i2, i5, i4, bArr.length);
        if (z3) {
            duplicate = internalNioBuffer();
        } else {
            duplicate = this.buffer.duplicate();
        }
        duplicate.clear().position(i2).limit(i2 + i5);
        duplicate.get(bArr, i4, i5);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public UnpooledDirectByteBuf(ByteBufAllocator byteBufAllocator, ByteBuffer byteBuffer, int i2, boolean z3, boolean z4) {
        super(i2);
        ObjectUtil.checkNotNull(byteBufAllocator, "alloc");
        ObjectUtil.checkNotNull(byteBuffer, "initialBuffer");
        if (byteBuffer.isDirect()) {
            if (!byteBuffer.isReadOnly()) {
                int remaining = byteBuffer.remaining();
                if (remaining <= i2) {
                    this.alloc = byteBufAllocator;
                    this.doNotFree = !z3;
                    setByteBuffer((z4 ? byteBuffer.slice() : byteBuffer).order(ByteOrder.BIG_ENDIAN), false);
                    writerIndex(remaining);
                    return;
                }
                throw new IllegalArgumentException(String.format("initialCapacity(%d) > maxCapacity(%d)", Integer.valueOf(remaining), Integer.valueOf(i2)));
            }
            throw new IllegalArgumentException("initialBuffer is a read-only buffer.");
        }
        throw new IllegalArgumentException("initialBuffer is not a direct buffer.");
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public int readBytes(GatheringByteChannel gatheringByteChannel, int i2) throws IOException {
        checkReadableBytes(i2);
        int bytes = getBytes(this.readerIndex, gatheringByteChannel, i2, true);
        this.readerIndex += bytes;
        return bytes;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf setBytes(int i2, ByteBuffer byteBuffer) {
        ensureAccessible();
        ByteBuffer internalNioBuffer = internalNioBuffer();
        if (byteBuffer == internalNioBuffer) {
            byteBuffer = byteBuffer.duplicate();
        }
        internalNioBuffer.clear().position(i2).limit(i2 + byteBuffer.remaining());
        internalNioBuffer.put(byteBuffer);
        return this;
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public int readBytes(FileChannel fileChannel, long j4, int i2) throws IOException {
        checkReadableBytes(i2);
        int bytes = getBytes(this.readerIndex, fileChannel, j4, i2, true);
        this.readerIndex += bytes;
        return bytes;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf getBytes(int i2, ByteBuffer byteBuffer) {
        getBytes(i2, byteBuffer, false);
        return this;
    }

    void getBytes(int i2, ByteBuffer byteBuffer, boolean z3) {
        ByteBuffer duplicate;
        checkIndex(i2, byteBuffer.remaining());
        if (z3) {
            duplicate = internalNioBuffer();
        } else {
            duplicate = this.buffer.duplicate();
        }
        duplicate.clear().position(i2).limit(i2 + byteBuffer.remaining());
        byteBuffer.put(duplicate);
    }

    @Override // io.netty.buffer.ByteBuf
    public int setBytes(int i2, InputStream inputStream, int i4) throws IOException {
        ensureAccessible();
        if (this.buffer.hasArray()) {
            return inputStream.read(this.buffer.array(), this.buffer.arrayOffset() + i2, i4);
        }
        byte[] threadLocalTempArray = ByteBufUtil.threadLocalTempArray(i4);
        int read = inputStream.read(threadLocalTempArray, 0, i4);
        if (read <= 0) {
            return read;
        }
        ByteBuffer internalNioBuffer = internalNioBuffer();
        internalNioBuffer.clear().position(i2);
        internalNioBuffer.put(threadLocalTempArray, 0, read);
        return read;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf getBytes(int i2, OutputStream outputStream, int i4) throws IOException {
        getBytes(i2, outputStream, i4, false);
        return this;
    }

    void getBytes(int i2, OutputStream outputStream, int i4, boolean z3) throws IOException {
        ensureAccessible();
        if (i4 == 0) {
            return;
        }
        ByteBufUtil.readBytes(alloc(), z3 ? internalNioBuffer() : this.buffer.duplicate(), i2, i4, outputStream);
    }

    @Override // io.netty.buffer.ByteBuf
    public int getBytes(int i2, GatheringByteChannel gatheringByteChannel, int i4) throws IOException {
        return getBytes(i2, gatheringByteChannel, i4, false);
    }

    @Override // io.netty.buffer.ByteBuf
    public int setBytes(int i2, ScatteringByteChannel scatteringByteChannel, int i4) throws IOException {
        ensureAccessible();
        ByteBuffer internalNioBuffer = internalNioBuffer();
        internalNioBuffer.clear().position(i2).limit(i2 + i4);
        try {
            return scatteringByteChannel.read(internalNioBuffer);
        } catch (ClosedChannelException unused) {
            return -1;
        }
    }

    private int getBytes(int i2, GatheringByteChannel gatheringByteChannel, int i4, boolean z3) throws IOException {
        ByteBuffer duplicate;
        ensureAccessible();
        if (i4 == 0) {
            return 0;
        }
        if (z3) {
            duplicate = internalNioBuffer();
        } else {
            duplicate = this.buffer.duplicate();
        }
        duplicate.clear().position(i2).limit(i2 + i4);
        return gatheringByteChannel.write(duplicate);
    }

    @Override // io.netty.buffer.ByteBuf
    public int setBytes(int i2, FileChannel fileChannel, long j4, int i4) throws IOException {
        ensureAccessible();
        ByteBuffer internalNioBuffer = internalNioBuffer();
        internalNioBuffer.clear().position(i2).limit(i2 + i4);
        try {
            return fileChannel.read(internalNioBuffer, j4);
        } catch (ClosedChannelException unused) {
            return -1;
        }
    }

    @Override // io.netty.buffer.ByteBuf
    public int getBytes(int i2, FileChannel fileChannel, long j4, int i4) throws IOException {
        return getBytes(i2, fileChannel, j4, i4, false);
    }

    private int getBytes(int i2, FileChannel fileChannel, long j4, int i4, boolean z3) throws IOException {
        ensureAccessible();
        if (i4 == 0) {
            return 0;
        }
        ByteBuffer internalNioBuffer = z3 ? internalNioBuffer() : this.buffer.duplicate();
        internalNioBuffer.clear().position(i2).limit(i2 + i4);
        return fileChannel.write(internalNioBuffer, j4);
    }
}
