package kotlin.collections;

import java.util.List;
import kotlin.ExperimentalStdlibApi;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.SinceKotlin;
import kotlin.WasExperimental;
import kotlin.jvm.functions.Function1;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"kotlin/collections/CollectionsKt__CollectionsJVMKt", "kotlin/collections/CollectionsKt__CollectionsKt", "kotlin/collections/CollectionsKt__IterablesKt", "kotlin/collections/CollectionsKt__IteratorsJVMKt", "kotlin/collections/CollectionsKt__IteratorsKt", "kotlin/collections/CollectionsKt__MutableCollectionsJVMKt", "kotlin/collections/CollectionsKt__MutableCollectionsKt", "kotlin/collections/CollectionsKt__ReversedViewsKt", "kotlin/collections/CollectionsKt___CollectionsJvmKt", "kotlin/collections/CollectionsKt___CollectionsKt"}, d2 = {}, k = 4, mv = {1, 5, 1})
/* loaded from: classes.dex */
public final class CollectionsKt extends CollectionsKt___CollectionsKt {
    private CollectionsKt() {
    }

    public static /* bridge */ /* synthetic */ int binarySearch$default(List list, Comparable comparable, int i2, int i4, int i5, Object obj) {
        return CollectionsKt__CollectionsKt.binarySearch$default(list, comparable, i2, i4, i5, obj);
    }

    @PublishedApi
    public static /* bridge */ /* synthetic */ <T> int collectionSizeOrDefault(@NotNull Iterable<? extends T> iterable, int i2) {
        return CollectionsKt__IterablesKt.collectionSizeOrDefault(iterable, i2);
    }

    @Nullable
    public static /* bridge */ /* synthetic */ <T> T firstOrNull(@NotNull List<? extends T> list) {
        return (T) CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) list);
    }

    public static /* bridge */ /* synthetic */ <T> int getLastIndex(@NotNull List<? extends T> list) {
        return CollectionsKt__CollectionsKt.getLastIndex(list);
    }

    public static /* bridge */ /* synthetic */ Appendable joinTo$default(Iterable iterable, Appendable appendable, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i2, CharSequence charSequence4, Function1 function1, int i4, Object obj) {
        Appendable joinTo;
        joinTo = CollectionsKt___CollectionsKt.joinTo(iterable, appendable, (r14 & 2) != 0 ? ", " : charSequence, (r14 & 4) != 0 ? "" : charSequence2, (r14 & 8) == 0 ? charSequence3 : "", (r14 & 16) != 0 ? -1 : i2, (r14 & 32) != 0 ? "..." : charSequence4, (r14 & 64) != 0 ? null : function1);
        return joinTo;
    }

    public static /* bridge */ /* synthetic */ <T> T last(@NotNull List<? extends T> list) {
        return (T) CollectionsKt___CollectionsKt.last((List<? extends Object>) list);
    }

    @SinceKotlin(version = "1.4")
    @Nullable
    public static /* bridge */ /* synthetic */ <T extends Comparable<? super T>> T minOrNull(@NotNull Iterable<? extends T> iterable) {
        return (T) CollectionsKt___CollectionsKt.minOrNull(iterable);
    }

    @NotNull
    public static /* bridge */ /* synthetic */ <T> List<T> mutableListOf(@NotNull T... tArr) {
        return CollectionsKt__CollectionsKt.mutableListOf(tArr);
    }

    @SinceKotlin(version = "1.4")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    public static /* bridge */ /* synthetic */ <T> T removeLast(@NotNull List<T> list) {
        return (T) CollectionsKt__MutableCollectionsKt.removeLast(list);
    }

    public static /* bridge */ /* synthetic */ <T> T single(@NotNull Iterable<? extends T> iterable) {
        return (T) CollectionsKt___CollectionsKt.single(iterable);
    }

    @Nullable
    public static /* bridge */ /* synthetic */ <T> T singleOrNull(@NotNull List<? extends T> list) {
        return (T) CollectionsKt___CollectionsKt.singleOrNull((List<? extends Object>) list);
    }

    public static /* bridge */ /* synthetic */ <T extends Comparable<? super T>> void sort(@NotNull List<T> list) {
        CollectionsKt__MutableCollectionsJVMKt.sort(list);
    }

    @SinceKotlin(version = "1.3")
    @PublishedApi
    public static /* bridge */ /* synthetic */ void throwIndexOverflow() {
        CollectionsKt__CollectionsKt.throwIndexOverflow();
    }
}
