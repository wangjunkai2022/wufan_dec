package kotlin.collections;

import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt__SequenceBuilderKt;
import org.jetbrains.annotations.NotNull;
/* compiled from: SlidingWindow.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000*\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0010(\n\u0002\b\u0003\u001a\u0018\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0000H\u0000\u001aD\u0010\u000b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\n0\u0006\"\u0004\b\u0000\u0010\u0005*\b\u0012\u0004\u0012\u00028\u00000\u00062\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0007H\u0000\u001aH\u0010\u000e\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\n0\f\"\u0004\b\u0000\u0010\u00052\f\u0010\r\u001a\b\u0012\u0004\u0012\u00028\u00000\f2\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0007H\u0000¨\u0006\u000f"}, d2 = {"", "size", "step", "", "checkWindowSizeStep", "T", "Lkotlin/sequences/Sequence;", "", "partialWindows", "reuseBuffer", "", "windowedSequence", "", "iterator", "windowedIterator", "kotlin-stdlib"}, k = 2, mv = {1, 5, 1})
/* loaded from: classes.dex */
public final class SlidingWindowKt {
    public static final void checkWindowSizeStep(int i2, int i4) {
        String str;
        if (i2 > 0 && i4 > 0) {
            return;
        }
        if (i2 != i4) {
            str = "Both size " + i2 + " and step " + i4 + " must be greater than zero.";
        } else {
            str = "size " + i2 + " must be greater than zero.";
        }
        throw new IllegalArgumentException(str.toString());
    }

    @NotNull
    public static final <T> Iterator<List<T>> windowedIterator(@NotNull Iterator<? extends T> iterator, int i2, int i4, boolean z3, boolean z4) {
        Iterator<List<T>> it2;
        Intrinsics.checkNotNullParameter(iterator, "iterator");
        if (iterator.hasNext()) {
            it2 = SequencesKt__SequenceBuilderKt.iterator(new SlidingWindowKt$windowedIterator$1(i2, i4, iterator, z4, z3, null));
            return it2;
        }
        return EmptyIterator.INSTANCE;
    }

    @NotNull
    public static final <T> Sequence<List<T>> windowedSequence(@NotNull final Sequence<? extends T> windowedSequence, final int i2, final int i4, final boolean z3, final boolean z4) {
        Intrinsics.checkNotNullParameter(windowedSequence, "$this$windowedSequence");
        checkWindowSizeStep(i2, i4);
        return (Sequence<List<? extends T>>) new Sequence<List<? extends T>>() { // from class: kotlin.collections.SlidingWindowKt$windowedSequence$$inlined$Sequence$1
            @Override // kotlin.sequences.Sequence
            @NotNull
            public Iterator<List<? extends T>> iterator() {
                return SlidingWindowKt.windowedIterator(Sequence.this.iterator(), i2, i4, z3, z4);
            }
        };
    }
}
