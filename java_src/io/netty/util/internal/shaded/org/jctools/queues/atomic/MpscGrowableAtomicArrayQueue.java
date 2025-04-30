package io.netty.util.internal.shaded.org.jctools.queues.atomic;

import io.netty.util.internal.shaded.org.jctools.util.Pow2;
import io.netty.util.internal.shaded.org.jctools.util.RangeUtil;
import java.util.concurrent.atomic.AtomicReferenceArray;
/* loaded from: classes5.dex */
public class MpscGrowableAtomicArrayQueue<E> extends MpscChunkedAtomicArrayQueue<E> {
    public MpscGrowableAtomicArrayQueue(int i2) {
        super(Math.max(2, Pow2.roundToPowerOfTwo(i2 / 8)), i2);
    }

    @Override // io.netty.util.internal.shaded.org.jctools.queues.atomic.MpscChunkedAtomicArrayQueue, io.netty.util.internal.shaded.org.jctools.queues.atomic.BaseMpscLinkedAtomicArrayQueue
    protected long getCurrentBufferCapacity(long j4) {
        long j5 = this.maxQueueCapacity;
        return 2 + j4 == j5 ? j5 : j4;
    }

    @Override // io.netty.util.internal.shaded.org.jctools.queues.atomic.MpscChunkedAtomicArrayQueue, io.netty.util.internal.shaded.org.jctools.queues.atomic.BaseMpscLinkedAtomicArrayQueue
    protected int getNextBufferSize(AtomicReferenceArray<E> atomicReferenceArray) {
        RangeUtil.checkLessThanOrEqual(AtomicQueueUtil.length(atomicReferenceArray), this.maxQueueCapacity / 2, "buffer.length");
        return ((AtomicQueueUtil.length(atomicReferenceArray) - 1) * 2) + 1;
    }

    public MpscGrowableAtomicArrayQueue(int i2, int i4) {
        super(i2, i4);
    }
}
