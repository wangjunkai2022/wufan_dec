package kotlin.ranges;

import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.collections.LongIterator;
/* compiled from: ProgressionIterators.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0002\b\r\b\u0000\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\r\u001a\u00020\u0004\u0012\u0006\u0010\u000e\u001a\u00020\u0004\u0012\u0006\u0010\n\u001a\u00020\u0004¢\u0006\u0004\b\u000f\u0010\u0010J\t\u0010\u0003\u001a\u00020\u0002H\u0096\u0002J\b\u0010\u0005\u001a\u00020\u0004H\u0016R\u0016\u0010\u0006\u001a\u00020\u00048\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007R\u0016\u0010\u0003\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0003\u0010\bR\u0016\u0010\t\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\t\u0010\u0007R\u0019\u0010\n\u001a\u00020\u00048\u0006@\u0006¢\u0006\f\n\u0004\b\n\u0010\u0007\u001a\u0004\b\u000b\u0010\f¨\u0006\u0011"}, d2 = {"Lkotlin/ranges/LongProgressionIterator;", "Lkotlin/collections/LongIterator;", "", "hasNext", "", "nextLong", "finalElement", "J", "Z", "next", "step", "getStep", "()J", "first", "last", "<init>", "(JJJ)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class LongProgressionIterator extends LongIterator {
    private final long finalElement;
    private boolean hasNext;
    private long next;
    private final long step;

    public LongProgressionIterator(long j4, long j5, long j6) {
        this.step = j6;
        this.finalElement = j5;
        boolean z3 = true;
        int i2 = (j6 > 0L ? 1 : (j6 == 0L ? 0 : -1));
        int i4 = (j4 > j5 ? 1 : (j4 == j5 ? 0 : -1));
        if (i2 <= 0 ? i4 < 0 : i4 > 0) {
            z3 = false;
        }
        this.hasNext = z3;
        this.next = z3 ? j4 : j5;
    }

    public final long getStep() {
        return this.step;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.hasNext;
    }

    @Override // kotlin.collections.LongIterator
    public long nextLong() {
        long j4 = this.next;
        if (j4 == this.finalElement) {
            if (this.hasNext) {
                this.hasNext = false;
            } else {
                throw new NoSuchElementException();
            }
        } else {
            this.next = this.step + j4;
        }
        return j4;
    }
}
