package io.netty.util.internal.shaded.org.jctools.queues;

import io.netty.util.internal.shaded.org.jctools.util.UnsafeAccess;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: BaseMpscLinkedArrayQueue.java */
/* loaded from: classes5.dex */
public abstract class BaseMpscLinkedArrayQueueProducerFields<E> extends BaseMpscLinkedArrayQueuePad1<E> {
    private static final long P_INDEX_OFFSET = UnsafeAccess.fieldOffset(BaseMpscLinkedArrayQueueProducerFields.class, "producerIndex");
    private volatile long producerIndex;

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean casProducerIndex(long j4, long j5) {
        return UnsafeAccess.UNSAFE.compareAndSwapLong(this, P_INDEX_OFFSET, j4, j5);
    }

    @Override // io.netty.util.internal.shaded.org.jctools.queues.IndexedQueueSizeUtil.IndexedQueue
    public final long lvProducerIndex() {
        return this.producerIndex;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void soProducerIndex(long j4) {
        UnsafeAccess.UNSAFE.putOrderedLong(this, P_INDEX_OFFSET, j4);
    }
}
