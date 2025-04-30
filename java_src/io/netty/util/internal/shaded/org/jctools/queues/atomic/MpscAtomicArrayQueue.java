package io.netty.util.internal.shaded.org.jctools.queues.atomic;

import io.netty.util.internal.shaded.org.jctools.queues.MessagePassingQueue;
import io.netty.util.internal.shaded.org.jctools.queues.MessagePassingQueueUtil;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicReferenceArray;
/* loaded from: classes5.dex */
public class MpscAtomicArrayQueue<E> extends MpscAtomicArrayQueueL3Pad<E> {
    public MpscAtomicArrayQueue(int i2) {
        super(i2);
    }

    @Override // io.netty.util.internal.shaded.org.jctools.queues.atomic.AtomicReferenceArrayQueue, java.util.AbstractQueue, java.util.AbstractCollection, java.util.Collection, io.netty.util.internal.shaded.org.jctools.queues.MessagePassingQueue
    public /* bridge */ /* synthetic */ void clear() {
        super.clear();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // io.netty.util.internal.shaded.org.jctools.queues.MessagePassingQueue
    public int drain(MessagePassingQueue.Consumer<E> consumer, int i2) {
        if (consumer != 0) {
            if (i2 < 0) {
                throw new IllegalArgumentException("limit is negative: " + i2);
            }
            if (i2 == 0) {
                return 0;
            }
            AtomicReferenceArray<E> atomicReferenceArray = this.buffer;
            int i4 = this.mask;
            long lpConsumerIndex = lpConsumerIndex();
            for (int i5 = 0; i5 < i2; i5++) {
                long j4 = i5 + lpConsumerIndex;
                int calcCircularRefElementOffset = AtomicQueueUtil.calcCircularRefElementOffset(j4, i4);
                Object lvRefElement = AtomicQueueUtil.lvRefElement(atomicReferenceArray, calcCircularRefElementOffset);
                if (lvRefElement == null) {
                    return i5;
                }
                AtomicQueueUtil.soRefElement(atomicReferenceArray, calcCircularRefElementOffset, null);
                soConsumerIndex(j4 + 1);
                consumer.accept(lvRefElement);
            }
            return i2;
        }
        throw new IllegalArgumentException("c is null");
    }

    public final int failFastOffer(E e4) {
        Objects.requireNonNull(e4);
        int i2 = this.mask;
        long j4 = i2 + 1;
        long lvProducerIndex = lvProducerIndex();
        if (lvProducerIndex >= lvProducerLimit()) {
            long lvConsumerIndex = lvConsumerIndex() + j4;
            if (lvProducerIndex >= lvConsumerIndex) {
                return 1;
            }
            soProducerLimit(lvConsumerIndex);
        }
        if (casProducerIndex(lvProducerIndex, 1 + lvProducerIndex)) {
            AtomicQueueUtil.soRefElement(this.buffer, AtomicQueueUtil.calcCircularRefElementOffset(lvProducerIndex, i2), e4);
            return 0;
        }
        return -1;
    }

    @Override // io.netty.util.internal.shaded.org.jctools.queues.MessagePassingQueue
    public int fill(MessagePassingQueue.Supplier<E> supplier, int i2) {
        long lvProducerIndex;
        int min;
        if (supplier != null) {
            if (i2 < 0) {
                throw new IllegalArgumentException("limit is negative:" + i2);
            }
            if (i2 == 0) {
                return 0;
            }
            int i4 = this.mask;
            long j4 = i4 + 1;
            long lvProducerLimit = lvProducerLimit();
            do {
                lvProducerIndex = lvProducerIndex();
                long j5 = lvProducerLimit - lvProducerIndex;
                if (j5 <= 0) {
                    lvProducerLimit = lvConsumerIndex() + j4;
                    j5 = lvProducerLimit - lvProducerIndex;
                    if (j5 <= 0) {
                        return 0;
                    }
                    soProducerLimit(lvProducerLimit);
                }
                min = Math.min((int) j5, i2);
            } while (!casProducerIndex(lvProducerIndex, min + lvProducerIndex));
            AtomicReferenceArray<E> atomicReferenceArray = this.buffer;
            for (int i5 = 0; i5 < min; i5++) {
                AtomicQueueUtil.soRefElement(atomicReferenceArray, AtomicQueueUtil.calcCircularRefElementOffset(i5 + lvProducerIndex, i4), supplier.get());
            }
            return min;
        }
        throw new IllegalArgumentException("supplier is null");
    }

    @Override // java.util.Queue, io.netty.util.internal.shaded.org.jctools.queues.MessagePassingQueue
    public boolean offer(E e4) {
        long lvProducerIndex;
        Objects.requireNonNull(e4);
        int i2 = this.mask;
        long lvProducerLimit = lvProducerLimit();
        do {
            lvProducerIndex = lvProducerIndex();
            if (lvProducerIndex >= lvProducerLimit) {
                lvProducerLimit = lvConsumerIndex() + i2 + 1;
                if (lvProducerIndex >= lvProducerLimit) {
                    return false;
                }
                soProducerLimit(lvProducerLimit);
            }
        } while (!casProducerIndex(lvProducerIndex, 1 + lvProducerIndex));
        AtomicQueueUtil.soRefElement(this.buffer, AtomicQueueUtil.calcCircularRefElementOffset(lvProducerIndex, i2), e4);
        return true;
    }

    public boolean offerIfBelowThreshold(E e4, int i2) {
        long lvProducerIndex;
        Objects.requireNonNull(e4);
        int i4 = this.mask;
        long j4 = i4 + 1;
        long lvProducerLimit = lvProducerLimit();
        do {
            lvProducerIndex = lvProducerIndex();
            long j5 = i2;
            if (j4 - (lvProducerLimit - lvProducerIndex) >= j5) {
                long lvConsumerIndex = lvConsumerIndex();
                if (lvProducerIndex - lvConsumerIndex >= j5) {
                    return false;
                }
                lvProducerLimit = lvConsumerIndex + j4;
                soProducerLimit(lvProducerLimit);
            }
        } while (!casProducerIndex(lvProducerIndex, 1 + lvProducerIndex));
        AtomicQueueUtil.soRefElement(this.buffer, AtomicQueueUtil.calcCircularRefElementOffset(lvProducerIndex, i4), e4);
        return true;
    }

    @Override // java.util.Queue, io.netty.util.internal.shaded.org.jctools.queues.MessagePassingQueue
    public E peek() {
        AtomicReferenceArray<E> atomicReferenceArray = this.buffer;
        long lpConsumerIndex = lpConsumerIndex();
        int calcCircularRefElementOffset = AtomicQueueUtil.calcCircularRefElementOffset(lpConsumerIndex, this.mask);
        E e4 = (E) AtomicQueueUtil.lvRefElement(atomicReferenceArray, calcCircularRefElementOffset);
        if (e4 != null) {
            return e4;
        }
        if (lpConsumerIndex != lvProducerIndex()) {
            do {
                e4 = (E) AtomicQueueUtil.lvRefElement(atomicReferenceArray, calcCircularRefElementOffset);
            } while (e4 == null);
            return e4;
        }
        return null;
    }

    @Override // java.util.Queue, io.netty.util.internal.shaded.org.jctools.queues.MessagePassingQueue
    public E poll() {
        long lpConsumerIndex = lpConsumerIndex();
        int calcCircularRefElementOffset = AtomicQueueUtil.calcCircularRefElementOffset(lpConsumerIndex, this.mask);
        AtomicReferenceArray<E> atomicReferenceArray = this.buffer;
        E e4 = (E) AtomicQueueUtil.lvRefElement(atomicReferenceArray, calcCircularRefElementOffset);
        if (e4 == null) {
            if (lpConsumerIndex != lvProducerIndex()) {
                do {
                    e4 = (E) AtomicQueueUtil.lvRefElement(atomicReferenceArray, calcCircularRefElementOffset);
                } while (e4 == null);
                AtomicQueueUtil.soRefElement(atomicReferenceArray, calcCircularRefElementOffset, null);
                soConsumerIndex(lpConsumerIndex + 1);
                return e4;
            }
            return null;
        }
        AtomicQueueUtil.soRefElement(atomicReferenceArray, calcCircularRefElementOffset, null);
        soConsumerIndex(lpConsumerIndex + 1);
        return e4;
    }

    @Override // io.netty.util.internal.shaded.org.jctools.queues.MessagePassingQueue
    public boolean relaxedOffer(E e4) {
        return offer(e4);
    }

    @Override // io.netty.util.internal.shaded.org.jctools.queues.MessagePassingQueue
    public E relaxedPeek() {
        return (E) AtomicQueueUtil.lvRefElement(this.buffer, AtomicQueueUtil.calcCircularRefElementOffset(lpConsumerIndex(), this.mask));
    }

    @Override // io.netty.util.internal.shaded.org.jctools.queues.MessagePassingQueue
    public E relaxedPoll() {
        AtomicReferenceArray<E> atomicReferenceArray = this.buffer;
        long lpConsumerIndex = lpConsumerIndex();
        int calcCircularRefElementOffset = AtomicQueueUtil.calcCircularRefElementOffset(lpConsumerIndex, this.mask);
        E e4 = (E) AtomicQueueUtil.lvRefElement(atomicReferenceArray, calcCircularRefElementOffset);
        if (e4 == null) {
            return null;
        }
        AtomicQueueUtil.soRefElement(atomicReferenceArray, calcCircularRefElementOffset, null);
        soConsumerIndex(lpConsumerIndex + 1);
        return e4;
    }

    @Override // io.netty.util.internal.shaded.org.jctools.queues.atomic.AtomicReferenceArrayQueue, java.util.AbstractCollection
    public /* bridge */ /* synthetic */ String toString() {
        return super.toString();
    }

    @Deprecated
    public int weakOffer(E e4) {
        return failFastOffer(e4);
    }

    @Override // io.netty.util.internal.shaded.org.jctools.queues.MessagePassingQueue
    public int drain(MessagePassingQueue.Consumer<E> consumer) {
        return drain(consumer, capacity());
    }

    @Override // io.netty.util.internal.shaded.org.jctools.queues.MessagePassingQueue
    public void drain(MessagePassingQueue.Consumer<E> consumer, MessagePassingQueue.WaitStrategy waitStrategy, MessagePassingQueue.ExitCondition exitCondition) {
        MessagePassingQueueUtil.drain(this, consumer, waitStrategy, exitCondition);
    }

    @Override // io.netty.util.internal.shaded.org.jctools.queues.MessagePassingQueue
    public int fill(MessagePassingQueue.Supplier<E> supplier) {
        return MessagePassingQueueUtil.fillBounded(this, supplier);
    }

    @Override // io.netty.util.internal.shaded.org.jctools.queues.MessagePassingQueue
    public void fill(MessagePassingQueue.Supplier<E> supplier, MessagePassingQueue.WaitStrategy waitStrategy, MessagePassingQueue.ExitCondition exitCondition) {
        MessagePassingQueueUtil.fill(this, supplier, waitStrategy, exitCondition);
    }
}
