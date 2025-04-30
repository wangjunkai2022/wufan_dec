package kotlin.sequences;

import external.org.apache.commons.lang3.d;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: Sequences.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010(\n\u0002\b\b\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u00022\b\u0012\u0004\u0012\u00028\u00000\u0003B\u001d\u0012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\u0012\u0006\u0010\f\u001a\u00020\u0004¢\u0006\u0004\b\u000e\u0010\u000fJ\u0016\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0016\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u000f\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00000\bH\u0096\u0002R\u001c\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00000\u00028\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000bR\u0016\u0010\f\u001a\u00020\u00048\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\r¨\u0006\u0010"}, d2 = {"Lkotlin/sequences/DropSequence;", "T", "Lkotlin/sequences/Sequence;", "Lkotlin/sequences/DropTakeSequence;", "", "n", "drop", "take", "", "iterator", "sequence", "Lkotlin/sequences/Sequence;", "count", "I", "<init>", "(Lkotlin/sequences/Sequence;I)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class DropSequence<T> implements Sequence<T>, DropTakeSequence<T> {
    private final int count;
    private final Sequence<T> sequence;

    /* JADX WARN: Multi-variable type inference failed */
    public DropSequence(@NotNull Sequence<? extends T> sequence, int i2) {
        Intrinsics.checkNotNullParameter(sequence, "sequence");
        this.sequence = sequence;
        this.count = i2;
        if (i2 >= 0) {
            return;
        }
        throw new IllegalArgumentException(("count must be non-negative, but was " + i2 + d.f65364a).toString());
    }

    @Override // kotlin.sequences.DropTakeSequence
    @NotNull
    public Sequence<T> drop(int i2) {
        int i4 = this.count + i2;
        return i4 < 0 ? new DropSequence(this, i2) : new DropSequence(this.sequence, i4);
    }

    @Override // kotlin.sequences.Sequence
    @NotNull
    public Iterator<T> iterator() {
        return new DropSequence$iterator$1(this);
    }

    @Override // kotlin.sequences.DropTakeSequence
    @NotNull
    public Sequence<T> take(int i2) {
        int i4 = this.count;
        int i5 = i4 + i2;
        return i5 < 0 ? new TakeSequence(this, i2) : new SubSequence(this.sequence, i4, i5);
    }
}
