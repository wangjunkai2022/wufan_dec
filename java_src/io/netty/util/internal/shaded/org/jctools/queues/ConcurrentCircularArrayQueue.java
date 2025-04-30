package io.netty.util.internal.shaded.org.jctools.queues;

import io.netty.util.internal.shaded.org.jctools.queues.IndexedQueueSizeUtil;
import io.netty.util.internal.shaded.org.jctools.util.Pow2;
import io.netty.util.internal.shaded.org.jctools.util.UnsafeRefArrayAccess;
import java.util.Iterator;
import java.util.NoSuchElementException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public abstract class ConcurrentCircularArrayQueue<E> extends ConcurrentCircularArrayQueueL0Pad<E> implements MessagePassingQueue<E>, IndexedQueueSizeUtil.IndexedQueue, QueueProgressIndicators, a {
    protected final E[] buffer;
    protected final long mask;

    /* loaded from: classes5.dex */
    private static class WeakIterator<E> implements Iterator<E> {
        private final E[] buffer;
        private final long mask;
        private E nextElement = getNext();
        private long nextIndex;
        private final long pIndex;

        WeakIterator(long j4, long j5, long j6, E[] eArr) {
            this.nextIndex = j4;
            this.pIndex = j5;
            this.mask = j6;
            this.buffer = eArr;
        }

        private E getNext() {
            E e4;
            do {
                long j4 = this.nextIndex;
                if (j4 >= this.pIndex) {
                    return null;
                }
                this.nextIndex = 1 + j4;
                e4 = (E) UnsafeRefArrayAccess.lvRefElement(this.buffer, UnsafeRefArrayAccess.calcCircularRefElementOffset(j4, this.mask));
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

    /* JADX INFO: Access modifiers changed from: package-private */
    public ConcurrentCircularArrayQueue(int i2) {
        int roundToPowerOfTwo = Pow2.roundToPowerOfTwo(i2);
        this.mask = roundToPowerOfTwo - 1;
        this.buffer = (E[]) UnsafeRefArrayAccess.allocateRefArray(roundToPowerOfTwo);
    }

    @Override // io.netty.util.internal.shaded.org.jctools.queues.MessagePassingQueue
    public int capacity() {
        return (int) (this.mask + 1);
    }

    @Override // java.util.AbstractQueue, java.util.AbstractCollection, java.util.Collection, io.netty.util.internal.shaded.org.jctools.queues.MessagePassingQueue
    public void clear() {
        do {
        } while (poll() != null);
    }

    @Override // io.netty.util.internal.shaded.org.jctools.queues.QueueProgressIndicators
    public long currentConsumerIndex() {
        return lvConsumerIndex();
    }

    @Override // io.netty.util.internal.shaded.org.jctools.queues.QueueProgressIndicators
    public long currentProducerIndex() {
        return lvProducerIndex();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, io.netty.util.internal.shaded.org.jctools.queues.MessagePassingQueue
    public boolean isEmpty() {
        return IndexedQueueSizeUtil.isEmpty(this);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public Iterator<E> iterator() {
        return new WeakIterator(lvConsumerIndex(), lvProducerIndex(), this.mask, this.buffer);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, io.netty.util.internal.shaded.org.jctools.queues.MessagePassingQueue
    public int size() {
        return IndexedQueueSizeUtil.size(this);
    }

    @Override // java.util.AbstractCollection
    public String toString() {
        return getClass().getName();
    }
}
