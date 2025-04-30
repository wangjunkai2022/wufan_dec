package io.netty.util.internal;

import io.netty.util.internal.PriorityQueueNode;
import java.util.AbstractQueue;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Iterator;
import java.util.NoSuchElementException;
/* loaded from: classes5.dex */
public final class DefaultPriorityQueue<T extends PriorityQueueNode> extends AbstractQueue<T> implements PriorityQueue<T> {
    private static final PriorityQueueNode[] EMPTY_ARRAY = new PriorityQueueNode[0];
    private final Comparator<T> comparator;
    private T[] queue;
    private int size;

    /* loaded from: classes5.dex */
    private final class PriorityQueueIterator implements Iterator<T> {
        private int index;

        private PriorityQueueIterator() {
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.index < DefaultPriorityQueue.this.size;
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("remove");
        }

        @Override // java.util.Iterator
        public T next() {
            if (this.index < DefaultPriorityQueue.this.size) {
                PriorityQueueNode[] priorityQueueNodeArr = DefaultPriorityQueue.this.queue;
                int i2 = this.index;
                this.index = i2 + 1;
                return (T) priorityQueueNodeArr[i2];
            }
            throw new NoSuchElementException();
        }
    }

    public DefaultPriorityQueue(Comparator<T> comparator, int i2) {
        this.comparator = (Comparator) ObjectUtil.checkNotNull(comparator, "comparator");
        this.queue = i2 != 0 ? (T[]) new PriorityQueueNode[i2] : (T[]) EMPTY_ARRAY;
    }

    private void bubbleDown(int i2, T t3) {
        int i4 = this.size >>> 1;
        while (i2 < i4) {
            int i5 = (i2 << 1) + 1;
            T[] tArr = this.queue;
            T t4 = tArr[i5];
            int i6 = i5 + 1;
            if (i6 < this.size && this.comparator.compare(t4, tArr[i6]) > 0) {
                t4 = this.queue[i6];
                i5 = i6;
            }
            if (this.comparator.compare(t3, t4) <= 0) {
                break;
            }
            this.queue[i2] = t4;
            t4.priorityQueueIndex(this, i2);
            i2 = i5;
        }
        this.queue[i2] = t3;
        t3.priorityQueueIndex(this, i2);
    }

    private void bubbleUp(int i2, T t3) {
        while (i2 > 0) {
            int i4 = (i2 - 1) >>> 1;
            T t4 = this.queue[i4];
            if (this.comparator.compare(t3, t4) >= 0) {
                break;
            }
            this.queue[i2] = t4;
            t4.priorityQueueIndex(this, i2);
            i2 = i4;
        }
        this.queue[i2] = t3;
        t3.priorityQueueIndex(this, i2);
    }

    @Override // java.util.AbstractQueue, java.util.AbstractCollection, java.util.Collection
    public void clear() {
        for (int i2 = 0; i2 < this.size; i2++) {
            T t3 = this.queue[i2];
            if (t3 != null) {
                t3.priorityQueueIndex(this, -1);
                this.queue[i2] = null;
            }
        }
        this.size = 0;
    }

    @Override // io.netty.util.internal.PriorityQueue
    public void clearIgnoringIndexes() {
        this.size = 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean contains(Object obj) {
        if (obj instanceof PriorityQueueNode) {
            PriorityQueueNode priorityQueueNode = (PriorityQueueNode) obj;
            return contains(priorityQueueNode, priorityQueueNode.priorityQueueIndex(this));
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // io.netty.util.internal.PriorityQueue
    public /* bridge */ /* synthetic */ boolean containsTyped(Object obj) {
        return containsTyped((DefaultPriorityQueue<T>) ((PriorityQueueNode) obj));
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean isEmpty() {
        return this.size == 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public Iterator<T> iterator() {
        return new PriorityQueueIterator();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Queue
    public /* bridge */ /* synthetic */ boolean offer(Object obj) {
        return offer((DefaultPriorityQueue<T>) ((PriorityQueueNode) obj));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // io.netty.util.internal.PriorityQueue
    public /* bridge */ /* synthetic */ void priorityChanged(Object obj) {
        priorityChanged((DefaultPriorityQueue<T>) ((PriorityQueueNode) obj));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean remove(Object obj) {
        try {
            return removeTyped((DefaultPriorityQueue<T>) ((PriorityQueueNode) obj));
        } catch (ClassCastException unused) {
            return false;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // io.netty.util.internal.PriorityQueue
    public /* bridge */ /* synthetic */ boolean removeTyped(Object obj) {
        return removeTyped((DefaultPriorityQueue<T>) ((PriorityQueueNode) obj));
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public int size() {
        return this.size;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public Object[] toArray() {
        return Arrays.copyOf(this.queue, this.size);
    }

    public boolean containsTyped(T t3) {
        return contains(t3, t3.priorityQueueIndex(this));
    }

    public boolean offer(T t3) {
        if (t3.priorityQueueIndex(this) == -1) {
            int i2 = this.size;
            T[] tArr = this.queue;
            if (i2 >= tArr.length) {
                this.queue = (T[]) ((PriorityQueueNode[]) Arrays.copyOf(tArr, tArr.length + (tArr.length < 64 ? tArr.length + 2 : tArr.length >>> 1)));
            }
            int i4 = this.size;
            this.size = i4 + 1;
            bubbleUp(i4, t3);
            return true;
        }
        throw new IllegalArgumentException("e.priorityQueueIndex(): " + t3.priorityQueueIndex(this) + " (expected: -1) + e: " + t3);
    }

    @Override // java.util.Queue
    public T peek() {
        if (this.size == 0) {
            return null;
        }
        return this.queue[0];
    }

    @Override // java.util.Queue
    public T poll() {
        if (this.size == 0) {
            return null;
        }
        T t3 = this.queue[0];
        t3.priorityQueueIndex(this, -1);
        T[] tArr = this.queue;
        int i2 = this.size - 1;
        this.size = i2;
        T t4 = tArr[i2];
        tArr[i2] = null;
        if (i2 != 0) {
            bubbleDown(0, t4);
        }
        return t3;
    }

    public void priorityChanged(T t3) {
        int priorityQueueIndex = t3.priorityQueueIndex(this);
        if (contains(t3, priorityQueueIndex)) {
            if (priorityQueueIndex == 0) {
                bubbleDown(priorityQueueIndex, t3);
                return;
            }
            if (this.comparator.compare(t3, this.queue[(priorityQueueIndex - 1) >>> 1]) < 0) {
                bubbleUp(priorityQueueIndex, t3);
            } else {
                bubbleDown(priorityQueueIndex, t3);
            }
        }
    }

    public boolean removeTyped(T t3) {
        int priorityQueueIndex = t3.priorityQueueIndex(this);
        if (contains(t3, priorityQueueIndex)) {
            t3.priorityQueueIndex(this, -1);
            int i2 = this.size - 1;
            this.size = i2;
            if (i2 != 0 && i2 != priorityQueueIndex) {
                T[] tArr = this.queue;
                T t4 = tArr[i2];
                tArr[priorityQueueIndex] = t4;
                tArr[i2] = null;
                if (this.comparator.compare(t3, t4) < 0) {
                    bubbleDown(priorityQueueIndex, t4);
                } else {
                    bubbleUp(priorityQueueIndex, t4);
                }
                return true;
            }
            this.queue[priorityQueueIndex] = null;
            return true;
        }
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public <X> X[] toArray(X[] xArr) {
        int length = xArr.length;
        int i2 = this.size;
        if (length < i2) {
            return (X[]) Arrays.copyOf(this.queue, i2, xArr.getClass());
        }
        System.arraycopy(this.queue, 0, xArr, 0, i2);
        int length2 = xArr.length;
        int i4 = this.size;
        if (length2 > i4) {
            xArr[i4] = null;
        }
        return xArr;
    }

    private boolean contains(PriorityQueueNode priorityQueueNode, int i2) {
        return i2 >= 0 && i2 < this.size && priorityQueueNode.equals(this.queue[i2]);
    }
}
