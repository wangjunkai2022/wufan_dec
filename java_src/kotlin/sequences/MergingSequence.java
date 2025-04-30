package kotlin.sequences;

import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: Sequences.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010(\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u0001*\u0004\b\u0001\u0010\u0002*\u0004\b\u0002\u0010\u00032\b\u0012\u0004\u0012\u00028\u00020\u0004B=\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00010\u0004\u0012\u0018\u0010\u000b\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020\n¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00020\u0005H\u0096\u0002R\u001c\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\u00048\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\bR\u001c\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00010\u00048\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\bR(\u0010\u000b\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020\n8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\f¨\u0006\u000f"}, d2 = {"Lkotlin/sequences/MergingSequence;", "T1", "T2", "V", "Lkotlin/sequences/Sequence;", "", "iterator", "sequence1", "Lkotlin/sequences/Sequence;", "sequence2", "Lkotlin/Function2;", "transform", "Lkotlin/jvm/functions/Function2;", "<init>", "(Lkotlin/sequences/Sequence;Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function2;)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class MergingSequence<T1, T2, V> implements Sequence<V> {
    private final Sequence<T1> sequence1;
    private final Sequence<T2> sequence2;
    private final Function2<T1, T2, V> transform;

    /* JADX WARN: Multi-variable type inference failed */
    public MergingSequence(@NotNull Sequence<? extends T1> sequence1, @NotNull Sequence<? extends T2> sequence2, @NotNull Function2<? super T1, ? super T2, ? extends V> transform) {
        Intrinsics.checkNotNullParameter(sequence1, "sequence1");
        Intrinsics.checkNotNullParameter(sequence2, "sequence2");
        Intrinsics.checkNotNullParameter(transform, "transform");
        this.sequence1 = sequence1;
        this.sequence2 = sequence2;
        this.transform = transform;
    }

    @Override // kotlin.sequences.Sequence
    @NotNull
    public Iterator<V> iterator() {
        return new MergingSequence$iterator$1(this);
    }
}
