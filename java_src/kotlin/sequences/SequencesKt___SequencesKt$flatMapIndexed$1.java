package kotlin.sequences;

import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Add missing generic type declarations: [R] */
/* compiled from: _Sequences.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0012\n\u0002\b\u0002\n\u0002\u0010\u001c\n\u0000\n\u0002\u0010(\n\u0002\b\u0003\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00010\u0004\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u00012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00010\u0002¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"T", "R", "", "p1", "", "invoke", "(Ljava/lang/Iterable;)Ljava/util/Iterator;", "<anonymous>"}, k = 3, mv = {1, 5, 1})
/* loaded from: classes5.dex */
final /* synthetic */ class SequencesKt___SequencesKt$flatMapIndexed$1<R> extends FunctionReferenceImpl implements Function1<Iterable<? extends R>, Iterator<? extends R>> {
    public static final SequencesKt___SequencesKt$flatMapIndexed$1 INSTANCE = new SequencesKt___SequencesKt$flatMapIndexed$1();

    SequencesKt___SequencesKt$flatMapIndexed$1() {
        super(1, Iterable.class, "iterator", "iterator()Ljava/util/Iterator;", 0);
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Object invoke(Object obj) {
        return invoke((Iterable) ((Iterable) obj));
    }

    @NotNull
    public final Iterator<R> invoke(@NotNull Iterable<? extends R> p12) {
        Intrinsics.checkNotNullParameter(p12, "p1");
        return (Iterator<? extends R>) p12.iterator();
    }
}
