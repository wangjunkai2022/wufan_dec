package kotlin.sequences;

import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: Sequences.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010(\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002B3\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005\u0012\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00050\n¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003H\u0096\u0002R\u0016\u0010\u0006\u001a\u00020\u00058\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007R\u001c\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u00028\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR\"\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00050\n8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\f¨\u0006\u000f"}, d2 = {"Lkotlin/sequences/FilteringSequence;", "T", "Lkotlin/sequences/Sequence;", "", "iterator", "", "sendWhen", "Z", "sequence", "Lkotlin/sequences/Sequence;", "Lkotlin/Function1;", "predicate", "Lkotlin/jvm/functions/Function1;", "<init>", "(Lkotlin/sequences/Sequence;ZLkotlin/jvm/functions/Function1;)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class FilteringSequence<T> implements Sequence<T> {
    private final Function1<T, Boolean> predicate;
    private final boolean sendWhen;
    private final Sequence<T> sequence;

    /* JADX WARN: Multi-variable type inference failed */
    public FilteringSequence(@NotNull Sequence<? extends T> sequence, boolean z3, @NotNull Function1<? super T, Boolean> predicate) {
        Intrinsics.checkNotNullParameter(sequence, "sequence");
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        this.sequence = sequence;
        this.sendWhen = z3;
        this.predicate = predicate;
    }

    @Override // kotlin.sequences.Sequence
    @NotNull
    public Iterator<T> iterator() {
        return new FilteringSequence$iterator$1(this);
    }

    public /* synthetic */ FilteringSequence(Sequence sequence, boolean z3, Function1 function1, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(sequence, (i2 & 2) != 0 ? true : z3, function1);
    }
}
