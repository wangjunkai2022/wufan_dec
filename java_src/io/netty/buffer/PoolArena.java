package io.netty.buffer;

import io.netty.util.internal.LongCounter;
import io.netty.util.internal.ObjectUtil;
import io.netty.util.internal.PlatformDependent;
import io.netty.util.internal.StringUtil;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public abstract class PoolArena<T> implements PoolArenaMetric {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    static final boolean HAS_UNSAFE = PlatformDependent.hasUnsafe();
    static final int numTinySubpagePools = 32;
    private long allocationsNormal;
    private final List<PoolChunkListMetric> chunkListMetrics;
    final int chunkSize;
    private long deallocationsNormal;
    private long deallocationsSmall;
    private long deallocationsTiny;
    final int directMemoryCacheAlignment;
    final int directMemoryCacheAlignmentMask;
    private final int maxOrder;
    final int numSmallSubpagePools;
    final int pageShifts;
    final int pageSize;
    final PooledByteBufAllocator parent;
    private final PoolChunkList<T> q000;
    private final PoolChunkList<T> q025;
    private final PoolChunkList<T> q050;
    private final PoolChunkList<T> q075;
    private final PoolChunkList<T> q100;
    private final PoolChunkList<T> qInit;
    private final PoolSubpage<T>[] smallSubpagePools;
    final int subpageOverflowMask;
    private final LongCounter allocationsTiny = PlatformDependent.newLongCounter();
    private final LongCounter allocationsSmall = PlatformDependent.newLongCounter();
    private final LongCounter allocationsHuge = PlatformDependent.newLongCounter();
    private final LongCounter activeBytesHuge = PlatformDependent.newLongCounter();
    private final LongCounter deallocationsHuge = PlatformDependent.newLongCounter();
    final AtomicInteger numThreadCaches = new AtomicInteger();
    private final PoolSubpage<T>[] tinySubpagePools = newSubpagePoolArray(32);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: io.netty.buffer.PoolArena$1  reason: invalid class name */
    /* loaded from: classes5.dex */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$io$netty$buffer$PoolArena$SizeClass;

        static {
            int[] iArr = new int[SizeClass.values().length];
            $SwitchMap$io$netty$buffer$PoolArena$SizeClass = iArr;
            try {
                iArr[SizeClass.Normal.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$io$netty$buffer$PoolArena$SizeClass[SizeClass.Small.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$io$netty$buffer$PoolArena$SizeClass[SizeClass.Tiny.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* loaded from: classes5.dex */
    static final class DirectArena extends PoolArena<ByteBuffer> {
        /* JADX INFO: Access modifiers changed from: package-private */
        public DirectArena(PooledByteBufAllocator pooledByteBufAllocator, int i2, int i4, int i5, int i6, int i7) {
            super(pooledByteBufAllocator, i2, i4, i5, i6, i7);
        }

        private static ByteBuffer allocateDirect(int i2) {
            return PlatformDependent.useDirectBufferNoCleaner() ? PlatformDependent.allocateDirectNoCleaner(i2) : ByteBuffer.allocateDirect(i2);
        }

        @Override // io.netty.buffer.PoolArena
        protected void destroyChunk(PoolChunk<ByteBuffer> poolChunk) {
            if (PlatformDependent.useDirectBufferNoCleaner()) {
                PlatformDependent.freeDirectNoCleaner(poolChunk.memory);
            } else {
                PlatformDependent.freeDirectBuffer(poolChunk.memory);
            }
        }

        @Override // io.netty.buffer.PoolArena
        boolean isDirect() {
            return true;
        }

        @Override // io.netty.buffer.PoolArena
        protected PooledByteBuf<ByteBuffer> newByteBuf(int i2) {
            if (PoolArena.HAS_UNSAFE) {
                return PooledUnsafeDirectByteBuf.newInstance(i2);
            }
            return PooledDirectByteBuf.newInstance(i2);
        }

        @Override // io.netty.buffer.PoolArena
        protected PoolChunk<ByteBuffer> newChunk(int i2, int i4, int i5, int i6) {
            int i7 = this.directMemoryCacheAlignment;
            if (i7 == 0) {
                return new PoolChunk<>(this, allocateDirect(i6), i2, i4, i5, i6, 0);
            }
            ByteBuffer allocateDirect = allocateDirect(i7 + i6);
            return new PoolChunk<>(this, allocateDirect, i2, i4, i5, i6, offsetCacheLine(allocateDirect));
        }

        @Override // io.netty.buffer.PoolArena
        protected PoolChunk<ByteBuffer> newUnpooledChunk(int i2) {
            int i4 = this.directMemoryCacheAlignment;
            if (i4 == 0) {
                return new PoolChunk<>(this, allocateDirect(i2), i2, 0);
            }
            ByteBuffer allocateDirect = allocateDirect(i4 + i2);
            return new PoolChunk<>(this, allocateDirect, i2, offsetCacheLine(allocateDirect));
        }

        int offsetCacheLine(ByteBuffer byteBuffer) {
            return this.directMemoryCacheAlignment - (PoolArena.HAS_UNSAFE ? (int) (PlatformDependent.directBufferAddress(byteBuffer) & this.directMemoryCacheAlignmentMask) : 0);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // io.netty.buffer.PoolArena
        public void memoryCopy(ByteBuffer byteBuffer, int i2, PooledByteBuf<ByteBuffer> pooledByteBuf, int i4) {
            if (i4 == 0) {
                return;
            }
            if (PoolArena.HAS_UNSAFE) {
                PlatformDependent.copyMemory(PlatformDependent.directBufferAddress(byteBuffer) + i2, PlatformDependent.directBufferAddress(pooledByteBuf.memory) + pooledByteBuf.offset, i4);
                return;
            }
            ByteBuffer duplicate = byteBuffer.duplicate();
            ByteBuffer internalNioBuffer = pooledByteBuf.internalNioBuffer();
            duplicate.position(i2).limit(i2 + i4);
            internalNioBuffer.position(pooledByteBuf.offset);
            internalNioBuffer.put(duplicate);
        }
    }

    /* loaded from: classes5.dex */
    static final class HeapArena extends PoolArena<byte[]> {
        /* JADX INFO: Access modifiers changed from: package-private */
        public HeapArena(PooledByteBufAllocator pooledByteBufAllocator, int i2, int i4, int i5, int i6, int i7) {
            super(pooledByteBufAllocator, i2, i4, i5, i6, i7);
        }

        private static byte[] newByteArray(int i2) {
            return PlatformDependent.allocateUninitializedArray(i2);
        }

        @Override // io.netty.buffer.PoolArena
        protected void destroyChunk(PoolChunk<byte[]> poolChunk) {
        }

        @Override // io.netty.buffer.PoolArena
        boolean isDirect() {
            return false;
        }

        @Override // io.netty.buffer.PoolArena
        protected PooledByteBuf<byte[]> newByteBuf(int i2) {
            return PoolArena.HAS_UNSAFE ? PooledUnsafeHeapByteBuf.newUnsafeInstance(i2) : PooledHeapByteBuf.newInstance(i2);
        }

        @Override // io.netty.buffer.PoolArena
        protected PoolChunk<byte[]> newChunk(int i2, int i4, int i5, int i6) {
            return new PoolChunk<>(this, newByteArray(i6), i2, i4, i5, i6, 0);
        }

        @Override // io.netty.buffer.PoolArena
        protected PoolChunk<byte[]> newUnpooledChunk(int i2) {
            return new PoolChunk<>(this, newByteArray(i2), i2, 0);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // io.netty.buffer.PoolArena
        public void memoryCopy(byte[] bArr, int i2, PooledByteBuf<byte[]> pooledByteBuf, int i4) {
            if (i4 == 0) {
                return;
            }
            System.arraycopy(bArr, i2, pooledByteBuf.memory, pooledByteBuf.offset, i4);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public enum SizeClass {
        Tiny,
        Small,
        Normal
    }

    protected PoolArena(PooledByteBufAllocator pooledByteBufAllocator, int i2, int i4, int i5, int i6, int i7) {
        this.parent = pooledByteBufAllocator;
        this.pageSize = i2;
        this.maxOrder = i4;
        this.pageShifts = i5;
        this.chunkSize = i6;
        this.directMemoryCacheAlignment = i7;
        this.directMemoryCacheAlignmentMask = i7 - 1;
        this.subpageOverflowMask = (i2 - 1) ^ (-1);
        int i8 = 0;
        int i9 = 0;
        while (true) {
            PoolSubpage<T>[] poolSubpageArr = this.tinySubpagePools;
            if (i9 >= poolSubpageArr.length) {
                break;
            }
            poolSubpageArr[i9] = newSubpagePoolHead(i2);
            i9++;
        }
        int i10 = i5 - 9;
        this.numSmallSubpagePools = i10;
        this.smallSubpagePools = newSubpagePoolArray(i10);
        while (true) {
            PoolSubpage<T>[] poolSubpageArr2 = this.smallSubpagePools;
            if (i8 < poolSubpageArr2.length) {
                poolSubpageArr2[i8] = newSubpagePoolHead(i2);
                i8++;
            } else {
                PoolChunkList<T> poolChunkList = new PoolChunkList<>(this, null, 100, Integer.MAX_VALUE, i6);
                this.q100 = poolChunkList;
                PoolChunkList<T> poolChunkList2 = new PoolChunkList<>(this, poolChunkList, 75, 100, i6);
                this.q075 = poolChunkList2;
                PoolChunkList<T> poolChunkList3 = new PoolChunkList<>(this, poolChunkList2, 50, 100, i6);
                this.q050 = poolChunkList3;
                PoolChunkList<T> poolChunkList4 = new PoolChunkList<>(this, poolChunkList3, 25, 75, i6);
                this.q025 = poolChunkList4;
                PoolChunkList<T> poolChunkList5 = new PoolChunkList<>(this, poolChunkList4, 1, 50, i6);
                this.q000 = poolChunkList5;
                PoolChunkList<T> poolChunkList6 = new PoolChunkList<>(this, poolChunkList5, Integer.MIN_VALUE, 25, i6);
                this.qInit = poolChunkList6;
                poolChunkList.prevList(poolChunkList2);
                poolChunkList2.prevList(poolChunkList3);
                poolChunkList3.prevList(poolChunkList4);
                poolChunkList4.prevList(poolChunkList5);
                poolChunkList5.prevList(null);
                poolChunkList6.prevList(poolChunkList6);
                ArrayList arrayList = new ArrayList(6);
                arrayList.add(poolChunkList6);
                arrayList.add(poolChunkList5);
                arrayList.add(poolChunkList4);
                arrayList.add(poolChunkList3);
                arrayList.add(poolChunkList2);
                arrayList.add(poolChunkList);
                this.chunkListMetrics = Collections.unmodifiableList(arrayList);
                return;
            }
        }
    }

    private void allocateHuge(PooledByteBuf<T> pooledByteBuf, int i2) {
        PoolChunk<T> newUnpooledChunk = newUnpooledChunk(i2);
        this.activeBytesHuge.add(newUnpooledChunk.chunkSize());
        pooledByteBuf.initUnpooled(newUnpooledChunk, i2);
        this.allocationsHuge.increment();
    }

    private void allocateNormal(PooledByteBuf<T> pooledByteBuf, int i2, int i4) {
        if (this.q050.allocate(pooledByteBuf, i2, i4) || this.q025.allocate(pooledByteBuf, i2, i4) || this.q000.allocate(pooledByteBuf, i2, i4) || this.qInit.allocate(pooledByteBuf, i2, i4) || this.q075.allocate(pooledByteBuf, i2, i4)) {
            return;
        }
        PoolChunk<T> newChunk = newChunk(this.pageSize, this.maxOrder, this.pageShifts, this.chunkSize);
        newChunk.allocate(pooledByteBuf, i2, i4);
        this.qInit.add(newChunk);
    }

    private static void appendPoolSubPages(StringBuilder sb, PoolSubpage<?>[] poolSubpageArr) {
        for (int i2 = 0; i2 < poolSubpageArr.length; i2++) {
            PoolSubpage<?> poolSubpage = poolSubpageArr[i2];
            if (poolSubpage.next != poolSubpage) {
                sb.append(StringUtil.NEWLINE);
                sb.append(i2);
                sb.append(": ");
                PoolSubpage poolSubpage2 = poolSubpage.next;
                do {
                    sb.append(poolSubpage2);
                    poolSubpage2 = poolSubpage2.next;
                } while (poolSubpage2 != poolSubpage);
            }
        }
    }

    private void destroyPoolChunkLists(PoolChunkList<T>... poolChunkListArr) {
        for (PoolChunkList<T> poolChunkList : poolChunkListArr) {
            poolChunkList.destroy(this);
        }
    }

    private static void destroyPoolSubPages(PoolSubpage<?>[] poolSubpageArr) {
        for (PoolSubpage<?> poolSubpage : poolSubpageArr) {
            poolSubpage.destroy();
        }
    }

    private void incTinySmallAllocation(boolean z3) {
        if (z3) {
            this.allocationsTiny.increment();
        } else {
            this.allocationsSmall.increment();
        }
    }

    static boolean isTiny(int i2) {
        return (i2 & (-512)) == 0;
    }

    private PoolSubpage<T>[] newSubpagePoolArray(int i2) {
        return new PoolSubpage[i2];
    }

    private PoolSubpage<T> newSubpagePoolHead(int i2) {
        PoolSubpage<T> poolSubpage = new PoolSubpage<>(i2);
        poolSubpage.prev = poolSubpage;
        poolSubpage.next = poolSubpage;
        return poolSubpage;
    }

    private SizeClass sizeClass(int i2) {
        if (isTinyOrSmall(i2)) {
            return isTiny(i2) ? SizeClass.Tiny : SizeClass.Small;
        }
        return SizeClass.Normal;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int smallIdx(int i2) {
        int i4 = i2 >>> 10;
        int i5 = 0;
        while (i4 != 0) {
            i4 >>>= 1;
            i5++;
        }
        return i5;
    }

    private static List<PoolSubpageMetric> subPageMetricList(PoolSubpage<?>[] poolSubpageArr) {
        ArrayList arrayList = new ArrayList();
        for (PoolSubpage<?> poolSubpage : poolSubpageArr) {
            PoolSubpage poolSubpage2 = poolSubpage.next;
            if (poolSubpage2 != poolSubpage) {
                do {
                    arrayList.add(poolSubpage2);
                    poolSubpage2 = poolSubpage2.next;
                } while (poolSubpage2 != poolSubpage);
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int tinyIdx(int i2) {
        return i2 >>> 4;
    }

    int alignCapacity(int i2) {
        int i4 = this.directMemoryCacheAlignmentMask & i2;
        return i4 == 0 ? i2 : (i2 + this.directMemoryCacheAlignment) - i4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public PooledByteBuf<T> allocate(PoolThreadCache poolThreadCache, int i2, int i4) {
        PooledByteBuf<T> newByteBuf = newByteBuf(i4);
        allocate(poolThreadCache, newByteBuf, i2);
        return newByteBuf;
    }

    @Override // io.netty.buffer.PoolArenaMetric
    public List<PoolChunkListMetric> chunkLists() {
        return this.chunkListMetrics;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void destroyChunk(PoolChunk<T> poolChunk);

    protected final void finalize() throws Throwable {
        try {
            super.finalize();
            destroyPoolSubPages(this.smallSubpagePools);
            destroyPoolSubPages(this.tinySubpagePools);
            destroyPoolChunkLists(this.qInit, this.q000, this.q025, this.q050, this.q075, this.q100);
        } catch (Throwable th) {
            destroyPoolSubPages(this.smallSubpagePools);
            destroyPoolSubPages(this.tinySubpagePools);
            destroyPoolChunkLists(this.qInit, this.q000, this.q025, this.q050, this.q075, this.q100);
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public PoolSubpage<T> findSubpagePoolHead(int i2) {
        PoolSubpage<T>[] poolSubpageArr;
        int i4;
        if (isTiny(i2)) {
            i4 = i2 >>> 4;
            poolSubpageArr = this.tinySubpagePools;
        } else {
            int i5 = 0;
            int i6 = i2 >>> 10;
            while (i6 != 0) {
                i6 >>>= 1;
                i5++;
            }
            int i7 = i5;
            poolSubpageArr = this.smallSubpagePools;
            i4 = i7;
        }
        return poolSubpageArr[i4];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void free(PoolChunk<T> poolChunk, ByteBuffer byteBuffer, long j4, int i2, PoolThreadCache poolThreadCache) {
        if (poolChunk.unpooled) {
            int chunkSize = poolChunk.chunkSize();
            destroyChunk(poolChunk);
            this.activeBytesHuge.add(-chunkSize);
            this.deallocationsHuge.increment();
            return;
        }
        SizeClass sizeClass = sizeClass(i2);
        if (poolThreadCache == null || !poolThreadCache.add(this, poolChunk, byteBuffer, j4, i2, sizeClass)) {
            freeChunk(poolChunk, j4, sizeClass, byteBuffer, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void freeChunk(PoolChunk<T> poolChunk, long j4, SizeClass sizeClass, ByteBuffer byteBuffer, boolean z3) {
        boolean z4;
        synchronized (this) {
            z4 = true;
            if (!z3) {
                int i2 = AnonymousClass1.$SwitchMap$io$netty$buffer$PoolArena$SizeClass[sizeClass.ordinal()];
                if (i2 == 1) {
                    this.deallocationsNormal++;
                } else if (i2 == 2) {
                    this.deallocationsSmall++;
                } else if (i2 == 3) {
                    this.deallocationsTiny++;
                } else {
                    throw new Error();
                }
            }
            if (poolChunk.parent.free(poolChunk, j4, byteBuffer)) {
                z4 = false;
            }
        }
        if (z4) {
            destroyChunk(poolChunk);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract boolean isDirect();

    boolean isTinyOrSmall(int i2) {
        return (i2 & this.subpageOverflowMask) == 0;
    }

    protected abstract void memoryCopy(T t3, int i2, PooledByteBuf<T> pooledByteBuf, int i4);

    protected abstract PooledByteBuf<T> newByteBuf(int i2);

    protected abstract PoolChunk<T> newChunk(int i2, int i4, int i5, int i6);

    protected abstract PoolChunk<T> newUnpooledChunk(int i2);

    int normalizeCapacity(int i2) {
        ObjectUtil.checkPositiveOrZero(i2, "reqCapacity");
        if (i2 >= this.chunkSize) {
            return this.directMemoryCacheAlignment == 0 ? i2 : alignCapacity(i2);
        } else if (isTiny(i2)) {
            if (this.directMemoryCacheAlignment > 0) {
                return alignCapacity(i2);
            }
            return (i2 & 15) == 0 ? i2 : (i2 & (-16)) + 16;
        } else {
            int i4 = i2 - 1;
            int i5 = i4 | (i4 >>> 1);
            int i6 = i5 | (i5 >>> 2);
            int i7 = i6 | (i6 >>> 4);
            int i8 = i7 | (i7 >>> 8);
            int i9 = (i8 | (i8 >>> 16)) + 1;
            return i9 < 0 ? i9 >>> 1 : i9;
        }
    }

    @Override // io.netty.buffer.PoolArenaMetric
    public long numActiveAllocations() {
        long j4;
        long value = ((this.allocationsTiny.value() + this.allocationsSmall.value()) + this.allocationsHuge.value()) - this.deallocationsHuge.value();
        synchronized (this) {
            j4 = value + (this.allocationsNormal - ((this.deallocationsTiny + this.deallocationsSmall) + this.deallocationsNormal));
        }
        return Math.max(j4, 0L);
    }

    @Override // io.netty.buffer.PoolArenaMetric
    public long numActiveBytes() {
        long value = this.activeBytesHuge.value();
        synchronized (this) {
            for (int i2 = 0; i2 < this.chunkListMetrics.size(); i2++) {
                for (PoolChunkMetric poolChunkMetric : this.chunkListMetrics.get(i2)) {
                    value += poolChunkMetric.chunkSize();
                }
            }
        }
        return Math.max(0L, value);
    }

    @Override // io.netty.buffer.PoolArenaMetric
    public long numActiveHugeAllocations() {
        return Math.max(numHugeAllocations() - numHugeDeallocations(), 0L);
    }

    @Override // io.netty.buffer.PoolArenaMetric
    public long numActiveNormalAllocations() {
        long j4;
        synchronized (this) {
            j4 = this.allocationsNormal - this.deallocationsNormal;
        }
        return Math.max(j4, 0L);
    }

    @Override // io.netty.buffer.PoolArenaMetric
    public long numActiveSmallAllocations() {
        return Math.max(numSmallAllocations() - numSmallDeallocations(), 0L);
    }

    @Override // io.netty.buffer.PoolArenaMetric
    public long numActiveTinyAllocations() {
        return Math.max(numTinyAllocations() - numTinyDeallocations(), 0L);
    }

    @Override // io.netty.buffer.PoolArenaMetric
    public long numAllocations() {
        long j4;
        synchronized (this) {
            j4 = this.allocationsNormal;
        }
        return this.allocationsTiny.value() + this.allocationsSmall.value() + j4 + this.allocationsHuge.value();
    }

    @Override // io.netty.buffer.PoolArenaMetric
    public int numChunkLists() {
        return this.chunkListMetrics.size();
    }

    @Override // io.netty.buffer.PoolArenaMetric
    public long numDeallocations() {
        long j4;
        synchronized (this) {
            j4 = this.deallocationsTiny + this.deallocationsSmall + this.deallocationsNormal;
        }
        return j4 + this.deallocationsHuge.value();
    }

    @Override // io.netty.buffer.PoolArenaMetric
    public long numHugeAllocations() {
        return this.allocationsHuge.value();
    }

    @Override // io.netty.buffer.PoolArenaMetric
    public long numHugeDeallocations() {
        return this.deallocationsHuge.value();
    }

    @Override // io.netty.buffer.PoolArenaMetric
    public synchronized long numNormalAllocations() {
        return this.allocationsNormal;
    }

    @Override // io.netty.buffer.PoolArenaMetric
    public synchronized long numNormalDeallocations() {
        return this.deallocationsNormal;
    }

    @Override // io.netty.buffer.PoolArenaMetric
    public long numSmallAllocations() {
        return this.allocationsSmall.value();
    }

    @Override // io.netty.buffer.PoolArenaMetric
    public synchronized long numSmallDeallocations() {
        return this.deallocationsSmall;
    }

    @Override // io.netty.buffer.PoolArenaMetric
    public int numSmallSubpages() {
        return this.smallSubpagePools.length;
    }

    @Override // io.netty.buffer.PoolArenaMetric
    public int numThreadCaches() {
        return this.numThreadCaches.get();
    }

    @Override // io.netty.buffer.PoolArenaMetric
    public long numTinyAllocations() {
        return this.allocationsTiny.value();
    }

    @Override // io.netty.buffer.PoolArenaMetric
    public synchronized long numTinyDeallocations() {
        return this.deallocationsTiny;
    }

    @Override // io.netty.buffer.PoolArenaMetric
    public int numTinySubpages() {
        return this.tinySubpagePools.length;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void reallocate(PooledByteBuf<T> pooledByteBuf, int i2, boolean z3) {
        int i4 = pooledByteBuf.length;
        if (i4 == i2) {
            return;
        }
        PoolChunk<T> poolChunk = pooledByteBuf.chunk;
        ByteBuffer byteBuffer = pooledByteBuf.tmpNioBuf;
        long j4 = pooledByteBuf.handle;
        T t3 = pooledByteBuf.memory;
        int i5 = pooledByteBuf.offset;
        int i6 = pooledByteBuf.maxLength;
        allocate(this.parent.threadCache(), pooledByteBuf, i2);
        if (i2 > i4) {
            i2 = i4;
        } else {
            pooledByteBuf.trimIndicesToCapacity(i2);
        }
        memoryCopy(t3, i5, pooledByteBuf, i2);
        if (z3) {
            free(poolChunk, byteBuffer, j4, i6, pooledByteBuf.cache);
        }
    }

    @Override // io.netty.buffer.PoolArenaMetric
    public List<PoolSubpageMetric> smallSubpages() {
        return subPageMetricList(this.smallSubpagePools);
    }

    @Override // io.netty.buffer.PoolArenaMetric
    public List<PoolSubpageMetric> tinySubpages() {
        return subPageMetricList(this.tinySubpagePools);
    }

    public synchronized String toString() {
        StringBuilder sb;
        sb = new StringBuilder();
        sb.append("Chunk(s) at 0~25%:");
        String str = StringUtil.NEWLINE;
        sb.append(str);
        sb.append(this.qInit);
        sb.append(str);
        sb.append("Chunk(s) at 0~50%:");
        sb.append(str);
        sb.append(this.q000);
        sb.append(str);
        sb.append("Chunk(s) at 25~75%:");
        sb.append(str);
        sb.append(this.q025);
        sb.append(str);
        sb.append("Chunk(s) at 50~100%:");
        sb.append(str);
        sb.append(this.q050);
        sb.append(str);
        sb.append("Chunk(s) at 75~100%:");
        sb.append(str);
        sb.append(this.q075);
        sb.append(str);
        sb.append("Chunk(s) at 100%:");
        sb.append(str);
        sb.append(this.q100);
        sb.append(str);
        sb.append("tiny subpages:");
        appendPoolSubPages(sb, this.tinySubpagePools);
        sb.append(str);
        sb.append("small subpages:");
        appendPoolSubPages(sb, this.smallSubpagePools);
        sb.append(str);
        return sb.toString();
    }

    private void allocate(PoolThreadCache poolThreadCache, PooledByteBuf<T> pooledByteBuf, int i2) {
        int smallIdx;
        PoolSubpage<T>[] poolSubpageArr;
        int normalizeCapacity = normalizeCapacity(i2);
        if (isTinyOrSmall(normalizeCapacity)) {
            boolean isTiny = isTiny(normalizeCapacity);
            if (isTiny) {
                if (poolThreadCache.allocateTiny(this, pooledByteBuf, i2, normalizeCapacity)) {
                    return;
                }
                smallIdx = tinyIdx(normalizeCapacity);
                poolSubpageArr = this.tinySubpagePools;
            } else if (poolThreadCache.allocateSmall(this, pooledByteBuf, i2, normalizeCapacity)) {
                return;
            } else {
                smallIdx = smallIdx(normalizeCapacity);
                poolSubpageArr = this.smallSubpagePools;
            }
            PoolSubpage<T> poolSubpage = poolSubpageArr[smallIdx];
            synchronized (poolSubpage) {
                PoolSubpage<T> poolSubpage2 = poolSubpage.next;
                if (poolSubpage2 != poolSubpage) {
                    poolSubpage2.chunk.initBufWithSubpage(pooledByteBuf, null, poolSubpage2.allocate(), i2);
                    incTinySmallAllocation(isTiny);
                    return;
                }
                synchronized (this) {
                    allocateNormal(pooledByteBuf, i2, normalizeCapacity);
                }
                incTinySmallAllocation(isTiny);
            }
        } else if (normalizeCapacity <= this.chunkSize) {
            if (poolThreadCache.allocateNormal(this, pooledByteBuf, i2, normalizeCapacity)) {
                return;
            }
            synchronized (this) {
                allocateNormal(pooledByteBuf, i2, normalizeCapacity);
                this.allocationsNormal++;
            }
        } else {
            allocateHuge(pooledByteBuf, i2);
        }
    }
}
