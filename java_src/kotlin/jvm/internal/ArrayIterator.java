package kotlin.jvm.internal;

import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.jvm.internal.markers.KMappedMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: ArrayIterator.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010(\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\u0007\b\u0002\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002B\u0015\u0012\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00000\n¢\u0006\u0004\b\u000f\u0010\u0010J\t\u0010\u0004\u001a\u00020\u0003H\u0096\u0002J\u0010\u0010\u0005\u001a\u00028\u0000H\u0096\u0002¢\u0006\u0004\b\u0005\u0010\u0006R\u0016\u0010\b\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\b\u0010\tR\u001f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00000\n8\u0006@\u0006¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e¨\u0006\u0011"}, d2 = {"Lkotlin/jvm/internal/ArrayIterator;", "T", "", "", "hasNext", "next", "()Ljava/lang/Object;", "", "index", "I", "", "array", "[Ljava/lang/Object;", "getArray", "()[Ljava/lang/Object;", "<init>", "([Ljava/lang/Object;)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
final class ArrayIterator<T> implements Iterator<T>, KMappedMarker {
    @NotNull
    private final T[] array;
    private int index;

    public ArrayIterator(@NotNull T[] array) {
        Intrinsics.checkNotNullParameter(array, "array");
        this.array = array;
    }

    @NotNull
    public final T[] getArray() {
        return this.array;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.index < this.array.length;
    }

    @Override // java.util.Iterator
    public T next() {
        try {
            T[] tArr = this.array;
            int i2 = this.index;
            this.index = i2 + 1;
            return tArr[i2];
        } catch (ArrayIndexOutOfBoundsException e4) {
            this.index--;
            throw new NoSuchElementException(e4.getMessage());
        }
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
