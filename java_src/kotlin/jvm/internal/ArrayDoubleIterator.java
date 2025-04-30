package kotlin.jvm.internal;

import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.collections.DoubleIterator;
import org.jetbrains.annotations.NotNull;
/* compiled from: ArrayIterators.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0013\n\u0002\b\u0005\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\f\u0010\rJ\t\u0010\u0003\u001a\u00020\u0002H\u0096\u0002J\b\u0010\u0005\u001a\u00020\u0004H\u0016R\u0016\u0010\u0007\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0007\u0010\bR\u0016\u0010\n\u001a\u00020\t8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000b¨\u0006\u000e"}, d2 = {"Lkotlin/jvm/internal/ArrayDoubleIterator;", "Lkotlin/collections/DoubleIterator;", "", "hasNext", "", "nextDouble", "", "index", "I", "", "array", "[D", "<init>", "([D)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
final class ArrayDoubleIterator extends DoubleIterator {
    private final double[] array;
    private int index;

    public ArrayDoubleIterator(@NotNull double[] array) {
        Intrinsics.checkNotNullParameter(array, "array");
        this.array = array;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.index < this.array.length;
    }

    @Override // kotlin.collections.DoubleIterator
    public double nextDouble() {
        try {
            double[] dArr = this.array;
            int i2 = this.index;
            this.index = i2 + 1;
            return dArr[i2];
        } catch (ArrayIndexOutOfBoundsException e4) {
            this.index--;
            throw new NoSuchElementException(e4.getMessage());
        }
    }
}
