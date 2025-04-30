package kotlin.sequences;

import java.util.Enumeration;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.internal.InlineOnly;
/* compiled from: SequencesJVM.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u001f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0001H\u0087\b¨\u0006\u0004"}, d2 = {"T", "Ljava/util/Enumeration;", "Lkotlin/sequences/Sequence;", "asSequence", "kotlin-stdlib"}, k = 5, mv = {1, 5, 1}, xs = "kotlin/sequences/SequencesKt")
/* loaded from: classes.dex */
class SequencesKt__SequencesJVMKt extends SequencesKt__SequenceBuilderKt {
    @InlineOnly
    private static final <T> Sequence<T> asSequence(Enumeration<T> enumeration) {
        Iterator it2;
        Sequence<T> asSequence;
        it2 = CollectionsKt__IteratorsJVMKt.iterator(enumeration);
        asSequence = SequencesKt__SequencesKt.asSequence(it2);
        return asSequence;
    }
}
