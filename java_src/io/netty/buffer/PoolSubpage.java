package io.netty.buffer;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class PoolSubpage<T> implements PoolSubpageMetric {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private final long[] bitmap;
    private int bitmapLength;
    final PoolChunk<T> chunk;
    boolean doNotDestroy;
    int elemSize;
    private int maxNumElems;
    private final int memoryMapIdx;
    PoolSubpage<T> next;
    private int nextAvail;
    private int numAvail;
    private final int pageSize;
    PoolSubpage<T> prev;
    private final int runOffset;

    /* JADX INFO: Access modifiers changed from: package-private */
    public PoolSubpage(int i2) {
        this.chunk = null;
        this.memoryMapIdx = -1;
        this.runOffset = -1;
        this.elemSize = -1;
        this.pageSize = i2;
        this.bitmap = null;
    }

    private void addToPool(PoolSubpage<T> poolSubpage) {
        this.prev = poolSubpage;
        PoolSubpage<T> poolSubpage2 = poolSubpage.next;
        this.next = poolSubpage2;
        poolSubpage2.prev = this;
        poolSubpage.next = this;
    }

    private int findNextAvail() {
        long[] jArr = this.bitmap;
        int i2 = this.bitmapLength;
        for (int i4 = 0; i4 < i2; i4++) {
            long j4 = jArr[i4];
            if (((-1) ^ j4) != 0) {
                return findNextAvail0(i4, j4);
            }
        }
        return -1;
    }

    private int findNextAvail0(int i2, long j4) {
        int i4 = this.maxNumElems;
        int i5 = i2 << 6;
        for (int i6 = 0; i6 < 64; i6++) {
            if ((1 & j4) == 0) {
                int i7 = i5 | i6;
                if (i7 < i4) {
                    return i7;
                }
                return -1;
            }
            j4 >>>= 1;
        }
        return -1;
    }

    private int getNextAvail() {
        int i2 = this.nextAvail;
        if (i2 >= 0) {
            this.nextAvail = -1;
            return i2;
        }
        return findNextAvail();
    }

    private void removeFromPool() {
        PoolSubpage<T> poolSubpage = this.prev;
        poolSubpage.next = this.next;
        this.next.prev = poolSubpage;
        this.next = null;
        this.prev = null;
    }

    private void setNextAvail(int i2) {
        this.nextAvail = i2;
    }

    private long toHandle(int i2) {
        return (i2 << 32) | 4611686018427387904L | this.memoryMapIdx;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long allocate() {
        if (this.elemSize == 0) {
            return toHandle(0);
        }
        if (this.numAvail == 0 || !this.doNotDestroy) {
            return -1L;
        }
        int nextAvail = getNextAvail();
        int i2 = nextAvail >>> 6;
        long[] jArr = this.bitmap;
        jArr[i2] = jArr[i2] | (1 << (nextAvail & 63));
        int i4 = this.numAvail - 1;
        this.numAvail = i4;
        if (i4 == 0) {
            removeFromPool();
        }
        return toHandle(nextAvail);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void destroy() {
        PoolChunk<T> poolChunk = this.chunk;
        if (poolChunk != null) {
            poolChunk.destroy();
        }
    }

    @Override // io.netty.buffer.PoolSubpageMetric
    public int elementSize() {
        int i2;
        PoolChunk<T> poolChunk = this.chunk;
        if (poolChunk == null) {
            return -1;
        }
        synchronized (poolChunk.arena) {
            i2 = this.elemSize;
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean free(PoolSubpage<T> poolSubpage, int i2) {
        if (this.elemSize == 0) {
            return true;
        }
        int i4 = i2 >>> 6;
        long[] jArr = this.bitmap;
        jArr[i4] = jArr[i4] ^ (1 << (i2 & 63));
        setNextAvail(i2);
        int i5 = this.numAvail;
        int i6 = i5 + 1;
        this.numAvail = i6;
        if (i5 == 0) {
            addToPool(poolSubpage);
            return true;
        } else if (i6 == this.maxNumElems && this.prev != this.next) {
            this.doNotDestroy = false;
            removeFromPool();
            return false;
        } else {
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void init(PoolSubpage<T> poolSubpage, int i2) {
        this.doNotDestroy = true;
        this.elemSize = i2;
        if (i2 != 0) {
            int i4 = this.pageSize / i2;
            this.numAvail = i4;
            this.maxNumElems = i4;
            this.nextAvail = 0;
            int i5 = i4 >>> 6;
            this.bitmapLength = i5;
            if ((i4 & 63) != 0) {
                this.bitmapLength = i5 + 1;
            }
            for (int i6 = 0; i6 < this.bitmapLength; i6++) {
                this.bitmap[i6] = 0;
            }
        }
        addToPool(poolSubpage);
    }

    @Override // io.netty.buffer.PoolSubpageMetric
    public int maxNumElements() {
        int i2;
        PoolChunk<T> poolChunk = this.chunk;
        if (poolChunk == null) {
            return 0;
        }
        synchronized (poolChunk.arena) {
            i2 = this.maxNumElems;
        }
        return i2;
    }

    @Override // io.netty.buffer.PoolSubpageMetric
    public int numAvailable() {
        int i2;
        PoolChunk<T> poolChunk = this.chunk;
        if (poolChunk == null) {
            return 0;
        }
        synchronized (poolChunk.arena) {
            i2 = this.numAvail;
        }
        return i2;
    }

    @Override // io.netty.buffer.PoolSubpageMetric
    public int pageSize() {
        return this.pageSize;
    }

    public String toString() {
        int i2;
        int i4;
        int i5;
        PoolChunk<T> poolChunk = this.chunk;
        int i6 = -1;
        boolean z3 = true;
        int i7 = 0;
        if (poolChunk == null) {
            i5 = 0;
        } else {
            synchronized (poolChunk.arena) {
                if (this.doNotDestroy) {
                    i6 = this.maxNumElems;
                    i2 = this.numAvail;
                    i4 = this.elemSize;
                } else {
                    z3 = false;
                    i2 = -1;
                    i4 = -1;
                }
            }
            i5 = i2;
            i7 = i6;
            i6 = i4;
        }
        if (!z3) {
            return "(" + this.memoryMapIdx + ": not in use)";
        }
        return "(" + this.memoryMapIdx + ": " + (i7 - i5) + '/' + i7 + ", offset: " + this.runOffset + ", length: " + this.pageSize + ", elemSize: " + i6 + ')';
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public PoolSubpage(PoolSubpage<T> poolSubpage, PoolChunk<T> poolChunk, int i2, int i4, int i5, int i6) {
        this.chunk = poolChunk;
        this.memoryMapIdx = i2;
        this.runOffset = i4;
        this.pageSize = i5;
        this.bitmap = new long[i5 >>> 10];
        init(poolSubpage, i6);
    }
}
