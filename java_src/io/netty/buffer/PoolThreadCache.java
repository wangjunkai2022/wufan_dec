package io.netty.buffer;

import io.netty.buffer.PoolArena;
import io.netty.util.internal.MathUtil;
import io.netty.util.internal.ObjectPool;
import io.netty.util.internal.ObjectUtil;
import io.netty.util.internal.PlatformDependent;
import io.netty.util.internal.logging.InternalLogger;
import io.netty.util.internal.logging.InternalLoggerFactory;
import java.nio.ByteBuffer;
import java.util.Queue;
import java.util.concurrent.atomic.AtomicBoolean;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class PoolThreadCache {
    private static final InternalLogger logger = InternalLoggerFactory.getInstance(PoolThreadCache.class);
    private int allocations;
    final PoolArena<ByteBuffer> directArena;
    private final int freeSweepAllocationThreshold;
    private final AtomicBoolean freed = new AtomicBoolean();
    final PoolArena<byte[]> heapArena;
    private final MemoryRegionCache<ByteBuffer>[] normalDirectCaches;
    private final MemoryRegionCache<byte[]>[] normalHeapCaches;
    private final int numShiftsNormalDirect;
    private final int numShiftsNormalHeap;
    private final MemoryRegionCache<ByteBuffer>[] smallSubPageDirectCaches;
    private final MemoryRegionCache<byte[]>[] smallSubPageHeapCaches;
    private final MemoryRegionCache<ByteBuffer>[] tinySubPageDirectCaches;
    private final MemoryRegionCache<byte[]>[] tinySubPageHeapCaches;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: io.netty.buffer.PoolThreadCache$1  reason: invalid class name */
    /* loaded from: classes5.dex */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$io$netty$buffer$PoolArena$SizeClass;

        static {
            int[] iArr = new int[PoolArena.SizeClass.values().length];
            $SwitchMap$io$netty$buffer$PoolArena$SizeClass = iArr;
            try {
                iArr[PoolArena.SizeClass.Normal.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$io$netty$buffer$PoolArena$SizeClass[PoolArena.SizeClass.Small.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$io$netty$buffer$PoolArena$SizeClass[PoolArena.SizeClass.Tiny.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static abstract class MemoryRegionCache<T> {
        private static final ObjectPool<Entry> RECYCLER = ObjectPool.newPool(new ObjectPool.ObjectCreator<Entry>() { // from class: io.netty.buffer.PoolThreadCache.MemoryRegionCache.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // io.netty.util.internal.ObjectPool.ObjectCreator
            public Entry newObject(ObjectPool.Handle<Entry> handle) {
                return new Entry(handle);
            }
        });
        private int allocations;
        private final Queue<Entry<T>> queue;
        private final int size;
        private final PoolArena.SizeClass sizeClass;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes5.dex */
        public static final class Entry<T> {
            PoolChunk<T> chunk;
            long handle = -1;
            ByteBuffer nioBuffer;
            final ObjectPool.Handle<Entry<?>> recyclerHandle;

            Entry(ObjectPool.Handle<Entry<?>> handle) {
                this.recyclerHandle = handle;
            }

            void recycle() {
                this.chunk = null;
                this.nioBuffer = null;
                this.handle = -1L;
                this.recyclerHandle.recycle(this);
            }
        }

        MemoryRegionCache(int i2, PoolArena.SizeClass sizeClass) {
            int safeFindNextPositivePowerOfTwo = MathUtil.safeFindNextPositivePowerOfTwo(i2);
            this.size = safeFindNextPositivePowerOfTwo;
            this.queue = PlatformDependent.newFixedMpscQueue(safeFindNextPositivePowerOfTwo);
            this.sizeClass = sizeClass;
        }

        private void freeEntry(Entry entry, boolean z3) {
            PoolChunk<T> poolChunk = entry.chunk;
            long j4 = entry.handle;
            ByteBuffer byteBuffer = entry.nioBuffer;
            if (!z3) {
                entry.recycle();
            }
            poolChunk.arena.freeChunk(poolChunk, j4, this.sizeClass, byteBuffer, z3);
        }

        /* JADX WARN: Multi-variable type inference failed */
        private static Entry newEntry(PoolChunk<?> poolChunk, ByteBuffer byteBuffer, long j4) {
            Entry entry = RECYCLER.get();
            entry.chunk = poolChunk;
            entry.nioBuffer = byteBuffer;
            entry.handle = j4;
            return entry;
        }

        public final boolean add(PoolChunk<T> poolChunk, ByteBuffer byteBuffer, long j4) {
            Entry<T> newEntry = newEntry(poolChunk, byteBuffer, j4);
            boolean offer = this.queue.offer(newEntry);
            if (!offer) {
                newEntry.recycle();
            }
            return offer;
        }

        public final boolean allocate(PooledByteBuf<T> pooledByteBuf, int i2) {
            Entry<T> poll = this.queue.poll();
            if (poll == null) {
                return false;
            }
            initBuf(poll.chunk, poll.nioBuffer, poll.handle, pooledByteBuf, i2);
            poll.recycle();
            this.allocations++;
            return true;
        }

        public final int free(boolean z3) {
            return free(Integer.MAX_VALUE, z3);
        }

        protected abstract void initBuf(PoolChunk<T> poolChunk, ByteBuffer byteBuffer, long j4, PooledByteBuf<T> pooledByteBuf, int i2);

        public final void trim() {
            int i2 = this.size - this.allocations;
            this.allocations = 0;
            if (i2 > 0) {
                free(i2, false);
            }
        }

        private int free(int i2, boolean z3) {
            int i4 = 0;
            while (i4 < i2) {
                Entry<T> poll = this.queue.poll();
                if (poll == null) {
                    break;
                }
                freeEntry(poll, z3);
                i4++;
            }
            return i4;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static final class NormalMemoryRegionCache<T> extends MemoryRegionCache<T> {
        NormalMemoryRegionCache(int i2) {
            super(i2, PoolArena.SizeClass.Normal);
        }

        @Override // io.netty.buffer.PoolThreadCache.MemoryRegionCache
        protected void initBuf(PoolChunk<T> poolChunk, ByteBuffer byteBuffer, long j4, PooledByteBuf<T> pooledByteBuf, int i2) {
            poolChunk.initBuf(pooledByteBuf, byteBuffer, j4, i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static final class SubPageMemoryRegionCache<T> extends MemoryRegionCache<T> {
        SubPageMemoryRegionCache(int i2, PoolArena.SizeClass sizeClass) {
            super(i2, sizeClass);
        }

        @Override // io.netty.buffer.PoolThreadCache.MemoryRegionCache
        protected void initBuf(PoolChunk<T> poolChunk, ByteBuffer byteBuffer, long j4, PooledByteBuf<T> pooledByteBuf, int i2) {
            poolChunk.initBufWithSubpage(pooledByteBuf, byteBuffer, j4, i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public PoolThreadCache(PoolArena<byte[]> poolArena, PoolArena<ByteBuffer> poolArena2, int i2, int i4, int i5, int i6, int i7) {
        ObjectUtil.checkPositiveOrZero(i6, "maxCachedBufferCapacity");
        this.freeSweepAllocationThreshold = i7;
        this.heapArena = poolArena;
        this.directArena = poolArena2;
        if (poolArena2 != null) {
            this.tinySubPageDirectCaches = createSubPageCaches(i2, 32, PoolArena.SizeClass.Tiny);
            this.smallSubPageDirectCaches = createSubPageCaches(i4, poolArena2.numSmallSubpagePools, PoolArena.SizeClass.Small);
            this.numShiftsNormalDirect = log2(poolArena2.pageSize);
            this.normalDirectCaches = createNormalCaches(i5, i6, poolArena2);
            poolArena2.numThreadCaches.getAndIncrement();
        } else {
            this.tinySubPageDirectCaches = null;
            this.smallSubPageDirectCaches = null;
            this.normalDirectCaches = null;
            this.numShiftsNormalDirect = -1;
        }
        if (poolArena != null) {
            this.tinySubPageHeapCaches = createSubPageCaches(i2, 32, PoolArena.SizeClass.Tiny);
            this.smallSubPageHeapCaches = createSubPageCaches(i4, poolArena.numSmallSubpagePools, PoolArena.SizeClass.Small);
            this.numShiftsNormalHeap = log2(poolArena.pageSize);
            this.normalHeapCaches = createNormalCaches(i5, i6, poolArena);
            poolArena.numThreadCaches.getAndIncrement();
        } else {
            this.tinySubPageHeapCaches = null;
            this.smallSubPageHeapCaches = null;
            this.normalHeapCaches = null;
            this.numShiftsNormalHeap = -1;
        }
        if (!(this.tinySubPageDirectCaches == null && this.smallSubPageDirectCaches == null && this.normalDirectCaches == null && this.tinySubPageHeapCaches == null && this.smallSubPageHeapCaches == null && this.normalHeapCaches == null) && i7 < 1) {
            throw new IllegalArgumentException("freeSweepAllocationThreshold: " + i7 + " (expected: > 0)");
        }
    }

    private boolean allocate(MemoryRegionCache<?> memoryRegionCache, PooledByteBuf pooledByteBuf, int i2) {
        if (memoryRegionCache == null) {
            return false;
        }
        boolean allocate = memoryRegionCache.allocate(pooledByteBuf, i2);
        int i4 = this.allocations + 1;
        this.allocations = i4;
        if (i4 >= this.freeSweepAllocationThreshold) {
            this.allocations = 0;
            trim();
        }
        return allocate;
    }

    private MemoryRegionCache<?> cache(PoolArena<?> poolArena, int i2, PoolArena.SizeClass sizeClass) {
        int i4 = AnonymousClass1.$SwitchMap$io$netty$buffer$PoolArena$SizeClass[sizeClass.ordinal()];
        if (i4 != 1) {
            if (i4 != 2) {
                if (i4 == 3) {
                    return cacheForTiny(poolArena, i2);
                }
                throw new Error();
            }
            return cacheForSmall(poolArena, i2);
        }
        return cacheForNormal(poolArena, i2);
    }

    private MemoryRegionCache<?> cacheForNormal(PoolArena<?> poolArena, int i2) {
        if (poolArena.isDirect()) {
            return cache(this.normalDirectCaches, log2(i2 >> this.numShiftsNormalDirect));
        }
        return cache(this.normalHeapCaches, log2(i2 >> this.numShiftsNormalHeap));
    }

    private MemoryRegionCache<?> cacheForSmall(PoolArena<?> poolArena, int i2) {
        int smallIdx = PoolArena.smallIdx(i2);
        if (poolArena.isDirect()) {
            return cache(this.smallSubPageDirectCaches, smallIdx);
        }
        return cache(this.smallSubPageHeapCaches, smallIdx);
    }

    private MemoryRegionCache<?> cacheForTiny(PoolArena<?> poolArena, int i2) {
        int tinyIdx = PoolArena.tinyIdx(i2);
        if (poolArena.isDirect()) {
            return cache(this.tinySubPageDirectCaches, tinyIdx);
        }
        return cache(this.tinySubPageHeapCaches, tinyIdx);
    }

    private static <T> MemoryRegionCache<T>[] createNormalCaches(int i2, int i4, PoolArena<T> poolArena) {
        if (i2 <= 0 || i4 <= 0) {
            return null;
        }
        int max = Math.max(1, log2(Math.min(poolArena.chunkSize, i4) / poolArena.pageSize) + 1);
        MemoryRegionCache<T>[] memoryRegionCacheArr = new MemoryRegionCache[max];
        for (int i5 = 0; i5 < max; i5++) {
            memoryRegionCacheArr[i5] = new NormalMemoryRegionCache(i2);
        }
        return memoryRegionCacheArr;
    }

    private static <T> MemoryRegionCache<T>[] createSubPageCaches(int i2, int i4, PoolArena.SizeClass sizeClass) {
        if (i2 <= 0 || i4 <= 0) {
            return null;
        }
        MemoryRegionCache<T>[] memoryRegionCacheArr = new MemoryRegionCache[i4];
        for (int i5 = 0; i5 < i4; i5++) {
            memoryRegionCacheArr[i5] = new SubPageMemoryRegionCache(i2, sizeClass);
        }
        return memoryRegionCacheArr;
    }

    private static int log2(int i2) {
        int i4 = 0;
        while (i2 > 1) {
            i2 >>= 1;
            i4++;
        }
        return i4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean add(PoolArena<?> poolArena, PoolChunk poolChunk, ByteBuffer byteBuffer, long j4, int i2, PoolArena.SizeClass sizeClass) {
        MemoryRegionCache<?> cache = cache(poolArena, i2, sizeClass);
        if (cache == null) {
            return false;
        }
        return cache.add(poolChunk, byteBuffer, j4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean allocateNormal(PoolArena<?> poolArena, PooledByteBuf<?> pooledByteBuf, int i2, int i4) {
        return allocate(cacheForNormal(poolArena, i4), pooledByteBuf, i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean allocateSmall(PoolArena<?> poolArena, PooledByteBuf<?> pooledByteBuf, int i2, int i4) {
        return allocate(cacheForSmall(poolArena, i4), pooledByteBuf, i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean allocateTiny(PoolArena<?> poolArena, PooledByteBuf<?> pooledByteBuf, int i2, int i4) {
        return allocate(cacheForTiny(poolArena, i4), pooledByteBuf, i2);
    }

    protected void finalize() throws Throwable {
        try {
            super.finalize();
        } finally {
            free(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void free(boolean z3) {
        if (this.freed.compareAndSet(false, true)) {
            int free = free(this.tinySubPageDirectCaches, z3) + free(this.smallSubPageDirectCaches, z3) + free(this.normalDirectCaches, z3) + free((MemoryRegionCache<?>[]) this.tinySubPageHeapCaches, z3) + free((MemoryRegionCache<?>[]) this.smallSubPageHeapCaches, z3) + free((MemoryRegionCache<?>[]) this.normalHeapCaches, z3);
            if (free > 0) {
                InternalLogger internalLogger = logger;
                if (internalLogger.isDebugEnabled()) {
                    internalLogger.debug("Freed {} thread-local buffer(s) from thread: {}", Integer.valueOf(free), Thread.currentThread().getName());
                }
            }
            PoolArena<ByteBuffer> poolArena = this.directArena;
            if (poolArena != null) {
                poolArena.numThreadCaches.getAndDecrement();
            }
            PoolArena<byte[]> poolArena2 = this.heapArena;
            if (poolArena2 != null) {
                poolArena2.numThreadCaches.getAndDecrement();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void trim() {
        trim(this.tinySubPageDirectCaches);
        trim(this.smallSubPageDirectCaches);
        trim(this.normalDirectCaches);
        trim((MemoryRegionCache<?>[]) this.tinySubPageHeapCaches);
        trim((MemoryRegionCache<?>[]) this.smallSubPageHeapCaches);
        trim((MemoryRegionCache<?>[]) this.normalHeapCaches);
    }

    private static <T> MemoryRegionCache<T> cache(MemoryRegionCache<T>[] memoryRegionCacheArr, int i2) {
        if (memoryRegionCacheArr == null || i2 > memoryRegionCacheArr.length - 1) {
            return null;
        }
        return memoryRegionCacheArr[i2];
    }

    private static void trim(MemoryRegionCache<?>[] memoryRegionCacheArr) {
        if (memoryRegionCacheArr == null) {
            return;
        }
        for (MemoryRegionCache<?> memoryRegionCache : memoryRegionCacheArr) {
            trim(memoryRegionCache);
        }
    }

    private static void trim(MemoryRegionCache<?> memoryRegionCache) {
        if (memoryRegionCache == null) {
            return;
        }
        memoryRegionCache.trim();
    }

    private static int free(MemoryRegionCache<?>[] memoryRegionCacheArr, boolean z3) {
        if (memoryRegionCacheArr == null) {
            return 0;
        }
        int i2 = 0;
        for (MemoryRegionCache<?> memoryRegionCache : memoryRegionCacheArr) {
            i2 += free(memoryRegionCache, z3);
        }
        return i2;
    }

    private static int free(MemoryRegionCache<?> memoryRegionCache, boolean z3) {
        if (memoryRegionCache == null) {
            return 0;
        }
        return memoryRegionCache.free(z3);
    }
}
