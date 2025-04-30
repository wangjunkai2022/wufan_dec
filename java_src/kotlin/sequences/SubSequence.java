package kotlin.sequences;

import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: Sequences.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010(\n\u0002\b\f\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u00022\b\u0012\u0004\u0012\u00028\u00000\u0003B%\u0012\f\u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\u0012\u0006\u0010\n\u001a\u00020\u0004\u0012\u0006\u0010\u000e\u001a\u00020\u0004¢\u0006\u0004\b\u0012\u0010\u0013J\u0016\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0016\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u000f\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00000\bH\u0096\u0002R\u0016\u0010\n\u001a\u00020\u00048\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000bR\u001c\u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00000\u00028\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\rR\u0016\u0010\u000e\u001a\u00020\u00048\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000bR\u0016\u0010\u0011\u001a\u00020\u00048B@\u0002X\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u0014"}, d2 = {"Lkotlin/sequences/SubSequence;", "T", "Lkotlin/sequences/Sequence;", "Lkotlin/sequences/DropTakeSequence;", "", "n", "drop", "take", "", "iterator", "startIndex", "I", "sequence", "Lkotlin/sequences/Sequence;", "endIndex", "getCount", "()I", "count", "<init>", "(Lkotlin/sequences/Sequence;II)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class SubSequence<T> implements Sequence<T>, DropTakeSequence<T> {
    private final int endIndex;
    private final Sequence<T> sequence;
    private final int startIndex;

    /* JADX WARN: Multi-variable type inference failed */
    public SubSequence(@NotNull Sequence<? extends T> sequence, int i2, int i4) {
        Intrinsics.checkNotNullParameter(sequence, "sequence");
        this.sequence = sequence;
        this.startIndex = i2;
        this.endIndex = i4;
        if (!(i2 >= 0)) {
            throw new IllegalArgumentException(("startIndex should be non-negative, but is " + i2).toString());
        }
        if (!(i4 >= 0)) {
            throw new IllegalArgumentException(("endIndex should be non-negative, but is " + i4).toString());
        }
        if (i4 >= i2) {
            return;
        }
        throw new IllegalArgumentException(("endIndex should be not less than startIndex, but was " + i4 + " < " + i2).toString());
    }

    private final int getCount() {
        return this.endIndex - this.startIndex;
    }

    @Override // kotlin.sequences.DropTakeSequence
    @NotNull
    public Sequence<T> drop(int i2) {
        Sequence<T> emptySequence;
        if (i2 >= getCount()) {
            emptySequence = SequencesKt__SequencesKt.emptySequence();
            return emptySequence;
        }
        return new SubSequence(this.sequence, this.startIndex + i2, this.endIndex);
    }

    @Override // kotlin.sequences.Sequence
    @NotNull
    public Iterator<T> iterator() {
        return new SubSequence$iterator$1(this);
    }

    @Override // kotlin.sequences.DropTakeSequence
    @NotNull
    public Sequence<T> take(int i2) {
        if (i2 >= getCount()) {
            return this;
        }
        Sequence<T> sequence = this.sequence;
        int i4 = this.startIndex;
        return new SubSequence(sequence, i4, i2 + i4);
    }
}
