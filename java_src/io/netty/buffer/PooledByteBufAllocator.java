package io.netty.buffer;

import com.papa91.arc.ext.Log;
import io.netty.buffer.PoolArena;
import io.netty.util.NettyRuntime;
import io.netty.util.concurrent.EventExecutor;
import io.netty.util.concurrent.FastThreadLocal;
import io.netty.util.concurrent.FastThreadLocalThread;
import io.netty.util.internal.ObjectUtil;
import io.netty.util.internal.PlatformDependent;
import io.netty.util.internal.StringUtil;
import io.netty.util.internal.SystemPropertyUtil;
import io.netty.util.internal.ThreadExecutorMap;
import io.netty.util.internal.logging.InternalLogger;
import io.netty.util.internal.logging.InternalLoggerFactory;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.TimeUnit;
/* loaded from: classes5.dex */
public class PooledByteBufAllocator extends AbstractByteBufAllocator implements ByteBufAllocatorMetricProvider {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    public static final PooledByteBufAllocator DEFAULT;
    private static final int DEFAULT_CACHE_TRIM_INTERVAL;
    private static final long DEFAULT_CACHE_TRIM_INTERVAL_MILLIS;
    private static final int DEFAULT_DIRECT_MEMORY_CACHE_ALIGNMENT;
    private static final int DEFAULT_MAX_CACHED_BUFFER_CAPACITY;
    static final int DEFAULT_MAX_CACHED_BYTEBUFFERS_PER_CHUNK;
    private static final int DEFAULT_MAX_ORDER;
    private static final int DEFAULT_NORMAL_CACHE_SIZE;
    private static final int DEFAULT_NUM_DIRECT_ARENA;
    private static final int DEFAULT_NUM_HEAP_ARENA;
    private static final int DEFAULT_PAGE_SIZE;
    private static final int DEFAULT_SMALL_CACHE_SIZE;
    private static final int DEFAULT_TINY_CACHE_SIZE;
    private static final boolean DEFAULT_USE_CACHE_FOR_ALL_THREADS;
    private static final int MAX_CHUNK_SIZE = 1073741824;
    private static final int MIN_PAGE_SIZE = 4096;
    private static final InternalLogger logger = InternalLoggerFactory.getInstance(PooledByteBufAllocator.class);
    private final int chunkSize;
    private final List<PoolArenaMetric> directArenaMetrics;
    private final PoolArena<ByteBuffer>[] directArenas;
    private final List<PoolArenaMetric> heapArenaMetrics;
    private final PoolArena<byte[]>[] heapArenas;
    private final PooledByteBufAllocatorMetric metric;
    private final int normalCacheSize;
    private final int smallCacheSize;
    private final PoolThreadLocalCache threadCache;
    private final int tinyCacheSize;
    private final Runnable trimTask;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public final class PoolThreadLocalCache extends FastThreadLocal<PoolThreadCache> {
        private final boolean useCacheForAllThreads;

        PoolThreadLocalCache(boolean z3) {
            this.useCacheForAllThreads = z3;
        }

        private <T> PoolArena<T> leastUsedArena(PoolArena<T>[] poolArenaArr) {
            if (poolArenaArr == null || poolArenaArr.length == 0) {
                return null;
            }
            PoolArena<T> poolArena = poolArenaArr[0];
            for (int i2 = 1; i2 < poolArenaArr.length; i2++) {
                PoolArena<T> poolArena2 = poolArenaArr[i2];
                if (poolArena2.numThreadCaches.get() < poolArena.numThreadCaches.get()) {
                    poolArena = poolArena2;
                }
            }
            return poolArena;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // io.netty.util.concurrent.FastThreadLocal
        public synchronized PoolThreadCache initialValue() {
            EventExecutor currentExecutor;
            PoolArena leastUsedArena = leastUsedArena(PooledByteBufAllocator.this.heapArenas);
            PoolArena leastUsedArena2 = leastUsedArena(PooledByteBufAllocator.this.directArenas);
            Thread currentThread = Thread.currentThread();
            if (!this.useCacheForAllThreads && !(currentThread instanceof FastThreadLocalThread)) {
                return new PoolThreadCache(leastUsedArena, leastUsedArena2, 0, 0, 0, 0, 0);
            }
            PoolThreadCache poolThreadCache = new PoolThreadCache(leastUsedArena, leastUsedArena2, PooledByteBufAllocator.this.tinyCacheSize, PooledByteBufAllocator.this.smallCacheSize, PooledByteBufAllocator.this.normalCacheSize, PooledByteBufAllocator.DEFAULT_MAX_CACHED_BUFFER_CAPACITY, PooledByteBufAllocator.DEFAULT_CACHE_TRIM_INTERVAL);
            if (PooledByteBufAllocator.DEFAULT_CACHE_TRIM_INTERVAL_MILLIS > 0 && (currentExecutor = ThreadExecutorMap.currentExecutor()) != null) {
                currentExecutor.scheduleAtFixedRate(PooledByteBufAllocator.this.trimTask, PooledByteBufAllocator.DEFAULT_CACHE_TRIM_INTERVAL_MILLIS, PooledByteBufAllocator.DEFAULT_CACHE_TRIM_INTERVAL_MILLIS, TimeUnit.MILLISECONDS);
            }
            return poolThreadCache;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // io.netty.util.concurrent.FastThreadLocal
        public void onRemoval(PoolThreadCache poolThreadCache) {
            poolThreadCache.free(false);
        }
    }

    static {
        Object obj;
        int i2 = SystemPropertyUtil.getInt("io.netty.allocator.pageSize", 8192);
        Object obj2 = null;
        try {
            validateAndCalculatePageShifts(i2);
            obj = null;
        } catch (Throwable th) {
            obj = th;
            i2 = 8192;
        }
        DEFAULT_PAGE_SIZE = i2;
        int i4 = 11;
        int i5 = SystemPropertyUtil.getInt("io.netty.allocator.maxOrder", 11);
        try {
            validateAndCalculateChunkSize(i2, i5);
            i4 = i5;
        } catch (Throwable th2) {
            obj2 = th2;
        }
        DEFAULT_MAX_ORDER = i4;
        Runtime runtime = Runtime.getRuntime();
        int i6 = DEFAULT_PAGE_SIZE;
        long availableProcessors = NettyRuntime.availableProcessors() * 2;
        long j4 = i6 << i4;
        int max = Math.max(0, SystemPropertyUtil.getInt("io.netty.allocator.numHeapArenas", (int) Math.min(availableProcessors, ((runtime.maxMemory() / j4) / 2) / 3)));
        DEFAULT_NUM_HEAP_ARENA = max;
        int max2 = Math.max(0, SystemPropertyUtil.getInt("io.netty.allocator.numDirectArenas", (int) Math.min(availableProcessors, ((PlatformDependent.maxDirectMemory() / j4) / 2) / 3)));
        DEFAULT_NUM_DIRECT_ARENA = max2;
        int i7 = SystemPropertyUtil.getInt("io.netty.allocator.tinyCacheSize", 512);
        DEFAULT_TINY_CACHE_SIZE = i7;
        int i8 = SystemPropertyUtil.getInt("io.netty.allocator.smallCacheSize", 256);
        DEFAULT_SMALL_CACHE_SIZE = i8;
        int i9 = SystemPropertyUtil.getInt("io.netty.allocator.normalCacheSize", 64);
        DEFAULT_NORMAL_CACHE_SIZE = i9;
        int i10 = SystemPropertyUtil.getInt("io.netty.allocator.maxCachedBufferCapacity", 32768);
        DEFAULT_MAX_CACHED_BUFFER_CAPACITY = i10;
        int i11 = SystemPropertyUtil.getInt("io.netty.allocator.cacheTrimInterval", 8192);
        DEFAULT_CACHE_TRIM_INTERVAL = i11;
        if (SystemPropertyUtil.contains("io.netty.allocation.cacheTrimIntervalMillis")) {
            logger.warn("-Dio.netty.allocation.cacheTrimIntervalMillis is deprecated, use -Dio.netty.allocator.cacheTrimIntervalMillis");
            if (SystemPropertyUtil.contains("io.netty.allocator.cacheTrimIntervalMillis")) {
                DEFAULT_CACHE_TRIM_INTERVAL_MILLIS = SystemPropertyUtil.getLong("io.netty.allocator.cacheTrimIntervalMillis", 0L);
            } else {
                DEFAULT_CACHE_TRIM_INTERVAL_MILLIS = SystemPropertyUtil.getLong("io.netty.allocation.cacheTrimIntervalMillis", 0L);
            }
        } else {
            DEFAULT_CACHE_TRIM_INTERVAL_MILLIS = SystemPropertyUtil.getLong("io.netty.allocator.cacheTrimIntervalMillis", 0L);
        }
        boolean z3 = SystemPropertyUtil.getBoolean("io.netty.allocator.useCacheForAllThreads", true);
        DEFAULT_USE_CACHE_FOR_ALL_THREADS = z3;
        DEFAULT_DIRECT_MEMORY_CACHE_ALIGNMENT = SystemPropertyUtil.getInt("io.netty.allocator.directMemoryCacheAlignment", 0);
        int i12 = SystemPropertyUtil.getInt("io.netty.allocator.maxCachedByteBuffersPerChunk", Log.LogWrapper.MAX_MSG_LEN);
        DEFAULT_MAX_CACHED_BYTEBUFFERS_PER_CHUNK = i12;
        InternalLogger internalLogger = logger;
        if (internalLogger.isDebugEnabled()) {
            internalLogger.debug("-Dio.netty.allocator.numHeapArenas: {}", Integer.valueOf(max));
            internalLogger.debug("-Dio.netty.allocator.numDirectArenas: {}", Integer.valueOf(max2));
            if (obj == null) {
                internalLogger.debug("-Dio.netty.allocator.pageSize: {}", Integer.valueOf(i6));
            } else {
                internalLogger.debug("-Dio.netty.allocator.pageSize: {}", Integer.valueOf(i6), obj);
            }
            if (obj2 == null) {
                internalLogger.debug("-Dio.netty.allocator.maxOrder: {}", Integer.valueOf(i4));
            } else {
                internalLogger.debug("-Dio.netty.allocator.maxOrder: {}", Integer.valueOf(i4), obj2);
            }
            internalLogger.debug("-Dio.netty.allocator.chunkSize: {}", Integer.valueOf(i6 << i4));
            internalLogger.debug("-Dio.netty.allocator.tinyCacheSize: {}", Integer.valueOf(i7));
            internalLogger.debug("-Dio.netty.allocator.smallCacheSize: {}", Integer.valueOf(i8));
            internalLogger.debug("-Dio.netty.allocator.normalCacheSize: {}", Integer.valueOf(i9));
            internalLogger.debug("-Dio.netty.allocator.maxCachedBufferCapacity: {}", Integer.valueOf(i10));
            internalLogger.debug("-Dio.netty.allocator.cacheTrimInterval: {}", Integer.valueOf(i11));
            internalLogger.debug("-Dio.netty.allocator.cacheTrimIntervalMillis: {}", Long.valueOf(DEFAULT_CACHE_TRIM_INTERVAL_MILLIS));
            internalLogger.debug("-Dio.netty.allocator.useCacheForAllThreads: {}", Boolean.valueOf(z3));
            internalLogger.debug("-Dio.netty.allocator.maxCachedByteBuffersPerChunk: {}", Integer.valueOf(i12));
        }
        DEFAULT = new PooledByteBufAllocator(PlatformDependent.directBufferPreferred());
    }

    public PooledByteBufAllocator() {
        this(false);
    }

    public static int defaultMaxOrder() {
        return DEFAULT_MAX_ORDER;
    }

    public static int defaultNormalCacheSize() {
        return DEFAULT_NORMAL_CACHE_SIZE;
    }

    public static int defaultNumDirectArena() {
        return DEFAULT_NUM_DIRECT_ARENA;
    }

    public static int defaultNumHeapArena() {
        return DEFAULT_NUM_HEAP_ARENA;
    }

    public static int defaultPageSize() {
        return DEFAULT_PAGE_SIZE;
    }

    public static boolean defaultPreferDirect() {
        return PlatformDependent.directBufferPreferred();
    }

    public static int defaultSmallCacheSize() {
        return DEFAULT_SMALL_CACHE_SIZE;
    }

    public static int defaultTinyCacheSize() {
        return DEFAULT_TINY_CACHE_SIZE;
    }

    public static boolean defaultUseCacheForAllThreads() {
        return DEFAULT_USE_CACHE_FOR_ALL_THREADS;
    }

    public static boolean isDirectMemoryCacheAlignmentSupported() {
        return PlatformDependent.hasUnsafe();
    }

    private static <T> PoolArena<T>[] newArenaArray(int i2) {
        return new PoolArena[i2];
    }

    private static long usedMemory(PoolArena<?>[] poolArenaArr) {
        if (poolArenaArr == null) {
            return -1L;
        }
        long j4 = 0;
        for (PoolArena<?> poolArena : poolArenaArr) {
            j4 += poolArena.numActiveBytes();
            if (j4 < 0) {
                return Long.MAX_VALUE;
            }
        }
        return j4;
    }

    private static int validateAndCalculateChunkSize(int i2, int i4) {
        if (i4 > 14) {
            throw new IllegalArgumentException("maxOrder: " + i4 + " (expected: 0-14)");
        }
        int i5 = i2;
        for (int i6 = i4; i6 > 0; i6--) {
            if (i5 > 536870912) {
                throw new IllegalArgumentException(String.format("pageSize (%d) << maxOrder (%d) must not exceed %d", Integer.valueOf(i2), Integer.valueOf(i4), 1073741824));
            }
            i5 <<= 1;
        }
        return i5;
    }

    private static int validateAndCalculatePageShifts(int i2) {
        if (i2 >= 4096) {
            if (((i2 - 1) & i2) == 0) {
                return 31 - Integer.numberOfLeadingZeros(i2);
            }
            throw new IllegalArgumentException("pageSize: " + i2 + " (expected: power of 2)");
        }
        throw new IllegalArgumentException("pageSize: " + i2 + " (expected: 4096)");
    }

    @Deprecated
    public final int chunkSize() {
        return this.chunkSize;
    }

    @Deprecated
    public List<PoolArenaMetric> directArenas() {
        return this.directArenaMetrics;
    }

    public String dumpStats() {
        PoolArena<byte[]>[] poolArenaArr = this.heapArenas;
        int length = poolArenaArr == null ? 0 : poolArenaArr.length;
        StringBuilder sb = new StringBuilder(512);
        sb.append(length);
        sb.append(" heap arena(s):");
        sb.append(StringUtil.NEWLINE);
        if (length > 0) {
            for (PoolArena<byte[]> poolArena : this.heapArenas) {
                sb.append(poolArena);
            }
        }
        PoolArena<ByteBuffer>[] poolArenaArr2 = this.directArenas;
        int length2 = poolArenaArr2 == null ? 0 : poolArenaArr2.length;
        sb.append(length2);
        sb.append(" direct arena(s):");
        sb.append(StringUtil.NEWLINE);
        if (length2 > 0) {
            for (PoolArena<ByteBuffer> poolArena2 : this.directArenas) {
                sb.append(poolArena2);
            }
        }
        return sb.toString();
    }

    @Deprecated
    public void freeThreadLocalCache() {
        this.threadCache.remove();
    }

    @Deprecated
    public boolean hasThreadLocalCache() {
        return this.threadCache.isSet();
    }

    @Deprecated
    public List<PoolArenaMetric> heapArenas() {
        return this.heapArenaMetrics;
    }

    @Override // io.netty.buffer.ByteBufAllocator
    public boolean isDirectBufferPooled() {
        return this.directArenas != null;
    }

    @Override // io.netty.buffer.AbstractByteBufAllocator
    protected ByteBuf newDirectBuffer(int i2, int i4) {
        ByteBuf newUnsafeDirectByteBuf;
        PoolThreadCache poolThreadCache = this.threadCache.get();
        PoolArena<ByteBuffer> poolArena = poolThreadCache.directArena;
        if (poolArena != null) {
            newUnsafeDirectByteBuf = poolArena.allocate(poolThreadCache, i2, i4);
        } else {
            newUnsafeDirectByteBuf = PlatformDependent.hasUnsafe() ? UnsafeByteBufUtil.newUnsafeDirectByteBuf(this, i2, i4) : new UnpooledDirectByteBuf(this, i2, i4);
        }
        return AbstractByteBufAllocator.toLeakAwareBuffer(newUnsafeDirectByteBuf);
    }

    @Override // io.netty.buffer.AbstractByteBufAllocator
    protected ByteBuf newHeapBuffer(int i2, int i4) {
        AbstractByteBuf unpooledUnsafeHeapByteBuf;
        PoolThreadCache poolThreadCache = this.threadCache.get();
        PoolArena<byte[]> poolArena = poolThreadCache.heapArena;
        if (poolArena != null) {
            unpooledUnsafeHeapByteBuf = poolArena.allocate(poolThreadCache, i2, i4);
        } else {
            unpooledUnsafeHeapByteBuf = PlatformDependent.hasUnsafe() ? new UnpooledUnsafeHeapByteBuf(this, i2, i4) : new UnpooledHeapByteBuf(this, i2, i4);
        }
        return AbstractByteBufAllocator.toLeakAwareBuffer(unpooledUnsafeHeapByteBuf);
    }

    @Deprecated
    public int normalCacheSize() {
        return this.normalCacheSize;
    }

    @Deprecated
    public int numDirectArenas() {
        return this.directArenaMetrics.size();
    }

    @Deprecated
    public int numHeapArenas() {
        return this.heapArenaMetrics.size();
    }

    @Deprecated
    public int numThreadLocalCaches() {
        PoolArena[] poolArenaArr = this.heapArenas;
        if (poolArenaArr == null) {
            poolArenaArr = this.directArenas;
        }
        if (poolArenaArr == null) {
            return 0;
        }
        int i2 = 0;
        for (PoolArena poolArena : poolArenaArr) {
            i2 += poolArena.numThreadCaches.get();
        }
        return i2;
    }

    @Deprecated
    public int smallCacheSize() {
        return this.smallCacheSize;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final PoolThreadCache threadCache() {
        return this.threadCache.get();
    }

    @Deprecated
    public int tinyCacheSize() {
        return this.tinyCacheSize;
    }

    public boolean trimCurrentThreadCache() {
        PoolThreadCache ifExists = this.threadCache.getIfExists();
        if (ifExists != null) {
            ifExists.trim();
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final long usedDirectMemory() {
        return usedMemory(this.directArenas);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final long usedHeapMemory() {
        return usedMemory(this.heapArenas);
    }

    public PooledByteBufAllocator(boolean z3) {
        this(z3, DEFAULT_NUM_HEAP_ARENA, DEFAULT_NUM_DIRECT_ARENA, DEFAULT_PAGE_SIZE, DEFAULT_MAX_ORDER);
    }

    @Override // io.netty.buffer.ByteBufAllocatorMetricProvider
    public PooledByteBufAllocatorMetric metric() {
        return this.metric;
    }

    public PooledByteBufAllocator(int i2, int i4, int i5, int i6) {
        this(false, i2, i4, i5, i6);
    }

    @Deprecated
    public PooledByteBufAllocator(boolean z3, int i2, int i4, int i5, int i6) {
        this(z3, i2, i4, i5, i6, DEFAULT_TINY_CACHE_SIZE, DEFAULT_SMALL_CACHE_SIZE, DEFAULT_NORMAL_CACHE_SIZE);
    }

    @Deprecated
    public PooledByteBufAllocator(boolean z3, int i2, int i4, int i5, int i6, int i7, int i8, int i9) {
        this(z3, i2, i4, i5, i6, i7, i8, i9, DEFAULT_USE_CACHE_FOR_ALL_THREADS, DEFAULT_DIRECT_MEMORY_CACHE_ALIGNMENT);
    }

    public PooledByteBufAllocator(boolean z3, int i2, int i4, int i5, int i6, int i7, int i8, int i9, boolean z4) {
        this(z3, i2, i4, i5, i6, i7, i8, i9, z4, DEFAULT_DIRECT_MEMORY_CACHE_ALIGNMENT);
    }

    public PooledByteBufAllocator(boolean z3, int i2, int i4, int i5, int i6, int i7, int i8, int i9, boolean z4, int i10) {
        super(z3);
        this.trimTask = new Runnable() { // from class: io.netty.buffer.PooledByteBufAllocator.1
            @Override // java.lang.Runnable
            public void run() {
                PooledByteBufAllocator.this.trimCurrentThreadCache();
            }
        };
        this.threadCache = new PoolThreadLocalCache(z4);
        this.tinyCacheSize = i7;
        this.smallCacheSize = i8;
        this.normalCacheSize = i9;
        this.chunkSize = validateAndCalculateChunkSize(i5, i6);
        ObjectUtil.checkPositiveOrZero(i2, "nHeapArena");
        ObjectUtil.checkPositiveOrZero(i4, "nDirectArena");
        ObjectUtil.checkPositiveOrZero(i10, "directMemoryCacheAlignment");
        if (i10 > 0 && !isDirectMemoryCacheAlignmentSupported()) {
            throw new IllegalArgumentException("directMemoryCacheAlignment is not supported");
        }
        if (((-i10) & i10) == i10) {
            int validateAndCalculatePageShifts = validateAndCalculatePageShifts(i5);
            if (i2 > 0) {
                PoolArena<byte[]>[] newArenaArray = newArenaArray(i2);
                this.heapArenas = newArenaArray;
                ArrayList arrayList = new ArrayList(newArenaArray.length);
                for (int i11 = 0; i11 < this.heapArenas.length; i11++) {
                    PoolArena.HeapArena heapArena = new PoolArena.HeapArena(this, i5, i6, validateAndCalculatePageShifts, this.chunkSize, i10);
                    this.heapArenas[i11] = heapArena;
                    arrayList.add(heapArena);
                }
                this.heapArenaMetrics = Collections.unmodifiableList(arrayList);
            } else {
                this.heapArenas = null;
                this.heapArenaMetrics = Collections.emptyList();
            }
            if (i4 > 0) {
                PoolArena<ByteBuffer>[] newArenaArray2 = newArenaArray(i4);
                this.directArenas = newArenaArray2;
                ArrayList arrayList2 = new ArrayList(newArenaArray2.length);
                for (int i12 = 0; i12 < this.directArenas.length; i12++) {
                    PoolArena.DirectArena directArena = new PoolArena.DirectArena(this, i5, i6, validateAndCalculatePageShifts, this.chunkSize, i10);
                    this.directArenas[i12] = directArena;
                    arrayList2.add(directArena);
                }
                this.directArenaMetrics = Collections.unmodifiableList(arrayList2);
            } else {
                this.directArenas = null;
                this.directArenaMetrics = Collections.emptyList();
            }
            this.metric = new PooledByteBufAllocatorMetric(this);
            return;
        }
        throw new IllegalArgumentException("directMemoryCacheAlignment: " + i10 + " (expected: power of two)");
    }
}
