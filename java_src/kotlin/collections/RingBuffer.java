package kotlin.collections;

import java.util.Arrays;
import java.util.Iterator;
import java.util.RandomAccess;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SlidingWindow.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010(\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0011\b\u0002\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u00022\u00060\u0003j\u0002`\u0004B\u001f\u0012\u000e\u0010\u001c\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00130\u000f\u0012\u0006\u0010%\u001a\u00020\u0005¢\u0006\u0004\b&\u0010'B\u0011\b\u0016\u0012\u0006\u0010#\u001a\u00020\u0005¢\u0006\u0004\b&\u0010(J\u0015\u0010\u0007\u001a\u00020\u0005*\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H\u0082\bJ\u0018\u0010\t\u001a\u00028\u00002\u0006\u0010\b\u001a\u00020\u0005H\u0096\u0002¢\u0006\u0004\b\t\u0010\nJ\u0006\u0010\f\u001a\u00020\u000bJ\u000f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028\u00000\rH\u0096\u0002J)\u0010\u0011\u001a\b\u0012\u0004\u0012\u00028\u00010\u000f\"\u0004\b\u0001\u0010\u00012\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00028\u00010\u000fH\u0014¢\u0006\u0004\b\u0011\u0010\u0012J\u0017\u0010\u0011\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00130\u000fH\u0014¢\u0006\u0004\b\u0011\u0010\u0014J\u0014\u0010\u0016\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010\u0015\u001a\u00020\u0005J\u0015\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u0017\u001a\u00028\u0000¢\u0006\u0004\b\u0019\u0010\u001aJ\u000e\u0010\u001b\u001a\u00020\u00182\u0006\u0010\u0006\u001a\u00020\u0005R\u001e\u0010\u001c\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00130\u000f8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR$\u0010\u001f\u001a\u00020\u00052\u0006\u0010\u001e\u001a\u00020\u00058\u0016@RX\u0096\u000e¢\u0006\f\n\u0004\b\u001f\u0010 \u001a\u0004\b!\u0010\"R\u0016\u0010#\u001a\u00020\u00058\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b#\u0010 R\u0016\u0010$\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b$\u0010 ¨\u0006)"}, d2 = {"Lkotlin/collections/RingBuffer;", "T", "Lkotlin/collections/AbstractList;", "Ljava/util/RandomAccess;", "Lkotlin/collections/RandomAccess;", "", "n", "forward", "index", "get", "(I)Ljava/lang/Object;", "", "isFull", "", "iterator", "", "array", "toArray", "([Ljava/lang/Object;)[Ljava/lang/Object;", "", "()[Ljava/lang/Object;", "maxCapacity", "expanded", "element", "", "add", "(Ljava/lang/Object;)V", "removeFirst", "buffer", "[Ljava/lang/Object;", "<set-?>", "size", "I", "getSize", "()I", "capacity", "startIndex", "filledSize", "<init>", "([Ljava/lang/Object;I)V", "(I)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class RingBuffer<T> extends AbstractList<T> implements RandomAccess {
    private final Object[] buffer;
    private final int capacity;
    private int size;
    private int startIndex;

    public RingBuffer(@NotNull Object[] buffer, int i2) {
        Intrinsics.checkNotNullParameter(buffer, "buffer");
        this.buffer = buffer;
        if (i2 >= 0) {
            if (i2 <= buffer.length) {
                this.capacity = buffer.length;
                this.size = i2;
                return;
            }
            throw new IllegalArgumentException(("ring buffer filled size: " + i2 + " cannot be larger than the buffer size: " + buffer.length).toString());
        }
        throw new IllegalArgumentException(("ring buffer filled size should not be negative but it is " + i2).toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int forward(int i2, int i4) {
        return (i2 + i4) % this.capacity;
    }

    @Override // java.util.Collection, java.util.List
    public final void add(T t3) {
        if (!isFull()) {
            this.buffer[(this.startIndex + size()) % this.capacity] = t3;
            this.size = size() + 1;
            return;
        }
        throw new IllegalStateException("ring buffer is full");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public final RingBuffer<T> expanded(int i2) {
        int coerceAtMost;
        Object[] array;
        int i4 = this.capacity;
        coerceAtMost = RangesKt___RangesKt.coerceAtMost(i4 + (i4 >> 1) + 1, i2);
        if (this.startIndex == 0) {
            array = Arrays.copyOf(this.buffer, coerceAtMost);
            Intrinsics.checkNotNullExpressionValue(array, "java.util.Arrays.copyOf(this, newSize)");
        } else {
            array = toArray(new Object[coerceAtMost]);
        }
        return new RingBuffer<>(array, size());
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public T get(int i2) {
        AbstractList.Companion.checkElementIndex$kotlin_stdlib(i2, size());
        return (T) this.buffer[(this.startIndex + i2) % this.capacity];
    }

    @Override // kotlin.collections.AbstractList, kotlin.collections.AbstractCollection
    public int getSize() {
        return this.size;
    }

    public final boolean isFull() {
        return size() == this.capacity;
    }

    @Override // kotlin.collections.AbstractList, kotlin.collections.AbstractCollection, java.util.Collection, java.lang.Iterable
    @NotNull
    public Iterator<T> iterator() {
        return new AbstractIterator<T>() { // from class: kotlin.collections.RingBuffer$iterator$1
            private int count;
            private int index;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                int i2;
                this.count = RingBuffer.this.size();
                i2 = RingBuffer.this.startIndex;
                this.index = i2;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // kotlin.collections.AbstractIterator
            protected void computeNext() {
                Object[] objArr;
                if (this.count != 0) {
                    objArr = RingBuffer.this.buffer;
                    setNext(objArr[this.index]);
                    this.index = (this.index + 1) % RingBuffer.this.capacity;
                    this.count--;
                    return;
                }
                done();
            }
        };
    }

    public final void removeFirst(int i2) {
        if (i2 >= 0) {
            if (!(i2 <= size())) {
                throw new IllegalArgumentException(("n shouldn't be greater than the buffer size: n = " + i2 + ", size = " + size()).toString());
            } else if (i2 > 0) {
                int i4 = this.startIndex;
                int i5 = (i4 + i2) % this.capacity;
                if (i4 > i5) {
                    ArraysKt___ArraysJvmKt.fill(this.buffer, (Object) null, i4, this.capacity);
                    ArraysKt___ArraysJvmKt.fill(this.buffer, (Object) null, 0, i5);
                } else {
                    ArraysKt___ArraysJvmKt.fill(this.buffer, (Object) null, i4, i5);
                }
                this.startIndex = i5;
                this.size = size() - i2;
                return;
            } else {
                return;
            }
        }
        throw new IllegalArgumentException(("n shouldn't be negative but it is " + i2).toString());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.collections.AbstractCollection, java.util.Collection
    @NotNull
    public <T> T[] toArray(@NotNull T[] array) {
        Intrinsics.checkNotNullParameter(array, "array");
        if (array.length < size()) {
            array = (T[]) Arrays.copyOf(array, size());
            Intrinsics.checkNotNullExpressionValue(array, "java.util.Arrays.copyOf(this, newSize)");
        }
        int size = size();
        int i2 = 0;
        int i4 = 0;
        for (int i5 = this.startIndex; i4 < size && i5 < this.capacity; i5++) {
            array[i4] = this.buffer[i5];
            i4++;
        }
        while (i4 < size) {
            array[i4] = this.buffer[i2];
            i4++;
            i2++;
        }
        if (array.length > size()) {
            array[size()] = null;
        }
        return array;
    }

    public RingBuffer(int i2) {
        this(new Object[i2], 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.collections.AbstractCollection, java.util.Collection, java.util.List
    @NotNull
    public Object[] toArray() {
        return toArray(new Object[size()]);
    }
}
