package kotlin.ranges;

import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.ULong;
import kotlin.UnsignedKt;
import kotlin.collections.ULongIterator;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* compiled from: ULongRange.kt */
@SinceKotlin(version = "1.3")
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\t\n\u0002\b\u0003\b\u0003\u0018\u00002\u00020\u0001B\"\u0012\u0006\u0010\r\u001a\u00020\u0004\u0012\u0006\u0010\u000e\u001a\u00020\u0004\u0012\u0006\u0010\u000b\u001a\u00020\u000fø\u0001\u0000¢\u0006\u0004\b\u0010\u0010\u0011J\t\u0010\u0003\u001a\u00020\u0002H\u0096\u0002J\u0015\u0010\u0007\u001a\u00020\u0004H\u0016ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0005\u0010\u0006R\u0016\u0010\u0003\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0003\u0010\bR\u001c\u0010\t\u001a\u00020\u00048\u0002@\u0002X\u0082\u0004ø\u0001\u0000ø\u0001\u0001¢\u0006\u0006\n\u0004\b\t\u0010\nR\u001c\u0010\u000b\u001a\u00020\u00048\u0002@\u0002X\u0082\u0004ø\u0001\u0000ø\u0001\u0001¢\u0006\u0006\n\u0004\b\u000b\u0010\nR\u001c\u0010\f\u001a\u00020\u00048\u0002@\u0002X\u0082\u000eø\u0001\u0000ø\u0001\u0001¢\u0006\u0006\n\u0004\b\f\u0010\n\u0082\u0002\b\n\u0002\b\u0019\n\u0002\b!¨\u0006\u0012"}, d2 = {"Lkotlin/ranges/ULongProgressionIterator;", "Lkotlin/collections/ULongIterator;", "", "hasNext", "Lkotlin/ULong;", "nextULong-s-VKNKU", "()J", "nextULong", "Z", "finalElement", "J", "step", "next", "first", "last", "", "<init>", "(JJJLkotlin/jvm/internal/DefaultConstructorMarker;)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
final class ULongProgressionIterator extends ULongIterator {
    private final long finalElement;
    private boolean hasNext;
    private long next;
    private final long step;

    private ULongProgressionIterator(long j4, long j5, long j6) {
        this.finalElement = j5;
        boolean z3 = true;
        int i2 = (j6 > 0L ? 1 : (j6 == 0L ? 0 : -1));
        int ulongCompare = UnsignedKt.ulongCompare(j4, j5);
        if (i2 <= 0 ? ulongCompare < 0 : ulongCompare > 0) {
            z3 = false;
        }
        this.hasNext = z3;
        this.step = ULong.m196constructorimpl(j6);
        this.next = this.hasNext ? j4 : j5;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.hasNext;
    }

    @Override // kotlin.collections.ULongIterator
    /* renamed from: nextULong-s-VKNKU */
    public long mo265nextULongsVKNKU() {
        long j4 = this.next;
        if (j4 == this.finalElement) {
            if (this.hasNext) {
                this.hasNext = false;
            } else {
                throw new NoSuchElementException();
            }
        } else {
            this.next = ULong.m196constructorimpl(this.step + j4);
        }
        return j4;
    }

    public /* synthetic */ ULongProgressionIterator(long j4, long j5, long j6, DefaultConstructorMarker defaultConstructorMarker) {
        this(j4, j5, j6);
    }
}
