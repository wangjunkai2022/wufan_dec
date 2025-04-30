package io.netty.buffer;

import io.netty.util.internal.EmptyArrays;
import io.netty.util.internal.RecyclableArrayList;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.ReadOnlyBufferException;
import java.nio.channels.FileChannel;
import java.nio.channels.GatheringByteChannel;
import java.nio.channels.ScatteringByteChannel;
import java.util.Collections;
import kotlin.UShort;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class FixedCompositeByteBuf extends AbstractReferenceCountedByteBuf {
    private static final ByteBuf[] EMPTY = {Unpooled.EMPTY_BUFFER};
    private final ByteBufAllocator allocator;
    private final ByteBuf[] buffers;
    private final int capacity;
    private final boolean direct;
    private final int nioBufferCount;
    private final ByteOrder order;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static final class Component extends WrappedByteBuf {
        private final int endOffset;
        private final int index;
        private final int offset;

        Component(int i2, int i4, ByteBuf byteBuf) {
            super(byteBuf);
            this.index = i2;
            this.offset = i4;
            this.endOffset = i4 + byteBuf.readableBytes();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public FixedCompositeByteBuf(ByteBufAllocator byteBufAllocator, ByteBuf... byteBufArr) {
        super(Integer.MAX_VALUE);
        if (byteBufArr.length == 0) {
            this.buffers = EMPTY;
            this.order = ByteOrder.BIG_ENDIAN;
            this.nioBufferCount = 1;
            this.capacity = 0;
            this.direct = Unpooled.EMPTY_BUFFER.isDirect();
        } else {
            ByteBuf byteBuf = byteBufArr[0];
            this.buffers = byteBufArr;
            int nioBufferCount = byteBuf.nioBufferCount();
            int readableBytes = byteBuf.readableBytes();
            this.order = byteBuf.order();
            boolean z3 = true;
            for (int i2 = 1; i2 < byteBufArr.length; i2++) {
                ByteBuf byteBuf2 = byteBufArr[i2];
                if (byteBufArr[i2].order() == this.order) {
                    nioBufferCount += byteBuf2.nioBufferCount();
                    readableBytes += byteBuf2.readableBytes();
                    if (!byteBuf2.isDirect()) {
                        z3 = false;
                    }
                } else {
                    throw new IllegalArgumentException("All ByteBufs need to have same ByteOrder");
                }
            }
            this.nioBufferCount = nioBufferCount;
            this.capacity = readableBytes;
            this.direct = z3;
        }
        setIndex(0, capacity());
        this.allocator = byteBufAllocator;
    }

    private ByteBuf buffer(int i2) {
        ByteBuf byteBuf = this.buffers[i2];
        return byteBuf instanceof Component ? ((Component) byteBuf).buf : byteBuf;
    }

    private Component findComponent(int i2) {
        int i4 = 0;
        int i5 = 0;
        while (true) {
            ByteBuf[] byteBufArr = this.buffers;
            if (i4 < byteBufArr.length) {
                Component component = null;
                ByteBuf byteBuf = byteBufArr[i4];
                if (byteBuf instanceof Component) {
                    component = (Component) byteBuf;
                    byteBuf = component.buf;
                }
                i5 += byteBuf.readableBytes();
                if (i2 < i5) {
                    if (component == null) {
                        Component component2 = new Component(i4, i5 - byteBuf.readableBytes(), byteBuf);
                        this.buffers[i4] = component2;
                        return component2;
                    }
                    return component;
                }
                i4++;
            } else {
                throw new IllegalStateException();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public byte _getByte(int i2) {
        Component findComponent = findComponent(i2);
        return findComponent.buf.getByte(i2 - findComponent.offset);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public int _getInt(int i2) {
        Component findComponent = findComponent(i2);
        if (i2 + 4 <= findComponent.endOffset) {
            return findComponent.buf.getInt(i2 - findComponent.offset);
        }
        if (order() == ByteOrder.BIG_ENDIAN) {
            return (_getShort(i2 + 2) & UShort.MAX_VALUE) | ((_getShort(i2) & UShort.MAX_VALUE) << 16);
        }
        return ((_getShort(i2 + 2) & UShort.MAX_VALUE) << 16) | (_getShort(i2) & UShort.MAX_VALUE);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public int _getIntLE(int i2) {
        Component findComponent = findComponent(i2);
        if (i2 + 4 <= findComponent.endOffset) {
            return findComponent.buf.getIntLE(i2 - findComponent.offset);
        }
        if (order() == ByteOrder.BIG_ENDIAN) {
            return ((_getShortLE(i2 + 2) & UShort.MAX_VALUE) << 16) | (_getShortLE(i2) & UShort.MAX_VALUE);
        }
        return (_getShortLE(i2 + 2) & UShort.MAX_VALUE) | ((_getShortLE(i2) & UShort.MAX_VALUE) << 16);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public long _getLong(int i2) {
        Component findComponent = findComponent(i2);
        if (i2 + 8 <= findComponent.endOffset) {
            return findComponent.buf.getLong(i2 - findComponent.offset);
        }
        if (order() == ByteOrder.BIG_ENDIAN) {
            return ((_getInt(i2) & 4294967295L) << 32) | (4294967295L & _getInt(i2 + 4));
        }
        return (_getInt(i2) & 4294967295L) | ((4294967295L & _getInt(i2 + 4)) << 32);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public long _getLongLE(int i2) {
        Component findComponent = findComponent(i2);
        if (i2 + 8 <= findComponent.endOffset) {
            return findComponent.buf.getLongLE(i2 - findComponent.offset);
        }
        if (order() == ByteOrder.BIG_ENDIAN) {
            return (_getIntLE(i2) & 4294967295L) | ((4294967295L & _getIntLE(i2 + 4)) << 32);
        }
        return ((_getIntLE(i2) & 4294967295L) << 32) | (4294967295L & _getIntLE(i2 + 4));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public short _getShort(int i2) {
        Component findComponent = findComponent(i2);
        if (i2 + 2 <= findComponent.endOffset) {
            return findComponent.buf.getShort(i2 - findComponent.offset);
        }
        if (order() == ByteOrder.BIG_ENDIAN) {
            return (short) ((_getByte(i2 + 1) & 255) | ((_getByte(i2) & 255) << 8));
        }
        return (short) (((_getByte(i2 + 1) & 255) << 8) | (_getByte(i2) & 255));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public short _getShortLE(int i2) {
        Component findComponent = findComponent(i2);
        if (i2 + 2 <= findComponent.endOffset) {
            return findComponent.buf.getShortLE(i2 - findComponent.offset);
        }
        if (order() == ByteOrder.BIG_ENDIAN) {
            return (short) (((_getByte(i2 + 1) & 255) << 8) | (_getByte(i2) & 255));
        }
        return (short) ((_getByte(i2 + 1) & 255) | ((_getByte(i2) & 255) << 8));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public int _getUnsignedMedium(int i2) {
        Component findComponent = findComponent(i2);
        if (i2 + 3 <= findComponent.endOffset) {
            return findComponent.buf.getUnsignedMedium(i2 - findComponent.offset);
        }
        if (order() == ByteOrder.BIG_ENDIAN) {
            return (_getByte(i2 + 2) & 255) | ((_getShort(i2) & UShort.MAX_VALUE) << 8);
        }
        return ((_getByte(i2 + 2) & 255) << 16) | (_getShort(i2) & UShort.MAX_VALUE);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public int _getUnsignedMediumLE(int i2) {
        Component findComponent = findComponent(i2);
        if (i2 + 3 <= findComponent.endOffset) {
            return findComponent.buf.getUnsignedMediumLE(i2 - findComponent.offset);
        }
        if (order() == ByteOrder.BIG_ENDIAN) {
            return ((_getByte(i2 + 2) & 255) << 16) | (_getShortLE(i2) & UShort.MAX_VALUE);
        }
        return (_getByte(i2 + 2) & 255) | ((_getShortLE(i2) & UShort.MAX_VALUE) << 8);
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
        int length = this.buffers.length;
        if (length != 0) {
            if (length == 1) {
                return buffer(0).array();
            }
            throw new UnsupportedOperationException();
        }
        return EmptyArrays.EMPTY_BYTES;
    }

    @Override // io.netty.buffer.ByteBuf
    public int arrayOffset() {
        int length = this.buffers.length;
        if (length != 0) {
            if (length == 1) {
                return buffer(0).arrayOffset();
            }
            throw new UnsupportedOperationException();
        }
        return 0;
    }

    @Override // io.netty.buffer.ByteBuf
    public int capacity() {
        return this.capacity;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf copy(int i2, int i4) {
        checkIndex(i2, i4);
        ByteBuf buffer = alloc().buffer(i4);
        try {
            buffer.writeBytes(this, i2, i4);
            return buffer;
        } catch (Throwable th) {
            buffer.release();
            throw th;
        }
    }

    @Override // io.netty.buffer.AbstractReferenceCountedByteBuf
    protected void deallocate() {
        for (int i2 = 0; i2 < this.buffers.length; i2++) {
            buffer(i2).release();
        }
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public ByteBuf discardReadBytes() {
        throw new ReadOnlyBufferException();
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public byte getByte(int i2) {
        return _getByte(i2);
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf getBytes(int i2, byte[] bArr, int i4, int i5) {
        checkDstIndex(i2, i5, i4, bArr.length);
        if (i5 == 0) {
            return this;
        }
        Component findComponent = findComponent(i2);
        int i6 = findComponent.index;
        int i7 = findComponent.offset;
        ByteBuf byteBuf = findComponent.buf;
        while (true) {
            int i8 = i2 - i7;
            int min = Math.min(i5, byteBuf.readableBytes() - i8);
            byteBuf.getBytes(i8, bArr, i4, min);
            i2 += min;
            i4 += min;
            i5 -= min;
            i7 += byteBuf.readableBytes();
            if (i5 <= 0) {
                return this;
            }
            i6++;
            byteBuf = buffer(i6);
        }
    }

    @Override // io.netty.buffer.ByteBuf
    public boolean hasArray() {
        int length = this.buffers.length;
        if (length != 0) {
            if (length != 1) {
                return false;
            }
            return buffer(0).hasArray();
        }
        return true;
    }

    @Override // io.netty.buffer.ByteBuf
    public boolean hasMemoryAddress() {
        int length = this.buffers.length;
        if (length != 0) {
            if (length != 1) {
                return false;
            }
            return buffer(0).hasMemoryAddress();
        }
        return Unpooled.EMPTY_BUFFER.hasMemoryAddress();
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuffer internalNioBuffer(int i2, int i4) {
        if (this.buffers.length == 1) {
            return buffer(0).internalNioBuffer(i2, i4);
        }
        throw new UnsupportedOperationException();
    }

    @Override // io.netty.buffer.ByteBuf
    public boolean isDirect() {
        return this.direct;
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public boolean isWritable() {
        return false;
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public boolean isWritable(int i2) {
        return false;
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public int maxCapacity() {
        return this.capacity;
    }

    @Override // io.netty.buffer.ByteBuf
    public long memoryAddress() {
        int length = this.buffers.length;
        if (length != 0) {
            if (length == 1) {
                return buffer(0).memoryAddress();
            }
            throw new UnsupportedOperationException();
        }
        return Unpooled.EMPTY_BUFFER.memoryAddress();
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuffer nioBuffer(int i2, int i4) {
        checkIndex(i2, i4);
        if (this.buffers.length == 1) {
            ByteBuf buffer = buffer(0);
            if (buffer.nioBufferCount() == 1) {
                return buffer.nioBuffer(i2, i4);
            }
        }
        ByteBuffer order = ByteBuffer.allocate(i4).order(order());
        for (ByteBuffer byteBuffer : nioBuffers(i2, i4)) {
            order.put(byteBuffer);
        }
        order.flip();
        return order;
    }

    @Override // io.netty.buffer.ByteBuf
    public int nioBufferCount() {
        return this.nioBufferCount;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuffer[] nioBuffers(int i2, int i4) {
        checkIndex(i2, i4);
        if (i4 == 0) {
            return EmptyArrays.EMPTY_BYTE_BUFFERS;
        }
        RecyclableArrayList newInstance = RecyclableArrayList.newInstance(this.buffers.length);
        try {
            Component findComponent = findComponent(i2);
            int i5 = findComponent.index;
            int i6 = findComponent.offset;
            ByteBuf byteBuf = findComponent.buf;
            while (true) {
                int i7 = i2 - i6;
                int min = Math.min(i4, byteBuf.readableBytes() - i7);
                int nioBufferCount = byteBuf.nioBufferCount();
                if (nioBufferCount != 0) {
                    if (nioBufferCount != 1) {
                        Collections.addAll(newInstance, byteBuf.nioBuffers(i7, min));
                    } else {
                        newInstance.add(byteBuf.nioBuffer(i7, min));
                    }
                    i2 += min;
                    i4 -= min;
                    i6 += byteBuf.readableBytes();
                    if (i4 <= 0) {
                        return (ByteBuffer[]) newInstance.toArray(new ByteBuffer[0]);
                    }
                    i5++;
                    byteBuf = buffer(i5);
                } else {
                    throw new UnsupportedOperationException();
                }
            }
        } finally {
            newInstance.recycle();
        }
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteOrder order() {
        return this.order;
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
    public ByteBuf setLong(int i2, long j4) {
        throw new ReadOnlyBufferException();
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public ByteBuf setMedium(int i2, int i4) {
        throw new ReadOnlyBufferException();
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public ByteBuf setShort(int i2, int i4) {
        throw new ReadOnlyBufferException();
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public String toString() {
        String abstractByteBuf = super.toString();
        String substring = abstractByteBuf.substring(0, abstractByteBuf.length() - 1);
        return substring + ", components=" + this.buffers.length + ')';
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
    public ByteBuf setBytes(int i2, ByteBuffer byteBuffer) {
        throw new ReadOnlyBufferException();
    }

    @Override // io.netty.buffer.ByteBuf
    public int setBytes(int i2, InputStream inputStream, int i4) {
        throw new ReadOnlyBufferException();
    }

    @Override // io.netty.buffer.ByteBuf
    public int setBytes(int i2, ScatteringByteChannel scatteringByteChannel, int i4) {
        throw new ReadOnlyBufferException();
    }

    @Override // io.netty.buffer.ByteBuf
    public int setBytes(int i2, FileChannel fileChannel, long j4, int i4) {
        throw new ReadOnlyBufferException();
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf getBytes(int i2, ByteBuffer byteBuffer) {
        int limit = byteBuffer.limit();
        int remaining = byteBuffer.remaining();
        checkIndex(i2, remaining);
        if (remaining == 0) {
            return this;
        }
        try {
            Component findComponent = findComponent(i2);
            int i4 = findComponent.index;
            int i5 = findComponent.offset;
            ByteBuf byteBuf = findComponent.buf;
            while (true) {
                int i6 = i2 - i5;
                int min = Math.min(remaining, byteBuf.readableBytes() - i6);
                byteBuffer.limit(byteBuffer.position() + min);
                byteBuf.getBytes(i6, byteBuffer);
                i2 += min;
                remaining -= min;
                i5 += byteBuf.readableBytes();
                if (remaining <= 0) {
                    return this;
                }
                i4++;
                byteBuf = buffer(i4);
            }
        } finally {
            byteBuffer.limit(limit);
        }
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf getBytes(int i2, ByteBuf byteBuf, int i4, int i5) {
        checkDstIndex(i2, i5, i4, byteBuf.capacity());
        if (i5 == 0) {
            return this;
        }
        Component findComponent = findComponent(i2);
        int i6 = findComponent.index;
        int i7 = findComponent.offset;
        ByteBuf byteBuf2 = findComponent.buf;
        while (true) {
            int i8 = i2 - i7;
            int min = Math.min(i5, byteBuf2.readableBytes() - i8);
            byteBuf2.getBytes(i8, byteBuf, i4, min);
            i2 += min;
            i4 += min;
            i5 -= min;
            i7 += byteBuf2.readableBytes();
            if (i5 <= 0) {
                return this;
            }
            i6++;
            byteBuf2 = buffer(i6);
        }
    }

    @Override // io.netty.buffer.ByteBuf
    public int getBytes(int i2, GatheringByteChannel gatheringByteChannel, int i4) throws IOException {
        if (nioBufferCount() == 1) {
            return gatheringByteChannel.write(internalNioBuffer(i2, i4));
        }
        long write = gatheringByteChannel.write(nioBuffers(i2, i4));
        if (write > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        return (int) write;
    }

    @Override // io.netty.buffer.ByteBuf
    public int getBytes(int i2, FileChannel fileChannel, long j4, int i4) throws IOException {
        if (nioBufferCount() == 1) {
            return fileChannel.write(internalNioBuffer(i2, i4), j4);
        }
        long j5 = 0;
        for (ByteBuffer byteBuffer : nioBuffers(i2, i4)) {
            j5 += fileChannel.write(byteBuffer, j4 + j5);
        }
        if (j5 > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        return (int) j5;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf getBytes(int i2, OutputStream outputStream, int i4) throws IOException {
        checkIndex(i2, i4);
        if (i4 == 0) {
            return this;
        }
        Component findComponent = findComponent(i2);
        int i5 = findComponent.index;
        int i6 = findComponent.offset;
        ByteBuf byteBuf = findComponent.buf;
        while (true) {
            int i7 = i2 - i6;
            int min = Math.min(i4, byteBuf.readableBytes() - i7);
            byteBuf.getBytes(i7, outputStream, min);
            i2 += min;
            i4 -= min;
            i6 += byteBuf.readableBytes();
            if (i4 <= 0) {
                return this;
            }
            i5++;
            byteBuf = buffer(i5);
        }
    }
}
