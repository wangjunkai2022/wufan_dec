package io.netty.buffer;

import io.netty.util.internal.ObjectPool;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.ClosedChannelException;
import java.nio.channels.FileChannel;
import java.nio.channels.GatheringByteChannel;
import java.nio.channels.ScatteringByteChannel;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public abstract class PooledByteBuf<T> extends AbstractReferenceCountedByteBuf {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private ByteBufAllocator allocator;
    PoolThreadCache cache;
    protected PoolChunk<T> chunk;
    protected long handle;
    protected int length;
    int maxLength;
    protected T memory;
    protected int offset;
    private final ObjectPool.Handle<PooledByteBuf<T>> recyclerHandle;
    ByteBuffer tmpNioBuf;

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Multi-variable type inference failed */
    public PooledByteBuf(ObjectPool.Handle<? extends PooledByteBuf<T>> handle, int i2) {
        super(i2);
        this.recyclerHandle = handle;
    }

    private void init0(PoolChunk<T> poolChunk, ByteBuffer byteBuffer, long j4, int i2, int i4, int i5, PoolThreadCache poolThreadCache) {
        this.chunk = poolChunk;
        this.memory = poolChunk.memory;
        this.tmpNioBuf = byteBuffer;
        this.allocator = poolChunk.arena.parent;
        this.cache = poolThreadCache;
        this.handle = j4;
        this.offset = i2;
        this.length = i4;
        this.maxLength = i5;
    }

    private void recycle() {
        this.recyclerHandle.recycle(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final ByteBuffer _internalNioBuffer(int i2, int i4, boolean z3) {
        int idx = idx(i2);
        ByteBuffer newInternalNioBuffer = z3 ? newInternalNioBuffer(this.memory) : internalNioBuffer();
        newInternalNioBuffer.limit(i4 + idx).position(idx);
        return newInternalNioBuffer;
    }

    @Override // io.netty.buffer.ByteBuf
    public final ByteBufAllocator alloc() {
        return this.allocator;
    }

    @Override // io.netty.buffer.ByteBuf
    public final int capacity() {
        return this.length;
    }

    @Override // io.netty.buffer.AbstractReferenceCountedByteBuf
    protected final void deallocate() {
        long j4 = this.handle;
        if (j4 >= 0) {
            this.handle = -1L;
            this.memory = null;
            PoolChunk<T> poolChunk = this.chunk;
            poolChunk.arena.free(poolChunk, this.tmpNioBuf, j4, this.maxLength, this.cache);
            this.tmpNioBuf = null;
            this.chunk = null;
            recycle();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ByteBuffer duplicateInternalNioBuffer(int i2, int i4) {
        checkIndex(i2, i4);
        return _internalNioBuffer(i2, i4, true);
    }

    @Override // io.netty.buffer.ByteBuf
    public final int getBytes(int i2, GatheringByteChannel gatheringByteChannel, int i4) throws IOException {
        return gatheringByteChannel.write(duplicateInternalNioBuffer(i2, i4));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final int idx(int i2) {
        return this.offset + i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void init(PoolChunk<T> poolChunk, ByteBuffer byteBuffer, long j4, int i2, int i4, int i5, PoolThreadCache poolThreadCache) {
        init0(poolChunk, byteBuffer, j4, i2, i4, i5, poolThreadCache);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void initUnpooled(PoolChunk<T> poolChunk, int i2) {
        init0(poolChunk, null, 0L, poolChunk.offset, i2, i2, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final ByteBuffer internalNioBuffer() {
        ByteBuffer byteBuffer = this.tmpNioBuf;
        if (byteBuffer == null) {
            ByteBuffer newInternalNioBuffer = newInternalNioBuffer(this.memory);
            this.tmpNioBuf = newInternalNioBuffer;
            return newInternalNioBuffer;
        }
        byteBuffer.clear();
        return byteBuffer;
    }

    @Override // io.netty.buffer.ByteBuf
    public final boolean isContiguous() {
        return true;
    }

    @Override // io.netty.buffer.ByteBuf
    public int maxFastWritableBytes() {
        return Math.min(this.maxLength, maxCapacity()) - this.writerIndex;
    }

    protected abstract ByteBuffer newInternalNioBuffer(T t3);

    @Override // io.netty.buffer.ByteBuf
    public final ByteBuffer nioBuffer(int i2, int i4) {
        return duplicateInternalNioBuffer(i2, i4).slice();
    }

    @Override // io.netty.buffer.ByteBuf
    public final int nioBufferCount() {
        return 1;
    }

    @Override // io.netty.buffer.ByteBuf
    public final ByteBuffer[] nioBuffers(int i2, int i4) {
        return new ByteBuffer[]{nioBuffer(i2, i4)};
    }

    @Override // io.netty.buffer.ByteBuf
    public final ByteOrder order() {
        return ByteOrder.BIG_ENDIAN;
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public final int readBytes(GatheringByteChannel gatheringByteChannel, int i2) throws IOException {
        checkReadableBytes(i2);
        int write = gatheringByteChannel.write(_internalNioBuffer(this.readerIndex, i2, false));
        this.readerIndex += write;
        return write;
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public final ByteBuf retainedDuplicate() {
        return PooledDuplicatedByteBuf.newInstance(this, this, readerIndex(), writerIndex());
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public final ByteBuf retainedSlice() {
        int readerIndex = readerIndex();
        return retainedSlice(readerIndex, writerIndex() - readerIndex);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void reuse(int i2) {
        maxCapacity(i2);
        resetRefCnt();
        setIndex0(0, 0);
        discardMarks();
    }

    @Override // io.netty.buffer.ByteBuf
    public final int setBytes(int i2, ScatteringByteChannel scatteringByteChannel, int i4) throws IOException {
        try {
            return scatteringByteChannel.read(internalNioBuffer(i2, i4));
        } catch (ClosedChannelException unused) {
            return -1;
        }
    }

    @Override // io.netty.buffer.ByteBuf
    public final ByteBuf unwrap() {
        return null;
    }

    @Override // io.netty.buffer.ByteBuf
    public final ByteBuf capacity(int i2) {
        if (i2 == this.length) {
            ensureAccessible();
            return this;
        }
        checkNewCapacity(i2);
        PoolChunk<T> poolChunk = this.chunk;
        if (!poolChunk.unpooled) {
            if (i2 > this.length) {
                if (i2 <= this.maxLength) {
                    this.length = i2;
                    return this;
                }
            } else {
                int i4 = this.maxLength;
                if (i2 > (i4 >>> 1) && (i4 > 512 || i2 > i4 - 16)) {
                    this.length = i2;
                    trimIndicesToCapacity(i2);
                    return this;
                }
            }
        }
        poolChunk.arena.reallocate(this, i2, true);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public final int getBytes(int i2, FileChannel fileChannel, long j4, int i4) throws IOException {
        return fileChannel.write(duplicateInternalNioBuffer(i2, i4), j4);
    }

    @Override // io.netty.buffer.ByteBuf
    public final int setBytes(int i2, FileChannel fileChannel, long j4, int i4) throws IOException {
        try {
            return fileChannel.read(internalNioBuffer(i2, i4), j4);
        } catch (ClosedChannelException unused) {
            return -1;
        }
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public final ByteBuf retainedSlice(int i2, int i4) {
        return PooledSlicedByteBuf.newInstance(this, this, i2, i4);
    }

    @Override // io.netty.buffer.ByteBuf
    public final ByteBuffer internalNioBuffer(int i2, int i4) {
        checkIndex(i2, i4);
        return _internalNioBuffer(i2, i4, false);
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public final int readBytes(FileChannel fileChannel, long j4, int i2) throws IOException {
        checkReadableBytes(i2);
        int write = fileChannel.write(_internalNioBuffer(this.readerIndex, i2, false), j4);
        this.readerIndex += write;
        return write;
    }
}
