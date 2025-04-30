package io.netty.util.internal.shaded.org.jctools.queues.atomic;

import io.netty.util.internal.shaded.org.jctools.util.Pow2;
import io.netty.util.internal.shaded.org.jctools.util.RangeUtil;
/* compiled from: MpscChunkedAtomicArrayQueue.java */
/* loaded from: classes5.dex */
abstract class MpscChunkedAtomicArrayQueueColdProducerFields<E> extends BaseMpscLinkedAtomicArrayQueue<E> {
    protected final long maxQueueCapacity;

    /* JADX INFO: Access modifiers changed from: package-private */
    public MpscChunkedAtomicArrayQueueColdProducerFields(int i2, int i4) {
        super(i2);
        RangeUtil.checkGreaterThanOrEqual(i4, 4, "maxCapacity");
        RangeUtil.checkLessThan(Pow2.roundToPowerOfTwo(i2), Pow2.roundToPowerOfTwo(i4), "initialCapacity");
        this.maxQueueCapacity = Pow2.roundToPowerOfTwo(i4) << 1;
    }
}
