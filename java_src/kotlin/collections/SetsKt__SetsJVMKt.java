package kotlin.collections;

import com.fasterxml.jackson.databind.annotation.JsonPOJOBuilder;
import java.util.Collections;
import java.util.Comparator;
import java.util.Set;
import java.util.TreeSet;
import kotlin.ExperimentalStdlibApi;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.SinceKotlin;
import kotlin.Unit;
import kotlin.collections.builders.SetBuilder;
import kotlin.internal.InlineOnly;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SetsJVM.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000B\n\u0002\b\u0002\n\u0002\u0010\"\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010#\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a!\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\"\u0004\b\u0000\u0010\u00002\u0006\u0010\u0001\u001a\u00028\u0000¢\u0006\u0004\b\u0003\u0010\u0004\u001a7\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\"\u0004\b\u0000\u0010\u00052\u001d\u0010\n\u001a\u0019\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0007\u0012\u0004\u0012\u00020\b0\u0006¢\u0006\u0002\b\tH\u0081\bø\u0001\u0000\u001a?\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\"\u0004\b\u0000\u0010\u00052\u0006\u0010\r\u001a\u00020\f2\u001d\u0010\n\u001a\u0019\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0007\u0012\u0004\u0012\u00020\b0\u0006¢\u0006\u0002\b\tH\u0081\bø\u0001\u0000\u001a\u0014\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028\u00000\u0007\"\u0004\b\u0000\u0010\u0005H\u0001\u001a\u001c\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028\u00000\u0007\"\u0004\b\u0000\u0010\u00052\u0006\u0010\r\u001a\u00020\fH\u0001\u001a\"\u0010\u0010\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\"\u0004\b\u0000\u0010\u00052\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u0007H\u0001\u001a-\u0010\u0014\u001a\b\u0012\u0004\u0012\u00028\u00000\u0013\"\u0004\b\u0000\u0010\u00002\u0012\u0010\u0012\u001a\n\u0012\u0006\b\u0001\u0012\u00028\u00000\u0011\"\u00028\u0000¢\u0006\u0004\b\u0014\u0010\u0015\u001aI\u0010\u0014\u001a\b\u0012\u0004\u0012\u00028\u00000\u0013\"\u0004\b\u0000\u0010\u00002\u001a\u0010\u0018\u001a\u0016\u0012\u0006\b\u0000\u0012\u00028\u00000\u0016j\n\u0012\u0006\b\u0000\u0012\u00028\u0000`\u00172\u0012\u0010\u0012\u001a\n\u0012\u0006\b\u0001\u0012\u00028\u00000\u0011\"\u00028\u0000¢\u0006\u0004\b\u0014\u0010\u0019\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u001a"}, d2 = {"T", "element", "", "setOf", "(Ljava/lang/Object;)Ljava/util/Set;", "E", "Lkotlin/Function1;", "", "", "Lkotlin/ExtensionFunctionType;", "builderAction", "buildSetInternal", "", "capacity", "createSetBuilder", "builder", JsonPOJOBuilder.DEFAULT_BUILD_METHOD, "", "elements", "Ljava/util/TreeSet;", "sortedSetOf", "([Ljava/lang/Object;)Ljava/util/TreeSet;", "Ljava/util/Comparator;", "Lkotlin/Comparator;", "comparator", "(Ljava/util/Comparator;[Ljava/lang/Object;)Ljava/util/TreeSet;", "kotlin-stdlib"}, k = 5, mv = {1, 5, 1}, xs = "kotlin/collections/SetsKt")
/* loaded from: classes.dex */
public class SetsKt__SetsJVMKt {
    @SinceKotlin(version = "1.3")
    @ExperimentalStdlibApi
    @NotNull
    @PublishedApi
    public static final <E> Set<E> build(@NotNull Set<E> builder) {
        Intrinsics.checkNotNullParameter(builder, "builder");
        return ((SetBuilder) builder).build();
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalStdlibApi
    @InlineOnly
    @PublishedApi
    private static final <E> Set<E> buildSetInternal(Function1<? super Set<E>, Unit> function1) {
        Set createSetBuilder = createSetBuilder();
        function1.invoke(createSetBuilder);
        return build(createSetBuilder);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalStdlibApi
    @NotNull
    @PublishedApi
    public static final <E> Set<E> createSetBuilder() {
        return new SetBuilder();
    }

    @NotNull
    public static <T> Set<T> setOf(T t3) {
        Set<T> singleton = Collections.singleton(t3);
        Intrinsics.checkNotNullExpressionValue(singleton, "java.util.Collections.singleton(element)");
        return singleton;
    }

    @NotNull
    public static final <T> TreeSet<T> sortedSetOf(@NotNull T... elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        return (TreeSet) ArraysKt___ArraysKt.toCollection(elements, new TreeSet());
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalStdlibApi
    @InlineOnly
    @PublishedApi
    private static final <E> Set<E> buildSetInternal(int i2, Function1<? super Set<E>, Unit> function1) {
        Set createSetBuilder = createSetBuilder(i2);
        function1.invoke(createSetBuilder);
        return build(createSetBuilder);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalStdlibApi
    @NotNull
    @PublishedApi
    public static final <E> Set<E> createSetBuilder(int i2) {
        return new SetBuilder(i2);
    }

    @NotNull
    public static final <T> TreeSet<T> sortedSetOf(@NotNull Comparator<? super T> comparator, @NotNull T... elements) {
        Intrinsics.checkNotNullParameter(comparator, "comparator");
        Intrinsics.checkNotNullParameter(elements, "elements");
        return (TreeSet) ArraysKt___ArraysKt.toCollection(elements, new TreeSet(comparator));
    }
}
