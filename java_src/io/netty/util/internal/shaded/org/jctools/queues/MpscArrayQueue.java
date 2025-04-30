package io.netty.util.internal.shaded.org.jctools.queues;

import io.netty.util.internal.shaded.org.jctools.queues.MessagePassingQueue;
import io.netty.util.internal.shaded.org.jctools.util.UnsafeRefArrayAccess;
import java.util.Iterator;
import java.util.Objects;
/* loaded from: classes5.dex */
public class MpscArrayQueue<E> extends MpscArrayQueueL3Pad<E> {
    public MpscArrayQueue(int i2) {
        super(i2);
    }

    @Override // io.netty.util.internal.shaded.org.jctools.queues.ConcurrentCircularArrayQueue, io.netty.util.internal.shaded.org.jctools.queues.MessagePassingQueue
    public /* bridge */ /* synthetic */ int capacity() {
        return super.capacity();
    }

    @Override // io.netty.util.internal.shaded.org.jctools.queues.ConcurrentCircularArrayQueue, java.util.AbstractQueue, java.util.AbstractCollection, java.util.Collection, io.netty.util.internal.shaded.org.jctools.queues.MessagePassingQueue
    public /* bridge */ /* synthetic */ void clear() {
        super.clear();
    }

    @Override // io.netty.util.internal.shaded.org.jctools.queues.ConcurrentCircularArrayQueue, io.netty.util.internal.shaded.org.jctools.queues.QueueProgressIndicators
    public /* bridge */ /* synthetic */ long currentConsumerIndex() {
        return super.currentConsumerIndex();
    }

    @Override // io.netty.util.internal.shaded.org.jctools.queues.ConcurrentCircularArrayQueue, io.netty.util.internal.shaded.org.jctools.queues.QueueProgressIndicators
    public /* bridge */ /* synthetic */ long currentProducerIndex() {
        return super.currentProducerIndex();
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
            E[] eArr = this.buffer;
            long j4 = this.mask;
            long lpConsumerIndex = lpConsumerIndex();
            for (int i4 = 0; i4 < i2; i4++) {
                long j5 = i4 + lpConsumerIndex;
                long calcCircularRefElementOffset = UnsafeRefArrayAccess.calcCircularRefElementOffset(j5, j4);
                Object lvRefElement = UnsafeRefArrayAccess.lvRefElement(eArr, calcCircularRefElementOffset);
                if (lvRefElement == null) {
                    return i4;
                }
                UnsafeRefArrayAccess.soRefElement(eArr, calcCircularRefElementOffset, null);
                soConsumerIndex(j5 + 1);
                consumer.accept(lvRefElement);
            }
            return i2;
        }
        throw new IllegalArgumentException("c is null");
    }

    public final int failFastOffer(E e4) {
        Objects.requireNonNull(e4);
        long j4 = this.mask;
        long j5 = j4 + 1;
        long lvProducerIndex = lvProducerIndex();
        if (lvProducerIndex >= lvProducerLimit()) {
            long lvConsumerIndex = lvConsumerIndex() + j5;
            if (lvProducerIndex >= lvConsumerIndex) {
                return 1;
            }
            soProducerLimit(lvConsumerIndex);
        }
        if (casProducerIndex(lvProducerIndex, 1 + lvProducerIndex)) {
            UnsafeRefArrayAccess.soRefElement(this.buffer, UnsafeRefArrayAccess.calcCircularRefElementOffset(lvProducerIndex, j4), e4);
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
            long j4 = this.mask;
            long j5 = 1 + j4;
            long lvProducerLimit = lvProducerLimit();
            do {
                lvProducerIndex = lvProducerIndex();
                long j6 = lvProducerLimit - lvProducerIndex;
                if (j6 <= 0) {
                    lvProducerLimit = lvConsumerIndex() + j5;
                    j6 = lvProducerLimit - lvProducerIndex;
                    if (j6 <= 0) {
                        return 0;
                    }
                    soProducerLimit(lvProducerLimit);
                }
                min = Math.min((int) j6, i2);
            } while (!casProducerIndex(lvProducerIndex, min + lvProducerIndex));
            E[] eArr = this.buffer;
            for (int i4 = 0; i4 < min; i4++) {
                UnsafeRefArrayAccess.soRefElement(eArr, UnsafeRefArrayAccess.calcCircularRefElementOffset(i4 + lvProducerIndex, j4), supplier.get());
            }
            return min;
        }
        throw new IllegalArgumentException("supplier is null");
    }

    @Override // io.netty.util.internal.shaded.org.jctools.queues.ConcurrentCircularArrayQueue, java.util.AbstractCollection, java.util.Collection, io.netty.util.internal.shaded.org.jctools.queues.MessagePassingQueue
    public /* bridge */ /* synthetic */ boolean isEmpty() {
        return super.isEmpty();
    }

    @Override // io.netty.util.internal.shaded.org.jctools.queues.ConcurrentCircularArrayQueue, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public /* bridge */ /* synthetic */ Iterator iterator() {
        return super.iterator();
    }

    @Override // java.util.Queue, io.netty.util.internal.shaded.org.jctools.queues.MessagePassingQueue
    public boolean offer(E e4) {
        long lvProducerIndex;
        Objects.requireNonNull(e4);
        long j4 = this.mask;
        long lvProducerLimit = lvProducerLimit();
        do {
            lvProducerIndex = lvProducerIndex();
            if (lvProducerIndex >= lvProducerLimit) {
                lvProducerLimit = lvConsumerIndex() + j4 + 1;
                if (lvProducerIndex >= lvProducerLimit) {
                    return false;
                }
                soProducerLimit(lvProducerLimit);
            }
        } while (!casProducerIndex(lvProducerIndex, 1 + lvProducerIndex));
        UnsafeRefArrayAccess.soRefElement(this.buffer, UnsafeRefArrayAccess.calcCircularRefElementOffset(lvProducerIndex, j4), e4);
        return true;
    }

    public boolean offerIfBelowThreshold(E e4, int i2) {
        Objects.requireNonNull(e4);
        long j4 = this.mask;
        long j5 = j4 + 1;
        long lvProducerLimit = lvProducerLimit();
        while (true) {
            long lvProducerIndex = lvProducerIndex();
            long j6 = i2;
            if (j5 - (lvProducerLimit - lvProducerIndex) >= j6) {
                long lvConsumerIndex = lvConsumerIndex();
                if (lvProducerIndex - lvConsumerIndex >= j6) {
                    return false;
                }
                lvProducerLimit = lvConsumerIndex + j5;
                soProducerLimit(lvProducerLimit);
            }
            if (casProducerIndex(lvProducerIndex, lvProducerIndex + 1)) {
                UnsafeRefArrayAccess.soRefElement(this.buffer, UnsafeRefArrayAccess.calcCircularRefElementOffset(lvProducerIndex, j4), e4);
                return true;
            }
        }
    }

    @Override // java.util.Queue, io.netty.util.internal.shaded.org.jctools.queues.MessagePassingQueue
    public E peek() {
        E[] eArr = this.buffer;
        long lpConsumerIndex = lpConsumerIndex();
        long calcCircularRefElementOffset = UnsafeRefArrayAccess.calcCircularRefElementOffset(lpConsumerIndex, this.mask);
        E e4 = (E) UnsafeRefArrayAccess.lvRefElement(eArr, calcCircularRefElementOffset);
        if (e4 != null) {
            return e4;
        }
        if (lpConsumerIndex != lvProducerIndex()) {
            do {
                e4 = (E) UnsafeRefArrayAccess.lvRefElement(eArr, calcCircularRefElementOffset);
            } while (e4 == null);
            return e4;
        }
        return null;
    }

    @Override // java.util.Queue, io.netty.util.internal.shaded.org.jctools.queues.MessagePassingQueue
    public E poll() {
        long lpConsumerIndex = lpConsumerIndex();
        long calcCircularRefElementOffset = UnsafeRefArrayAccess.calcCircularRefElementOffset(lpConsumerIndex, this.mask);
        E[] eArr = this.buffer;
        E e4 = (E) UnsafeRefArrayAccess.lvRefElement(eArr, calcCircularRefElementOffset);
        if (e4 == null) {
            if (lpConsumerIndex != lvProducerIndex()) {
                do {
                    e4 = (E) UnsafeRefArrayAccess.lvRefElement(eArr, calcCircularRefElementOffset);
                } while (e4 == null);
                UnsafeRefArrayAccess.soRefElement(eArr, calcCircularRefElementOffset, null);
                soConsumerIndex(lpConsumerIndex + 1);
                return e4;
            }
            return null;
        }
        UnsafeRefArrayAccess.soRefElement(eArr, calcCircularRefElementOffset, null);
        soConsumerIndex(lpConsumerIndex + 1);
        return e4;
    }

    @Override // io.netty.util.internal.shaded.org.jctools.queues.MessagePassingQueue
    public boolean relaxedOffer(E e4) {
        return offer(e4);
    }

    @Override // io.netty.util.internal.shaded.org.jctools.queues.MessagePassingQueue
    public E relaxedPeek() {
        return (E) UnsafeRefArrayAccess.lvRefElement(this.buffer, UnsafeRefArrayAccess.calcCircularRefElementOffset(lpConsumerIndex(), this.mask));
    }

    @Override // io.netty.util.internal.shaded.org.jctools.queues.MessagePassingQueue
    public E relaxedPoll() {
        E[] eArr = this.buffer;
        long lpConsumerIndex = lpConsumerIndex();
        long calcCircularRefElementOffset = UnsafeRefArrayAccess.calcCircularRefElementOffset(lpConsumerIndex, this.mask);
        E e4 = (E) UnsafeRefArrayAccess.lvRefElement(eArr, calcCircularRefElementOffset);
        if (e4 == null) {
            return null;
        }
        UnsafeRefArrayAccess.soRefElement(eArr, calcCircularRefElementOffset, null);
        soConsumerIndex(lpConsumerIndex + 1);
        return e4;
    }

    @Override // io.netty.util.internal.shaded.org.jctools.queues.ConcurrentCircularArrayQueue, java.util.AbstractCollection, java.util.Collection, io.netty.util.internal.shaded.org.jctools.queues.MessagePassingQueue
    public /* bridge */ /* synthetic */ int size() {
        return super.size();
    }

    @Override // io.netty.util.internal.shaded.org.jctools.queues.ConcurrentCircularArrayQueue, java.util.AbstractCollection
    public /* bridge */ /* synthetic */ String toString() {
        return super.toString();
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
