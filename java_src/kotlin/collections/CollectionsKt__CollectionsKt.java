package kotlin.collections;

import com.join.mgps.activity.MyAccountLoginActivity_;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.List;
import kotlin.BuilderInference;
import kotlin.ExperimentalStdlibApi;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.SinceKotlin;
import kotlin.Unit;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.internal.InlineOnly;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.random.Random;
import kotlin.ranges.IntRange;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Collections.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u008c\u0001\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u001e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0004\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u001c\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000f\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0007\u001a'\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\"\u0004\b\u0000\u0010\u0000*\n\u0012\u0006\b\u0001\u0012\u00028\u00000\u0001H\u0000¢\u0006\u0004\b\u0003\u0010\u0004\u001a\u0012\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u0005\"\u0004\b\u0000\u0010\u0000\u001a-\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u0005\"\u0004\b\u0000\u0010\u00002\u0012\u0010\u0007\u001a\n\u0012\u0006\b\u0001\u0012\u00028\u00000\u0001\"\u00028\u0000¢\u0006\u0004\b\b\u0010\t\u001a\u0015\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u0005\"\u0004\b\u0000\u0010\u0000H\u0087\b\u001a\u0015\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00000\n\"\u0004\b\u0000\u0010\u0000H\u0087\b\u001a\u001f\u0010\u000e\u001a\u0012\u0012\u0004\u0012\u00028\u00000\fj\b\u0012\u0004\u0012\u00028\u0000`\r\"\u0004\b\u0000\u0010\u0000H\u0087\b\u001a-\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00000\n\"\u0004\b\u0000\u0010\u00002\u0012\u0010\u0007\u001a\n\u0012\u0006\b\u0001\u0012\u00028\u00000\u0001\"\u00028\u0000¢\u0006\u0004\b\u000b\u0010\t\u001a7\u0010\u000e\u001a\u0012\u0012\u0004\u0012\u00028\u00000\fj\b\u0012\u0004\u0012\u00028\u0000`\r\"\u0004\b\u0000\u0010\u00002\u0012\u0010\u0007\u001a\n\u0012\u0006\b\u0001\u0012\u00028\u00000\u0001\"\u00028\u0000¢\u0006\u0004\b\u000e\u0010\u000f\u001a'\u0010\u0012\u001a\b\u0012\u0004\u0012\u00028\u00000\u0005\"\b\b\u0000\u0010\u0000*\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00018\u0000¢\u0006\u0004\b\u0012\u0010\u0013\u001a5\u0010\u0012\u001a\b\u0012\u0004\u0012\u00028\u00000\u0005\"\b\b\u0000\u0010\u0000*\u00020\u00102\u0016\u0010\u0007\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00018\u00000\u0001\"\u0004\u0018\u00018\u0000¢\u0006\u0004\b\u0012\u0010\t\u001aC\u0010\u001b\u001a\b\u0012\u0004\u0012\u00028\u00000\u0005\"\u0004\b\u0000\u0010\u00002\u0006\u0010\u0015\u001a\u00020\u00142!\u0010\u001a\u001a\u001d\u0012\u0013\u0012\u00110\u0014¢\u0006\f\b\u0017\u0012\b\b\u0018\u0012\u0004\b\b(\u0019\u0012\u0004\u0012\u00028\u00000\u0016H\u0087\bø\u0001\u0000\u001aC\u0010\u001c\u001a\b\u0012\u0004\u0012\u00028\u00000\n\"\u0004\b\u0000\u0010\u00002\u0006\u0010\u0015\u001a\u00020\u00142!\u0010\u001a\u001a\u001d\u0012\u0013\u0012\u00110\u0014¢\u0006\f\b\u0017\u0012\b\b\u0018\u0012\u0004\b\b(\u0019\u0012\u0004\u0012\u00028\u00000\u0016H\u0087\bø\u0001\u0000\u001aF\u0010!\u001a\b\u0012\u0004\u0012\u00028\u00000\u0005\"\u0004\b\u0000\u0010\u001d2\u001f\b\u0001\u0010 \u001a\u0019\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\n\u0012\u0004\u0012\u00020\u001e0\u0016¢\u0006\u0002\b\u001fH\u0087\bø\u0001\u0000\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001\u001aN\u0010!\u001a\b\u0012\u0004\u0012\u00028\u00000\u0005\"\u0004\b\u0000\u0010\u001d2\u0006\u0010\"\u001a\u00020\u00142\u001f\b\u0001\u0010 \u001a\u0019\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\n\u0012\u0004\u0012\u00020\u001e0\u0016¢\u0006\u0002\b\u001fH\u0087\bø\u0001\u0000\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0002 \u0001\u001a\u0019\u0010$\u001a\u00020#\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0002H\u0087\b\u001a,\u0010%\u001a\u00020#\"\u0004\b\u0000\u0010\u0000*\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0002H\u0087\b\u0082\u0002\u000e\n\f\b\u0000\u0012\u0002\u0018\u0001\u001a\u0004\b\u0003\u0010\u0000\u001a!\u0010&\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\"\u0004\b\u0000\u0010\u0000*\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0002H\u0087\b\u001a!\u0010&\u001a\b\u0012\u0004\u0012\u00028\u00000\u0005\"\u0004\b\u0000\u0010\u0000*\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0005H\u0087\b\u001a=\u0010+\u001a\u00028\u0001\"\u0010\b\u0000\u0010'*\u0006\u0012\u0002\b\u00030\u0002*\u00028\u0001\"\u0004\b\u0001\u0010(*\u00028\u00002\f\u0010*\u001a\b\u0012\u0004\u0012\u00028\u00010)H\u0087\bø\u0001\u0000¢\u0006\u0004\b+\u0010,\u001a,\u0010.\u001a\u00020#\"\t\b\u0000\u0010\u0000¢\u0006\u0002\b-*\b\u0012\u0004\u0012\u00028\u00000\u00022\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002H\u0087\b\u001a&\u00102\u001a\b\u0012\u0004\u0012\u00028\u00000\u0005\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000/2\u0006\u00101\u001a\u000200H\u0007\u001a\u001e\u00103\u001a\b\u0012\u0004\u0012\u00028\u00000\u0005\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0005H\u0000\u001aG\u00107\u001a\u00020\u0014\"\u000e\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u000004*\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u00052\b\u0010\u0011\u001a\u0004\u0018\u00018\u00002\b\b\u0002\u00105\u001a\u00020\u00142\b\b\u0002\u00106\u001a\u00020\u0014¢\u0006\u0004\b7\u00108\u001aU\u00107\u001a\u00020\u0014\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00052\u0006\u0010\u0011\u001a\u00028\u00002\u001a\u0010;\u001a\u0016\u0012\u0006\b\u0000\u0012\u00028\u000009j\n\u0012\u0006\b\u0000\u0012\u00028\u0000`:2\b\b\u0002\u00105\u001a\u00020\u00142\b\b\u0002\u00106\u001a\u00020\u0014¢\u0006\u0004\b7\u0010<\u001ai\u0010@\u001a\u00020\u0014\"\u0004\b\u0000\u0010\u0000\"\u000e\b\u0001\u0010=*\b\u0012\u0004\u0012\u00028\u000104*\b\u0012\u0004\u0012\u00028\u00000\u00052\b\u0010>\u001a\u0004\u0018\u00018\u00012\b\b\u0002\u00105\u001a\u00020\u00142\b\b\u0002\u00106\u001a\u00020\u00142\u0016\b\u0004\u0010?\u001a\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0006\u0012\u0004\u0018\u00018\u00010\u0016H\u0086\bø\u0001\u0000¢\u0006\u0004\b@\u0010A\u001a>\u00107\u001a\u00020\u0014\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00052\b\b\u0002\u00105\u001a\u00020\u00142\b\b\u0002\u00106\u001a\u00020\u00142\u0012\u0010B\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00140\u0016\u001a'\u0010E\u001a\u00020\u001e2\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u00105\u001a\u00020\u00142\u0006\u00106\u001a\u00020\u0014H\u0002¢\u0006\u0004\bC\u0010D\u001a\b\u0010F\u001a\u00020\u001eH\u0001\u001a\b\u0010G\u001a\u00020\u001eH\u0001\"\u001b\u0010K\u001a\u00020H*\u0006\u0012\u0002\b\u00030\u00028F@\u0006¢\u0006\u0006\u001a\u0004\bI\u0010J\"#\u0010N\u001a\u00020\u0014\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00058F@\u0006¢\u0006\u0006\u001a\u0004\bL\u0010M\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006O"}, d2 = {"T", "", "", "asCollection", "([Ljava/lang/Object;)Ljava/util/Collection;", "", "emptyList", "elements", "listOf", "([Ljava/lang/Object;)Ljava/util/List;", "", "mutableListOf", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "arrayListOf", "([Ljava/lang/Object;)Ljava/util/ArrayList;", "", "element", "listOfNotNull", "(Ljava/lang/Object;)Ljava/util/List;", "", "size", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "index", "init", "List", "MutableList", "E", "", "Lkotlin/ExtensionFunctionType;", "builderAction", "buildList", "capacity", "", "isNotEmpty", "isNullOrEmpty", "orEmpty", "C", "R", "Lkotlin/Function0;", "defaultValue", "ifEmpty", "(Ljava/util/Collection;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "Lkotlin/internal/OnlyInputTypes;", "containsAll", "", "Lkotlin/random/Random;", "random", "shuffled", "optimizeReadOnlyList", "", MyAccountLoginActivity_.J, "toIndex", "binarySearch", "(Ljava/util/List;Ljava/lang/Comparable;II)I", "Ljava/util/Comparator;", "Lkotlin/Comparator;", "comparator", "(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;II)I", "K", "key", "selector", "binarySearchBy", "(Ljava/util/List;Ljava/lang/Comparable;IILkotlin/jvm/functions/Function1;)I", "comparison", "rangeCheck$CollectionsKt__CollectionsKt", "(III)V", "rangeCheck", "throwIndexOverflow", "throwCountOverflow", "Lkotlin/ranges/IntRange;", "getIndices", "(Ljava/util/Collection;)Lkotlin/ranges/IntRange;", "indices", "getLastIndex", "(Ljava/util/List;)I", "lastIndex", "kotlin-stdlib"}, k = 5, mv = {1, 5, 1}, xs = "kotlin/collections/CollectionsKt")
/* loaded from: classes.dex */
public class CollectionsKt__CollectionsKt extends CollectionsKt__CollectionsJVMKt {
    @SinceKotlin(version = "1.1")
    @InlineOnly
    private static final <T> List<T> List(int i2, Function1<? super Integer, ? extends T> function1) {
        ArrayList arrayList = new ArrayList(i2);
        for (int i4 = 0; i4 < i2; i4++) {
            arrayList.add(function1.invoke(Integer.valueOf(i4)));
        }
        return arrayList;
    }

    @SinceKotlin(version = "1.1")
    @InlineOnly
    private static final <T> List<T> MutableList(int i2, Function1<? super Integer, ? extends T> function1) {
        ArrayList arrayList = new ArrayList(i2);
        for (int i4 = 0; i4 < i2; i4++) {
            arrayList.add(function1.invoke(Integer.valueOf(i4)));
        }
        return arrayList;
    }

    @SinceKotlin(version = "1.1")
    @InlineOnly
    private static final <T> ArrayList<T> arrayListOf() {
        return new ArrayList<>();
    }

    @NotNull
    public static final <T> Collection<T> asCollection(@NotNull T[] asCollection) {
        Intrinsics.checkNotNullParameter(asCollection, "$this$asCollection");
        return new ArrayAsCollection(asCollection, false);
    }

    public static final <T extends Comparable<? super T>> int binarySearch(@NotNull List<? extends T> binarySearch, @Nullable T t3, int i2, int i4) {
        int compareValues;
        Intrinsics.checkNotNullParameter(binarySearch, "$this$binarySearch");
        rangeCheck$CollectionsKt__CollectionsKt(binarySearch.size(), i2, i4);
        int i5 = i4 - 1;
        while (i2 <= i5) {
            int i6 = (i2 + i5) >>> 1;
            compareValues = ComparisonsKt__ComparisonsKt.compareValues(binarySearch.get(i6), t3);
            if (compareValues < 0) {
                i2 = i6 + 1;
            } else if (compareValues <= 0) {
                return i6;
            } else {
                i5 = i6 - 1;
            }
        }
        return -(i2 + 1);
    }

    public static /* synthetic */ int binarySearch$default(List list, Comparable comparable, int i2, int i4, int i5, Object obj) {
        if ((i5 & 2) != 0) {
            i2 = 0;
        }
        if ((i5 & 4) != 0) {
            i4 = list.size();
        }
        return binarySearch(list, comparable, i2, i4);
    }

    public static final <T, K extends Comparable<? super K>> int binarySearchBy(@NotNull List<? extends T> binarySearchBy, @Nullable K k4, int i2, int i4, @NotNull Function1<? super T, ? extends K> selector) {
        Intrinsics.checkNotNullParameter(binarySearchBy, "$this$binarySearchBy");
        Intrinsics.checkNotNullParameter(selector, "selector");
        return binarySearch(binarySearchBy, i2, i4, new CollectionsKt__CollectionsKt$binarySearchBy$1(selector, k4));
    }

    public static /* synthetic */ int binarySearchBy$default(List binarySearchBy, Comparable comparable, int i2, int i4, Function1 selector, int i5, Object obj) {
        if ((i5 & 2) != 0) {
            i2 = 0;
        }
        if ((i5 & 4) != 0) {
            i4 = binarySearchBy.size();
        }
        Intrinsics.checkNotNullParameter(binarySearchBy, "$this$binarySearchBy");
        Intrinsics.checkNotNullParameter(selector, "selector");
        return binarySearch(binarySearchBy, i2, i4, new CollectionsKt__CollectionsKt$binarySearchBy$1(selector, comparable));
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalStdlibApi
    @InlineOnly
    private static final <E> List<E> buildList(@BuilderInference Function1<? super List<E>, Unit> function1) {
        List createListBuilder;
        List<E> build;
        createListBuilder = CollectionsKt__CollectionsJVMKt.createListBuilder();
        function1.invoke(createListBuilder);
        build = CollectionsKt__CollectionsJVMKt.build(createListBuilder);
        return build;
    }

    @InlineOnly
    private static final <T> boolean containsAll(Collection<? extends T> collection, Collection<? extends T> collection2) {
        return collection.containsAll(collection2);
    }

    @NotNull
    public static <T> List<T> emptyList() {
        return EmptyList.INSTANCE;
    }

    @NotNull
    public static IntRange getIndices(@NotNull Collection<?> indices) {
        Intrinsics.checkNotNullParameter(indices, "$this$indices");
        return new IntRange(0, indices.size() - 1);
    }

    public static <T> int getLastIndex(@NotNull List<? extends T> lastIndex) {
        Intrinsics.checkNotNullParameter(lastIndex, "$this$lastIndex");
        return lastIndex.size() - 1;
    }

    @SinceKotlin(version = "1.3")
    @InlineOnly
    private static final Object ifEmpty(Collection collection, Function0 function0) {
        return collection.isEmpty() ? function0.invoke() : collection;
    }

    @InlineOnly
    private static final <T> boolean isNotEmpty(Collection<? extends T> collection) {
        return !collection.isEmpty();
    }

    @SinceKotlin(version = "1.3")
    @InlineOnly
    private static final <T> boolean isNullOrEmpty(Collection<? extends T> collection) {
        return collection == null || collection.isEmpty();
    }

    @NotNull
    public static <T> List<T> listOf(@NotNull T... elements) {
        List<T> emptyList;
        List<T> asList;
        Intrinsics.checkNotNullParameter(elements, "elements");
        if (elements.length > 0) {
            asList = ArraysKt___ArraysJvmKt.asList(elements);
            return asList;
        }
        emptyList = emptyList();
        return emptyList;
    }

    @NotNull
    public static final <T> List<T> listOfNotNull(@Nullable T t3) {
        List<T> emptyList;
        List<T> listOf;
        if (t3 != null) {
            listOf = CollectionsKt__CollectionsJVMKt.listOf(t3);
            return listOf;
        }
        emptyList = emptyList();
        return emptyList;
    }

    @SinceKotlin(version = "1.1")
    @InlineOnly
    private static final <T> List<T> mutableListOf() {
        return new ArrayList();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public static <T> List<T> optimizeReadOnlyList(@NotNull List<? extends T> optimizeReadOnlyList) {
        List<T> emptyList;
        List<T> listOf;
        Intrinsics.checkNotNullParameter(optimizeReadOnlyList, "$this$optimizeReadOnlyList");
        int size = optimizeReadOnlyList.size();
        if (size == 0) {
            emptyList = emptyList();
            return emptyList;
        } else if (size != 1) {
            return optimizeReadOnlyList;
        } else {
            listOf = CollectionsKt__CollectionsJVMKt.listOf(optimizeReadOnlyList.get(0));
            return listOf;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @InlineOnly
    private static final <T> Collection<T> orEmpty(Collection<? extends T> collection) {
        List emptyList;
        if (collection != 0) {
            return collection;
        }
        emptyList = emptyList();
        return emptyList;
    }

    private static final void rangeCheck$CollectionsKt__CollectionsKt(int i2, int i4, int i5) {
        if (i4 > i5) {
            throw new IllegalArgumentException("fromIndex (" + i4 + ") is greater than toIndex (" + i5 + ").");
        } else if (i4 < 0) {
            throw new IndexOutOfBoundsException("fromIndex (" + i4 + ") is less than zero.");
        } else if (i5 <= i2) {
        } else {
            throw new IndexOutOfBoundsException("toIndex (" + i5 + ") is greater than size (" + i2 + ").");
        }
    }

    @SinceKotlin(version = "1.3")
    @NotNull
    public static final <T> List<T> shuffled(@NotNull Iterable<? extends T> shuffled, @NotNull Random random) {
        Intrinsics.checkNotNullParameter(shuffled, "$this$shuffled");
        Intrinsics.checkNotNullParameter(random, "random");
        List<T> mutableList = CollectionsKt___CollectionsKt.toMutableList(shuffled);
        CollectionsKt___CollectionsKt.shuffle(mutableList, random);
        return mutableList;
    }

    @SinceKotlin(version = "1.3")
    @PublishedApi
    public static void throwCountOverflow() {
        throw new ArithmeticException("Count overflow has happened.");
    }

    @SinceKotlin(version = "1.3")
    @PublishedApi
    public static void throwIndexOverflow() {
        throw new ArithmeticException("Index overflow has happened.");
    }

    @NotNull
    public static <T> ArrayList<T> arrayListOf(@NotNull T... elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        return elements.length == 0 ? new ArrayList<>() : new ArrayList<>(new ArrayAsCollection(elements, true));
    }

    public static /* synthetic */ int binarySearch$default(List list, Object obj, Comparator comparator, int i2, int i4, int i5, Object obj2) {
        if ((i5 & 4) != 0) {
            i2 = 0;
        }
        if ((i5 & 8) != 0) {
            i4 = list.size();
        }
        return binarySearch(list, obj, comparator, i2, i4);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalStdlibApi
    @InlineOnly
    private static final <E> List<E> buildList(int i2, @BuilderInference Function1<? super List<E>, Unit> function1) {
        List createListBuilder;
        List<E> build;
        createListBuilder = CollectionsKt__CollectionsJVMKt.createListBuilder(i2);
        function1.invoke(createListBuilder);
        build = CollectionsKt__CollectionsJVMKt.build(createListBuilder);
        return build;
    }

    @InlineOnly
    private static final <T> List<T> listOf() {
        List<T> emptyList;
        emptyList = emptyList();
        return emptyList;
    }

    @NotNull
    public static final <T> List<T> listOfNotNull(@NotNull T... elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        return ArraysKt___ArraysKt.filterNotNull(elements);
    }

    @NotNull
    public static <T> List<T> mutableListOf(@NotNull T... elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        return elements.length == 0 ? new ArrayList() : new ArrayList(new ArrayAsCollection(elements, true));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @InlineOnly
    private static final <T> List<T> orEmpty(List<? extends T> list) {
        List<T> emptyList;
        if (list != 0) {
            return list;
        }
        emptyList = emptyList();
        return emptyList;
    }

    public static /* synthetic */ int binarySearch$default(List list, int i2, int i4, Function1 function1, int i5, Object obj) {
        if ((i5 & 1) != 0) {
            i2 = 0;
        }
        if ((i5 & 2) != 0) {
            i4 = list.size();
        }
        return binarySearch(list, i2, i4, function1);
    }

    public static final <T> int binarySearch(@NotNull List<? extends T> binarySearch, T t3, @NotNull Comparator<? super T> comparator, int i2, int i4) {
        Intrinsics.checkNotNullParameter(binarySearch, "$this$binarySearch");
        Intrinsics.checkNotNullParameter(comparator, "comparator");
        rangeCheck$CollectionsKt__CollectionsKt(binarySearch.size(), i2, i4);
        int i5 = i4 - 1;
        while (i2 <= i5) {
            int i6 = (i2 + i5) >>> 1;
            int compare = comparator.compare((T) binarySearch.get(i6), t3);
            if (compare < 0) {
                i2 = i6 + 1;
            } else if (compare <= 0) {
                return i6;
            } else {
                i5 = i6 - 1;
            }
        }
        return -(i2 + 1);
    }

    public static final <T> int binarySearch(@NotNull List<? extends T> binarySearch, int i2, int i4, @NotNull Function1<? super T, Integer> comparison) {
        Intrinsics.checkNotNullParameter(binarySearch, "$this$binarySearch");
        Intrinsics.checkNotNullParameter(comparison, "comparison");
        rangeCheck$CollectionsKt__CollectionsKt(binarySearch.size(), i2, i4);
        int i5 = i4 - 1;
        while (i2 <= i5) {
            int i6 = (i2 + i5) >>> 1;
            int intValue = comparison.invoke((T) binarySearch.get(i6)).intValue();
            if (intValue < 0) {
                i2 = i6 + 1;
            } else if (intValue <= 0) {
                return i6;
            } else {
                i5 = i6 - 1;
            }
        }
        return -(i2 + 1);
    }
}
