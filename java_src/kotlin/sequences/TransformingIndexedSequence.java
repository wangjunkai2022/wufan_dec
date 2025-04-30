package kotlin.sequences;

import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: Sequences.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010(\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0005\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u0001*\u0004\b\u0001\u0010\u00022\b\u0012\u0004\u0012\u00028\u00010\u0003B/\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003\u0012\u0018\u0010\n\u001a\u0014\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\b¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00010\u0004H\u0096\u0002R\u001c\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u00038\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007R(\u0010\n\u001a\u0014\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\b8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000b¨\u0006\u000e"}, d2 = {"Lkotlin/sequences/TransformingIndexedSequence;", "T", "R", "Lkotlin/sequences/Sequence;", "", "iterator", "sequence", "Lkotlin/sequences/Sequence;", "Lkotlin/Function2;", "", "transformer", "Lkotlin/jvm/functions/Function2;", "<init>", "(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function2;)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class TransformingIndexedSequence<T, R> implements Sequence<R> {
    private final Sequence<T> sequence;
    private final Function2<Integer, T, R> transformer;

    /* JADX WARN: Multi-variable type inference failed */
    public TransformingIndexedSequence(@NotNull Sequence<? extends T> sequence, @NotNull Function2<? super Integer, ? super T, ? extends R> transformer) {
        Intrinsics.checkNotNullParameter(sequence, "sequence");
        Intrinsics.checkNotNullParameter(transformer, "transformer");
        this.sequence = sequence;
        this.transformer = transformer;
    }

    @Override // kotlin.sequences.Sequence
    @NotNull
    public Iterator<R> iterator() {
        return new TransformingIndexedSequence$iterator$1(this);
    }
}
