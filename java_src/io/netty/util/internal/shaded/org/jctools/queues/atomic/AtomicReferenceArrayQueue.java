package io.netty.util.internal.shaded.org.jctools.queues.atomic;

import io.netty.util.internal.shaded.org.jctools.queues.IndexedQueueSizeUtil;
import io.netty.util.internal.shaded.org.jctools.queues.MessagePassingQueue;
import io.netty.util.internal.shaded.org.jctools.queues.QueueProgressIndicators;
import io.netty.util.internal.shaded.org.jctools.queues.a;
import io.netty.util.internal.shaded.org.jctools.util.Pow2;
import java.util.AbstractQueue;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.concurrent.atomic.AtomicReferenceArray;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public abstract class AtomicReferenceArrayQueue<E> extends AbstractQueue<E> implements IndexedQueueSizeUtil.IndexedQueue, QueueProgressIndicators, MessagePassingQueue<E>, a {
    protected final AtomicReferenceArray<E> buffer;
    protected final int mask;

    /* loaded from: classes5.dex */
    private static class WeakIterator<E> implements Iterator<E> {
        private final AtomicReferenceArray<E> buffer;
        private final int mask;
        private E nextElement = getNext();
        private long nextIndex;
        private final long pIndex;

        WeakIterator(long j4, long j5, int i2, AtomicReferenceArray<E> atomicReferenceArray) {
            this.nextIndex = j4;
            this.pIndex = j5;
            this.mask = i2;
            this.buffer = atomicReferenceArray;
        }

        private E getNext() {
            E e4;
            int i2 = this.mask;
            AtomicReferenceArray<E> atomicReferenceArray = this.buffer;
            do {
                long j4 = this.nextIndex;
                if (j4 >= this.pIndex) {
                    return null;
                }
                this.nextIndex = 1 + j4;
                e4 = (E) AtomicQueueUtil.lvRefElement(atomicReferenceArray, AtomicQueueUtil.calcCircularRefElementOffset(j4, i2));
            } while (e4 == null);
            return e4;
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

    public AtomicReferenceArrayQueue(int i2) {
        int roundToPowerOfTwo = Pow2.roundToPowerOfTwo(i2);
        this.mask = roundToPowerOfTwo - 1;
        this.buffer = new AtomicReferenceArray<>(roundToPowerOfTwo);
    }

    @Override // io.netty.util.internal.shaded.org.jctools.queues.MessagePassingQueue
    public final int capacity() {
        return this.mask + 1;
    }

    @Override // java.util.AbstractQueue, java.util.AbstractCollection, java.util.Collection, io.netty.util.internal.shaded.org.jctools.queues.MessagePassingQueue
    public void clear() {
        do {
        } while (poll() != null);
    }

    @Override // io.netty.util.internal.shaded.org.jctools.queues.QueueProgressIndicators
    public final long currentConsumerIndex() {
        return lvConsumerIndex();
    }

    @Override // io.netty.util.internal.shaded.org.jctools.queues.QueueProgressIndicators
    public final long currentProducerIndex() {
        return lvProducerIndex();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, io.netty.util.internal.shaded.org.jctools.queues.MessagePassingQueue
    public final boolean isEmpty() {
        return IndexedQueueSizeUtil.isEmpty(this);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final Iterator<E> iterator() {
        return new WeakIterator(lvConsumerIndex(), lvProducerIndex(), this.mask, this.buffer);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, io.netty.util.internal.shaded.org.jctools.queues.MessagePassingQueue
    public final int size() {
        return IndexedQueueSizeUtil.size(this);
    }

    @Override // java.util.AbstractCollection
    public String toString() {
        return getClass().getName();
    }
}
