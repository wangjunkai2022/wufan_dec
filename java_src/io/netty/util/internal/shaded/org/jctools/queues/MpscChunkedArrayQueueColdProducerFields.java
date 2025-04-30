package io.netty.util.internal.shaded.org.jctools.queues;

import io.netty.util.internal.shaded.org.jctools.util.Pow2;
import io.netty.util.internal.shaded.org.jctools.util.RangeUtil;
/* compiled from: MpscChunkedArrayQueue.java */
/* loaded from: classes5.dex */
abstract class MpscChunkedArrayQueueColdProducerFields<E> extends BaseMpscLinkedArrayQueue<E> {
    protected final long maxQueueCapacity;

    /* JADX INFO: Access modifiers changed from: package-private */
    public MpscChunkedArrayQueueColdProducerFields(int i2, int i4) {
        super(i2);
        RangeUtil.checkGreaterThanOrEqual(i4, 4, "maxCapacity");
        RangeUtil.checkLessThan(Pow2.roundToPowerOfTwo(i2), Pow2.roundToPowerOfTwo(i4), "initialCapacity");
        this.maxQueueCapacity = Pow2.roundToPowerOfTwo(i4) << 1;
    }
}
