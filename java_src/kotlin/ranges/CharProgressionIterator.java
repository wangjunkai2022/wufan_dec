package kotlin.ranges;

import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.collections.CharIterator;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: ProgressionIterators.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\f\n\u0000\n\u0002\u0010\b\n\u0002\b\f\b\u0000\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u000e\u001a\u00020\u0004\u0012\u0006\u0010\u000f\u001a\u00020\u0004\u0012\u0006\u0010\u000b\u001a\u00020\u0006¢\u0006\u0004\b\u0010\u0010\u0011J\t\u0010\u0003\u001a\u00020\u0002H\u0096\u0002J\b\u0010\u0005\u001a\u00020\u0004H\u0016R\u0016\u0010\u0007\u001a\u00020\u00068\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\bR\u0016\u0010\u0003\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0003\u0010\tR\u0016\u0010\n\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\n\u0010\bR\u0019\u0010\u000b\u001a\u00020\u00068\u0006@\u0006¢\u0006\f\n\u0004\b\u000b\u0010\b\u001a\u0004\b\f\u0010\r¨\u0006\u0012"}, d2 = {"Lkotlin/ranges/CharProgressionIterator;", "Lkotlin/collections/CharIterator;", "", "hasNext", "", "nextChar", "", "finalElement", "I", "Z", "next", "step", "getStep", "()I", "first", "last", "<init>", "(CCI)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class CharProgressionIterator extends CharIterator {
    private final int finalElement;
    private boolean hasNext;
    private int next;
    private final int step;

    public CharProgressionIterator(char c4, char c5, int i2) {
        this.step = i2;
        this.finalElement = c5;
        boolean z3 = true;
        if (i2 <= 0 ? Intrinsics.compare((int) c4, (int) c5) < 0 : Intrinsics.compare((int) c4, (int) c5) > 0) {
            z3 = false;
        }
        this.hasNext = z3;
        this.next = z3 ? c4 : c5;
    }

    public final int getStep() {
        return this.step;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.hasNext;
    }

    @Override // kotlin.collections.CharIterator
    public char nextChar() {
        int i2 = this.next;
        if (i2 == this.finalElement) {
            if (this.hasNext) {
                this.hasNext = false;
            } else {
                throw new NoSuchElementException();
            }
        } else {
            this.next = this.step + i2;
        }
        return (char) i2;
    }
}
