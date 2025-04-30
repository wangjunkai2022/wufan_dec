package io.netty.buffer;

import io.netty.util.internal.LongCounter;
import io.netty.util.internal.PlatformDependent;
import io.netty.util.internal.StringUtil;
import java.nio.ByteBuffer;
/* loaded from: classes5.dex */
public final class UnpooledByteBufAllocator extends AbstractByteBufAllocator implements ByteBufAllocatorMetricProvider {
    public static final UnpooledByteBufAllocator DEFAULT = new UnpooledByteBufAllocator(PlatformDependent.directBufferPreferred());
    private final boolean disableLeakDetector;
    private final UnpooledByteBufAllocatorMetric metric;
    private final boolean noCleaner;

    /* loaded from: classes5.dex */
    private static final class InstrumentedUnpooledDirectByteBuf extends UnpooledDirectByteBuf {
        InstrumentedUnpooledDirectByteBuf(UnpooledByteBufAllocator unpooledByteBufAllocator, int i2, int i4) {
            super(unpooledByteBufAllocator, i2, i4);
        }

        @Override // io.netty.buffer.UnpooledDirectByteBuf
        protected ByteBuffer allocateDirect(int i2) {
            ByteBuffer allocateDirect = super.allocateDirect(i2);
            ((UnpooledByteBufAllocator) alloc()).incrementDirect(allocateDirect.capacity());
            return allocateDirect;
        }

        @Override // io.netty.buffer.UnpooledDirectByteBuf
        protected void freeDirect(ByteBuffer byteBuffer) {
            int capacity = byteBuffer.capacity();
            super.freeDirect(byteBuffer);
            ((UnpooledByteBufAllocator) alloc()).decrementDirect(capacity);
        }
    }

    /* loaded from: classes5.dex */
    private static final class InstrumentedUnpooledHeapByteBuf extends UnpooledHeapByteBuf {
        InstrumentedUnpooledHeapByteBuf(UnpooledByteBufAllocator unpooledByteBufAllocator, int i2, int i4) {
            super(unpooledByteBufAllocator, i2, i4);
        }

        @Override // io.netty.buffer.UnpooledHeapByteBuf
        protected byte[] allocateArray(int i2) {
            byte[] allocateArray = super.allocateArray(i2);
            ((UnpooledByteBufAllocator) alloc()).incrementHeap(allocateArray.length);
            return allocateArray;
        }

        @Override // io.netty.buffer.UnpooledHeapByteBuf
        protected void freeArray(byte[] bArr) {
            int length = bArr.length;
            super.freeArray(bArr);
            ((UnpooledByteBufAllocator) alloc()).decrementHeap(length);
        }
    }

    /* loaded from: classes5.dex */
    private static final class InstrumentedUnpooledUnsafeDirectByteBuf extends UnpooledUnsafeDirectByteBuf {
        InstrumentedUnpooledUnsafeDirectByteBuf(UnpooledByteBufAllocator unpooledByteBufAllocator, int i2, int i4) {
            super(unpooledByteBufAllocator, i2, i4);
        }

        @Override // io.netty.buffer.UnpooledDirectByteBuf
        protected ByteBuffer allocateDirect(int i2) {
            ByteBuffer allocateDirect = super.allocateDirect(i2);
            ((UnpooledByteBufAllocator) alloc()).incrementDirect(allocateDirect.capacity());
            return allocateDirect;
        }

        @Override // io.netty.buffer.UnpooledDirectByteBuf
        protected void freeDirect(ByteBuffer byteBuffer) {
            int capacity = byteBuffer.capacity();
            super.freeDirect(byteBuffer);
            ((UnpooledByteBufAllocator) alloc()).decrementDirect(capacity);
        }
    }

    /* loaded from: classes5.dex */
    private static final class InstrumentedUnpooledUnsafeHeapByteBuf extends UnpooledUnsafeHeapByteBuf {
        InstrumentedUnpooledUnsafeHeapByteBuf(UnpooledByteBufAllocator unpooledByteBufAllocator, int i2, int i4) {
            super(unpooledByteBufAllocator, i2, i4);
        }

        @Override // io.netty.buffer.UnpooledUnsafeHeapByteBuf, io.netty.buffer.UnpooledHeapByteBuf
        protected byte[] allocateArray(int i2) {
            byte[] allocateArray = super.allocateArray(i2);
            ((UnpooledByteBufAllocator) alloc()).incrementHeap(allocateArray.length);
            return allocateArray;
        }

        @Override // io.netty.buffer.UnpooledHeapByteBuf
        protected void freeArray(byte[] bArr) {
            int length = bArr.length;
            super.freeArray(bArr);
            ((UnpooledByteBufAllocator) alloc()).decrementHeap(length);
        }
    }

    /* loaded from: classes5.dex */
    private static final class InstrumentedUnpooledUnsafeNoCleanerDirectByteBuf extends UnpooledUnsafeNoCleanerDirectByteBuf {
        InstrumentedUnpooledUnsafeNoCleanerDirectByteBuf(UnpooledByteBufAllocator unpooledByteBufAllocator, int i2, int i4) {
            super(unpooledByteBufAllocator, i2, i4);
        }

        @Override // io.netty.buffer.UnpooledUnsafeNoCleanerDirectByteBuf, io.netty.buffer.UnpooledDirectByteBuf
        protected ByteBuffer allocateDirect(int i2) {
            ByteBuffer allocateDirect = super.allocateDirect(i2);
            ((UnpooledByteBufAllocator) alloc()).incrementDirect(allocateDirect.capacity());
            return allocateDirect;
        }

        @Override // io.netty.buffer.UnpooledUnsafeNoCleanerDirectByteBuf, io.netty.buffer.UnpooledDirectByteBuf
        protected void freeDirect(ByteBuffer byteBuffer) {
            int capacity = byteBuffer.capacity();
            super.freeDirect(byteBuffer);
            ((UnpooledByteBufAllocator) alloc()).decrementDirect(capacity);
        }

        @Override // io.netty.buffer.UnpooledUnsafeNoCleanerDirectByteBuf
        ByteBuffer reallocateDirect(ByteBuffer byteBuffer, int i2) {
            int capacity = byteBuffer.capacity();
            ByteBuffer reallocateDirect = super.reallocateDirect(byteBuffer, i2);
            ((UnpooledByteBufAllocator) alloc()).incrementDirect(reallocateDirect.capacity() - capacity);
            return reallocateDirect;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static final class UnpooledByteBufAllocatorMetric implements ByteBufAllocatorMetric {
        final LongCounter directCounter;
        final LongCounter heapCounter;

        private UnpooledByteBufAllocatorMetric() {
            this.directCounter = PlatformDependent.newLongCounter();
            this.heapCounter = PlatformDependent.newLongCounter();
        }

        public String toString() {
            return StringUtil.simpleClassName(this) + "(usedHeapMemory: " + usedHeapMemory() + "; usedDirectMemory: " + usedDirectMemory() + ')';
        }

        @Override // io.netty.buffer.ByteBufAllocatorMetric
        public long usedDirectMemory() {
            return this.directCounter.value();
        }

        @Override // io.netty.buffer.ByteBufAllocatorMetric
        public long usedHeapMemory() {
            return this.heapCounter.value();
        }
    }

    public UnpooledByteBufAllocator(boolean z3) {
        this(z3, false);
    }

    @Override // io.netty.buffer.AbstractByteBufAllocator, io.netty.buffer.ByteBufAllocator
    public CompositeByteBuf compositeDirectBuffer(int i2) {
        CompositeByteBuf compositeByteBuf = new CompositeByteBuf(this, true, i2);
        return this.disableLeakDetector ? compositeByteBuf : AbstractByteBufAllocator.toLeakAwareBuffer(compositeByteBuf);
    }

    @Override // io.netty.buffer.AbstractByteBufAllocator, io.netty.buffer.ByteBufAllocator
    public CompositeByteBuf compositeHeapBuffer(int i2) {
        CompositeByteBuf compositeByteBuf = new CompositeByteBuf(this, false, i2);
        return this.disableLeakDetector ? compositeByteBuf : AbstractByteBufAllocator.toLeakAwareBuffer(compositeByteBuf);
    }

    void decrementDirect(int i2) {
        this.metric.directCounter.add(-i2);
    }

    void decrementHeap(int i2) {
        this.metric.heapCounter.add(-i2);
    }

    void incrementDirect(int i2) {
        this.metric.directCounter.add(i2);
    }

    void incrementHeap(int i2) {
        this.metric.heapCounter.add(i2);
    }

    @Override // io.netty.buffer.ByteBufAllocator
    public boolean isDirectBufferPooled() {
        return false;
    }

    @Override // io.netty.buffer.ByteBufAllocatorMetricProvider
    public ByteBufAllocatorMetric metric() {
        return this.metric;
    }

    @Override // io.netty.buffer.AbstractByteBufAllocator
    protected ByteBuf newDirectBuffer(int i2, int i4) {
        ByteBuf instrumentedUnpooledDirectByteBuf;
        if (PlatformDependent.hasUnsafe()) {
            instrumentedUnpooledDirectByteBuf = this.noCleaner ? new InstrumentedUnpooledUnsafeNoCleanerDirectByteBuf(this, i2, i4) : new InstrumentedUnpooledUnsafeDirectByteBuf(this, i2, i4);
        } else {
            instrumentedUnpooledDirectByteBuf = new InstrumentedUnpooledDirectByteBuf(this, i2, i4);
        }
        return this.disableLeakDetector ? instrumentedUnpooledDirectByteBuf : AbstractByteBufAllocator.toLeakAwareBuffer(instrumentedUnpooledDirectByteBuf);
    }

    @Override // io.netty.buffer.AbstractByteBufAllocator
    protected ByteBuf newHeapBuffer(int i2, int i4) {
        return PlatformDependent.hasUnsafe() ? new InstrumentedUnpooledUnsafeHeapByteBuf(this, i2, i4) : new InstrumentedUnpooledHeapByteBuf(this, i2, i4);
    }

    public UnpooledByteBufAllocator(boolean z3, boolean z4) {
        this(z3, z4, PlatformDependent.useDirectBufferNoCleaner());
    }

    public UnpooledByteBufAllocator(boolean z3, boolean z4, boolean z5) {
        super(z3);
        this.metric = new UnpooledByteBufAllocatorMetric();
        this.disableLeakDetector = z4;
        this.noCleaner = z5 && PlatformDependent.hasUnsafe() && PlatformDependent.hasDirectBufferNoCleanerConstructor();
    }
}
