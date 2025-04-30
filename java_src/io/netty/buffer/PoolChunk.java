package io.netty.buffer;

import java.nio.ByteBuffer;
import java.util.ArrayDeque;
import java.util.Deque;
import kotlinx.coroutines.internal.v;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class PoolChunk<T> implements PoolChunkMetric {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final int INTEGER_SIZE_MINUS_ONE = 31;
    final PoolArena<T> arena;
    private final Deque<ByteBuffer> cachedNioBuffers;
    private final int chunkSize;
    private final byte[] depthMap;
    private int freeBytes;
    private final int log2ChunkSize;
    private final int maxOrder;
    private final int maxSubpageAllocs;
    final T memory;
    private final byte[] memoryMap;
    PoolChunk<T> next;
    final int offset;
    private final int pageShifts;
    private final int pageSize;
    PoolChunkList<T> parent;
    PoolChunk<T> prev;
    private final int subpageOverflowMask;
    private final PoolSubpage<T>[] subpages;
    final boolean unpooled;
    private final byte unusable;

    /* JADX INFO: Access modifiers changed from: package-private */
    public PoolChunk(PoolArena<T> poolArena, T t3, int i2, int i4, int i5, int i6, int i7) {
        this.unpooled = false;
        this.arena = poolArena;
        this.memory = t3;
        this.pageSize = i2;
        this.pageShifts = i5;
        this.maxOrder = i4;
        this.chunkSize = i6;
        this.offset = i7;
        this.unusable = (byte) (i4 + 1);
        this.log2ChunkSize = log2(i6);
        this.subpageOverflowMask = (i2 - 1) ^ (-1);
        this.freeBytes = i6;
        int i8 = 1 << i4;
        this.maxSubpageAllocs = i8;
        byte[] bArr = new byte[i8 << 1];
        this.memoryMap = bArr;
        this.depthMap = new byte[bArr.length];
        int i9 = 1;
        for (int i10 = 0; i10 <= i4; i10++) {
            int i11 = 1 << i10;
            for (int i12 = 0; i12 < i11; i12++) {
                byte b4 = (byte) i10;
                this.memoryMap[i9] = b4;
                this.depthMap[i9] = b4;
                i9++;
            }
        }
        this.subpages = newSubpageArray(this.maxSubpageAllocs);
        this.cachedNioBuffers = new ArrayDeque(8);
    }

    private int allocateNode(int i2) {
        int i4 = 1;
        int i5 = -(1 << i2);
        byte value = value(1);
        if (value > i2) {
            return -1;
        }
        while (true) {
            if (value >= i2 && (i4 & i5) != 0) {
                value(i4);
                setValue(i4, this.unusable);
                updateParentsAlloc(i4);
                return i4;
            }
            i4 <<= 1;
            value = value(i4);
            if (value > i2) {
                i4 ^= 1;
                value = value(i4);
            }
        }
    }

    private long allocateRun(int i2) {
        int allocateNode = allocateNode(this.maxOrder - (log2(i2) - this.pageShifts));
        if (allocateNode < 0) {
            return allocateNode;
        }
        this.freeBytes -= runLength(allocateNode);
        return allocateNode;
    }

    private long allocateSubpage(int i2) {
        PoolSubpage<T> findSubpagePoolHead = this.arena.findSubpagePoolHead(i2);
        int i4 = this.maxOrder;
        synchronized (findSubpagePoolHead) {
            int allocateNode = allocateNode(i4);
            if (allocateNode < 0) {
                return allocateNode;
            }
            PoolSubpage<T>[] poolSubpageArr = this.subpages;
            int i5 = this.pageSize;
            this.freeBytes -= i5;
            int subpageIdx = subpageIdx(allocateNode);
            PoolSubpage<T> poolSubpage = poolSubpageArr[subpageIdx];
            if (poolSubpage == null) {
                PoolSubpage<T> poolSubpage2 = new PoolSubpage<>(findSubpagePoolHead, this, allocateNode, runOffset(allocateNode), i5, i2);
                poolSubpageArr[subpageIdx] = poolSubpage2;
                poolSubpage = poolSubpage2;
            } else {
                poolSubpage.init(findSubpagePoolHead, i2);
            }
            return poolSubpage.allocate();
        }
    }

    private static int bitmapIdx(long j4) {
        return (int) (j4 >>> 32);
    }

    private byte depth(int i2) {
        return this.depthMap[i2];
    }

    private static int log2(int i2) {
        return 31 - Integer.numberOfLeadingZeros(i2);
    }

    private static int memoryMapIdx(long j4) {
        return (int) j4;
    }

    private PoolSubpage<T>[] newSubpageArray(int i2) {
        return new PoolSubpage[i2];
    }

    private int runLength(int i2) {
        return 1 << (this.log2ChunkSize - depth(i2));
    }

    private int runOffset(int i2) {
        return ((1 << depth(i2)) ^ i2) * runLength(i2);
    }

    private void setValue(int i2, byte b4) {
        this.memoryMap[i2] = b4;
    }

    private int subpageIdx(int i2) {
        return i2 ^ this.maxSubpageAllocs;
    }

    private void updateParentsAlloc(int i2) {
        while (i2 > 1) {
            int i4 = i2 >>> 1;
            byte value = value(i2);
            byte value2 = value(i2 ^ 1);
            if (value >= value2) {
                value = value2;
            }
            setValue(i4, value);
            i2 = i4;
        }
    }

    private void updateParentsFree(int i2) {
        int depth = depth(i2) + 1;
        while (i2 > 1) {
            int i4 = i2 >>> 1;
            byte value = value(i2);
            byte value2 = value(i2 ^ 1);
            depth--;
            if (value == depth && value2 == depth) {
                setValue(i4, (byte) (depth - 1));
            } else {
                if (value >= value2) {
                    value = value2;
                }
                setValue(i4, value);
            }
            i2 = i4;
        }
    }

    private byte value(int i2) {
        return this.memoryMap[i2];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean allocate(PooledByteBuf<T> pooledByteBuf, int i2, int i4) {
        long allocateSubpage;
        if ((this.subpageOverflowMask & i4) != 0) {
            allocateSubpage = allocateRun(i4);
        } else {
            allocateSubpage = allocateSubpage(i4);
        }
        long j4 = allocateSubpage;
        if (j4 < 0) {
            return false;
        }
        Deque<ByteBuffer> deque = this.cachedNioBuffers;
        initBuf(pooledByteBuf, deque != null ? deque.pollLast() : null, j4, i2);
        return true;
    }

    @Override // io.netty.buffer.PoolChunkMetric
    public int chunkSize() {
        return this.chunkSize;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void destroy() {
        this.arena.destroyChunk(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void free(long j4, ByteBuffer byteBuffer) {
        Deque<ByteBuffer> deque;
        int memoryMapIdx = memoryMapIdx(j4);
        int bitmapIdx = bitmapIdx(j4);
        if (bitmapIdx != 0) {
            PoolSubpage<T> poolSubpage = this.subpages[subpageIdx(memoryMapIdx)];
            PoolSubpage<T> findSubpagePoolHead = this.arena.findSubpagePoolHead(poolSubpage.elemSize);
            synchronized (findSubpagePoolHead) {
                if (poolSubpage.free(findSubpagePoolHead, bitmapIdx & v.f72230j)) {
                    return;
                }
            }
        }
        this.freeBytes += runLength(memoryMapIdx);
        setValue(memoryMapIdx, depth(memoryMapIdx));
        updateParentsFree(memoryMapIdx);
        if (byteBuffer == null || (deque = this.cachedNioBuffers) == null || deque.size() >= PooledByteBufAllocator.DEFAULT_MAX_CACHED_BYTEBUFFERS_PER_CHUNK) {
            return;
        }
        this.cachedNioBuffers.offer(byteBuffer);
    }

    @Override // io.netty.buffer.PoolChunkMetric
    public int freeBytes() {
        int i2;
        synchronized (this.arena) {
            i2 = this.freeBytes;
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void initBuf(PooledByteBuf<T> pooledByteBuf, ByteBuffer byteBuffer, long j4, int i2) {
        int memoryMapIdx = memoryMapIdx(j4);
        int bitmapIdx = bitmapIdx(j4);
        if (bitmapIdx == 0) {
            value(memoryMapIdx);
            pooledByteBuf.init(this, byteBuffer, j4, runOffset(memoryMapIdx) + this.offset, i2, runLength(memoryMapIdx), this.arena.parent.threadCache());
            return;
        }
        initBufWithSubpage(pooledByteBuf, byteBuffer, j4, bitmapIdx, i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void initBufWithSubpage(PooledByteBuf<T> pooledByteBuf, ByteBuffer byteBuffer, long j4, int i2) {
        initBufWithSubpage(pooledByteBuf, byteBuffer, j4, bitmapIdx(j4), i2);
    }

    public String toString() {
        int i2;
        synchronized (this.arena) {
            i2 = this.freeBytes;
        }
        return "Chunk(" + Integer.toHexString(System.identityHashCode(this)) + ": " + usage(i2) + "%, " + (this.chunkSize - i2) + '/' + this.chunkSize + ')';
    }

    @Override // io.netty.buffer.PoolChunkMetric
    public int usage() {
        int i2;
        synchronized (this.arena) {
            i2 = this.freeBytes;
        }
        return usage(i2);
    }

    private void initBufWithSubpage(PooledByteBuf<T> pooledByteBuf, ByteBuffer byteBuffer, long j4, int i2, int i4) {
        int memoryMapIdx = memoryMapIdx(j4);
        PoolSubpage<T> poolSubpage = this.subpages[subpageIdx(memoryMapIdx)];
        int runOffset = runOffset(memoryMapIdx);
        int i5 = poolSubpage.elemSize;
        pooledByteBuf.init(this, byteBuffer, j4, runOffset + ((1073741823 & i2) * i5) + this.offset, i4, i5, this.arena.parent.threadCache());
    }

    private int usage(int i2) {
        if (i2 == 0) {
            return 100;
        }
        int i4 = (int) ((i2 * 100) / this.chunkSize);
        if (i4 == 0) {
            return 99;
        }
        return 100 - i4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public PoolChunk(PoolArena<T> poolArena, T t3, int i2, int i4) {
        this.unpooled = true;
        this.arena = poolArena;
        this.memory = t3;
        this.offset = i4;
        this.memoryMap = null;
        this.depthMap = null;
        this.subpages = null;
        this.subpageOverflowMask = 0;
        this.pageSize = 0;
        this.pageShifts = 0;
        this.maxOrder = 0;
        this.unusable = (byte) (1 + 0);
        this.chunkSize = i2;
        this.log2ChunkSize = log2(i2);
        this.maxSubpageAllocs = 0;
        this.cachedNioBuffers = null;
    }
}
