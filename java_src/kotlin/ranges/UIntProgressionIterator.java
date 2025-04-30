package kotlin.ranges;

import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.UInt;
import kotlin.UnsignedKt;
import kotlin.collections.UIntIterator;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* compiled from: UIntRange.kt */
@SinceKotlin(version = "1.3")
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\b\n\u0002\b\u0003\b\u0003\u0018\u00002\u00020\u0001B\"\u0012\u0006\u0010\r\u001a\u00020\u0004\u0012\u0006\u0010\u000e\u001a\u00020\u0004\u0012\u0006\u0010\b\u001a\u00020\u000fø\u0001\u0000¢\u0006\u0004\b\u0010\u0010\u0011J\t\u0010\u0003\u001a\u00020\u0002H\u0096\u0002J\u0015\u0010\u0007\u001a\u00020\u0004H\u0016ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0005\u0010\u0006R\u001c\u0010\b\u001a\u00020\u00048\u0002@\u0002X\u0082\u0004ø\u0001\u0000ø\u0001\u0001¢\u0006\u0006\n\u0004\b\b\u0010\tR\u0016\u0010\u0003\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0003\u0010\nR\u001c\u0010\u000b\u001a\u00020\u00048\u0002@\u0002X\u0082\u000eø\u0001\u0000ø\u0001\u0001¢\u0006\u0006\n\u0004\b\u000b\u0010\tR\u001c\u0010\f\u001a\u00020\u00048\u0002@\u0002X\u0082\u0004ø\u0001\u0000ø\u0001\u0001¢\u0006\u0006\n\u0004\b\f\u0010\t\u0082\u0002\b\n\u0002\b\u0019\n\u0002\b!¨\u0006\u0012"}, d2 = {"Lkotlin/ranges/UIntProgressionIterator;", "Lkotlin/collections/UIntIterator;", "", "hasNext", "Lkotlin/UInt;", "nextUInt-pVg5ArA", "()I", "nextUInt", "step", "I", "Z", "next", "finalElement", "first", "last", "", "<init>", "(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
final class UIntProgressionIterator extends UIntIterator {
    private final int finalElement;
    private boolean hasNext;
    private int next;
    private final int step;

    private UIntProgressionIterator(int i2, int i4, int i5) {
        this.finalElement = i4;
        boolean z3 = true;
        int uintCompare = UnsignedKt.uintCompare(i2, i4);
        if (i5 <= 0 ? uintCompare < 0 : uintCompare > 0) {
            z3 = false;
        }
        this.hasNext = z3;
        this.step = UInt.m118constructorimpl(i5);
        this.next = this.hasNext ? i2 : i4;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.hasNext;
    }

    @Override // kotlin.collections.UIntIterator
    /* renamed from: nextUInt-pVg5ArA */
    public int mo187nextUIntpVg5ArA() {
        int i2 = this.next;
        if (i2 == this.finalElement) {
            if (this.hasNext) {
                this.hasNext = false;
            } else {
                throw new NoSuchElementException();
            }
        } else {
            this.next = UInt.m118constructorimpl(this.step + i2);
        }
        return i2;
    }

    public /* synthetic */ UIntProgressionIterator(int i2, int i4, int i5, DefaultConstructorMarker defaultConstructorMarker) {
        this(i2, i4, i5);
    }
}
