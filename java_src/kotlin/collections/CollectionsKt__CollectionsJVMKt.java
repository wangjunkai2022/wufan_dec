package kotlin.collections;

import com.fasterxml.jackson.databind.annotation.JsonPOJOBuilder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Enumeration;
import java.util.List;
import java.util.Objects;
import java.util.Random;
import kotlin.ExperimentalStdlibApi;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.SinceKotlin;
import kotlin.Unit;
import kotlin.collections.builders.ListBuilder;
import kotlin.internal.InlineOnly;
import kotlin.internal.PlatformImplementationsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.CollectionToArray;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CollectionsJVM.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000T\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u001c\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u001e\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\b\u001a!\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\"\u0004\b\u0000\u0010\u00002\u0006\u0010\u0001\u001a\u00028\u0000¢\u0006\u0004\b\u0003\u0010\u0004\u001a7\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\"\u0004\b\u0000\u0010\u00052\u001d\u0010\n\u001a\u0019\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0007\u0012\u0004\u0012\u00020\b0\u0006¢\u0006\u0002\b\tH\u0081\bø\u0001\u0000\u001a?\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\"\u0004\b\u0000\u0010\u00052\u0006\u0010\r\u001a\u00020\f2\u001d\u0010\n\u001a\u0019\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0007\u0012\u0004\u0012\u00020\b0\u0006¢\u0006\u0002\b\tH\u0081\bø\u0001\u0000\u001a\u0014\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028\u00000\u0007\"\u0004\b\u0000\u0010\u0005H\u0001\u001a\u001c\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028\u00000\u0007\"\u0004\b\u0000\u0010\u00052\u0006\u0010\r\u001a\u00020\fH\u0001\u001a\"\u0010\u0010\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\"\u0004\b\u0000\u0010\u00052\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u0007H\u0001\u001a\u001f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0011H\u0087\b\u001a\u001e\u0010\u0014\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0013H\u0007\u001a&\u0010\u0014\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00132\u0006\u0010\u0016\u001a\u00020\u0015H\u0007\u001a$\u0010\u001b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u001a0\u00192\n\u0010\u0018\u001a\u0006\u0012\u0002\b\u00030\u0017H\u0081\b¢\u0006\u0004\b\u001b\u0010\u001c\u001a6\u0010\u001b\u001a\b\u0012\u0004\u0012\u00028\u00000\u0019\"\u0004\b\u0000\u0010\u00002\n\u0010\u0018\u001a\u0006\u0012\u0002\b\u00030\u00172\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00028\u00000\u0019H\u0081\b¢\u0006\u0004\b\u001b\u0010\u001e\u001a3\u0010!\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u001a0\u0019\"\u0004\b\u0000\u0010\u0000*\n\u0012\u0006\b\u0001\u0012\u00028\u00000\u00192\u0006\u0010 \u001a\u00020\u001fH\u0000¢\u0006\u0004\b!\u0010\"\u001a\u0011\u0010$\u001a\u00020\f2\u0006\u0010#\u001a\u00020\fH\u0081\b\u001a\u0011\u0010&\u001a\u00020\f2\u0006\u0010%\u001a\u00020\fH\u0081\b\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006'"}, d2 = {"T", "element", "", "listOf", "(Ljava/lang/Object;)Ljava/util/List;", "E", "Lkotlin/Function1;", "", "", "Lkotlin/ExtensionFunctionType;", "builderAction", "buildListInternal", "", "capacity", "createListBuilder", "builder", JsonPOJOBuilder.DEFAULT_BUILD_METHOD, "Ljava/util/Enumeration;", "toList", "", "shuffled", "Ljava/util/Random;", "random", "", "collection", "", "", "copyToArrayImpl", "(Ljava/util/Collection;)[Ljava/lang/Object;", "array", "(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;", "", "isVarargs", "copyToArrayOfAny", "([Ljava/lang/Object;Z)[Ljava/lang/Object;", "index", "checkIndexOverflow", "count", "checkCountOverflow", "kotlin-stdlib"}, k = 5, mv = {1, 5, 1}, xs = "kotlin/collections/CollectionsKt")
/* loaded from: classes.dex */
public class CollectionsKt__CollectionsJVMKt {
    @SinceKotlin(version = "1.3")
    @ExperimentalStdlibApi
    @NotNull
    @PublishedApi
    public static <E> List<E> build(@NotNull List<E> builder) {
        Intrinsics.checkNotNullParameter(builder, "builder");
        return ((ListBuilder) builder).build();
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalStdlibApi
    @InlineOnly
    @PublishedApi
    private static final <E> List<E> buildListInternal(Function1<? super List<E>, Unit> function1) {
        List createListBuilder;
        List<E> build;
        createListBuilder = createListBuilder();
        function1.invoke(createListBuilder);
        build = build(createListBuilder);
        return build;
    }

    @SinceKotlin(version = "1.3")
    @PublishedApi
    @InlineOnly
    private static final int checkCountOverflow(int i2) {
        if (i2 < 0) {
            if (PlatformImplementationsKt.apiVersionIsAtLeast(1, 3, 0)) {
                CollectionsKt__CollectionsKt.throwCountOverflow();
            } else {
                throw new ArithmeticException("Count overflow has happened.");
            }
        }
        return i2;
    }

    @SinceKotlin(version = "1.3")
    @PublishedApi
    @InlineOnly
    private static final int checkIndexOverflow(int i2) {
        if (i2 < 0) {
            if (PlatformImplementationsKt.apiVersionIsAtLeast(1, 3, 0)) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            } else {
                throw new ArithmeticException("Index overflow has happened.");
            }
        }
        return i2;
    }

    @InlineOnly
    private static final Object[] copyToArrayImpl(Collection<?> collection) {
        return CollectionToArray.toArray(collection);
    }

    @NotNull
    public static final <T> Object[] copyToArrayOfAny(@NotNull T[] copyToArrayOfAny, boolean z3) {
        Intrinsics.checkNotNullParameter(copyToArrayOfAny, "$this$copyToArrayOfAny");
        if (z3 && Intrinsics.areEqual(copyToArrayOfAny.getClass(), Object[].class)) {
            return copyToArrayOfAny;
        }
        Object[] copyOf = Arrays.copyOf(copyToArrayOfAny, copyToArrayOfAny.length, Object[].class);
        Intrinsics.checkNotNullExpressionValue(copyOf, "java.util.Arrays.copyOf(… Array<Any?>::class.java)");
        return copyOf;
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalStdlibApi
    @NotNull
    @PublishedApi
    public static <E> List<E> createListBuilder() {
        return new ListBuilder();
    }

    @NotNull
    public static <T> List<T> listOf(T t3) {
        List<T> singletonList = Collections.singletonList(t3);
        Intrinsics.checkNotNullExpressionValue(singletonList, "java.util.Collections.singletonList(element)");
        return singletonList;
    }

    @SinceKotlin(version = "1.2")
    @NotNull
    public static final <T> List<T> shuffled(@NotNull Iterable<? extends T> shuffled) {
        Intrinsics.checkNotNullParameter(shuffled, "$this$shuffled");
        List<T> mutableList = CollectionsKt___CollectionsKt.toMutableList(shuffled);
        Collections.shuffle(mutableList);
        return mutableList;
    }

    @InlineOnly
    private static final <T> List<T> toList(Enumeration<T> enumeration) {
        ArrayList list = Collections.list(enumeration);
        Intrinsics.checkNotNullExpressionValue(list, "java.util.Collections.list(this)");
        return list;
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalStdlibApi
    @InlineOnly
    @PublishedApi
    private static final <E> List<E> buildListInternal(int i2, Function1<? super List<E>, Unit> function1) {
        List createListBuilder;
        List<E> build;
        createListBuilder = createListBuilder(i2);
        function1.invoke(createListBuilder);
        build = build(createListBuilder);
        return build;
    }

    @InlineOnly
    private static final <T> T[] copyToArrayImpl(Collection<?> collection, T[] tArr) {
        Objects.requireNonNull(tArr, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
        T[] tArr2 = (T[]) CollectionToArray.toArray(collection, tArr);
        Objects.requireNonNull(tArr2, "null cannot be cast to non-null type kotlin.Array<T>");
        return tArr2;
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalStdlibApi
    @NotNull
    @PublishedApi
    public static <E> List<E> createListBuilder(int i2) {
        return new ListBuilder(i2);
    }

    @SinceKotlin(version = "1.2")
    @NotNull
    public static final <T> List<T> shuffled(@NotNull Iterable<? extends T> shuffled, @NotNull Random random) {
        Intrinsics.checkNotNullParameter(shuffled, "$this$shuffled");
        Intrinsics.checkNotNullParameter(random, "random");
        List<T> mutableList = CollectionsKt___CollectionsKt.toMutableList(shuffled);
        Collections.shuffle(mutableList, random);
        return mutableList;
    }
}
