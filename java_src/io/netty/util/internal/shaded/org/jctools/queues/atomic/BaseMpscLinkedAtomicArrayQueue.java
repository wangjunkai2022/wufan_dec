package io.netty.util.internal.shaded.org.jctools.queues.atomic;

import io.netty.util.internal.shaded.org.jctools.queues.MessagePassingQueue;
import io.netty.util.internal.shaded.org.jctools.queues.MessagePassingQueueUtil;
import io.netty.util.internal.shaded.org.jctools.queues.QueueProgressIndicators;
import io.netty.util.internal.shaded.org.jctools.util.PortableJvmInfo;
import io.netty.util.internal.shaded.org.jctools.util.Pow2;
import io.netty.util.internal.shaded.org.jctools.util.RangeUtil;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicReferenceArray;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public abstract class BaseMpscLinkedAtomicArrayQueue<E> extends BaseMpscLinkedAtomicArrayQueueColdProducerFields<E> implements MessagePassingQueue<E>, QueueProgressIndicators {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final int CONTINUE_TO_P_INDEX_CAS = 0;
    private static final int QUEUE_FULL = 2;
    private static final int QUEUE_RESIZE = 3;
    private static final int RETRY = 1;
    private static final Object JUMP = new Object();
    private static final Object BUFFER_CONSUMED = new Object();

    /* loaded from: classes5.dex */
    private static class WeakIterator<E> implements Iterator<E> {
        private AtomicReferenceArray<E> currentBuffer;
        private int mask;
        private E nextElement;
        private long nextIndex;
        private final long pIndex;

        WeakIterator(AtomicReferenceArray<E> atomicReferenceArray, long j4, long j5) {
            this.pIndex = j5 >> 1;
            this.nextIndex = j4 >> 1;
            setBuffer(atomicReferenceArray);
            this.nextElement = getNext();
        }

        private E getNext() {
            while (true) {
                long j4 = this.nextIndex;
                if (j4 >= this.pIndex) {
                    break;
                }
                this.nextIndex = 1 + j4;
                E e4 = (E) AtomicQueueUtil.lvRefElement(this.currentBuffer, AtomicQueueUtil.calcCircularRefElementOffset(j4, this.mask));
                if (e4 != null) {
                    if (e4 == BaseMpscLinkedAtomicArrayQueue.JUMP) {
                        Object lvRefElement = AtomicQueueUtil.lvRefElement(this.currentBuffer, AtomicQueueUtil.calcRefElementOffset(this.mask + 1));
                        if (lvRefElement == BaseMpscLinkedAtomicArrayQueue.BUFFER_CONSUMED || lvRefElement == null) {
                            break;
                        }
                        setBuffer((AtomicReferenceArray) lvRefElement);
                        E e5 = (E) AtomicQueueUtil.lvRefElement(this.currentBuffer, AtomicQueueUtil.calcCircularRefElementOffset(j4, this.mask));
                        if (e5 != null) {
                            return e5;
                        }
                    } else {
                        return e4;
                    }
                }
            }
            return null;
        }

        private void setBuffer(AtomicReferenceArray<E> atomicReferenceArray) {
            this.currentBuffer = atomicReferenceArray;
            this.mask = AtomicQueueUtil.length(atomicReferenceArray) - 2;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.nextElement != null;
        }

        @Override // java.util.Iterator
        public E next() {
            E e4 = this.nextElement;
            if (e4 != null) {
                this.nextElement = getNext();
                return e4;
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("remove");
        }
    }

    public BaseMpscLinkedAtomicArrayQueue(int i2) {
        RangeUtil.checkGreaterThanOrEqual(i2, 2, "initialCapacity");
        int roundToPowerOfTwo = Pow2.roundToPowerOfTwo(i2);
        long j4 = (roundToPowerOfTwo - 1) << 1;
        AtomicReferenceArray<E> allocateRefArray = AtomicQueueUtil.allocateRefArray(roundToPowerOfTwo + 1);
        this.producerBuffer = allocateRefArray;
        this.producerMask = j4;
        this.consumerBuffer = allocateRefArray;
        this.consumerMask = j4;
        soProducerLimit(j4);
    }

    private E newBufferPeek(AtomicReferenceArray<E> atomicReferenceArray, long j4) {
        E e4 = (E) AtomicQueueUtil.lvRefElement(atomicReferenceArray, AtomicQueueUtil.modifiedCalcCircularRefElementOffset(j4, this.consumerMask));
        if (e4 != null) {
            return e4;
        }
        throw new IllegalStateException("new buffer must have at least one element");
    }

    private E newBufferPoll(AtomicReferenceArray<E> atomicReferenceArray, long j4) {
        int modifiedCalcCircularRefElementOffset = AtomicQueueUtil.modifiedCalcCircularRefElementOffset(j4, this.consumerMask);
        E e4 = (E) AtomicQueueUtil.lvRefElement(atomicReferenceArray, modifiedCalcCircularRefElementOffset);
        if (e4 != null) {
            AtomicQueueUtil.soRefElement(atomicReferenceArray, modifiedCalcCircularRefElementOffset, null);
            soConsumerIndex(j4 + 2);
            return e4;
        }
        throw new IllegalStateException("new buffer must have at least one element");
    }

    private static int nextArrayOffset(long j4) {
        return AtomicQueueUtil.modifiedCalcCircularRefElementOffset(j4 + 2, Long.MAX_VALUE);
    }

    private AtomicReferenceArray<E> nextBuffer(AtomicReferenceArray<E> atomicReferenceArray, long j4) {
        int nextArrayOffset = nextArrayOffset(j4);
        AtomicReferenceArray<E> atomicReferenceArray2 = (AtomicReferenceArray) AtomicQueueUtil.lvRefElement(atomicReferenceArray, nextArrayOffset);
        this.consumerBuffer = atomicReferenceArray2;
        this.consumerMask = (AtomicQueueUtil.length(atomicReferenceArray2) - 2) << 1;
        AtomicQueueUtil.soRefElement(atomicReferenceArray, nextArrayOffset, BUFFER_CONSUMED);
        return atomicReferenceArray2;
    }

    private int offerSlowPath(long j4, long j5, long j6) {
        long lvConsumerIndex = lvConsumerIndex();
        long currentBufferCapacity = getCurrentBufferCapacity(j4) + lvConsumerIndex;
        if (currentBufferCapacity > j5) {
            return !casProducerLimit(j6, currentBufferCapacity) ? 1 : 0;
        } else if (availableInQueue(j5, lvConsumerIndex) <= 0) {
            return 2;
        } else {
            return casProducerIndex(j5, 1 + j5) ? 3 : 1;
        }
    }

    private void resize(long j4, AtomicReferenceArray<E> atomicReferenceArray, long j5, E e4, MessagePassingQueue.Supplier<E> supplier) {
        int nextBufferSize = getNextBufferSize(atomicReferenceArray);
        try {
            AtomicReferenceArray<E> allocateRefArray = AtomicQueueUtil.allocateRefArray(nextBufferSize);
            this.producerBuffer = allocateRefArray;
            long j6 = (nextBufferSize - 2) << 1;
            this.producerMask = j6;
            int modifiedCalcCircularRefElementOffset = AtomicQueueUtil.modifiedCalcCircularRefElementOffset(j5, j4);
            int modifiedCalcCircularRefElementOffset2 = AtomicQueueUtil.modifiedCalcCircularRefElementOffset(j5, j6);
            if (e4 == null) {
                e4 = supplier.get();
            }
            AtomicQueueUtil.soRefElement(allocateRefArray, modifiedCalcCircularRefElementOffset2, e4);
            AtomicQueueUtil.soRefElement(atomicReferenceArray, nextArrayOffset(j4), allocateRefArray);
            long availableInQueue = availableInQueue(j5, lvConsumerIndex());
            RangeUtil.checkPositive(availableInQueue, "availableInQueue");
            soProducerLimit(Math.min(j6, availableInQueue) + j5);
            soProducerIndex(j5 + 2);
            AtomicQueueUtil.soRefElement(atomicReferenceArray, modifiedCalcCircularRefElementOffset, JUMP);
        } catch (OutOfMemoryError e5) {
            soProducerIndex(j5);
            throw e5;
        }
    }

    protected abstract long availableInQueue(long j4, long j5);

    @Override // io.netty.util.internal.shaded.org.jctools.queues.MessagePassingQueue
    public abstract int capacity();

    @Override // io.netty.util.internal.shaded.org.jctools.queues.QueueProgressIndicators
    public long currentConsumerIndex() {
        return lvConsumerIndex() / 2;
    }

    @Override // io.netty.util.internal.shaded.org.jctools.queues.QueueProgressIndicators
    public long currentProducerIndex() {
        return lvProducerIndex() / 2;
    }

    @Override // io.netty.util.internal.shaded.org.jctools.queues.MessagePassingQueue
    public int drain(MessagePassingQueue.Consumer<E> consumer) {
        return drain(consumer, capacity());
    }

    @Override // io.netty.util.internal.shaded.org.jctools.queues.MessagePassingQueue
    public int fill(MessagePassingQueue.Supplier<E> supplier) {
        int capacity = capacity();
        long j4 = 0;
        do {
            int fill = fill(supplier, PortableJvmInfo.RECOMENDED_OFFER_BATCH);
            if (fill == 0) {
                return (int) j4;
            }
            j4 += fill;
        } while (j4 <= capacity);
        return (int) j4;
    }

    protected abstract long getCurrentBufferCapacity(long j4);

    protected abstract int getNextBufferSize(AtomicReferenceArray<E> atomicReferenceArray);

    @Override // java.util.AbstractCollection, java.util.Collection, io.netty.util.internal.shaded.org.jctools.queues.MessagePassingQueue
    public boolean isEmpty() {
        return lvConsumerIndex() == lvProducerIndex();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public Iterator<E> iterator() {
        return new WeakIterator(this.consumerBuffer, lvConsumerIndex(), lvProducerIndex());
    }

    @Override // java.util.Queue, io.netty.util.internal.shaded.org.jctools.queues.MessagePassingQueue
    public boolean offer(E e4) {
        Objects.requireNonNull(e4);
        while (true) {
            long lvProducerLimit = lvProducerLimit();
            long lvProducerIndex = lvProducerIndex();
            if ((lvProducerIndex & 1) != 1) {
                long j4 = this.producerMask;
                AtomicReferenceArray<E> atomicReferenceArray = this.producerBuffer;
                if (lvProducerLimit <= lvProducerIndex) {
                    int offerSlowPath = offerSlowPath(j4, lvProducerIndex, lvProducerLimit);
                    if (offerSlowPath == 1) {
                        continue;
                    } else if (offerSlowPath == 2) {
                        return false;
                    } else {
                        if (offerSlowPath == 3) {
                            resize(j4, atomicReferenceArray, lvProducerIndex, e4, null);
                            return true;
                        }
                    }
                }
                if (casProducerIndex(lvProducerIndex, 2 + lvProducerIndex)) {
                    AtomicQueueUtil.soRefElement(atomicReferenceArray, AtomicQueueUtil.modifiedCalcCircularRefElementOffset(lvProducerIndex, j4), e4);
                    return true;
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x002d A[RETURN] */
    @Override // java.util.Queue, io.netty.util.internal.shaded.org.jctools.queues.MessagePassingQueue
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public E peek() {
        /*
            r10 = this;
            java.util.concurrent.atomic.AtomicReferenceArray<E> r0 = r10.consumerBuffer
            long r1 = r10.lpConsumerIndex()
            long r3 = r10.consumerMask
            int r5 = io.netty.util.internal.shaded.org.jctools.queues.atomic.AtomicQueueUtil.modifiedCalcCircularRefElementOffset(r1, r3)
            java.lang.Object r6 = io.netty.util.internal.shaded.org.jctools.queues.atomic.AtomicQueueUtil.lvRefElement(r0, r5)
            if (r6 != 0) goto L20
            long r7 = r10.lvProducerIndex()
            int r9 = (r1 > r7 ? 1 : (r1 == r7 ? 0 : -1))
            if (r9 == 0) goto L20
        L1a:
            java.lang.Object r6 = io.netty.util.internal.shaded.org.jctools.queues.atomic.AtomicQueueUtil.lvRefElement(r0, r5)
            if (r6 == 0) goto L1a
        L20:
            java.lang.Object r5 = io.netty.util.internal.shaded.org.jctools.queues.atomic.BaseMpscLinkedAtomicArrayQueue.JUMP
            if (r6 != r5) goto L2d
            java.util.concurrent.atomic.AtomicReferenceArray r0 = r10.nextBuffer(r0, r3)
            java.lang.Object r0 = r10.newBufferPeek(r0, r1)
            return r0
        L2d:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: io.netty.util.internal.shaded.org.jctools.queues.atomic.BaseMpscLinkedAtomicArrayQueue.peek():java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0027  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0030  */
    @Override // java.util.Queue, io.netty.util.internal.shaded.org.jctools.queues.MessagePassingQueue
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public E poll() {
        /*
            r10 = this;
            java.util.concurrent.atomic.AtomicReferenceArray<E> r0 = r10.consumerBuffer
            long r1 = r10.lpConsumerIndex()
            long r3 = r10.consumerMask
            int r5 = io.netty.util.internal.shaded.org.jctools.queues.atomic.AtomicQueueUtil.modifiedCalcCircularRefElementOffset(r1, r3)
            java.lang.Object r6 = io.netty.util.internal.shaded.org.jctools.queues.atomic.AtomicQueueUtil.lvRefElement(r0, r5)
            r7 = 0
            if (r6 != 0) goto L23
            long r8 = r10.lvProducerIndex()
            int r6 = (r1 > r8 ? 1 : (r1 == r8 ? 0 : -1))
            if (r6 == 0) goto L22
        L1b:
            java.lang.Object r6 = io.netty.util.internal.shaded.org.jctools.queues.atomic.AtomicQueueUtil.lvRefElement(r0, r5)
            if (r6 == 0) goto L1b
            goto L23
        L22:
            return r7
        L23:
            java.lang.Object r8 = io.netty.util.internal.shaded.org.jctools.queues.atomic.BaseMpscLinkedAtomicArrayQueue.JUMP
            if (r6 != r8) goto L30
            java.util.concurrent.atomic.AtomicReferenceArray r0 = r10.nextBuffer(r0, r3)
            java.lang.Object r0 = r10.newBufferPoll(r0, r1)
            return r0
        L30:
            io.netty.util.internal.shaded.org.jctools.queues.atomic.AtomicQueueUtil.soRefElement(r0, r5, r7)
            r3 = 2
            long r1 = r1 + r3
            r10.soConsumerIndex(r1)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: io.netty.util.internal.shaded.org.jctools.queues.atomic.BaseMpscLinkedAtomicArrayQueue.poll():java.lang.Object");
    }

    @Override // io.netty.util.internal.shaded.org.jctools.queues.MessagePassingQueue
    public boolean relaxedOffer(E e4) {
        return offer(e4);
    }

    @Override // io.netty.util.internal.shaded.org.jctools.queues.MessagePassingQueue
    public E relaxedPeek() {
        AtomicReferenceArray<E> atomicReferenceArray = this.consumerBuffer;
        long lpConsumerIndex = lpConsumerIndex();
        long j4 = this.consumerMask;
        E e4 = (E) AtomicQueueUtil.lvRefElement(atomicReferenceArray, AtomicQueueUtil.modifiedCalcCircularRefElementOffset(lpConsumerIndex, j4));
        return e4 == JUMP ? newBufferPeek(nextBuffer(atomicReferenceArray, j4), lpConsumerIndex) : e4;
    }

    @Override // io.netty.util.internal.shaded.org.jctools.queues.MessagePassingQueue
    public E relaxedPoll() {
        AtomicReferenceArray<E> atomicReferenceArray = this.consumerBuffer;
        long lpConsumerIndex = lpConsumerIndex();
        long j4 = this.consumerMask;
        int modifiedCalcCircularRefElementOffset = AtomicQueueUtil.modifiedCalcCircularRefElementOffset(lpConsumerIndex, j4);
        E e4 = (E) AtomicQueueUtil.lvRefElement(atomicReferenceArray, modifiedCalcCircularRefElementOffset);
        if (e4 == null) {
            return null;
        }
        if (e4 == JUMP) {
            return newBufferPoll(nextBuffer(atomicReferenceArray, j4), lpConsumerIndex);
        }
        AtomicQueueUtil.soRefElement(atomicReferenceArray, modifiedCalcCircularRefElementOffset, null);
        soConsumerIndex(lpConsumerIndex + 2);
        return e4;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, io.netty.util.internal.shaded.org.jctools.queues.MessagePassingQueue
    public int size() {
        long lvProducerIndex;
        long lvConsumerIndex;
        long lvConsumerIndex2 = lvConsumerIndex();
        while (true) {
            lvProducerIndex = lvProducerIndex();
            lvConsumerIndex = lvConsumerIndex();
            if (lvConsumerIndex2 == lvConsumerIndex) {
                break;
            }
            lvConsumerIndex2 = lvConsumerIndex;
        }
        long j4 = (lvProducerIndex - lvConsumerIndex) >> 1;
        if (j4 > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        return (int) j4;
    }

    @Override // java.util.AbstractCollection
    public String toString() {
        return getClass().getName();
    }

    @Override // io.netty.util.internal.shaded.org.jctools.queues.MessagePassingQueue
    public int drain(MessagePassingQueue.Consumer<E> consumer, int i2) {
        return MessagePassingQueueUtil.drain(this, consumer, i2);
    }

    @Override // io.netty.util.internal.shaded.org.jctools.queues.MessagePassingQueue
    public void drain(MessagePassingQueue.Consumer<E> consumer, MessagePassingQueue.WaitStrategy waitStrategy, MessagePassingQueue.ExitCondition exitCondition) {
        MessagePassingQueueUtil.drain(this, consumer, waitStrategy, exitCondition);
    }

    @Override // io.netty.util.internal.shaded.org.jctools.queues.MessagePassingQueue
    public int fill(MessagePassingQueue.Supplier<E> supplier, int i2) {
        BaseMpscLinkedAtomicArrayQueue<E> baseMpscLinkedAtomicArrayQueue;
        long j4;
        BaseMpscLinkedAtomicArrayQueue<E> baseMpscLinkedAtomicArrayQueue2 = this;
        int i4 = i2;
        if (supplier == null) {
            throw new IllegalArgumentException("supplier is null");
        }
        if (i4 < 0) {
            throw new IllegalArgumentException("limit is negative:" + i2);
        }
        if (i4 == 0) {
            return 0;
        }
        while (true) {
            long lvProducerLimit = lvProducerLimit();
            long lvProducerIndex = lvProducerIndex();
            if ((lvProducerIndex & 1) != 1) {
                long j5 = baseMpscLinkedAtomicArrayQueue2.producerMask;
                AtomicReferenceArray<E> atomicReferenceArray = baseMpscLinkedAtomicArrayQueue2.producerBuffer;
                long min = Math.min(lvProducerLimit, (i4 * 2) + lvProducerIndex);
                if (lvProducerIndex >= lvProducerLimit) {
                    int offerSlowPath = offerSlowPath(j5, lvProducerIndex, lvProducerLimit);
                    if (offerSlowPath == 0 || offerSlowPath == 1) {
                        baseMpscLinkedAtomicArrayQueue2 = this;
                        i4 = i2;
                    } else if (offerSlowPath == 2) {
                        return 0;
                    } else {
                        if (offerSlowPath == 3) {
                            resize(j5, atomicReferenceArray, lvProducerIndex, null, supplier);
                            return 1;
                        }
                        baseMpscLinkedAtomicArrayQueue = this;
                        j4 = min;
                    }
                } else {
                    baseMpscLinkedAtomicArrayQueue = this;
                    j4 = min;
                }
                if (baseMpscLinkedAtomicArrayQueue.casProducerIndex(lvProducerIndex, j4)) {
                    int i5 = (int) ((j4 - lvProducerIndex) / 2);
                    for (int i6 = 0; i6 < i5; i6++) {
                        AtomicQueueUtil.soRefElement(atomicReferenceArray, AtomicQueueUtil.modifiedCalcCircularRefElementOffset((i6 * 2) + lvProducerIndex, j5), supplier.get());
                    }
                    return i5;
                }
                i4 = i2;
                baseMpscLinkedAtomicArrayQueue2 = baseMpscLinkedAtomicArrayQueue;
            }
        }
    }

    @Override // io.netty.util.internal.shaded.org.jctools.queues.MessagePassingQueue
    public void fill(MessagePassingQueue.Supplier<E> supplier, MessagePassingQueue.WaitStrategy waitStrategy, MessagePassingQueue.ExitCondition exitCondition) {
        MessagePassingQueueUtil.fill(this, supplier, waitStrategy, exitCondition);
    }
}
