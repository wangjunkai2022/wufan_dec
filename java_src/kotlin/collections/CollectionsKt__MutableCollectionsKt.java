package kotlin.collections;

import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.RandomAccess;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.ExperimentalStdlibApi;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.SinceKotlin;
import kotlin.WasExperimental;
import kotlin.internal.InlineOnly;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt___SequencesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: MutableCollections.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u001f\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u001e\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u001c\n\u0002\u0010\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u001d\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010!\n\u0002\u0010\b\n\u0002\b\t\u001a/\u0010\u0005\u001a\u00020\u0004\"\t\b\u0000\u0010\u0001¢\u0006\u0002\b\u0000*\n\u0012\u0006\b\u0001\u0012\u00028\u00000\u00022\u0006\u0010\u0003\u001a\u00028\u0000H\u0087\b¢\u0006\u0004\b\u0005\u0010\u0006\u001a.\u0010\t\u001a\u00020\u0004\"\t\b\u0000\u0010\u0001¢\u0006\u0002\b\u0000*\n\u0012\u0006\b\u0001\u0012\u00028\u00000\u00022\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u0007H\u0087\b\u001a.\u0010\n\u001a\u00020\u0004\"\t\b\u0000\u0010\u0001¢\u0006\u0002\b\u0000*\n\u0012\u0006\b\u0001\u0012\u00028\u00000\u00022\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u0007H\u0087\b\u001a*\u0010\f\u001a\u00020\u000b\"\u0004\b\u0000\u0010\u0001*\n\u0012\u0006\b\u0000\u0012\u00028\u00000\u00022\u0006\u0010\u0003\u001a\u00028\u0000H\u0087\n¢\u0006\u0004\b\f\u0010\r\u001a)\u0010\f\u001a\u00020\u000b\"\u0004\b\u0000\u0010\u0001*\n\u0012\u0006\b\u0000\u0012\u00028\u00000\u00022\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u000eH\u0087\n\u001a0\u0010\f\u001a\u00020\u000b\"\u0004\b\u0000\u0010\u0001*\n\u0012\u0006\b\u0000\u0012\u00028\u00000\u00022\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u000fH\u0087\n¢\u0006\u0004\b\f\u0010\u0010\u001a)\u0010\f\u001a\u00020\u000b\"\u0004\b\u0000\u0010\u0001*\n\u0012\u0006\b\u0000\u0012\u00028\u00000\u00022\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u0011H\u0087\n\u001a*\u0010\u0012\u001a\u00020\u000b\"\u0004\b\u0000\u0010\u0001*\n\u0012\u0006\b\u0000\u0012\u00028\u00000\u00022\u0006\u0010\u0003\u001a\u00028\u0000H\u0087\n¢\u0006\u0004\b\u0012\u0010\r\u001a)\u0010\u0012\u001a\u00020\u000b\"\u0004\b\u0000\u0010\u0001*\n\u0012\u0006\b\u0000\u0012\u00028\u00000\u00022\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u000eH\u0087\n\u001a0\u0010\u0012\u001a\u00020\u000b\"\u0004\b\u0000\u0010\u0001*\n\u0012\u0006\b\u0000\u0012\u00028\u00000\u00022\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u000fH\u0087\n¢\u0006\u0004\b\u0012\u0010\u0010\u001a)\u0010\u0012\u001a\u00020\u000b\"\u0004\b\u0000\u0010\u0001*\n\u0012\u0006\b\u0000\u0012\u00028\u00000\u00022\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u0011H\u0087\n\u001a&\u0010\u0013\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u0001*\n\u0012\u0006\b\u0000\u0012\u00028\u00000\u00022\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u000e\u001a&\u0010\u0013\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u0001*\n\u0012\u0006\b\u0000\u0012\u00028\u00000\u00022\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u0011\u001a/\u0010\u0013\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u0001*\n\u0012\u0006\b\u0000\u0012\u00028\u00000\u00022\u000e\u0010\b\u001a\n\u0012\u0006\b\u0001\u0012\u00028\u00000\u000f¢\u0006\u0004\b\u0013\u0010\u0014\u001a&\u0010\t\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u0001*\n\u0012\u0006\b\u0000\u0012\u00028\u00000\u00022\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u000e\u001a&\u0010\t\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u0001*\n\u0012\u0006\b\u0000\u0012\u00028\u00000\u00022\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u0011\u001a/\u0010\t\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u0001*\n\u0012\u0006\b\u0000\u0012\u00028\u00000\u00022\u000e\u0010\b\u001a\n\u0012\u0006\b\u0001\u0012\u00028\u00000\u000f¢\u0006\u0004\b\t\u0010\u0014\u001a&\u0010\n\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u0001*\n\u0012\u0006\b\u0000\u0012\u00028\u00000\u00022\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u000e\u001a/\u0010\n\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u0001*\n\u0012\u0006\b\u0000\u0012\u00028\u00000\u00022\u000e\u0010\b\u001a\n\u0012\u0006\b\u0001\u0012\u00028\u00000\u000f¢\u0006\u0004\b\n\u0010\u0014\u001a&\u0010\n\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u0001*\n\u0012\u0006\b\u0000\u0012\u00028\u00000\u00022\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u0011\u001a\u0017\u0010\u0017\u001a\u00020\u0004*\u0006\u0012\u0002\b\u00030\u0002H\u0002¢\u0006\u0004\b\u0015\u0010\u0016\u001a*\u0010\t\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00000\u00182\u0012\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00040\u0019\u001a*\u0010\n\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00000\u00182\u0012\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00040\u0019\u001a;\u0010\u001e\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00000\u00182\u0012\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00040\u00192\u0006\u0010\u001b\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u001c\u0010\u001d\u001a(\u0010\u0005\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00000\u001f2\u0006\u0010!\u001a\u00020 H\u0087\b¢\u0006\u0004\b\u0005\u0010\"\u001a\u001f\u0010#\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00000\u001fH\u0007¢\u0006\u0004\b#\u0010$\u001a!\u0010%\u001a\u0004\u0018\u00018\u0000\"\u0004\b\u0000\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00000\u001fH\u0007¢\u0006\u0004\b%\u0010$\u001a\u001f\u0010&\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00000\u001fH\u0007¢\u0006\u0004\b&\u0010$\u001a!\u0010'\u001a\u0004\u0018\u00018\u0000\"\u0004\b\u0000\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00000\u001fH\u0007¢\u0006\u0004\b'\u0010$\u001a*\u0010\t\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00000\u001f2\u0012\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00040\u0019\u001a*\u0010\n\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00000\u001f2\u0012\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00040\u0019\u001a;\u0010\u001e\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00000\u001f2\u0012\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00040\u00192\u0006\u0010\u001b\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u001c\u0010(¨\u0006)"}, d2 = {"Lkotlin/internal/OnlyInputTypes;", "T", "", "element", "", "remove", "(Ljava/util/Collection;Ljava/lang/Object;)Z", "", "elements", "removeAll", "retainAll", "", "plusAssign", "(Ljava/util/Collection;Ljava/lang/Object;)V", "", "", "(Ljava/util/Collection;[Ljava/lang/Object;)V", "Lkotlin/sequences/Sequence;", "minusAssign", "addAll", "(Ljava/util/Collection;[Ljava/lang/Object;)Z", "retainNothing$CollectionsKt__MutableCollectionsKt", "(Ljava/util/Collection;)Z", "retainNothing", "", "Lkotlin/Function1;", "predicate", "predicateResultToRemove", "filterInPlace$CollectionsKt__MutableCollectionsKt", "(Ljava/lang/Iterable;Lkotlin/jvm/functions/Function1;Z)Z", "filterInPlace", "", "", "index", "(Ljava/util/List;I)Ljava/lang/Object;", "removeFirst", "(Ljava/util/List;)Ljava/lang/Object;", "removeFirstOrNull", "removeLast", "removeLastOrNull", "(Ljava/util/List;Lkotlin/jvm/functions/Function1;Z)Z", "kotlin-stdlib"}, k = 5, mv = {1, 5, 1}, xs = "kotlin/collections/CollectionsKt")
/* loaded from: classes.dex */
public class CollectionsKt__MutableCollectionsKt extends CollectionsKt__MutableCollectionsJVMKt {
    public static <T> boolean addAll(@NotNull Collection<? super T> addAll, @NotNull Iterable<? extends T> elements) {
        Intrinsics.checkNotNullParameter(addAll, "$this$addAll");
        Intrinsics.checkNotNullParameter(elements, "elements");
        if (elements instanceof Collection) {
            return addAll.addAll((Collection) elements);
        }
        boolean z3 = false;
        Iterator<? extends T> it2 = elements.iterator();
        while (it2.hasNext()) {
            if (addAll.add((T) it2.next())) {
                z3 = true;
            }
        }
        return z3;
    }

    private static final <T> boolean filterInPlace$CollectionsKt__MutableCollectionsKt(Iterable<? extends T> iterable, Function1<? super T, Boolean> function1, boolean z3) {
        Iterator<? extends T> it2 = iterable.iterator();
        boolean z4 = false;
        while (it2.hasNext()) {
            if (function1.invoke((T) it2.next()).booleanValue() == z3) {
                it2.remove();
                z4 = true;
            }
        }
        return z4;
    }

    @InlineOnly
    private static final <T> void minusAssign(Collection<? super T> minusAssign, T t3) {
        Intrinsics.checkNotNullParameter(minusAssign, "$this$minusAssign");
        minusAssign.remove(t3);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @InlineOnly
    private static final <T> void plusAssign(Collection<? super T> plusAssign, T t3) {
        Intrinsics.checkNotNullParameter(plusAssign, "$this$plusAssign");
        plusAssign.add(t3);
    }

    @InlineOnly
    private static final <T> boolean remove(Collection<? extends T> collection, T t3) {
        Objects.requireNonNull(collection, "null cannot be cast to non-null type kotlin.collections.MutableCollection<T>");
        return TypeIntrinsics.asMutableCollection(collection).remove(t3);
    }

    @InlineOnly
    private static final <T> boolean removeAll(Collection<? extends T> collection, Collection<? extends T> collection2) {
        Objects.requireNonNull(collection, "null cannot be cast to non-null type kotlin.collections.MutableCollection<T>");
        return TypeIntrinsics.asMutableCollection(collection).removeAll(collection2);
    }

    @SinceKotlin(version = "1.4")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    public static final <T> T removeFirst(@NotNull List<T> removeFirst) {
        Intrinsics.checkNotNullParameter(removeFirst, "$this$removeFirst");
        if (removeFirst.isEmpty()) {
            throw new NoSuchElementException("List is empty.");
        }
        return removeFirst.remove(0);
    }

    @SinceKotlin(version = "1.4")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @Nullable
    public static final <T> T removeFirstOrNull(@NotNull List<T> removeFirstOrNull) {
        Intrinsics.checkNotNullParameter(removeFirstOrNull, "$this$removeFirstOrNull");
        if (removeFirstOrNull.isEmpty()) {
            return null;
        }
        return removeFirstOrNull.remove(0);
    }

    @SinceKotlin(version = "1.4")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    public static <T> T removeLast(@NotNull List<T> removeLast) {
        int lastIndex;
        Intrinsics.checkNotNullParameter(removeLast, "$this$removeLast");
        if (removeLast.isEmpty()) {
            throw new NoSuchElementException("List is empty.");
        }
        lastIndex = CollectionsKt__CollectionsKt.getLastIndex(removeLast);
        return removeLast.remove(lastIndex);
    }

    @SinceKotlin(version = "1.4")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @Nullable
    public static final <T> T removeLastOrNull(@NotNull List<T> removeLastOrNull) {
        int lastIndex;
        Intrinsics.checkNotNullParameter(removeLastOrNull, "$this$removeLastOrNull");
        if (removeLastOrNull.isEmpty()) {
            return null;
        }
        lastIndex = CollectionsKt__CollectionsKt.getLastIndex(removeLastOrNull);
        return removeLastOrNull.remove(lastIndex);
    }

    @InlineOnly
    private static final <T> boolean retainAll(Collection<? extends T> collection, Collection<? extends T> collection2) {
        Objects.requireNonNull(collection, "null cannot be cast to non-null type kotlin.collections.MutableCollection<T>");
        return TypeIntrinsics.asMutableCollection(collection).retainAll(collection2);
    }

    private static final boolean retainNothing$CollectionsKt__MutableCollectionsKt(Collection<?> collection) {
        boolean z3 = !collection.isEmpty();
        collection.clear();
        return z3;
    }

    @InlineOnly
    private static final <T> void minusAssign(Collection<? super T> minusAssign, Iterable<? extends T> iterable) {
        Intrinsics.checkNotNullParameter(minusAssign, "$this$minusAssign");
        removeAll(minusAssign, iterable);
    }

    @InlineOnly
    private static final <T> void plusAssign(Collection<? super T> plusAssign, Iterable<? extends T> iterable) {
        Intrinsics.checkNotNullParameter(plusAssign, "$this$plusAssign");
        addAll(plusAssign, iterable);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Use removeAt(index) instead.", replaceWith = @ReplaceWith(expression = "removeAt(index)", imports = {}))
    @InlineOnly
    private static final <T> T remove(List<T> list, int i2) {
        return list.remove(i2);
    }

    public static final <T> boolean removeAll(@NotNull Collection<? super T> removeAll, @NotNull Iterable<? extends T> elements) {
        Intrinsics.checkNotNullParameter(removeAll, "$this$removeAll");
        Intrinsics.checkNotNullParameter(elements, "elements");
        return TypeIntrinsics.asMutableCollection(removeAll).removeAll(CollectionsKt__IterablesKt.convertToSetForSetOperationWith(elements, removeAll));
    }

    public static final <T> boolean retainAll(@NotNull Collection<? super T> retainAll, @NotNull Iterable<? extends T> elements) {
        Intrinsics.checkNotNullParameter(retainAll, "$this$retainAll");
        Intrinsics.checkNotNullParameter(elements, "elements");
        return TypeIntrinsics.asMutableCollection(retainAll).retainAll(CollectionsKt__IterablesKt.convertToSetForSetOperationWith(elements, retainAll));
    }

    @InlineOnly
    private static final <T> void minusAssign(Collection<? super T> minusAssign, T[] tArr) {
        Intrinsics.checkNotNullParameter(minusAssign, "$this$minusAssign");
        removeAll(minusAssign, tArr);
    }

    @InlineOnly
    private static final <T> void plusAssign(Collection<? super T> plusAssign, T[] tArr) {
        Intrinsics.checkNotNullParameter(plusAssign, "$this$plusAssign");
        addAll(plusAssign, tArr);
    }

    public static final <T> boolean removeAll(@NotNull Collection<? super T> removeAll, @NotNull Sequence<? extends T> elements) {
        HashSet hashSet;
        Intrinsics.checkNotNullParameter(removeAll, "$this$removeAll");
        Intrinsics.checkNotNullParameter(elements, "elements");
        hashSet = SequencesKt___SequencesKt.toHashSet(elements);
        return (hashSet.isEmpty() ^ true) && removeAll.removeAll(hashSet);
    }

    public static final <T> boolean retainAll(@NotNull Collection<? super T> retainAll, @NotNull T[] elements) {
        HashSet hashSet;
        Intrinsics.checkNotNullParameter(retainAll, "$this$retainAll");
        Intrinsics.checkNotNullParameter(elements, "elements");
        if (!(elements.length == 0)) {
            hashSet = ArraysKt___ArraysKt.toHashSet(elements);
            return retainAll.retainAll(hashSet);
        }
        return retainNothing$CollectionsKt__MutableCollectionsKt(retainAll);
    }

    public static <T> boolean addAll(@NotNull Collection<? super T> addAll, @NotNull Sequence<? extends T> elements) {
        Intrinsics.checkNotNullParameter(addAll, "$this$addAll");
        Intrinsics.checkNotNullParameter(elements, "elements");
        Iterator<? extends T> it2 = elements.iterator();
        boolean z3 = false;
        while (it2.hasNext()) {
            if (addAll.add((T) it2.next())) {
                z3 = true;
            }
        }
        return z3;
    }

    @InlineOnly
    private static final <T> void minusAssign(Collection<? super T> minusAssign, Sequence<? extends T> sequence) {
        Intrinsics.checkNotNullParameter(minusAssign, "$this$minusAssign");
        removeAll(minusAssign, sequence);
    }

    @InlineOnly
    private static final <T> void plusAssign(Collection<? super T> plusAssign, Sequence<? extends T> sequence) {
        Intrinsics.checkNotNullParameter(plusAssign, "$this$plusAssign");
        addAll(plusAssign, sequence);
    }

    private static final <T> boolean filterInPlace$CollectionsKt__MutableCollectionsKt(List<T> list, Function1<? super T, Boolean> function1, boolean z3) {
        int lastIndex;
        int i2;
        int lastIndex2;
        if (!(list instanceof RandomAccess)) {
            Objects.requireNonNull(list, "null cannot be cast to non-null type kotlin.collections.MutableIterable<T>");
            return filterInPlace$CollectionsKt__MutableCollectionsKt(TypeIntrinsics.asMutableIterable(list), function1, z3);
        }
        lastIndex = CollectionsKt__CollectionsKt.getLastIndex(list);
        if (lastIndex >= 0) {
            int i4 = 0;
            i2 = 0;
            while (true) {
                T t3 = list.get(i4);
                if (function1.invoke(t3).booleanValue() != z3) {
                    if (i2 != i4) {
                        list.set(i2, t3);
                    }
                    i2++;
                }
                if (i4 == lastIndex) {
                    break;
                }
                i4++;
            }
        } else {
            i2 = 0;
        }
        if (i2 >= list.size()) {
            return false;
        }
        lastIndex2 = CollectionsKt__CollectionsKt.getLastIndex(list);
        if (lastIndex2 < i2) {
            return true;
        }
        while (true) {
            list.remove(lastIndex2);
            if (lastIndex2 == i2) {
                return true;
            }
            lastIndex2--;
        }
    }

    public static final <T> boolean removeAll(@NotNull Collection<? super T> removeAll, @NotNull T[] elements) {
        HashSet hashSet;
        Intrinsics.checkNotNullParameter(removeAll, "$this$removeAll");
        Intrinsics.checkNotNullParameter(elements, "elements");
        if (!(elements.length == 0)) {
            hashSet = ArraysKt___ArraysKt.toHashSet(elements);
            return removeAll.removeAll(hashSet);
        }
        return false;
    }

    public static <T> boolean addAll(@NotNull Collection<? super T> addAll, @NotNull T[] elements) {
        List asList;
        Intrinsics.checkNotNullParameter(addAll, "$this$addAll");
        Intrinsics.checkNotNullParameter(elements, "elements");
        asList = ArraysKt___ArraysJvmKt.asList(elements);
        return addAll.addAll(asList);
    }

    public static final <T> boolean removeAll(@NotNull Iterable<? extends T> removeAll, @NotNull Function1<? super T, Boolean> predicate) {
        Intrinsics.checkNotNullParameter(removeAll, "$this$removeAll");
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        return filterInPlace$CollectionsKt__MutableCollectionsKt((Iterable) removeAll, (Function1) predicate, true);
    }

    public static final <T> boolean retainAll(@NotNull Collection<? super T> retainAll, @NotNull Sequence<? extends T> elements) {
        HashSet hashSet;
        Intrinsics.checkNotNullParameter(retainAll, "$this$retainAll");
        Intrinsics.checkNotNullParameter(elements, "elements");
        hashSet = SequencesKt___SequencesKt.toHashSet(elements);
        if (!hashSet.isEmpty()) {
            return retainAll.retainAll(hashSet);
        }
        return retainNothing$CollectionsKt__MutableCollectionsKt(retainAll);
    }

    public static final <T> boolean removeAll(@NotNull List<T> removeAll, @NotNull Function1<? super T, Boolean> predicate) {
        Intrinsics.checkNotNullParameter(removeAll, "$this$removeAll");
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        return filterInPlace$CollectionsKt__MutableCollectionsKt((List) removeAll, (Function1) predicate, true);
    }

    public static <T> boolean retainAll(@NotNull Iterable<? extends T> retainAll, @NotNull Function1<? super T, Boolean> predicate) {
        Intrinsics.checkNotNullParameter(retainAll, "$this$retainAll");
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        return filterInPlace$CollectionsKt__MutableCollectionsKt((Iterable) retainAll, (Function1) predicate, false);
    }

    public static final <T> boolean retainAll(@NotNull List<T> retainAll, @NotNull Function1<? super T, Boolean> predicate) {
        Intrinsics.checkNotNullParameter(retainAll, "$this$retainAll");
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        return filterInPlace$CollectionsKt__MutableCollectionsKt((List) retainAll, (Function1) predicate, false);
    }
}
