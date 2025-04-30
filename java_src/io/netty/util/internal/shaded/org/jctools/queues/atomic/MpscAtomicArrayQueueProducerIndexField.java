package io.netty.util.internal.shaded.org.jctools.queues.atomic;

import java.util.concurrent.atomic.AtomicLongFieldUpdater;
/* compiled from: MpscAtomicArrayQueue.java */
/* loaded from: classes5.dex */
abstract class MpscAtomicArrayQueueProducerIndexField<E> extends MpscAtomicArrayQueueL1Pad<E> {
    private static final AtomicLongFieldUpdater<MpscAtomicArrayQueueProducerIndexField> P_INDEX_UPDATER = AtomicLongFieldUpdater.newUpdater(MpscAtomicArrayQueueProducerIndexField.class, "producerIndex");
    private volatile long producerIndex;

    /* JADX INFO: Access modifiers changed from: package-private */
    public MpscAtomicArrayQueueProducerIndexField(int i2) {
        super(i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean casProducerIndex(long j4, long j5) {
        return P_INDEX_UPDATER.compareAndSet(this, j4, j5);
    }

    @Override // io.netty.util.internal.shaded.org.jctools.queues.IndexedQueueSizeUtil.IndexedQueue
    public final long lvProducerIndex() {
        return this.producerIndex;
    }
}
