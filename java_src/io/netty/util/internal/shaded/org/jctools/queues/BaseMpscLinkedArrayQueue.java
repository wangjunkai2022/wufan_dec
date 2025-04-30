package io.netty.util.internal.shaded.org.jctools.queues;

import io.netty.util.internal.shaded.org.jctools.queues.MessagePassingQueue;
import io.netty.util.internal.shaded.org.jctools.util.PortableJvmInfo;
import io.netty.util.internal.shaded.org.jctools.util.Pow2;
import io.netty.util.internal.shaded.org.jctools.util.RangeUtil;
import io.netty.util.internal.shaded.org.jctools.util.UnsafeRefArrayAccess;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public abstract class BaseMpscLinkedArrayQueue<E> extends BaseMpscLinkedArrayQueueColdProducerFields<E> implements MessagePassingQueue<E>, QueueProgressIndicators {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final int CONTINUE_TO_P_INDEX_CAS = 0;
    private static final int QUEUE_FULL = 2;
    private static final int QUEUE_RESIZE = 3;
    private static final int RETRY = 1;
    private static final Object JUMP = new Object();
    private static final Object BUFFER_CONSUMED = new Object();

    /* loaded from: classes5.dex */
    private static class WeakIterator<E> implements Iterator<E> {
        private E[] currentBuffer;
        private int mask;
        private E nextElement;
        private long nextIndex;
        private final long pIndex;

        WeakIterator(E[] eArr, long j4, long j5) {
            this.pIndex = j5 >> 1;
            this.nextIndex = j4 >> 1;
            setBuffer(eArr);
            this.nextElement = getNext();
        }

        /* JADX WARN: Multi-variable type inference failed */
        private E getNext() {
            while (true) {
                long j4 = this.nextIndex;
                if (j4 >= this.pIndex) {
                    break;
                }
                this.nextIndex = 1 + j4;
                E e4 = (E) UnsafeRefArrayAccess.lvRefElement(this.currentBuffer, UnsafeRefArrayAccess.calcCircularRefElementOffset(j4, this.mask));
                if (e4 != null) {
                    if (e4 == BaseMpscLinkedArrayQueue.JUMP) {
                        Object lvRefElement = UnsafeRefArrayAccess.lvRefElement(this.currentBuffer, UnsafeRefArrayAccess.calcRefElementOffset(this.mask + 1));
                        if (lvRefElement == BaseMpscLinkedArrayQueue.BUFFER_CONSUMED || lvRefElement == null) {
                            break;
                        }
                        setBuffer((Object[]) lvRefElement);
                        E e5 = (E) UnsafeRefArrayAccess.lvRefElement(this.currentBuffer, UnsafeRefArrayAccess.calcCircularRefElementOffset(j4, this.mask));
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

        private void setBuffer(E[] eArr) {
            this.currentBuffer = eArr;
            this.mask = LinkedArrayQueueUtil.length(eArr) - 2;
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

    public BaseMpscLinkedArrayQueue(int i2) {
        RangeUtil.checkGreaterThanOrEqual(i2, 2, "initialCapacity");
        int roundToPowerOfTwo = Pow2.roundToPowerOfTwo(i2);
        long j4 = (roundToPowerOfTwo - 1) << 1;
        E[] eArr = (E[]) UnsafeRefArrayAccess.allocateRefArray(roundToPowerOfTwo + 1);
        this.producerBuffer = eArr;
        this.producerMask = j4;
        this.consumerBuffer = eArr;
        this.consumerMask = j4;
        soProducerLimit(j4);
    }

    private E newBufferPeek(E[] eArr, long j4) {
        E e4 = (E) UnsafeRefArrayAccess.lvRefElement(eArr, LinkedArrayQueueUtil.modifiedCalcCircularRefElementOffset(j4, this.consumerMask));
        if (e4 != null) {
            return e4;
        }
        throw new IllegalStateException("new buffer must have at least one element");
    }

    private E newBufferPoll(E[] eArr, long j4) {
        long modifiedCalcCircularRefElementOffset = LinkedArrayQueueUtil.modifiedCalcCircularRefElementOffset(j4, this.consumerMask);
        E e4 = (E) UnsafeRefArrayAccess.lvRefElement(eArr, modifiedCalcCircularRefElementOffset);
        if (e4 != null) {
            UnsafeRefArrayAccess.soRefElement(eArr, modifiedCalcCircularRefElementOffset, null);
            soConsumerIndex(j4 + 2);
            return e4;
        }
        throw new IllegalStateException("new buffer must have at least one element");
    }

    private static long nextArrayOffset(long j4) {
        return LinkedArrayQueueUtil.modifiedCalcCircularRefElementOffset(j4 + 2, Long.MAX_VALUE);
    }

    private E[] nextBuffer(E[] eArr, long j4) {
        long nextArrayOffset = nextArrayOffset(j4);
        E[] eArr2 = (E[]) ((Object[]) UnsafeRefArrayAccess.lvRefElement(eArr, nextArrayOffset));
        this.consumerBuffer = eArr2;
        this.consumerMask = (LinkedArrayQueueUtil.length(eArr2) - 2) << 1;
        UnsafeRefArrayAccess.soRefElement(eArr, nextArrayOffset, BUFFER_CONSUMED);
        return eArr2;
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

    private void resize(long j4, E[] eArr, long j5, E e4, MessagePassingQueue.Supplier<E> supplier) {
        int nextBufferSize = getNextBufferSize(eArr);
        try {
            E[] eArr2 = (E[]) UnsafeRefArrayAccess.allocateRefArray(nextBufferSize);
            this.producerBuffer = eArr2;
            long j6 = (nextBufferSize - 2) << 1;
            this.producerMask = j6;
            long modifiedCalcCircularRefElementOffset = LinkedArrayQueueUtil.modifiedCalcCircularRefElementOffset(j5, j4);
            long modifiedCalcCircularRefElementOffset2 = LinkedArrayQueueUtil.modifiedCalcCircularRefElementOffset(j5, j6);
            if (e4 == null) {
                e4 = supplier.get();
            }
            UnsafeRefArrayAccess.soRefElement(eArr2, modifiedCalcCircularRefElementOffset2, e4);
            UnsafeRefArrayAccess.soRefElement(eArr, nextArrayOffset(j4), eArr2);
            long availableInQueue = availableInQueue(j5, lvConsumerIndex());
            RangeUtil.checkPositive(availableInQueue, "availableInQueue");
            soProducerLimit(Math.min(j6, availableInQueue) + j5);
            soProducerIndex(j5 + 2);
            UnsafeRefArrayAccess.soRefElement(eArr, modifiedCalcCircularRefElementOffset, JUMP);
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

    protected abstract int getNextBufferSize(E[] eArr);

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
                E[] eArr = this.producerBuffer;
                if (lvProducerLimit <= lvProducerIndex) {
                    int offerSlowPath = offerSlowPath(j4, lvProducerIndex, lvProducerLimit);
                    if (offerSlowPath == 1) {
                        continue;
                    } else if (offerSlowPath == 2) {
                        return false;
                    } else {
                        if (offerSlowPath == 3) {
                            resize(j4, eArr, lvProducerIndex, e4, null);
                            return true;
                        }
                    }
                }
                if (casProducerIndex(lvProducerIndex, 2 + lvProducerIndex)) {
                    UnsafeRefArrayAccess.soRefElement(eArr, LinkedArrayQueueUtil.modifiedCalcCircularRefElementOffset(lvProducerIndex, j4), e4);
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
            r11 = this;
            E[] r0 = r11.consumerBuffer
            long r1 = r11.lpConsumerIndex()
            long r3 = r11.consumerMask
            long r5 = io.netty.util.internal.shaded.org.jctools.queues.LinkedArrayQueueUtil.modifiedCalcCircularRefElementOffset(r1, r3)
            java.lang.Object r7 = io.netty.util.internal.shaded.org.jctools.util.UnsafeRefArrayAccess.lvRefElement(r0, r5)
            if (r7 != 0) goto L20
            long r8 = r11.lvProducerIndex()
            int r10 = (r1 > r8 ? 1 : (r1 == r8 ? 0 : -1))
            if (r10 == 0) goto L20
        L1a:
            java.lang.Object r7 = io.netty.util.internal.shaded.org.jctools.util.UnsafeRefArrayAccess.lvRefElement(r0, r5)
            if (r7 == 0) goto L1a
        L20:
            java.lang.Object r5 = io.netty.util.internal.shaded.org.jctools.queues.BaseMpscLinkedArrayQueue.JUMP
            if (r7 != r5) goto L2d
            java.lang.Object[] r0 = r11.nextBuffer(r0, r3)
            java.lang.Object r0 = r11.newBufferPeek(r0, r1)
            return r0
        L2d:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: io.netty.util.internal.shaded.org.jctools.queues.BaseMpscLinkedArrayQueue.peek():java.lang.Object");
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
            r11 = this;
            E[] r0 = r11.consumerBuffer
            long r1 = r11.lpConsumerIndex()
            long r3 = r11.consumerMask
            long r5 = io.netty.util.internal.shaded.org.jctools.queues.LinkedArrayQueueUtil.modifiedCalcCircularRefElementOffset(r1, r3)
            java.lang.Object r7 = io.netty.util.internal.shaded.org.jctools.util.UnsafeRefArrayAccess.lvRefElement(r0, r5)
            r8 = 0
            if (r7 != 0) goto L23
            long r9 = r11.lvProducerIndex()
            int r7 = (r1 > r9 ? 1 : (r1 == r9 ? 0 : -1))
            if (r7 == 0) goto L22
        L1b:
            java.lang.Object r7 = io.netty.util.internal.shaded.org.jctools.util.UnsafeRefArrayAccess.lvRefElement(r0, r5)
            if (r7 == 0) goto L1b
            goto L23
        L22:
            return r8
        L23:
            java.lang.Object r9 = io.netty.util.internal.shaded.org.jctools.queues.BaseMpscLinkedArrayQueue.JUMP
            if (r7 != r9) goto L30
            java.lang.Object[] r0 = r11.nextBuffer(r0, r3)
            java.lang.Object r0 = r11.newBufferPoll(r0, r1)
            return r0
        L30:
            io.netty.util.internal.shaded.org.jctools.util.UnsafeRefArrayAccess.soRefElement(r0, r5, r8)
            r3 = 2
            long r1 = r1 + r3
            r11.soConsumerIndex(r1)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: io.netty.util.internal.shaded.org.jctools.queues.BaseMpscLinkedArrayQueue.poll():java.lang.Object");
    }

    @Override // io.netty.util.internal.shaded.org.jctools.queues.MessagePassingQueue
    public boolean relaxedOffer(E e4) {
        return offer(e4);
    }

    @Override // io.netty.util.internal.shaded.org.jctools.queues.MessagePassingQueue
    public E relaxedPeek() {
        E[] eArr = this.consumerBuffer;
        long lpConsumerIndex = lpConsumerIndex();
        long j4 = this.consumerMask;
        E e4 = (E) UnsafeRefArrayAccess.lvRefElement(eArr, LinkedArrayQueueUtil.modifiedCalcCircularRefElementOffset(lpConsumerIndex, j4));
        return e4 == JUMP ? newBufferPeek(nextBuffer(eArr, j4), lpConsumerIndex) : e4;
    }

    @Override // io.netty.util.internal.shaded.org.jctools.queues.MessagePassingQueue
    public E relaxedPoll() {
        E[] eArr = this.consumerBuffer;
        long lpConsumerIndex = lpConsumerIndex();
        long j4 = this.consumerMask;
        long modifiedCalcCircularRefElementOffset = LinkedArrayQueueUtil.modifiedCalcCircularRefElementOffset(lpConsumerIndex, j4);
        E e4 = (E) UnsafeRefArrayAccess.lvRefElement(eArr, modifiedCalcCircularRefElementOffset);
        if (e4 == null) {
            return null;
        }
        if (e4 == JUMP) {
            return newBufferPoll(nextBuffer(eArr, j4), lpConsumerIndex);
        }
        UnsafeRefArrayAccess.soRefElement(eArr, modifiedCalcCircularRefElementOffset, null);
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
        BaseMpscLinkedArrayQueue<E> baseMpscLinkedArrayQueue;
        long j4;
        BaseMpscLinkedArrayQueue<E> baseMpscLinkedArrayQueue2 = this;
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
                long j5 = baseMpscLinkedArrayQueue2.producerMask;
                E[] eArr = baseMpscLinkedArrayQueue2.producerBuffer;
                long min = Math.min(lvProducerLimit, (i4 * 2) + lvProducerIndex);
                if (lvProducerIndex >= lvProducerLimit) {
                    int offerSlowPath = offerSlowPath(j5, lvProducerIndex, lvProducerLimit);
                    if (offerSlowPath == 0 || offerSlowPath == 1) {
                        baseMpscLinkedArrayQueue2 = this;
                        i4 = i2;
                    } else if (offerSlowPath == 2) {
                        return 0;
                    } else {
                        if (offerSlowPath == 3) {
                            resize(j5, eArr, lvProducerIndex, null, supplier);
                            return 1;
                        }
                        baseMpscLinkedArrayQueue = this;
                        j4 = min;
                    }
                } else {
                    baseMpscLinkedArrayQueue = this;
                    j4 = min;
                }
                if (baseMpscLinkedArrayQueue.casProducerIndex(lvProducerIndex, j4)) {
                    int i5 = (int) ((j4 - lvProducerIndex) / 2);
                    for (int i6 = 0; i6 < i5; i6++) {
                        UnsafeRefArrayAccess.soRefElement(eArr, LinkedArrayQueueUtil.modifiedCalcCircularRefElementOffset((i6 * 2) + lvProducerIndex, j5), supplier.get());
                    }
                    return i5;
                }
                i4 = i2;
                baseMpscLinkedArrayQueue2 = baseMpscLinkedArrayQueue;
            }
        }
    }

    @Override // io.netty.util.internal.shaded.org.jctools.queues.MessagePassingQueue
    public void fill(MessagePassingQueue.Supplier<E> supplier, MessagePassingQueue.WaitStrategy waitStrategy, MessagePassingQueue.ExitCondition exitCondition) {
        MessagePassingQueueUtil.fill(this, supplier, waitStrategy, exitCondition);
    }
}
