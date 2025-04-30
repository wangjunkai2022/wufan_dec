package kotlin.sequences;

import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: Sequences.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010(\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0007\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002B)\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\u0012\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003H\u0096\u0002R\"\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00060\u00058\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\bR\u001c\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00000\u00028\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\n¨\u0006\r"}, d2 = {"Lkotlin/sequences/DropWhileSequence;", "T", "Lkotlin/sequences/Sequence;", "", "iterator", "Lkotlin/Function1;", "", "predicate", "Lkotlin/jvm/functions/Function1;", "sequence", "Lkotlin/sequences/Sequence;", "<init>", "(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class DropWhileSequence<T> implements Sequence<T> {
    private final Function1<T, Boolean> predicate;
    private final Sequence<T> sequence;

    /* JADX WARN: Multi-variable type inference failed */
    public DropWhileSequence(@NotNull Sequence<? extends T> sequence, @NotNull Function1<? super T, Boolean> predicate) {
        Intrinsics.checkNotNullParameter(sequence, "sequence");
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        this.sequence = sequence;
        this.predicate = predicate;
    }

    @Override // kotlin.sequences.Sequence
    @NotNull
    public Iterator<T> iterator() {
        return new DropWhileSequence$iterator$1(this);
    }
}
