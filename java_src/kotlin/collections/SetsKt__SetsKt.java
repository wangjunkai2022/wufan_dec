package kotlin.collections;

import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.BuilderInference;
import kotlin.ExperimentalStdlibApi;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.Unit;
import kotlin.internal.InlineOnly;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Sets.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000N\n\u0000\n\u0002\u0010\"\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0003\n\u0002\u0010#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\u001a\u0012\u0010\u0002\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\u0000\u001a-\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\u00002\u0012\u0010\u0004\u001a\n\u0012\u0006\b\u0001\u0012\u00028\u00000\u0003\"\u00028\u0000¢\u0006\u0004\b\u0005\u0010\u0006\u001a\u0015\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\u0000H\u0087\b\u001a\u0015\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u0007\"\u0004\b\u0000\u0010\u0000H\u0087\b\u001a-\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u0007\"\u0004\b\u0000\u0010\u00002\u0012\u0010\u0004\u001a\n\u0012\u0006\b\u0001\u0012\u00028\u00000\u0003\"\u00028\u0000¢\u0006\u0004\b\b\u0010\u0006\u001a\u001f\u0010\u000b\u001a\u0012\u0012\u0004\u0012\u00028\u00000\tj\b\u0012\u0004\u0012\u00028\u0000`\n\"\u0004\b\u0000\u0010\u0000H\u0087\b\u001a7\u0010\u000b\u001a\u0012\u0012\u0004\u0012\u00028\u00000\tj\b\u0012\u0004\u0012\u00028\u0000`\n\"\u0004\b\u0000\u0010\u00002\u0012\u0010\u0004\u001a\n\u0012\u0006\b\u0001\u0012\u00028\u00000\u0003\"\u00028\u0000¢\u0006\u0004\b\u000b\u0010\f\u001a\u001f\u0010\u000f\u001a\u0012\u0012\u0004\u0012\u00028\u00000\rj\b\u0012\u0004\u0012\u00028\u0000`\u000e\"\u0004\b\u0000\u0010\u0000H\u0087\b\u001a7\u0010\u000f\u001a\u0012\u0012\u0004\u0012\u00028\u00000\rj\b\u0012\u0004\u0012\u00028\u0000`\u000e\"\u0004\b\u0000\u0010\u00002\u0012\u0010\u0004\u001a\n\u0012\u0006\b\u0001\u0012\u00028\u00000\u0003\"\u00028\u0000¢\u0006\u0004\b\u000f\u0010\u0010\u001a)\u0010\u0013\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\b\b\u0000\u0010\u0000*\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00018\u0000H\u0007¢\u0006\u0004\b\u0013\u0010\u0014\u001a7\u0010\u0013\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\b\b\u0000\u0010\u0000*\u00020\u00112\u0016\u0010\u0004\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00018\u00000\u0003\"\u0004\u0018\u00018\u0000H\u0007¢\u0006\u0004\b\u0013\u0010\u0006\u001aF\u0010\u001a\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\u00152\u001f\b\u0001\u0010\u0019\u001a\u0019\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0007\u0012\u0004\u0012\u00020\u00170\u0016¢\u0006\u0002\b\u0018H\u0087\bø\u0001\u0000\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001\u001aN\u0010\u001a\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\u00152\u0006\u0010\u001c\u001a\u00020\u001b2\u001f\b\u0001\u0010\u0019\u001a\u0019\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0007\u0012\u0004\u0012\u00020\u00170\u0016¢\u0006\u0002\b\u0018H\u0087\bø\u0001\u0000\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0002 \u0001\u001a!\u0010\u001d\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\u0000*\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0001H\u0087\b\u001a\u001e\u0010\u001e\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0001H\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u001f"}, d2 = {"T", "", "emptySet", "", "elements", "setOf", "([Ljava/lang/Object;)Ljava/util/Set;", "", "mutableSetOf", "Ljava/util/HashSet;", "Lkotlin/collections/HashSet;", "hashSetOf", "([Ljava/lang/Object;)Ljava/util/HashSet;", "Ljava/util/LinkedHashSet;", "Lkotlin/collections/LinkedHashSet;", "linkedSetOf", "([Ljava/lang/Object;)Ljava/util/LinkedHashSet;", "", "element", "setOfNotNull", "(Ljava/lang/Object;)Ljava/util/Set;", "E", "Lkotlin/Function1;", "", "Lkotlin/ExtensionFunctionType;", "builderAction", "buildSet", "", "capacity", "orEmpty", "optimizeReadOnlySet", "kotlin-stdlib"}, k = 5, mv = {1, 5, 1}, xs = "kotlin/collections/SetsKt")
/* loaded from: classes.dex */
public class SetsKt__SetsKt extends SetsKt__SetsJVMKt {
    @SinceKotlin(version = "1.3")
    @ExperimentalStdlibApi
    @InlineOnly
    private static final <E> Set<E> buildSet(@BuilderInference Function1<? super Set<E>, Unit> function1) {
        Set createSetBuilder = SetsKt__SetsJVMKt.createSetBuilder();
        function1.invoke(createSetBuilder);
        return SetsKt__SetsJVMKt.build(createSetBuilder);
    }

    @NotNull
    public static <T> Set<T> emptySet() {
        return EmptySet.INSTANCE;
    }

    @SinceKotlin(version = "1.1")
    @InlineOnly
    private static final <T> HashSet<T> hashSetOf() {
        return new HashSet<>();
    }

    @SinceKotlin(version = "1.1")
    @InlineOnly
    private static final <T> LinkedHashSet<T> linkedSetOf() {
        return new LinkedHashSet<>();
    }

    @SinceKotlin(version = "1.1")
    @InlineOnly
    private static final <T> Set<T> mutableSetOf() {
        return new LinkedHashSet();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public static <T> Set<T> optimizeReadOnlySet(@NotNull Set<? extends T> optimizeReadOnlySet) {
        Set<T> emptySet;
        Set<T> of;
        Intrinsics.checkNotNullParameter(optimizeReadOnlySet, "$this$optimizeReadOnlySet");
        int size = optimizeReadOnlySet.size();
        if (size == 0) {
            emptySet = emptySet();
            return emptySet;
        } else if (size != 1) {
            return optimizeReadOnlySet;
        } else {
            of = SetsKt__SetsJVMKt.setOf(optimizeReadOnlySet.iterator().next());
            return of;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @InlineOnly
    private static final <T> Set<T> orEmpty(Set<? extends T> set) {
        Set<T> emptySet;
        if (set != 0) {
            return set;
        }
        emptySet = emptySet();
        return emptySet;
    }

    @NotNull
    public static final <T> Set<T> setOf(@NotNull T... elements) {
        Set<T> emptySet;
        Intrinsics.checkNotNullParameter(elements, "elements");
        if (elements.length > 0) {
            return ArraysKt___ArraysKt.toSet(elements);
        }
        emptySet = emptySet();
        return emptySet;
    }

    @SinceKotlin(version = "1.4")
    @NotNull
    public static final <T> Set<T> setOfNotNull(@Nullable T t3) {
        Set<T> emptySet;
        Set<T> of;
        if (t3 != null) {
            of = SetsKt__SetsJVMKt.setOf(t3);
            return of;
        }
        emptySet = emptySet();
        return emptySet;
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalStdlibApi
    @InlineOnly
    private static final <E> Set<E> buildSet(int i2, @BuilderInference Function1<? super Set<E>, Unit> function1) {
        Set createSetBuilder = SetsKt__SetsJVMKt.createSetBuilder(i2);
        function1.invoke(createSetBuilder);
        return SetsKt__SetsJVMKt.build(createSetBuilder);
    }

    @NotNull
    public static final <T> HashSet<T> hashSetOf(@NotNull T... elements) {
        int mapCapacity;
        Intrinsics.checkNotNullParameter(elements, "elements");
        mapCapacity = MapsKt__MapsJVMKt.mapCapacity(elements.length);
        return (HashSet) ArraysKt___ArraysKt.toCollection(elements, new HashSet(mapCapacity));
    }

    @NotNull
    public static final <T> LinkedHashSet<T> linkedSetOf(@NotNull T... elements) {
        int mapCapacity;
        Intrinsics.checkNotNullParameter(elements, "elements");
        mapCapacity = MapsKt__MapsJVMKt.mapCapacity(elements.length);
        return (LinkedHashSet) ArraysKt___ArraysKt.toCollection(elements, new LinkedHashSet(mapCapacity));
    }

    @NotNull
    public static final <T> Set<T> mutableSetOf(@NotNull T... elements) {
        int mapCapacity;
        Intrinsics.checkNotNullParameter(elements, "elements");
        mapCapacity = MapsKt__MapsJVMKt.mapCapacity(elements.length);
        return (Set) ArraysKt___ArraysKt.toCollection(elements, new LinkedHashSet(mapCapacity));
    }

    @InlineOnly
    private static final <T> Set<T> setOf() {
        Set<T> emptySet;
        emptySet = emptySet();
        return emptySet;
    }

    @SinceKotlin(version = "1.4")
    @NotNull
    public static final <T> Set<T> setOfNotNull(@NotNull T... elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        return (Set) ArraysKt___ArraysKt.filterNotNullTo(elements, new LinkedHashSet());
    }
}
